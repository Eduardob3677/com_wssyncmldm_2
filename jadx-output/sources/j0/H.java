package j0;

import android.view.View;
import android.view.ViewGroup;

/* loaded from: classes.dex */
public final class H {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f7333a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ J f7334b;

    public /* synthetic */ H(J j3, int i5) {
        this.f7333a = i5;
        this.f7334b = j3;
    }

    public final View a(int i5) {
        switch (this.f7333a) {
        }
        return this.f7334b.u(i5);
    }

    public final int b(View view) {
        switch (this.f7333a) {
            case 0:
                K k5 = (K) view.getLayoutParams();
                this.f7334b.getClass();
                return view.getRight() + ((K) view.getLayoutParams()).f7353b.right + ((ViewGroup.MarginLayoutParams) k5).rightMargin;
            default:
                K k6 = (K) view.getLayoutParams();
                this.f7334b.getClass();
                return view.getBottom() + ((K) view.getLayoutParams()).f7353b.bottom + ((ViewGroup.MarginLayoutParams) k6).bottomMargin;
        }
    }

    public final int c(View view) {
        switch (this.f7333a) {
            case 0:
                K k5 = (K) view.getLayoutParams();
                this.f7334b.getClass();
                return (view.getLeft() - ((K) view.getLayoutParams()).f7353b.left) - ((ViewGroup.MarginLayoutParams) k5).leftMargin;
            default:
                K k6 = (K) view.getLayoutParams();
                this.f7334b.getClass();
                return (view.getTop() - ((K) view.getLayoutParams()).f7353b.top) - ((ViewGroup.MarginLayoutParams) k6).topMargin;
        }
    }

    public final int d() {
        switch (this.f7333a) {
            case 0:
                J j3 = this.f7334b;
                return j3.n - j3.D();
            default:
                J j5 = this.f7334b;
                return j5.f7351o - j5.B();
        }
    }

    public final int e() {
        switch (this.f7333a) {
            case 0:
                return this.f7334b.C();
            default:
                return this.f7334b.E();
        }
    }
}
