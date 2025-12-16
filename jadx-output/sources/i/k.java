package i;

import J.b0;
import k.I1;

/* loaded from: classes.dex */
public final class k extends Z0.j {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7134b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f7135c;

    /* renamed from: d, reason: collision with root package name */
    public int f7136d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f7137e;

    public k(l lVar) {
        this.f7134b = 0;
        this.f7137e = lVar;
        this.f7135c = false;
        this.f7136d = 0;
    }

    @Override // J.b0
    public final void c() {
        switch (this.f7134b) {
            case 0:
                int i5 = this.f7136d + 1;
                this.f7136d = i5;
                l lVar = (l) this.f7137e;
                if (i5 == lVar.f7138a.size()) {
                    b0 b0Var = lVar.f7141d;
                    if (b0Var != null) {
                        b0Var.c();
                    }
                    this.f7136d = 0;
                    this.f7135c = false;
                    lVar.f7142e = false;
                    break;
                }
                break;
            default:
                if (!this.f7135c) {
                    ((I1) this.f7137e).f7694a.setVisibility(this.f7136d);
                    break;
                }
                break;
        }
    }

    @Override // Z0.j, J.b0
    public void d() {
        switch (this.f7134b) {
            case 1:
                this.f7135c = true;
                break;
        }
    }

    @Override // Z0.j, J.b0
    public final void g() {
        switch (this.f7134b) {
            case 0:
                if (!this.f7135c) {
                    this.f7135c = true;
                    b0 b0Var = ((l) this.f7137e).f7141d;
                    if (b0Var != null) {
                        b0Var.g();
                        break;
                    }
                }
                break;
            default:
                ((I1) this.f7137e).f7694a.setVisibility(0);
                break;
        }
    }

    public k(I1 i12, int i5) {
        this.f7134b = 1;
        this.f7137e = i12;
        this.f7136d = i5;
        this.f7135c = false;
    }
}
