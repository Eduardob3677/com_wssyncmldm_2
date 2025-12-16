package androidx.fragment.app;

import android.util.Log;
import java.util.ArrayList;
import java.util.Map;

/* loaded from: classes.dex */
public final class P implements androidx.activity.result.b {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3758a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Z f3759b;

    public /* synthetic */ P(Z z4, int i5) {
        this.f3758a = i5;
        this.f3759b = z4;
    }

    @Override // androidx.activity.result.b
    public final void a(Object obj) {
        switch (this.f3758a) {
            case 0:
                Map map = (Map) obj;
                String[] strArr = (String[]) map.keySet().toArray(new String[0]);
                ArrayList arrayList = new ArrayList(map.values());
                int[] iArr = new int[arrayList.size()];
                for (int i5 = 0; i5 < arrayList.size(); i5++) {
                    iArr[i5] = ((Boolean) arrayList.get(i5)).booleanValue() ? 0 : -1;
                }
                Z z4 = this.f3759b;
                W w2 = (W) z4.f3776C.pollFirst();
                if (w2 == null) {
                    Log.w("FragmentManager", "No permissions were requested for " + this);
                    break;
                } else {
                    h0 h0Var = z4.f3788c;
                    String str = w2.f3769c;
                    Fragment fragmentC = h0Var.c(str);
                    if (fragmentC == null) {
                        Log.w("FragmentManager", "Permission request result delivered for unknown Fragment " + str);
                        break;
                    } else {
                        fragmentC.onRequestPermissionsResult(w2.f3770d, strArr, iArr);
                        break;
                    }
                }
            case 1:
                androidx.activity.result.a aVar = (androidx.activity.result.a) obj;
                Z z5 = this.f3759b;
                W w4 = (W) z5.f3776C.pollLast();
                if (w4 == null) {
                    Log.w("FragmentManager", "No Activities were started for result for " + this);
                    break;
                } else {
                    h0 h0Var2 = z5.f3788c;
                    String str2 = w4.f3769c;
                    Fragment fragmentC2 = h0Var2.c(str2);
                    if (fragmentC2 == null) {
                        Log.w("FragmentManager", "Activity result delivered for unknown Fragment " + str2);
                        break;
                    } else {
                        fragmentC2.onActivityResult(w4.f3770d, aVar.f3185c, aVar.f3186d);
                        break;
                    }
                }
            default:
                androidx.activity.result.a aVar2 = (androidx.activity.result.a) obj;
                Z z6 = this.f3759b;
                W w5 = (W) z6.f3776C.pollFirst();
                if (w5 == null) {
                    Log.w("FragmentManager", "No IntentSenders were started for " + this);
                    break;
                } else {
                    h0 h0Var3 = z6.f3788c;
                    String str3 = w5.f3769c;
                    Fragment fragmentC3 = h0Var3.c(str3);
                    if (fragmentC3 == null) {
                        Log.w("FragmentManager", "Intent Sender result delivered for unknown Fragment " + str3);
                        break;
                    } else {
                        fragmentC3.onActivityResult(w5.f3770d, aVar2.f3185c, aVar2.f3186d);
                        break;
                    }
                }
        }
    }
}
