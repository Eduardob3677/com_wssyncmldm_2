package Q1;

import android.view.View;
import android.view.ViewGroup;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.sidesheet.SideSheetBehavior;

/* loaded from: classes.dex */
public final class a extends W1.a {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f2202b;

    /* renamed from: c, reason: collision with root package name */
    public final SideSheetBehavior f2203c;

    public /* synthetic */ a(SideSheetBehavior sideSheetBehavior, int i5) {
        this.f2202b = i5;
        this.f2203c = sideSheetBehavior;
    }

    @Override // W1.a
    public final int D() {
        switch (this.f2202b) {
            case 0:
                SideSheetBehavior sideSheetBehavior = this.f2203c;
                return Math.max(0, sideSheetBehavior.n + sideSheetBehavior.f6061o);
            default:
                SideSheetBehavior sideSheetBehavior2 = this.f2203c;
                return Math.max(0, (sideSheetBehavior2.f6060m - sideSheetBehavior2.f6059l) - sideSheetBehavior2.f6061o);
        }
    }

    @Override // W1.a
    public final int F() {
        switch (this.f2202b) {
            case 0:
                SideSheetBehavior sideSheetBehavior = this.f2203c;
                return (-sideSheetBehavior.f6059l) - sideSheetBehavior.f6061o;
            default:
                return this.f2203c.f6060m;
        }
    }

    @Override // W1.a
    public final int G() {
        switch (this.f2202b) {
            case 0:
                return this.f2203c.f6061o;
            default:
                return this.f2203c.f6060m;
        }
    }

    @Override // W1.a
    public final int H() {
        switch (this.f2202b) {
            case 0:
                return -this.f2203c.f6059l;
            default:
                return D();
        }
    }

    @Override // W1.a
    public final int I(View view) {
        switch (this.f2202b) {
            case 0:
                return view.getRight() + this.f2203c.f6061o;
            default:
                return view.getLeft() - this.f2203c.f6061o;
        }
    }

    @Override // W1.a
    public final int J(CoordinatorLayout coordinatorLayout) {
        switch (this.f2202b) {
            case 0:
                return coordinatorLayout.getLeft();
            default:
                return coordinatorLayout.getRight();
        }
    }

    @Override // W1.a
    public final int M() {
        switch (this.f2202b) {
            case 0:
                return 1;
            default:
                return 0;
        }
    }

    @Override // W1.a
    public final boolean Q(float f) {
        switch (this.f2202b) {
            case 0:
                if (f > 0.0f) {
                }
                break;
            default:
                if (f < 0.0f) {
                }
                break;
        }
        return false;
    }

    @Override // W1.a
    public final boolean T(View view) {
        switch (this.f2202b) {
            case 0:
                if (view.getRight() < (D() - F()) / 2) {
                }
                break;
            default:
                if (view.getLeft() > (D() + this.f2203c.f6060m) / 2) {
                }
                break;
        }
        return false;
    }

    @Override // W1.a
    public final boolean U(float f, float f5) {
        switch (this.f2202b) {
            case 0:
                if (Math.abs(f) > Math.abs(f5)) {
                    float fAbs = Math.abs(f);
                    this.f2203c.getClass();
                    if (fAbs > 500) {
                    }
                }
                break;
            default:
                if (Math.abs(f) > Math.abs(f5)) {
                    float fAbs2 = Math.abs(f);
                    this.f2203c.getClass();
                    if (fAbs2 > 500) {
                    }
                }
                break;
        }
        return false;
    }

    @Override // W1.a
    public final int g(ViewGroup.MarginLayoutParams marginLayoutParams) {
        switch (this.f2202b) {
            case 0:
                return marginLayoutParams.leftMargin;
            default:
                return marginLayoutParams.rightMargin;
        }
    }

    @Override // W1.a
    public final float h(int i5) {
        switch (this.f2202b) {
            case 0:
                float F4 = F();
                return (i5 - F4) / (D() - F4);
            default:
                float f = this.f2203c.f6060m;
                return (f - i5) / (f - D());
        }
    }

    @Override // W1.a
    public final boolean k0(View view, float f) {
        switch (this.f2202b) {
            case 0:
                if (Math.abs((f * this.f2203c.f6058k) + view.getLeft()) > 0.5f) {
                }
                break;
            default:
                if (Math.abs((f * this.f2203c.f6058k) + view.getRight()) > 0.5f) {
                }
                break;
        }
        return false;
    }

    @Override // W1.a
    public final void n0(ViewGroup.MarginLayoutParams marginLayoutParams, int i5, int i6) {
        switch (this.f2202b) {
            case 0:
                if (i5 <= this.f2203c.f6060m) {
                    marginLayoutParams.leftMargin = i6;
                    break;
                }
                break;
            default:
                int i7 = this.f2203c.f6060m;
                if (i5 <= i7) {
                    marginLayoutParams.rightMargin = i7 - i5;
                    break;
                }
                break;
        }
    }
}
