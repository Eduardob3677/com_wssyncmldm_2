package j0;

import J.C0042p;
import android.util.Log;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;

/* renamed from: j0.y, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0552y {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ RecyclerView f7599a;

    public /* synthetic */ C0552y(RecyclerView recyclerView) {
        this.f7599a = recyclerView;
    }

    public void a(C0529a c0529a) {
        int i5 = c0529a.f7390a;
        RecyclerView recyclerView = this.f7599a;
        if (i5 == 1) {
            recyclerView.f4884p.W(c0529a.f7391b, c0529a.f7393d);
            return;
        }
        if (i5 == 2) {
            recyclerView.f4884p.Z(c0529a.f7391b, c0529a.f7393d);
        } else if (i5 == 4) {
            recyclerView.f4884p.a0(c0529a.f7391b, c0529a.f7393d);
        } else {
            if (i5 != 8) {
                return;
            }
            recyclerView.f4884p.Y(c0529a.f7391b, c0529a.f7393d);
        }
    }

    public b0 b(int i5) {
        RecyclerView recyclerView = this.f7599a;
        int iJ = recyclerView.f4863h.j();
        int i6 = 0;
        b0 b0Var = null;
        while (true) {
            if (i6 >= iJ) {
                break;
            }
            b0 b0VarV = RecyclerView.V(recyclerView.f4863h.i(i6));
            if (b0VarV != null && !b0VarV.j() && b0VarV.f7408c == i5) {
                if (!recyclerView.f4863h.l(b0VarV.f7406a)) {
                    b0Var = b0VarV;
                    break;
                }
                b0Var = b0VarV;
            }
            i6++;
        }
        if (b0Var == null) {
            return null;
        }
        if (!recyclerView.f4863h.l(b0Var.f7406a)) {
            return b0Var;
        }
        if (RecyclerView.f4771m2) {
            Log.d("SeslRecyclerView", "assuming view holder cannot be find because it is hidden");
        }
        return null;
    }

    public void c(int i5, Object obj, int i6) {
        int i7;
        int i8;
        RecyclerView recyclerView = this.f7599a;
        int iJ = recyclerView.f4863h.j();
        int i9 = i6 + i5;
        for (int i10 = 0; i10 < iJ; i10++) {
            View viewI = recyclerView.f4863h.i(i10);
            b0 b0VarV = RecyclerView.V(viewI);
            if (b0VarV != null && !b0VarV.q() && (i8 = b0VarV.f7408c) >= i5 && i8 < i9) {
                b0VarV.b(2);
                b0VarV.a(obj);
                ((K) viewI.getLayoutParams()).f7354c = true;
            }
        }
        P p4 = recyclerView.f4855e;
        ArrayList arrayList = p4.f7365c;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            b0 b0Var = (b0) arrayList.get(size);
            if (b0Var != null && (i7 = b0Var.f7408c) >= i5 && i7 < i9) {
                b0Var.b(2);
                p4.g(size);
            }
        }
        recyclerView.f4885p0 = true;
    }

    public void d(int i5, int i6) {
        RecyclerView recyclerView = this.f7599a;
        int iJ = recyclerView.f4863h.j();
        for (int i7 = 0; i7 < iJ; i7++) {
            b0 b0VarV = RecyclerView.V(recyclerView.f4863h.i(i7));
            if (b0VarV != null && !b0VarV.q() && b0VarV.f7408c >= i5) {
                if (RecyclerView.f4771m2) {
                    Log.d("SeslRecyclerView", "offsetPositionRecordsForInsert attached child " + i7 + " holder " + b0VarV + " now at position " + (b0VarV.f7408c + i6));
                }
                b0VarV.n(i6, false);
                recyclerView.l0.f = true;
            }
        }
        ArrayList arrayList = recyclerView.f4855e.f7365c;
        int size = arrayList.size();
        for (int i8 = 0; i8 < size; i8++) {
            b0 b0Var = (b0) arrayList.get(i8);
            if (b0Var != null && b0Var.f7408c >= i5) {
                if (RecyclerView.f4771m2) {
                    Log.d("SeslRecyclerView", "offsetPositionRecordsForInsert cached " + i8 + " holder " + b0Var + " now at position " + (b0Var.f7408c + i6));
                }
                b0Var.n(i6, true);
            }
        }
        recyclerView.requestLayout();
        recyclerView.o0 = true;
    }

    public void e(int i5, int i6) {
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        RecyclerView recyclerView = this.f7599a;
        int iJ = recyclerView.f4863h.j();
        int i14 = -1;
        if (i5 < i6) {
            i8 = i5;
            i7 = i6;
            i9 = -1;
        } else {
            i7 = i5;
            i8 = i6;
            i9 = 1;
        }
        for (int i15 = 0; i15 < iJ; i15++) {
            b0 b0VarV = RecyclerView.V(recyclerView.f4863h.i(i15));
            if (b0VarV != null && (i13 = b0VarV.f7408c) >= i8 && i13 <= i7) {
                if (RecyclerView.f4771m2) {
                    Log.d("SeslRecyclerView", "offsetPositionRecordsForMove attached child " + i15 + " holder " + b0VarV);
                }
                if (b0VarV.f7408c == i5) {
                    b0VarV.n(i6 - i5, false);
                } else {
                    b0VarV.n(i9, false);
                }
                recyclerView.l0.f = true;
            }
        }
        P p4 = recyclerView.f4855e;
        p4.getClass();
        if (i5 < i6) {
            i11 = i5;
            i10 = i6;
        } else {
            i10 = i5;
            i11 = i6;
            i14 = 1;
        }
        ArrayList arrayList = p4.f7365c;
        int size = arrayList.size();
        for (int i16 = 0; i16 < size; i16++) {
            b0 b0Var = (b0) arrayList.get(i16);
            if (b0Var != null && (i12 = b0Var.f7408c) >= i11 && i12 <= i10) {
                if (i12 == i5) {
                    b0Var.n(i6 - i5, false);
                } else {
                    b0Var.n(i14, false);
                }
                if (RecyclerView.f4771m2) {
                    Log.d("SeslRecyclerView", "offsetPositionRecordsForMove cached child " + i16 + " holder " + b0Var);
                }
            }
        }
        recyclerView.requestLayout();
        recyclerView.o0 = true;
    }

    public void f(b0 b0Var, C0042p c0042p, C0042p c0042p2) {
        boolean zG;
        int i5;
        int i6;
        RecyclerView recyclerView = this.f7599a;
        recyclerView.getClass();
        b0Var.p(false);
        e0 e0Var = (e0) recyclerView.f4815O;
        e0Var.getClass();
        if (c0042p == null || ((i5 = c0042p.f999a) == (i6 = c0042p2.f999a) && c0042p.f1000b == c0042p2.f1000b)) {
            C0539k c0539k = (C0539k) e0Var;
            c0539k.l(b0Var);
            b0Var.f7406a.setAlpha(0.0f);
            c0539k.f.add(b0Var);
            int i7 = c0539k.f7493p;
            if ((i7 & 8) == 0) {
                c0539k.f7493p = i7 | 8;
            }
            zG = true;
        } else {
            zG = e0Var.g(b0Var, i5, c0042p.f1000b, i6, c0042p2.f1000b);
        }
        if (zG) {
            recyclerView.l0();
        }
    }

    public void g(b0 b0Var, C0042p c0042p, C0042p c0042p2) {
        boolean zG;
        RecyclerView recyclerView = this.f7599a;
        recyclerView.f4855e.l(b0Var);
        recyclerView.i(b0Var);
        b0Var.p(false);
        e0 e0Var = (e0) recyclerView.f4815O;
        e0Var.getClass();
        int i5 = c0042p.f999a;
        int i6 = c0042p.f1000b;
        View view = b0Var.f7406a;
        int left = c0042p2 == null ? view.getLeft() : c0042p2.f999a;
        int top = c0042p2 == null ? view.getTop() : c0042p2.f1000b;
        if (b0Var.j() || (i5 == left && i6 == top)) {
            C0539k c0539k = (C0539k) e0Var;
            c0539k.l(b0Var);
            c0539k.f7484e.add(b0Var);
            if (view.getBottom() > c0539k.f7494q) {
                c0539k.f7494q = view.getBottom();
            }
            int i7 = c0539k.f7493p;
            if ((i7 & 1) == 0) {
                c0539k.f7493p = i7 | 1;
            }
            zG = true;
        } else {
            view.layout(left, top, view.getWidth() + left, view.getHeight() + top);
            zG = e0Var.g(b0Var, i5, i6, left, top);
        }
        if (zG) {
            recyclerView.l0();
        }
    }

    public void h(int i5) {
        RecyclerView recyclerView = this.f7599a;
        View childAt = recyclerView.getChildAt(i5);
        if (childAt != null) {
            recyclerView.w(childAt);
            childAt.clearAnimation();
        }
        recyclerView.removeViewAt(i5);
    }
}
