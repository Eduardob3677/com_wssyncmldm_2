package Z0;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageInstaller;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import c1.AbstractC0213D;
import c1.z;
import com.idm.fotaagent.restapi.restclient.push.campaign.button.Action;
import com.samsung.android.knox.net.nap.NetworkAnalyticsConstants;
import com.wssyncmldm.R;
import h1.AbstractC0443a;
import j1.C0554a;
import java.util.Iterator;

/* loaded from: classes.dex */
public abstract class f {

    /* renamed from: a, reason: collision with root package name */
    public static final int f3006a;

    static {
        int i5 = g.f3009c;
        f3006a = 12451000;
    }

    public Intent a(Context context, int i5, String str) {
        if (i5 != 1 && i5 != 2) {
            if (i5 != 3) {
                return null;
            }
            int i6 = z.f5276a;
            Uri uriFromParts = Uri.fromParts(Action.KEY_PACKAGENAME, "com.google.android.gms", null);
            Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
            intent.setData(uriFromParts);
            return intent;
        }
        if (context != null) {
            AbstractC0443a.d(context);
        }
        StringBuilder sb = new StringBuilder("gcore_");
        sb.append(f3006a);
        sb.append("-");
        if (!TextUtils.isEmpty(str)) {
            sb.append(str);
        }
        sb.append("-");
        if (context != null) {
            sb.append(context.getPackageName());
        }
        sb.append("-");
        if (context != null) {
            try {
                L0.c cVarA = C0554a.a(context);
                sb.append(cVarA.f1317a.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode);
            } catch (PackageManager.NameNotFoundException unused) {
            }
        }
        String string = sb.toString();
        int i7 = z.f5276a;
        Intent intent2 = new Intent("android.intent.action.VIEW");
        Uri.Builder builderAppendQueryParameter = Uri.parse("market://details").buildUpon().appendQueryParameter("id", "com.google.android.gms");
        if (!TextUtils.isEmpty(string)) {
            builderAppendQueryParameter.appendQueryParameter("pcampaignid", string);
        }
        intent2.setData(builderAppendQueryParameter.build());
        intent2.setPackage("com.android.vending");
        intent2.addFlags(NetworkAnalyticsConstants.DataPoints.FLAG_INTERFACE_NAME);
        return intent2;
    }

