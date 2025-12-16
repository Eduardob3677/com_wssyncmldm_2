package com.samsung.context.sdk.samsunganalytics;

import android.app.Application;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.os.Trace;
import android.text.TextUtils;
import android.webkit.CookieManager;
import android.webkit.WebView;
import com.samsung.context.sdk.samsunganalytics.internal.Tracker;
import com.samsung.context.sdk.samsunganalytics.internal.policy.Validation;
import com.samsung.context.sdk.samsunganalytics.internal.util.Debug;
import com.samsung.context.sdk.samsunganalytics.internal.util.Utils;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public class SamsungAnalytics {
    public static final String SDK_VERSION = "6.05.073";
    private static SamsungAnalytics instance;
    private Tracker tracker;

    private SamsungAnalytics(Application application, Configuration configuration) {
        this.tracker = null;
        if (Validation.isValid(application, configuration)) {
            this.tracker = new Tracker(application, configuration);
        }
    }

    public static Configuration getConfiguration() {
        if (isInstanceNull()) {
            return null;
        }
        return instance.tracker.getConfiguration();
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0042 A[Catch: NullPointerException -> 0x003a, PHI: r5
      0x0042: PHI (r5v9 android.database.Cursor) = (r5v8 android.database.Cursor), (r5v11 android.database.Cursor) binds: [B:29:0x005e, B:21:0x0040] A[DONT_GENERATE, DONT_INLINE], TRY_LEAVE, TryCatch #4 {NullPointerException -> 0x003a, blocks: (B:3:0x0003, B:5:0x000f, B:7:0x001b, B:13:0x0036, B:22:0x0042, B:32:0x0063, B:33:0x0066, B:34:0x0067), top: B:41:0x0003 }] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0063 A[Catch: NullPointerException -> 0x003a, TRY_ENTER, TryCatch #4 {NullPointerException -> 0x003a, blocks: (B:3:0x0003, B:5:0x000f, B:7:0x001b, B:13:0x0036, B:22:0x0042, B:32:0x0063, B:33:0x0066, B:34:0x0067), top: B:41:0x0003 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private String getDeviceId(Context context) throws Throwable {
        Cursor cursorQuery;
        try {
            if (this.tracker.getConfiguration().isEnableAutoDeviceId() && !this.tracker.getConfiguration().isEnableUseInAppLogging()) {
                try {
                    cursorQuery = context.getContentResolver().query(Uri.parse("content://com.sec.android.log.diagmonagent.sa/deviceid"), null, null, null);
                    if (cursorQuery != null) {
                        try {
                            try {
                                if (cursorQuery.moveToNext()) {
                                    String string = cursorQuery.getString(0);
                                    cursorQuery.close();
                                    return string;
                                }
                            } catch (Exception e5) {
                                e = e5;
                                Debug.logwingW("failed to get deviceId from DMA : " + e.getMessage());
                                if (cursorQuery != null) {
                                }
                                return this.tracker.getConfiguration().getDeviceId();
                            }
                        } catch (Throwable th) {
                            th = th;
                            if (cursorQuery != null) {
                                cursorQuery.close();
                            }
                            throw th;
                        }
                    }
                } catch (Exception e6) {
                    e = e6;
                    cursorQuery = null;
                } catch (Throwable th2) {
                    th = th2;
                    cursorQuery = null;
                    if (cursorQuery != null) {
                    }
                    throw th;
                }
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
            }
            return this.tracker.getConfiguration().getDeviceId();
        } catch (NullPointerException e7) {
            Debug.LogException(getClass(), e7);
            return null;
        }
    }

    public static SamsungAnalytics getInstance() {
        if (instance == null) {
            Utils.throwException("call after setConfiguration() method");
            if (!Utils.isDev()) {
                synchronized (SamsungAnalytics.class) {
                    try {
                        if (instance == null) {
                            instance = new SamsungAnalytics(null, null);
                        }
                    } finally {
                    }
                }
            }
        }
        return instance;
    }

    private static SamsungAnalytics getInstanceAndConfig(Application application, Configuration configuration) {
        if (isInstanceNull() || isTcTypeChanged(application, configuration)) {
            synchronized (SamsungAnalytics.class) {
                try {
                    if (isTcTypeChanged(application, configuration)) {
                        instance = SamsungAnalyticsHolder.getInstance(configuration);
                    }
                    if (isInstanceNull()) {
                        SamsungAnalytics samsungAnalytics = new SamsungAnalytics(application, configuration);
                        instance = samsungAnalytics;
                        SamsungAnalyticsHolder.putInstance(samsungAnalytics, configuration);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return instance;
    }

    private static boolean isInstanceNull() {
        SamsungAnalytics samsungAnalytics = instance;
        return samsungAnalytics == null || samsungAnalytics.tracker == null;
    }

    private static boolean isTcTypeChanged(Application application, Configuration configuration) {
        if (isInstanceNull()) {
            return false;
        }
        return Utils.isTcTypeChanged(application.getApplicationContext(), instance.tracker.getConfiguration(), configuration);
    }

    public static void setConfiguration(Application application, Configuration configuration) {
        Trace.beginSection("SamsungAnalytics setConfiguration");
        getInstanceAndConfig(application, configuration);
        Trace.endSection();
    }

    public void deleteLogData() {
        try {
            this.tracker.deleteLogData();
        } catch (NullPointerException e5) {
            Debug.LogException(getClass(), e5);
        }
    }

    public void deleteSensitiveLogData() {
        try {
            this.tracker.deleteSensitiveLogData();
        } catch (NullPointerException e5) {
            Debug.LogException(getClass(), e5);
        }
    }

    public SamsungAnalytics enableAutoActivityTracking() {
        try {
            this.tracker.enableAutoActivityTracking();
        } catch (NullPointerException e5) {
            Debug.LogException(getClass(), e5);
        }
        return this;
    }

    public void registerSettingPref(Map<String, Set<String>> map) {
        try {
            this.tracker.registerSettingPref(map);
        } catch (NullPointerException e5) {
            Debug.LogException(getClass(), e5);
        }
    }

    public int sendLog(Map<String, String> map) {
        Debug.LogD("sendLog");
        try {
            return this.tracker.sendLog(map);
        } catch (NullPointerException unused) {
            return -100;
        }
    }

    public void useWebAppLogging(Context context, WebView webView, String[] strArr) throws Throwable {
        if (context == null) {
            Utils.throwException("useWebAppLogging: context is null");
            return;
        }
        if (strArr == null) {
            Utils.throwException("useWebAppLogging: domain is null");
            return;
        }
        Tracker tracker = this.tracker;
        if (tracker == null || tracker.getConfiguration() == null) {
            Utils.throwException("useWebAppLogging: call after setConfiguration() method");
            return;
        }
        CookieManager cookieManager = CookieManager.getInstance();
        cookieManager.setAcceptCookie(true);
        cookieManager.setAcceptThirdPartyCookies(webView, true);
        webView.getSettings().setJavaScriptEnabled(true);
        int auidType = TextUtils.isEmpty(this.tracker.getConfiguration().getDeviceId()) ? 4 : this.tracker.getConfiguration().getAuidType();
        String deviceId = getDeviceId(context);
        String packageName = context.getPackageName();
        String str = Build.MODEL;
        if (TextUtils.isEmpty(deviceId)) {
            Debug.LogE("useWebAppLogging: device id is null");
            return;
        }
        for (String str2 : strArr) {
            cookieManager.setCookie(str2, "_sa_auid=" + deviceId);
            cookieManager.setCookie(str2, "_sa_apn=" + packageName);
            cookieManager.setCookie(str2, "_sa_at=" + auidType);
            cookieManager.setCookie(str2, "_sa_dm=" + str);
        }
    }
}
