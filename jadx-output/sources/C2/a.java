package C2;

import com.samsung.android.fotaagent.common.log.Log;

/* loaded from: classes.dex */
public final /* synthetic */ class a implements I.a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f367a;

    public /* synthetic */ a(int i5) {
        this.f367a = i5;
    }

    @Override // I.a
    public final void accept(Object obj) {
        String str = (String) obj;
        switch (this.f367a) {
            case 0:
                Log.D(str);
                break;
            default:
                Log.E(str);
                break;
        }
    }
}
