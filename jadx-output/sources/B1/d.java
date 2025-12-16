package B1;

import android.view.View;
import android.view.ViewGroup;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.sidesheet.SideSheetBehavior;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.LinkedHashSet;
import w.AbstractC0897a;

/* loaded from: classes.dex */
public final class d extends Z0.j {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f199b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AbstractC0897a f200c;

    public /* synthetic */ d(AbstractC0897a abstractC0897a, int i5) {
        this.f199b = i5;
        this.f200c = abstractC0897a;
    }

    @Override // Z0.j
    public int O(View view) {
        switch (this.f199b) {
            case 1:
                SideSheetBehavior sideSheetBehavior = (SideSheetBehavior) this.f200c;
                return sideSheetBehavior.f6059l + sideSheetBehavior.f6061o;
            default:
                return super.O(view);
        }
    }

    @Override // Z0.j
    public int P() {
        switch (this.f199b) {
            case 0:
                BottomSheetBehavior bottomSheetBehavior = (BottomSheetBehavior) this.f200c;
                return bottomSheetBehavior.f5844I ? bottomSheetBehavior.f5855T : bottomSheetBehavior.f5842G;
            default:
                return super.P();
        }
    }

    @Override // Z0.j
    public final void Z(int i5) {
        switch (this.f199b) {
            case 0:
                if (i5 == 1) {
                    BottomSheetBehavior bottomSheetBehavior = (BottomSheetBehavior) this.f200c;
                    if (bottomSheetBehavior.f5846K) {
                        bottomSheetBehavior.D(1);
                        break;
                    }
                }
                break;
            default:
                if (i5 == 1) {
                    SideSheetBehavior sideSheetBehavior = (SideSheetBehavior) this.f200c;
                    if (sideSheetBehavior.f6054g) {
                        sideSheetBehavior.s(1);
                        break;
                    }
                }
                break;
        }
    }

