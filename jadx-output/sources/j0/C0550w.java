package j0;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;

/* renamed from: j0.w, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0550w extends androidx.emoji2.text.f {

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f7594d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C0550w(J j3, int i5) {
        super(j3);
        this.f7594d = i5;
    }

    @Override // androidx.emoji2.text.f
    public final int b(View view) {
        switch (this.f7594d) {
            case 0:
                K k5 = (K) view.getLayoutParams();
                ((J) this.f3692b).getClass();
                return view.getRight() + ((K) view.getLayoutParams()).f7353b.right + ((ViewGroup.MarginLayoutParams) k5).rightMargin;
            default:
                K k6 = (K) view.getLayoutParams();
                ((J) this.f3692b).getClass();
                return view.getBottom() + ((K) view.getLayoutParams()).f7353b.bottom + ((ViewGroup.MarginLayoutParams) k6).bottomMargin;
        }
    }

    @Override // androidx.emoji2.text.f
    public final int c(View view) {
        switch (this.f7594d) {
            case 0:
                K k5 = (K) view.getLayoutParams();
                ((J) this.f3692b).getClass();
                Rect rect = ((K) view.getLayoutParams()).f7353b;
                return view.getMeasuredWidth() + rect.left + rect.right + ((ViewGroup.MarginLayoutParams) k5).leftMargin + ((ViewGroup.MarginLayoutParams) k5).rightMargin;
            default:
                K k6 = (K) view.getLayoutParams();
                ((J) this.f3692b).getClass();
                Rect rect2 = ((K) view.getLayoutParams()).f7353b;
                return view.getMeasuredHeight() + rect2.top + rect2.bottom + ((ViewGroup.MarginLayoutParams) k6).topMargin + ((ViewGroup.MarginLayoutParams) k6).bottomMargin;
        }
    }

    @Override // androidx.emoji2.text.f
    public final int d(View view) {
        switch (this.f7594d) {
            case 0:
                K k5 = (K) view.getLayoutParams();
                ((J) this.f3692b).getClass();
                Rect rect = ((K) view.getLayoutParams()).f7353b;
                return view.getMeasuredHeight() + rect.top + rect.bottom + ((ViewGroup.MarginLayoutParams) k5).topMargin + ((ViewGroup.MarginLayoutParams) k5).bottomMargin;
            default:
                K k6 = (K) view.getLayoutParams();
                ((J) this.f3692b).getClass();
                Rect rect2 = ((K) view.getLayoutParams()).f7353b;
                return view.getMeasuredWidth() + rect2.left + rect2.right + ((ViewGroup.MarginLayoutParams) k6).leftMargin + ((ViewGroup.MarginLayoutParams) k6).rightMargin;
        }
    }

    @Override // androidx.emoji2.text.f
    public final int e(View view) {
        switch (this.f7594d) {
            case 0:
                K k5 = (K) view.getLayoutParams();
                ((J) this.f3692b).getClass();
                return (view.getLeft() - ((K) view.getLayoutParams()).f7353b.left) - ((ViewGroup.MarginLayoutParams) k5).leftMargin;
            default:
                K k6 = (K) view.getLayoutParams();
                ((J) this.f3692b).getClass();
                return (view.getTop() - ((K) view.getLayoutParams()).f7353b.top) - ((ViewGroup.MarginLayoutParams) k6).topMargin;
        }
    }

    @Override // androidx.emoji2.text.f
    public final int f() {
        switch (this.f7594d) {
            case 0:
                return ((J) this.f3692b).n;
            default:
                return ((J) this.f3692b).f7351o;
        }
    }

    @Override // androidx.emoji2.text.f
    public final int g() {
        switch (this.f7594d) {
            case 0:
                J j3 = (J) this.f3692b;
                return j3.n - j3.D();
            default:
                J j5 = (J) this.f3692b;
                return j5.f7351o - j5.B();
        }
    }

    @Override // androidx.emoji2.text.f
    public final int h() {
        switch (this.f7594d) {
            case 0:
                return ((J) this.f3692b).D();
            default:
                return ((J) this.f3692b).B();
        }
    }

    @Override // androidx.emoji2.text.f
    public final int i() {
        switch (this.f7594d) {
            case 0:
                return ((J) this.f3692b).f7349l;
            default:
                return ((J) this.f3692b).f7350m;
        }
    }

    @Override // androidx.emoji2.text.f
    public final int j() {
        switch (this.f7594d) {
            case 0:
                return ((J) this.f3692b).f7350m;
            default:
                return ((J) this.f3692b).f7349l;
        }
    }

    @Override // androidx.emoji2.text.f
    public final int k() {
        switch (this.f7594d) {
            case 0:
                return ((J) this.f3692b).C();
            default:
                return ((J) this.f3692b).E();
        }
    }

    @Override // androidx.emoji2.text.f
    public final int l() {
        switch (this.f7594d) {
            case 0:
                J j3 = (J) this.f3692b;
                return (j3.n - j3.C()) - j3.D();
            default:
                J j5 = (J) this.f3692b;
                return (j5.f7351o - j5.E()) - j5.B();
        }
    }

    @Override // androidx.emoji2.text.f
    public final int n(View view) {
        switch (this.f7594d) {
            case 0:
                J j3 = (J) this.f3692b;
                Rect rect = (Rect) this.f3693c;
                j3.I(rect, view);
                return rect.right;
            default:
                J j5 = (J) this.f3692b;
                Rect rect2 = (Rect) this.f3693c;
                j5.I(rect2, view);
                return rect2.bottom;
        }
    }

    @Override // androidx.emoji2.text.f
    public final int o(View view) {
        switch (this.f7594d) {
            case 0:
                J j3 = (J) this.f3692b;
                Rect rect = (Rect) this.f3693c;
                j3.I(rect, view);
                return rect.left;
            default:
                J j5 = (J) this.f3692b;
                Rect rect2 = (Rect) this.f3693c;
                j5.I(rect2, view);
                return rect2.top;
        }
    }

    @Override // androidx.emoji2.text.f
    public final void p(int i5) {
        switch (this.f7594d) {
            case 0:
                ((J) this.f3692b).M(i5);
                break;
            default:
                ((J) this.f3692b).N(i5);
                break;
        }
    }
}
