package androidx.fragment.app;

import android.content.Intent;
import android.content.IntentSender;
import android.os.Bundle;
import android.os.Process;
import android.util.Log;
import androidx.activity.ComponentActivity;
import b.AbstractC0194a;
import java.util.ArrayList;
import java.util.LinkedHashMap;

/* loaded from: classes.dex */
public final class V extends AbstractC0194a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3768a;

    public /* synthetic */ V(int i5) {
        this.f3768a = i5;
    }

    @Override // b.AbstractC0194a
    public final Intent a(ComponentActivity componentActivity, Object obj) {
        Bundle bundleExtra;
        switch (this.f3768a) {
            case 0:
                androidx.activity.result.j jVar = (androidx.activity.result.j) obj;
                Intent intent = new Intent("androidx.activity.result.contract.action.INTENT_SENDER_REQUEST");
                Intent intent2 = jVar.f3201d;
                if (intent2 != null && (bundleExtra = intent2.getBundleExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE")) != null) {
                    intent.putExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE", bundleExtra);
                    intent2.removeExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE");
                    if (intent2.getBooleanExtra("androidx.fragment.extra.ACTIVITY_OPTIONS_BUNDLE", false)) {
                        IntentSender intentSender = jVar.f3200c;
                        d3.i.e("intentSender", intentSender);
                        jVar = new androidx.activity.result.j(intentSender, null, jVar.f3202e, jVar.f);
                    }
                }
                intent.putExtra("androidx.activity.result.contract.extra.INTENT_SENDER_REQUEST", jVar);
                if (Log.isLoggable("FragmentManager", 2)) {
                    Log.v("FragmentManager", "CreateIntent created the following intent: " + intent);
                }
                return intent;
            case 1:
                String[] strArr = (String[]) obj;
                d3.i.e("context", componentActivity);
                d3.i.e("input", strArr);
                Intent intentPutExtra = new Intent("androidx.activity.result.contract.action.REQUEST_PERMISSIONS").putExtra("androidx.activity.result.contract.extra.PERMISSIONS", strArr);
                d3.i.d("Intent(ACTION_REQUEST_PE…EXTRA_PERMISSIONS, input)", intentPutExtra);
                return intentPutExtra;
            default:
                Intent intent3 = (Intent) obj;
                d3.i.e("context", componentActivity);
                d3.i.e("input", intent3);
                return intent3;
        }
    }

    @Override // b.AbstractC0194a
    public K.j b(ComponentActivity componentActivity, Object obj) {
        switch (this.f3768a) {
            case 1:
                String[] strArr = (String[]) obj;
                d3.i.e("context", componentActivity);
                d3.i.e("input", strArr);
                if (strArr.length == 0) {
                    return new K.j(R2.v.f2326c);
                }
                for (String str : strArr) {
                    if (str == null) {
                        throw new NullPointerException("permission must be non-null");
                    }
                    if (componentActivity.checkPermission(str, Process.myPid(), Process.myUid()) != 0) {
                        return null;
                    }
                }
                int iY1 = R2.z.y1(strArr.length);
                if (iY1 < 16) {
                    iY1 = 16;
                }
                LinkedHashMap linkedHashMap = new LinkedHashMap(iY1);
                for (String str2 : strArr) {
                    linkedHashMap.put(str2, Boolean.TRUE);
                }
                return new K.j(linkedHashMap);
            default:
                return super.b(componentActivity, obj);
        }
    }

    @Override // b.AbstractC0194a
    public final Object c(Intent intent, int i5) {
        switch (this.f3768a) {
            case 0:
                return new androidx.activity.result.a(intent, i5);
            case 1:
                R2.v vVar = R2.v.f2326c;
                if (i5 != -1 || intent == null) {
                    return vVar;
                }
                String[] stringArrayExtra = intent.getStringArrayExtra("androidx.activity.result.contract.extra.PERMISSIONS");
                int[] intArrayExtra = intent.getIntArrayExtra("androidx.activity.result.contract.extra.PERMISSION_GRANT_RESULTS");
                if (intArrayExtra == null || stringArrayExtra == null) {
                    return vVar;
                }
                ArrayList arrayList = new ArrayList(intArrayExtra.length);
                for (int i6 : intArrayExtra) {
                    arrayList.add(Boolean.valueOf(i6 == 0));
                }
                return R2.z.C1(R2.m.l1(R2.i.m0(stringArrayExtra), arrayList));
            default:
                return new androidx.activity.result.a(intent, i5);
        }
    }
}
