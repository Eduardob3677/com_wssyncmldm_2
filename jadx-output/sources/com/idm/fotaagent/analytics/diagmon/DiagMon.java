package com.idm.fotaagent.analytics.diagmon;

import L2.c;
import android.content.Context;
import android.os.PersistableBundle;
import android.text.TextUtils;
import com.idm.fotaagent.analytics.diagmon.jobschedule.DiagmonReportJobScheduleManager;
import com.idm.fotaagent.database.sqlite.database.IDMDatabaseInterface;
import com.idm.fotaagent.database.sqlite.database.polling.PollingDatabaseInterface;
import com.idm.fotaagent.utils.DeviceUtils;
import com.idm.fotaagent.utils.NetworkUtil;
import com.idm.fotaagent.utils.storage.FileManager;
import com.idm.fotaagent.utils.storage.StorageType;
import com.samsung.android.fotaagent.common.log.Log;
import com.samsung.android.fotaagent.common.log.Logger;
import com.samsung.android.fotaagent.common.log.Where;
import f1.AbstractC0420a;
import java.io.File;
import java.io.IOException;
import java.lang.Thread;
import java.nio.file.FileVisitOption;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.Path;
import java.nio.file.attribute.FileAttribute;
import java.util.Arrays;
import java.util.Comparator;
import java.util.concurrent.CompletableFuture;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.stream.Stream;

/* loaded from: classes.dex */
public class DiagMon {
    public static final String DESCRIPTION_DEVICE_REGISTRATION_FAILED = "Device registration failed";
    public static final String DEVICE_REGISTRATION_FAILED_DUE_TO_ABNORMAL_CONNECTION = "434";
    public static final String DM_AUTHENTICATION_ERROR_DURING_REPORTING = "431";
    public static final String DM_HTTP_RESPONSE_ERROR_DURING_REPORTING = "432";
    public static final String DM_SYNCML_ERROR_DURING_REPORTING = "433";
    public static final String INVALID_DEVICE_STATE_ERROR = "430";
    private static Context context;
    private static final String ERROR_CODE_SERVICE_NOT_AVAILABLE = "SERVICE_NOT_AVAILABLE";
    private static final String ERROR_CODE_DEPRECATED_ENDPOINT = "DEPRECATED_ENDPOINT";
    private static final String[] ERROR_CODE_BLOCK_LIST = {ERROR_CODE_SERVICE_NOT_AVAILABLE, ERROR_CODE_DEPRECATED_ENDPOINT};
    private static final Thread.UncaughtExceptionHandler original = Thread.getDefaultUncaughtExceptionHandler();
    private static boolean enabled = false;
    private static final CompletableFuture<Void> future = new CompletableFuture<>();

    public static class Reporter {
        private static final int DIAGMON_INIT_TIMEOUT_IN_SEC = 5;
        public static final String KEY_DESCRIPTION = "description";
        public static final String KEY_ERROR_CODE = "errorCode";
        public static final String KEY_SERVICE_DEFINED_KEY = "serviceDefinedKey";
        private static final String REPORT_DIRECTORY_PATH = "diagmon_report";
        private c builder;
        private Throwable throwable;

