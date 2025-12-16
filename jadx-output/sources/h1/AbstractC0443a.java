package h1;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.os.Process;
import android.os.StrictMode;
import j1.C0554a;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* renamed from: h1.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0443a {

    /* renamed from: a, reason: collision with root package name */
    public static final char[] f6989a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    /* renamed from: b, reason: collision with root package name */
    public static Boolean f6990b;

    /* renamed from: c, reason: collision with root package name */
    public static Boolean f6991c;

    /* renamed from: d, reason: collision with root package name */
    public static Boolean f6992d;

    /* renamed from: e, reason: collision with root package name */
    public static String f6993e;
    public static int f;

    public static String a(byte[] bArr) {
        int length = bArr.length;
        StringBuilder sb = new StringBuilder(length << 1);
        for (int i5 = 0; i5 < length; i5++) {
            char[] cArr = f6989a;
            sb.append(cArr[(bArr[i5] & 240) >>> 4]);
            sb.append(cArr[bArr[i5] & 15]);
        }
        return sb.toString();
    }

    public static String b() throws Throwable {
        Throwable th;
        BufferedReader bufferedReaderE;
        if (f6993e == null) {
            if (f == 0) {
                f = Process.myPid();
            }
            int i5 = f;
            String strTrim = null;
            try {
                if (i5 > 0) {
                    try {
                        StringBuilder sb = new StringBuilder(25);
                        sb.append("/proc/");
                        sb.append(i5);
                        sb.append("/cmdline");
                        bufferedReaderE = e(sb.toString());
                        try {
                            strTrim = bufferedReaderE.readLine().trim();
                            bufferedReaderE.close();
                        } catch (IOException unused) {
                            if (bufferedReaderE != null) {
                                bufferedReaderE.close();
                            }
                            f6993e = strTrim;
                            return f6993e;
                        } catch (Throwable th2) {
                            th = th2;
                            if (bufferedReaderE != null) {
                                try {
                                    bufferedReaderE.close();
                                } catch (IOException unused2) {
                                }
                            }
                            throw th;
                        }
                    } catch (IOException unused3) {
                        bufferedReaderE = null;
                    } catch (Throwable th3) {
                        th = th3;
                        bufferedReaderE = null;
                    }
                }
            } catch (IOException unused4) {
            }
            f6993e = strTrim;
        }
        return f6993e;
    }

    public static byte[] c(Context context, String str) throws PackageManager.NameNotFoundException, NoSuchAlgorithmException {
        MessageDigest messageDigest;
        PackageInfo packageInfo = C0554a.a(context).f1317a.getPackageManager().getPackageInfo(str, 64);
        Signature[] signatureArr = packageInfo.signatures;
        if (signatureArr != null && signatureArr.length == 1) {
            int i5 = 0;
            while (true) {
                if (i5 >= 2) {
                    messageDigest = null;
                    break;
                }
                try {
                    messageDigest = MessageDigest.getInstance("SHA1");
                } catch (NoSuchAlgorithmException unused) {
                }
                if (messageDigest != null) {
                    break;
                }
                i5++;
            }
            if (messageDigest != null) {
                return messageDigest.digest(packageInfo.signatures[0].toByteArray());
            }
        }
        return null;
    }

    public static void d(Context context) {
        if (f6990b == null) {
            f6990b = Boolean.valueOf(context.getPackageManager().hasSystemFeature("android.hardware.type.watch"));
        }
        if (f6990b.booleanValue()) {
            if (f6991c == null) {
                f6991c = Boolean.valueOf(context.getPackageManager().hasSystemFeature("cn.google"));
            }
            f6991c.getClass();
        }
    }

    public static BufferedReader e(String str) {
        StrictMode.ThreadPolicy threadPolicyAllowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            return new BufferedReader(new FileReader(str));
        } finally {
            StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads);
        }
    }
}