    @Override // Z0.j
    public final void a0(View view, int i5, int i6) {
        ViewGroup.MarginLayoutParams marginLayoutParams;
        switch (this.f199b) {
            case 0:
                ((BottomSheetBehavior) this.f200c).v(i6);
                return;
            default:
                SideSheetBehavior sideSheetBehavior = (SideSheetBehavior) this.f200c;
                WeakReference weakReference = sideSheetBehavior.f6063q;
                View view2 = weakReference != null ? (View) weakReference.get() : null;
                if (view2 != null && (marginLayoutParams = (ViewGroup.MarginLayoutParams) view2.getLayoutParams()) != null) {
                    sideSheetBehavior.f6049a.n0(marginLayoutParams, view.getLeft(), view.getRight());
                    view2.setLayoutParams(marginLayoutParams);
                }
                LinkedHashSet linkedHashSet = sideSheetBehavior.f6067u;
                if (linkedHashSet.isEmpty()) {
                    return;
                }
                sideSheetBehavior.f6049a.h(i5);
                Iterator it = linkedHashSet.iterator();
                if (it.hasNext()) {
                    B.f.F(it.next());
                    throw null;
                }
                return;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x002c  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00ad  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00e6  */
    @Override // Z0.j
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void b0(View view, float f, float f5) {
        switch (this.f199b) {
            case 0:
                int i5 = 6;
                BottomSheetBehavior bottomSheetBehavior = (BottomSheetBehavior) this.f200c;
                if (f5 < 0.0f) {
                    if (bottomSheetBehavior.f5864b) {
                        i5 = 3;
                    } else {
                        int top = view.getTop();
                        System.currentTimeMillis();
                        if (top <= bottomSheetBehavior.E) {
                        }
                    }
                } else if (bottomSheetBehavior.f5844I && bottomSheetBehavior.E(view, f5)) {
                    if (Math.abs(f) >= Math.abs(f5) || f5 <= bottomSheetBehavior.f5868d) {
                        if (view.getTop() > (bottomSheetBehavior.y() + bottomSheetBehavior.f5855T) / 2) {
                            i5 = 5;
                        } else if (bottomSheetBehavior.f5864b || Math.abs(view.getTop() - bottomSheetBehavior.y()) < Math.abs(view.getTop() - bottomSheetBehavior.E)) {
                        }
                    }
                } else if (f5 == 0.0f || Math.abs(f) > Math.abs(f5)) {
                    int top2 = view.getTop();
                    if (!bottomSheetBehavior.f5864b) {
                        int i6 = bottomSheetBehavior.E;
                        if (top2 < i6) {
                            if (top2 < Math.abs(top2 - bottomSheetBehavior.f5842G)) {
                            }
                        } else if (Math.abs(top2 - i6) >= Math.abs(top2 - bottomSheetBehavior.f5842G)) {
                        }
                    } else if (Math.abs(top2 - bottomSheetBehavior.f5840D) >= Math.abs(top2 - bottomSheetBehavior.f5842G)) {
                        i5 = 4;
                    }
                } else if (!bottomSheetBehavior.f5864b) {
                    int top3 = view.getTop();
                    if (Math.abs(top3 - bottomSheetBehavior.E) >= Math.abs(top3 - bottomSheetBehavior.f5842G)) {
                    }
                }
                bottomSheetBehavior.getClass();
                bottomSheetBehavior.F(view, i5, true);
                break;
            default:
                SideSheetBehavior sideSheetBehavior = (SideSheetBehavior) this.f200c;
                int i7 = 3;
                if (!sideSheetBehavior.f6049a.Q(f)) {
                    if (sideSheetBehavior.f6049a.k0(view, f)) {
                        if (sideSheetBehavior.f6049a.U(f, f5) || sideSheetBehavior.f6049a.T(view)) {
                            i7 = 5;
                        }
                    } else if (f == 0.0f || Math.abs(f) <= Math.abs(f5)) {
                        int left = view.getLeft();
                        if (Math.abs(left - sideSheetBehavior.f6049a.D()) >= Math.abs(left - sideSheetBehavior.f6049a.F())) {
                        }
                    }
                }
                sideSheetBehavior.u(view, i7, true);
                break;
        }
    }

    @Override // Z0.j
    public final boolean d0(int i5, View view) {
        WeakReference weakReference;
        switch (this.f199b) {
            case 0:
                BottomSheetBehavior bottomSheetBehavior = (BottomSheetBehavior) this.f200c;
                int i6 = bottomSheetBehavior.f5847L;
                if (i6 != 1 && !bottomSheetBehavior.f5863a0) {
                    if (i6 == 3 && bottomSheetBehavior.f5860Y == i5) {
                        WeakReference weakReference2 = bottomSheetBehavior.f5857V;
                        View view2 = weakReference2 != null ? (View) weakReference2.get() : null;
                        if (view2 != null && view2.canScrollVertically(-1)) {
                        }
                    }
                    System.currentTimeMillis();
                    WeakReference weakReference3 = bottomSheetBehavior.f5856U;
                    if (weakReference3 != null && weakReference3.get() == view) {
                        break;
                    }
                }
                break;
            default:
                SideSheetBehavior sideSheetBehavior = (SideSheetBehavior) this.f200c;
                if (sideSheetBehavior.f6055h != 1 && (weakReference = sideSheetBehavior.f6062p) != null && weakReference.get() == view) {
                    break;
                }
                break;
        }
        return true;
    }

    @Override // Z0.j
    public final int o(int i5, View view) {
        switch (this.f199b) {
            case 0:
                return view.getLeft();
            default:
                SideSheetBehavior sideSheetBehavior = (SideSheetBehavior) this.f200c;
                return Z0.j.n(i5, sideSheetBehavior.f6049a.H(), sideSheetBehavior.f6049a.G());
        }
    }

    @Override // Z0.j
    public final int p(int i5, View view) {
        switch (this.f199b) {
            case 0:
                return Z0.j.n(i5, ((BottomSheetBehavior) this.f200c).y(), P());
            default:
                return view.getTop();
        }
    }
}
