package C0;

import android.view.View;

/* loaded from: classes.dex */
public final class h extends u {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f278a;

    /* renamed from: b, reason: collision with root package name */
    public Object f279b;

    public /* synthetic */ h() {
        this.f278a = 2;
    }

    @Override // C0.s
    public final void c(t tVar) {
        switch (this.f278a) {
            case 0:
                C0013c c0013c = A.f247a;
                ((View) this.f279b).setTransitionAlpha(1.0f);
                tVar.w(this);
                break;
            case 1:
                ((t) this.f279b).z();
                tVar.w(this);
                break;
            default:
                y yVar = (y) this.f279b;
                int i5 = yVar.f332B - 1;
                yVar.f332B = i5;
                if (i5 == 0) {
                    yVar.f333C = false;
                    yVar.n();
                }
                tVar.w(this);
                break;
        }
    }

    @Override // C0.u, C0.s
    public void d(t tVar) {
        switch (this.f278a) {
            case 2:
                y yVar = (y) this.f279b;
                if (!yVar.f333C) {
                    yVar.G();
                    yVar.f333C = true;
                    break;
                }
                break;
        }
    }

    public /* synthetic */ h(int i5, Object obj) {
        this.f278a = i5;
        this.f279b = obj;
    }
}