    /* JADX WARN: Removed duplicated region for block: B:113:0x01aa A[EDGE_INSN: B:113:0x01aa->B:123:0x01e3 BREAK  A[LOOP:0: B:117:0x01be->B:146:?]] */
    /* JADX WARN: Removed duplicated region for block: B:114:0x01ac  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x01e5  */
    /* JADX WARN: Removed duplicated region for block: B:147:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int b(Context context, int i5) throws PackageManager.NameNotFoundException {
        PackageInfo packageInfo;
        Bundle bundle;
        boolean z4 = false;
        z4 = false;
        int i6 = g.f3009c;
        try {
            context.getResources().getString(R.string.common_google_play_services_unknown_issue);
        } catch (Throwable unused) {
            Log.e("GooglePlayServicesUtil", "The Google Play services resources were not found. Check your project configuration to ensure that the resources are included.");
        }
        if (!"com.google.android.gms".equals(context.getPackageName()) && !g.f3008b.get()) {
            synchronized (AbstractC0213D.f5195a) {
                try {
                    if (!AbstractC0213D.f5196b) {
                        AbstractC0213D.f5196b = true;
                        try {
                            bundle = C0554a.a(context).f1317a.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData;
                        } catch (PackageManager.NameNotFoundException e5) {
                            Log.wtf("MetadataValueReader", "This should never happen.", e5);
                        }
                        if (bundle != null) {
                            bundle.getString("com.google.app.id");
                            AbstractC0213D.f5197c = bundle.getInt("com.google.android.gms.version");
                        }
                    }
                } finally {
                }
            }
            int i7 = AbstractC0213D.f5197c;
            if (i7 == 0) {
                throw new IllegalStateException("A required meta-data tag in your app's AndroidManifest.xml does not exist.  You must have the following declaration within the <application> element:     <meta-data android:name=\"com.google.android.gms.version\" android:value=\"@integer/google_play_services_version\" />");
            }
            if (i7 != 12451000) {
                StringBuilder sb = new StringBuilder(320);
                sb.append("The meta-data tag in your app's AndroidManifest.xml does not have the right value.  Expected 12451000 but found ");
                sb.append(i7);
                sb.append(".  You must have the following declaration within the <application> element:     <meta-data android:name=\"com.google.android.gms.version\" android:value=\"@integer/google_play_services_version\" />");
                throw new IllegalStateException(sb.toString());
            }
        }
        AbstractC0443a.d(context);
        if (AbstractC0443a.f6992d == null) {
            AbstractC0443a.f6992d = Boolean.valueOf(context.getPackageManager().hasSystemFeature("android.hardware.type.iot") || context.getPackageManager().hasSystemFeature("android.hardware.type.embedded"));
        }
        boolean z5 = !AbstractC0443a.f6992d.booleanValue();
        if (i5 < 0) {
            throw new IllegalArgumentException();
        }
        PackageManager packageManager = context.getPackageManager();
        int i8 = 9;
        if (z5) {
            try {
                packageInfo = packageManager.getPackageInfo("com.android.vending", 8256);
            } catch (PackageManager.NameNotFoundException unused2) {
                Log.w("GooglePlayServicesUtil", "Google Play Store is missing.");
            }
        } else {
            packageInfo = null;
        }
        try {
            PackageInfo packageInfo2 = packageManager.getPackageInfo("com.google.android.gms", 64);
            synchronized (h.class) {
                try {
                    if (h.f3010d == null) {
                        synchronized (j.class) {
                            if (j.f3016a == null) {
                                j.f3016a = context.getApplicationContext();
                            } else {
                                Log.w("GoogleCertificates", "GoogleCertificates has been initialized already");
                            }
                        }
                        h hVar = new h(z4 ? 1 : 0);
                        context.getApplicationContext();
                        h.f3010d = hVar;
                    }
                } finally {
                }
            }
            if (!h.i(packageInfo2)) {
                Log.w("GooglePlayServicesUtil", "Google Play services signature invalid.");
            } else if (!z5 || (h.i(packageInfo) && packageInfo.signatures[0].equals(packageInfo2.signatures[0]))) {
                int i9 = packageInfo2.versionCode;
                if ((i9 == -1 ? -1 : i9 / 1000) < (i5 != -1 ? i5 / 1000 : -1)) {
                    StringBuilder sb2 = new StringBuilder(77);
                    sb2.append("Google Play services out of date.  Requires ");
                    sb2.append(i5);
                    sb2.append(" but found ");
                    sb2.append(i9);
                    Log.w("GooglePlayServicesUtil", sb2.toString());
                    i8 = 2;
                } else {
                    ApplicationInfo applicationInfo = packageInfo2.applicationInfo;
                    if (applicationInfo == null) {
                        try {
                            applicationInfo = packageManager.getApplicationInfo("com.google.android.gms", 0);
                        } catch (PackageManager.NameNotFoundException e6) {
                            Log.wtf("GooglePlayServicesUtil", "Google Play services missing when getting application info.", e6);
                            i8 = 1;
                            if (i8 == 18) {
                            }
                            if (z4) {
                            }
                        }
                    }
                    i8 = !applicationInfo.enabled ? 3 : 0;
                }
            } else {
                Log.w("GooglePlayServicesUtil", "Google Play Store signature invalid.");
            }
        } catch (PackageManager.NameNotFoundException unused3) {
            Log.w("GooglePlayServicesUtil", "Google Play services is missing.");
        }
        if (i8 == 18) {
            z4 = true;
            break;
        }
        if (i8 == 1) {
            try {
                Iterator<PackageInstaller.SessionInfo> it = context.getPackageManager().getPackageInstaller().getAllSessions().iterator();
                while (it.hasNext()) {
                    if ("com.google.android.gms".equals(it.next().getAppPackageName())) {
                        z4 = true;
                        break;
                    }
                }
                z4 = context.getPackageManager().getApplicationInfo("com.google.android.gms", 8192).enabled;
            } catch (PackageManager.NameNotFoundException | Exception unused4) {
            }
        }
        if (z4) {
            return i8;
        }
        return 18;
    }
}
