package c1;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class l {

    /* renamed from: e, reason: collision with root package name */
    public static final Uri f5244e = new Uri.Builder().scheme("content").authority("com.google.android.gms.chimera").build();

    /* renamed from: a, reason: collision with root package name */
    public final String f5245a;

    /* renamed from: b, reason: collision with root package name */
    public final String f5246b;

    /* renamed from: c, reason: collision with root package name */
    public final int f5247c;

    /* renamed from: d, reason: collision with root package name */
    public final boolean f5248d;

    public l(String str, String str2, boolean z4) {
        AbstractC0213D.c(str);
        this.f5245a = str;
        AbstractC0213D.c(str2);
        this.f5246b = str2;
        this.f5247c = 129;
        this.f5248d = z4;
    }

    public final Intent a(Context context) {
        String str = this.f5245a;
        if (str == null) {
            return new Intent().setComponent(null);
        }
        if (this.f5248d) {
            Bundle bundle = new Bundle();
            bundle.putString("serviceActionBundleKey", str);
            Bundle bundleCall = context.getContentResolver().call(f5244e, "serviceIntentCall", (String) null, bundle);
            intent = bundleCall != null ? (Intent) bundleCall.getParcelable("serviceResponseIntentKey") : null;
            if (intent == null) {
                String strValueOf = String.valueOf(str);
                Log.w("ConnectionStatusConfig", strValueOf.length() != 0 ? "Dynamic lookup for intent failed for action: ".concat(strValueOf) : new String("Dynamic lookup for intent failed for action: "));
            }
        }
        return intent == null ? new Intent(str).setPackage(this.f5246b) : intent;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof l)) {
            return false;
        }
        l lVar = (l) obj;
        return AbstractC0213D.h(this.f5245a, lVar.f5245a) && AbstractC0213D.h(this.f5246b, lVar.f5246b) && AbstractC0213D.h(null, null) && this.f5247c == lVar.f5247c && this.f5248d == lVar.f5248d;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f5245a, this.f5246b, null, Integer.valueOf(this.f5247c), Boolean.valueOf(this.f5248d)});
    }

    public final String toString() {
        String str = this.f5245a;
        str.getClass();
        return str;
    }
}
