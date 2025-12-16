package N2;

import B.f;
import L2.b;
import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import android.util.Log;
import com.samsung.context.sdk.samsunganalytics.BuildConfig;
import f1.AbstractC0420a;

/* loaded from: classes.dex */
public abstract class a {

    /* renamed from: a, reason: collision with root package name */
    public static final String f1862a;

    /* renamed from: b, reason: collision with root package name */
    public static final Uri f1863b;

    /* renamed from: c, reason: collision with root package name */
    public static int f1864c;

    static {
        String strValueOf;
        StringBuilder sb = new StringBuilder("DIAGMON_SDK[");
        try {
            strValueOf = String.valueOf(BuildConfig.VERSION_CODE);
        } catch (Exception unused) {
            strValueOf = "";
        }
        f1862a = f.w(sb, strValueOf, "]");
        f1863b = Uri.parse("content://com.sec.android.log.diagmonagent/");
        f1864c = -1;
    }

    public static int a(Context context) {
        if (f1864c == -1) {
            int iM = b.m(context);
            f1864c = iM < 600000000 ? iM == 0 ? 0 : 1 : 2;
            Log.i(f1862a, "DiagMonAgent type: " + f1864c);
        }
        return f1864c;
    }

    /* JADX WARN: Removed duplicated region for block: B:4:0x0015 A[PHI: r2
      0x0015: PHI (r2v9 long) = (r2v2 long), (r2v3 long) binds: [B:3:0x0013, B:6:0x001c] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean b() {
        long totalSpace = (Environment.getDataDirectory().getTotalSpace() * 5) / 100;
        long j3 = 1073741824;
        if (totalSpace > 1073741824) {
            totalSpace = j3;
        } else {
            j3 = 314572800;
            if (totalSpace < 314572800) {
            }
        }
        AbstractC0420a.r("Storage size threshold : " + totalSpace + " bytes");
        long usableSpace = Environment.getDataDirectory().getUsableSpace();
        if (usableSpace >= totalSpace) {
            return false;
        }
        AbstractC0420a.r0("insufficient storage");
        AbstractC0420a.r0("usableSpace: " + usableSpace + ", threshold: " + totalSpace);
        return true;
    }

    public static void c(Bundle bundle) {
        try {
            String string = bundle.getString("result");
            String string2 = bundle.getString("cause");
            if (string2 == null) {
                AbstractC0420a.M("Results : " + string);
            } else {
                AbstractC0420a.M("Results : " + string + ", Cause : " + string2);
            }
        } catch (Exception e5) {
            Log.e(f1862a, e5.getMessage());
        }
    }
}
