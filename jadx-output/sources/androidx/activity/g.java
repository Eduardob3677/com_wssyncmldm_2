package androidx.activity;

import android.content.Intent;
import android.content.IntentSender;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import androidx.fragment.app.G;
import b.AbstractC0194a;
import java.util.Arrays;
import java.util.HashSet;
import y.AbstractC0922b;
import y.InterfaceC0924d;

/* loaded from: classes.dex */
public final class g extends androidx.activity.result.h {

    /* renamed from: h, reason: collision with root package name */
    public final /* synthetic */ ComponentActivity f3158h;

    public g(G g5) {
        this.f3158h = g5;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.activity.result.h
    public final void b(int i5, AbstractC0194a abstractC0194a, Object obj) {
        Bundle bundle;
        ComponentActivity componentActivity = this.f3158h;
        K.j jVarB = abstractC0194a.b(componentActivity, obj);
        if (jVarB != null) {
            new Handler(Looper.getMainLooper()).post(new B1.a(this, i5, jVarB, 1));
            return;
        }
        Intent intentA = abstractC0194a.a(componentActivity, obj);
        if (intentA.getExtras() != null && intentA.getExtras().getClassLoader() == null) {
            intentA.setExtrasClassLoader(componentActivity.getClassLoader());
        }
        if (intentA.hasExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE")) {
            Bundle bundleExtra = intentA.getBundleExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE");
            intentA.removeExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE");
            bundle = bundleExtra;
        } else {
            bundle = null;
        }
        if (!"androidx.activity.result.contract.action.REQUEST_PERMISSIONS".equals(intentA.getAction())) {
            if (!"androidx.activity.result.contract.action.INTENT_SENDER_REQUEST".equals(intentA.getAction())) {
                componentActivity.startActivityForResult(intentA, i5, bundle);
                return;
            }
            androidx.activity.result.j jVar = (androidx.activity.result.j) intentA.getParcelableExtra("androidx.activity.result.contract.extra.INTENT_SENDER_REQUEST");
            try {
                componentActivity.startIntentSenderForResult(jVar.f3200c, i5, jVar.f3201d, jVar.f3202e, jVar.f, 0, bundle);
                return;
            } catch (IntentSender.SendIntentException e5) {
                new Handler(Looper.getMainLooper()).post(new B1.a(this, i5, e5, 2));
                return;
            }
        }
        String[] stringArrayExtra = intentA.getStringArrayExtra("androidx.activity.result.contract.extra.PERMISSIONS");
        if (stringArrayExtra == null) {
            stringArrayExtra = new String[0];
        }
        HashSet hashSet = new HashSet();
        for (String str : stringArrayExtra) {
            if (TextUtils.isEmpty(str)) {
                throw new IllegalArgumentException(B.f.w(new StringBuilder("Permission request for permissions "), Arrays.toString(stringArrayExtra), " must not contain null or empty values"));
            }
        }
        int size = hashSet.size();
        String[] strArr = size > 0 ? new String[stringArrayExtra.length - size] : stringArrayExtra;
        if (size > 0) {
            if (size == stringArrayExtra.length) {
                return;
            }
            int i6 = 0;
            for (int i7 = 0; i7 < stringArrayExtra.length; i7++) {
                if (!hashSet.contains(Integer.valueOf(i7))) {
                    strArr[i6] = stringArrayExtra[i7];
                    i6++;
                }
            }
        }
        if (componentActivity instanceof InterfaceC0924d) {
            ((InterfaceC0924d) componentActivity).validateRequestPermissionsRequestCode(i5);
        }
        AbstractC0922b.b(componentActivity, stringArrayExtra, i5);
    }
}
