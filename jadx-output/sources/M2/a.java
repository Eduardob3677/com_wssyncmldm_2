package M2;

import K2.b;
import android.content.Context;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import com.samsung.context.sdk.samsunganalytics.internal.util.Preferences;
import f1.AbstractC0420a;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class a implements b {

    /* renamed from: c, reason: collision with root package name */
    public final long f1845c = TimeUnit.HOURS.toMillis(6);

    /* renamed from: d, reason: collision with root package name */
    public final Context f1846d;

    /* renamed from: e, reason: collision with root package name */
    public final L2.a f1847e;
    public final Bundle f;

    public a(L2.a aVar, Bundle bundle) {
        this.f1846d = aVar.f1345a;
        this.f1847e = aVar;
        this.f = bundle;
    }

    @Override // K2.b
    public final int onFinish() {
        return 0;
    }

    @Override // K2.b
    public final void run() {
        Context context = this.f1846d;
        int iA = N2.a.a(context);
        if (iA == 0) {
            AbstractC0420a.r0("Not installed DMA");
            AbstractC0420a.r0("SetConfiguration is aborted");
            return;
        }
        boolean z4 = false;
        L2.a aVar = this.f1847e;
        if (iA == 1) {
            if (TextUtils.isEmpty(aVar.f1346b)) {
                AbstractC0420a.r0("Service ID has to be set");
            } else {
                if (N2.a.a(aVar.f1345a) == 1 ? aVar.f1350g.f197d : aVar.f1349e) {
                    z4 = true;
                } else {
                    AbstractC0420a.r0("You have to agree to terms and conditions");
                }
            }
            if (!z4) {
                AbstractC0420a.r0("Invalid DiagMonConfiguration");
                AbstractC0420a.r0("SetConfiguration is aborted");
                return;
            }
            try {
                String str = "com.sec.android.log." + aVar.f1346b;
                Bundle bundle = new Bundle();
                bundle.putString(Preferences.PREFS_KEY_DID, aVar.f);
                bundle.putBoolean("serviceAgreeType", N2.a.a(aVar.f1345a) == 1 ? aVar.f1350g.f197d : aVar.f1349e);
                bundle.putString("serviceId", str);
                context.getContentResolver().call(Uri.parse("content://" + str), "service_registration", (String) null, bundle);
            } catch (Exception e5) {
                AbstractC0420a.r0("fail to send SR obj: " + e5.getMessage());
            }
            AbstractC0420a.M("Valid DiagMonConfiguration");
            return;
        }
        if (iA != 2) {
            AbstractC0420a.r0("Exceptional case");
            AbstractC0420a.r0("SetConfiguration is aborted");
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        long j3 = context.getSharedPreferences("diagmon_pref", 0).getLong("diagmon_timestamp", 0L);
        if ((("com.samsung.diagmonagenttest".equals(context.getPackageName()) || "com.samsung.context.sdk.sampleapp".equals(context.getPackageName())) && Build.TYPE.equals("eng")) || jCurrentTimeMillis > j3 + this.f1845c) {
            String str2 = aVar.f1346b;
            if (iA == 2) {
                try {
                    Bundle bundle2 = new Bundle();
                    bundle2.putString("serviceId", str2);
                    context.getContentResolver().call(N2.a.f1863b, "request_deviceid", "request_deviceid", bundle2);
                } catch (Exception unused) {
                    AbstractC0420a.r0("Authority check got failed");
                    return;
                }
            }
            SharedPreferences.Editor editorEdit = context.getSharedPreferences("diagmon_pref", 0).edit();
            editorEdit.putLong("diagmon_timestamp", jCurrentTimeMillis);
            editorEdit.apply();
            Bundle bundle3 = this.f;
            if (!W1.a.V(bundle3)) {
                Log.w(N2.a.f1862a, "Invalid SR object");
                return;
            }
            try {
                AbstractC0420a.M("Request Service Registration");
                N2.a.c(context.getContentResolver().call(N2.a.f1863b, "register_service", "registration", bundle3));
            } catch (Exception unused2) {
                AbstractC0420a.r0("fail to send SR obj");
            }
        }
    }
}