        private static File[] copyUpTo6(File[] fileArr) {
            return (File[]) Arrays.copyOf(fileArr, Math.min(6, fileArr.length));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ boolean lambda$prepareFilesToReport$1(Path path) {
            return !Files.isDirectory(path, new LinkOption[0]);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$prepareFilesToReport$2(Path path) throws IOException {
            try {
                Files.createSymbolicLink(DiagMon.context.getDir(REPORT_DIRECTORY_PATH, 0).toPath().resolve(path.getFileName()), path, new FileAttribute[0]);
            } catch (Exception e5) {
                Log.printStackTrace(e5);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean lambda$report$0(String str) {
            return str.equals(this.builder.f1359d);
        }

        private static void prepareFilesToReport() throws IOException {
            Stream<Path> list = Files.list(DiagMon.context.getDir(REPORT_DIRECTORY_PATH, 0).toPath());
            try {
                list.map(new G2.b(1)).forEach(new A2.a(1));
                list.close();
                Stream.Builder builder = Stream.builder();
                StringBuilder sb = new StringBuilder();
                StorageType storageType = StorageType.CACHE;
                sb.append(storageType.path());
                sb.append("/recovery/last_command");
                String string = sb.toString();
                String str = storageType.path() + "/recovery/last_log";
                String str2 = storageType.path() + "/recovery/last_install";
                String str3 = storageType.path() + "/recovery/last_recovery";
                String str4 = storageType.path() + "/recovery/block.map";
                StringBuilder sb2 = new StringBuilder();
                StorageType storageType2 = StorageType.DATA;
                sb2.append(storageType2.path());
                sb2.append("/log/recovery.log");
                Arrays.stream(new String[]{FileManager.PATH_FOTA_STATUS, string, str, str2, str3, str4, sb2.toString(), storageType2.path() + "/log/power_off_reset_reason.txt", storageType2.path() + "/log/recovery_patch_log.txt"}).map(new G2.b(6)).filter(new com.idm.adapter.filesystem.a(3)).map(new G2.b(7)).forEach(builder);
                File[] fileArrListFiles = new File(storageType2.path() + "/log/update_engine_log").listFiles();
                if (fileArrListFiles != null && fileArrListFiles.length > 0) {
                    Arrays.stream(sortAndCopy(fileArrListFiles)).map(new G2.b(7)).forEach(builder);
                }
                Arrays.stream(new File[]{DiagMon.context.getDatabasePath(PollingDatabaseInterface.DATABASE_NAME), DiagMon.context.getDatabasePath(IDMDatabaseInterface.DATABASE_NAME), DiagMon.context.getDatabasePath(IDMDatabaseInterface.SDK_DATABBASE_NAME)}).filter(new com.idm.adapter.filesystem.a(3)).map(new G2.b(7)).forEach(builder);
                Stream<Path> streamWalk = Files.walk(DiagMon.context.getDir(Log.LOG_DIRECTORY, 0).toPath(), new FileVisitOption[0]);
                try {
                    streamWalk.filter(new com.idm.adapter.filesystem.a(4)).forEach(builder);
                    streamWalk.close();
                    builder.build().forEach(new A2.a(6));
                    Log.forceFileLogger(DiagMon.context);
                } catch (Throwable th) {
                    if (streamWalk != null) {
                        try {
                            streamWalk.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                if (list != null) {
                    try {
                        list.close();
                    } catch (Throwable th4) {
                        th3.addSuppressed(th4);
                    }
                }
                throw th3;
            }
        }

        private void printStackTrace() {
            Logger loggerFatalExceptionLogger = Log.fatalExceptionLogger(DiagMon.context);
            loggerFatalExceptionLogger.H(DeviceUtils.readAppVersionName(DiagMon.context));
            loggerFatalExceptionLogger.printStackTrace(this.throwable);
        }

        private static File[] sortAndCopy(File[] fileArr) {
            sortByModified(fileArr);
            return copyUpTo6(fileArr);
        }

        private static void sortByModified(File[] fileArr) {
            Arrays.sort(fileArr, Comparator.comparingLong(new com.idm.adapter.filesystem.b(1)).reversed());
        }

        public void report() {
            if (!DiagMon.enabled) {
                Log.I("diagmon is not enabled: " + this + " called at " + Where.callerOf(1));
                return;
            }
            if (this.builder == null) {
                Log.I("EventBuilder initialization fails: " + this + " called at " + Where.callerOf(1));
                return;
            }
            if (this.throwable != null) {
                printStackTrace();
            }
            if (Arrays.stream(DiagMon.ERROR_CODE_BLOCK_LIST).anyMatch(new F2.a(2, this))) {
                Log.I("Do not report due to blocked error code : " + this.builder.f1359d);
                return;
            }
            if (!NetworkUtil.isWiFiNetworkConnected(DiagMon.context)) {
                PersistableBundle persistableBundle = new PersistableBundle();
                persistableBundle.putString(KEY_SERVICE_DEFINED_KEY, this.builder.f1358c);
                persistableBundle.putString("description", this.builder.f1360e);
                persistableBundle.putString(KEY_ERROR_CODE, this.builder.f1359d);
                DiagmonReportJobScheduleManager.schedule(DiagMon.context, persistableBundle);
                return;
            }
            try {
                prepareFilesToReport();
                Context unused = DiagMon.context;
                if (L2.b.j(this.builder)) {
                    Log.I("Succeeded to report");
                    if (this.throwable != null) {
                        TimeUnit.SECONDS.sleep(2L);
                    }
                } else {
                    Log.I("Failed to report");
                }
            } catch (Throwable th) {
                Log.printStackTrace(th);
            }
        }

        public Reporter withDescription(String str) {
            c cVar = this.builder;
            if (cVar != null) {
                cVar.f1360e = str;
            }
            return this;
        }

        public Reporter withServiceDefinedKey(String str) {
            c cVar = this.builder;
            if (cVar != null) {
                if (N2.a.a(cVar.f1356a) == 1 && !TextUtils.isEmpty(str) && str.contains("/")) {
                    AbstractC0420a.r0("delimiter is included : ".concat(str));
                } else {
                    cVar.f1358c = str;
                }
            }
            return this;
        }

        private Reporter(Throwable th) {
            this("FE_wssyncmldm", th);
        }

        public Reporter(String str) {
            this(str, (Throwable) null);
        }

        private Reporter(String str, Throwable th) throws ExecutionException, InterruptedException, TimeoutException {
            c cVar;
            try {
                DiagMon.future.get(5L, TimeUnit.SECONDS);
                Path path = DiagMon.context.getDir(REPORT_DIRECTORY_PATH, 0).toPath();
                try {
                    Context context = DiagMon.context;
                    cVar = new c();
                    cVar.f1357b = "";
                    cVar.f1358c = "";
                    cVar.f1359d = "";
                    cVar.f1360e = "";
                    cVar.f1356a = context;
                    cVar.f1357b = path.toRealPath(new LinkOption[0]).toString();
                    cVar.f1359d = str;
                } catch (Throwable th2) {
                    Log.printStackTrace(th2);
                    cVar = null;
                }
                this.builder = cVar;
                this.throwable = th;
            } catch (InterruptedException | ExecutionException | TimeoutException e5) {
                Log.printStackTrace(e5);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void handleUncaughtException(Thread thread, Throwable th) {
        new Reporter(th).withDescription(thread.getClass().getName()).report();
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler = original;
        if (uncaughtExceptionHandler != null) {
            uncaughtExceptionHandler.uncaughtException(thread, th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$setup$0(Context context2) {
        synchronized (DiagMon.class) {
            setupLocked(context2);
        }
    }

    public static void setup(Context context2) {
        new Thread(new b(context2, 0)).start();
    }

    private static void setupLocked(Context context2) {
        try {
            if (enabled) {
                return;
            }
            Context applicationContext = context2.getApplicationContext();
            context = applicationContext;
            L2.a aVar = new L2.a(applicationContext);
            aVar.a();
            aVar.f1346b = "x6g1q14r75";
            aVar.f = DeviceUtils.readUN();
            L2.b.H(aVar);
            Thread.setDefaultUncaughtExceptionHandler(new a());
            enabled = true;
            future.complete(null);
        } catch (Throwable th) {
            Log.printStackTrace(th);
            enabled = false;
        }
    }
}
