package j0;

import J.C0027a;
import J.C0028b;
import J.C0042p;
import android.os.Trace;
import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.internal.p000firebaseauthapi.b5;
import com.samsung.android.knox.container.KnoxContainerManager;
import h0.AbstractC0432c;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.List;
import java.util.Set;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public final class P {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f7363a;

    /* renamed from: b, reason: collision with root package name */
    public ArrayList f7364b;

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f7365c;

    /* renamed from: d, reason: collision with root package name */
    public final List f7366d;

    /* renamed from: e, reason: collision with root package name */
    public int f7367e;
    public int f;

    /* renamed from: g, reason: collision with root package name */
    public O f7368g;

    /* renamed from: h, reason: collision with root package name */
    public final /* synthetic */ RecyclerView f7369h;

    public P(RecyclerView recyclerView) {
        this.f7369h = recyclerView;
        ArrayList arrayList = new ArrayList();
        this.f7363a = arrayList;
        this.f7364b = null;
        this.f7365c = new ArrayList();
        this.f7366d = Collections.unmodifiableList(arrayList);
        this.f7367e = 2;
        this.f = 2;
    }

    public final void a(b0 b0Var, boolean z4) {
        RecyclerView.q(b0Var);
        RecyclerView recyclerView = this.f7369h;
        d0 d0Var = recyclerView.s0;
        View view = b0Var.f7406a;
        if (d0Var != null) {
            C0028b c0028bJ = d0Var.j();
            J.Q.h(view, c0028bJ instanceof c0 ? (C0028b) ((c0) c0028bJ).f7427e.remove(view) : null);
        }
        if (z4) {
            ArrayList arrayList = recyclerView.f4887q;
            if (arrayList.size() > 0) {
                B.f.F(arrayList.get(0));
                throw null;
            }
            if (recyclerView.l0 != null) {
                recyclerView.f4867i.D(b0Var);
            }
            if (RecyclerView.f4771m2) {
                Log.d("SeslRecyclerView", "dispatchViewRecycled: " + b0Var);
            }
        }
        b0Var.f7422s = null;
        b0Var.f7421r = null;
        O oC = c();
        oC.getClass();
        int i5 = b0Var.f;
        ArrayList arrayList2 = oC.a(i5).f7356a;
        if (((N) oC.f7360a.get(i5)).f7357b <= arrayList2.size()) {
            L2.b.c(view);
        } else {
            if (RecyclerView.f4770l2 && arrayList2.contains(b0Var)) {
                throw new IllegalArgumentException("this scrap item already exists");
            }
            b0Var.o();
            arrayList2.add(b0Var);
        }
    }

    public final int b(int i5) {
        RecyclerView recyclerView = this.f7369h;
        if (i5 >= 0 && i5 < recyclerView.l0.b()) {
            return !recyclerView.l0.f7383g ? i5 : recyclerView.f4860g.f(i5, 0);
        }
        throw new IndexOutOfBoundsException("invalid position " + i5 + ". State item count is " + recyclerView.l0.b() + recyclerView.G());
    }

    public final O c() {
        if (this.f7368g == null) {
            O o2 = new O();
            o2.f7360a = new SparseArray();
            o2.f7361b = 0;
            o2.f7362c = Collections.newSetFromMap(new IdentityHashMap());
            this.f7368g = o2;
            d();
        }
        return this.f7368g;
    }

    public final void d() {
        RecyclerView recyclerView;
        AbstractC0526A abstractC0526A;
        O o2 = this.f7368g;
        if (o2 == null || (abstractC0526A = (recyclerView = this.f7369h).f4883o) == null || !recyclerView.f4895u) {
            return;
        }
        o2.f7362c.add(abstractC0526A);
    }

    public final void e(AbstractC0526A abstractC0526A, boolean z4) {
        O o2 = this.f7368g;
        if (o2 == null) {
            return;
        }
        Set set = o2.f7362c;
        set.remove(abstractC0526A);
        if (set.size() != 0 || z4) {
            return;
        }
        int i5 = 0;
        while (true) {
            SparseArray sparseArray = o2.f7360a;
            if (i5 >= sparseArray.size()) {
                return;
            }
            N n = (N) sparseArray.get(sparseArray.keyAt(i5));
            if (n != null) {
                ArrayList arrayList = n.f7356a;
                for (int i6 = 0; i6 < arrayList.size(); i6++) {
                    L2.b.c(((b0) arrayList.get(i6)).f7406a);
                }
            }
            i5++;
        }
    }

    public final void f() {
        ArrayList arrayList = this.f7365c;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            g(size);
        }
        arrayList.clear();
        if (RecyclerView.f4774r2) {
            b5 b5Var = this.f7369h.k0;
            int[] iArr = (int[]) b5Var.f5524d;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
            b5Var.f5523c = 0;
        }
    }

    public final void g(int i5) {
        if (RecyclerView.f4771m2) {
            Log.d("SeslRecyclerView", "Recycling cached view at index " + i5);
        }
        ArrayList arrayList = this.f7365c;
        b0 b0Var = (b0) arrayList.get(i5);
        if (RecyclerView.f4771m2) {
            Log.d("SeslRecyclerView", "CachedViewHolder to be recycled: " + b0Var);
        }
        a(b0Var, true);
        arrayList.remove(i5);
    }

    public final void h(View view) {
        b0 b0VarV = RecyclerView.V(view);
        boolean zL = b0VarV.l();
        RecyclerView recyclerView = this.f7369h;
        if (zL) {
            recyclerView.removeDetachedView(view, false);
        }
        if (b0VarV.k()) {
            b0VarV.n.l(b0VarV);
        } else if (b0VarV.r()) {
            b0VarV.f7414j &= -33;
        }
        i(b0VarV);
        if (recyclerView.f4815O == null || b0VarV.i()) {
            return;
        }
        recyclerView.f4815O.d(b0VarV);
    }

    /* JADX WARN: Code restructure failed: missing block: B:53:0x00ba, code lost:
    
        r5 = r5 - 1;
     */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x009b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void i(b0 b0Var) {
        boolean z4;
        boolean z5;
        int i5;
        boolean zK = b0Var.k();
        boolean z6 = true;
        RecyclerView recyclerView = this.f7369h;
        View view = b0Var.f7406a;
        if (zK || view.getParent() != null) {
            StringBuilder sb = new StringBuilder("Scrapped or attached views may not be recycled. isScrap:");
            sb.append(b0Var.k());
            sb.append(" isAttached:");
            sb.append(view.getParent() != null);
            sb.append(recyclerView.G());
            throw new IllegalArgumentException(sb.toString());
        }
        if (b0Var.l()) {
            StringBuilder sb2 = new StringBuilder("Tmp detached view should be removed from RecyclerView before it can be recycled: ");
            sb2.append(b0Var);
            throw new IllegalArgumentException(AbstractC0432c.f(recyclerView, sb2));
        }
        if (b0Var.q()) {
            throw new IllegalArgumentException(AbstractC0432c.f(recyclerView, new StringBuilder("Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle.")));
        }
        if ((b0Var.f7414j & 16) == 0) {
            WeakHashMap weakHashMap = J.Q.f940a;
            z4 = view.hasTransientState();
        }
        AbstractC0526A abstractC0526A = recyclerView.f4883o;
        boolean z7 = RecyclerView.f4770l2;
        ArrayList arrayList = this.f7365c;
        if (z7 && arrayList.contains(b0Var)) {
            StringBuilder sb3 = new StringBuilder("cached view received recycle internal? ");
            sb3.append(b0Var);
            throw new IllegalArgumentException(AbstractC0432c.f(recyclerView, sb3));
        }
        if (b0Var.i()) {
            if (this.f <= 0 || b0Var.e(526)) {
                z5 = false;
            } else {
                int size = arrayList.size();
                if (size >= this.f && size > 0) {
                    g(0);
                    size--;
                }
                if (RecyclerView.f4774r2 && size > 0) {
                    b5 b5Var = recyclerView.k0;
                    int i6 = b0Var.f7408c;
                    if (((int[]) b5Var.f5524d) != null) {
                        int i7 = b5Var.f5523c * 2;
                        for (int i8 = 0; i8 < i7; i8 += 2) {
                            if (((int[]) b5Var.f5524d)[i8] == i6) {
                                break;
                            }
                        }
                        i5 = size - 1;
                        loop1: while (i5 >= 0) {
                            int i9 = ((b0) arrayList.get(i5)).f7408c;
                            b5 b5Var2 = recyclerView.k0;
                            if (((int[]) b5Var2.f5524d) == null) {
                                break;
                            }
                            int i10 = b5Var2.f5523c * 2;
                            for (int i11 = 0; i11 < i10; i11 += 2) {
                                if (((int[]) b5Var2.f5524d)[i11] == i9) {
                                    break;
                                }
                            }
                            break loop1;
                        }
                        size = i5 + 1;
                    } else {
                        i5 = size - 1;
                        loop1: while (i5 >= 0) {
                        }
                        size = i5 + 1;
                    }
                }
                arrayList.add(size, b0Var);
                z5 = true;
            }
            if (z5) {
                z6 = false;
            } else {
                a(b0Var, true);
            }
            z = z5;
        } else {
            if (RecyclerView.f4771m2) {
                Log.d("SeslRecyclerView", "trying to recycle a non-recycleable holder. Hopefully, it will re-visit here. We are still removing it from animation lists" + recyclerView.G());
            }
            z6 = false;
        }
        recyclerView.f4867i.D(b0Var);
        if (z || z6 || !z4) {
            return;
        }
        L2.b.c(view);
        b0Var.f7422s = null;
        b0Var.f7421r = null;
    }

    public final void j(View view) {
        F f;
        b0 b0VarV = RecyclerView.V(view);
        boolean zE = b0VarV.e(12);
        RecyclerView recyclerView = this.f7369h;
        if (!zE && b0VarV.m() && (f = recyclerView.f4815O) != null) {
            C0539k c0539k = (C0539k) f;
            if (b0VarV.d().isEmpty() && c0539k.f7438d && !b0VarV.h()) {
                if (this.f7364b == null) {
                    this.f7364b = new ArrayList();
                }
                b0VarV.n = this;
                b0VarV.f7418o = true;
                this.f7364b.add(b0VarV);
                return;
            }
        }
        if (b0VarV.h() && !b0VarV.j() && !recyclerView.f4883o.f7328b) {
            throw new IllegalArgumentException(AbstractC0432c.f(recyclerView, new StringBuilder("Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool.")));
        }
        b0VarV.n = this;
        b0VarV.f7418o = false;
        this.f7363a.add(b0VarV);
    }

    /* JADX WARN: Removed duplicated region for block: B:120:0x020f  */
    /* JADX WARN: Removed duplicated region for block: B:201:0x03c0  */
    /* JADX WARN: Removed duplicated region for block: B:203:0x03c3  */
    /* JADX WARN: Removed duplicated region for block: B:283:0x0521  */
    /* JADX WARN: Removed duplicated region for block: B:364:0x0688  */
    /* JADX WARN: Removed duplicated region for block: B:365:0x0692  */
    /* JADX WARN: Removed duplicated region for block: B:371:0x06a8 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:373:0x06ac  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0082  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x012a  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x013e  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x014e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final b0 k(int i5, long j3) {
        boolean z4;
        b0 b0VarE;
        boolean z5;
        boolean z6;
        boolean z7;
        boolean z8;
        ViewGroup.LayoutParams layoutParams;
        K k5;
        RecyclerView recyclerViewP;
        b0 b0Var;
        b0 b0Var2;
        View view;
        int iB;
        boolean z9;
        int size;
        int iF;
        RecyclerView recyclerView = this.f7369h;
        if (i5 < 0 || i5 >= recyclerView.l0.b()) {
            throw new IndexOutOfBoundsException("Invalid item position " + i5 + "(" + i5 + "). Item count:" + recyclerView.l0.b() + recyclerView.G());
        }
        X x4 = recyclerView.l0;
        if (x4.f7383g) {
            ArrayList arrayList = this.f7364b;
            if (arrayList == null || (size = arrayList.size()) == 0) {
                b0VarE = null;
                z4 = b0VarE == null;
            } else {
                int i6 = 0;
                while (true) {
                    if (i6 < size) {
                        b0VarE = (b0) this.f7364b.get(i6);
                        if (!b0VarE.r() && b0VarE.c() == i5) {
                            b0VarE.b(32);
                            break;
                        }
                        i6++;
                    } else if (recyclerView.f4883o.f7328b && (iF = recyclerView.f4860g.f(i5, 0)) > 0 && iF < recyclerView.f4883o.a()) {
                        long jB = recyclerView.f4883o.b(iF);
                        for (int i7 = 0; i7 < size; i7++) {
                            b0 b0Var3 = (b0) this.f7364b.get(i7);
                            if (!b0Var3.r() && b0Var3.f7410e == jB) {
                                b0Var3.b(32);
                                b0VarE = b0Var3;
                                break;
                            }
                        }
                    }
                }
                b0VarE = null;
                if (b0VarE == null) {
                }
            }
        } else {
            z4 = false;
            b0VarE = null;
        }
        ArrayList arrayList2 = this.f7365c;
        ArrayList arrayList3 = this.f7363a;
        if (b0VarE == null) {
            int size2 = arrayList3.size();
            for (int i8 = 0; i8 < size2; i8++) {
                b0 b0Var4 = (b0) arrayList3.get(i8);
                if (!b0Var4.r() && b0Var4.c() == i5 && !b0Var4.h() && (x4.f7383g || !b0Var4.j())) {
                    b0Var4.b(32);
                    b0VarE = b0Var4;
                    break;
                }
            }
            D3.f fVar = recyclerView.f4863h;
            ArrayList arrayList4 = (ArrayList) fVar.f507e;
            int size3 = arrayList4.size();
            int i9 = 0;
            while (true) {
                if (i9 >= size3) {
                    view = null;
                    break;
                }
                View view2 = (View) arrayList4.get(i9);
                ((C0552y) fVar.f505c).getClass();
                b0 b0VarV = RecyclerView.V(view2);
                if (b0VarV.c() == i5 && !b0VarV.h() && !b0VarV.j()) {
                    view = view2;
                    break;
                }
                i9++;
            }
            if (view == null) {
                int size4 = arrayList2.size();
                int i10 = 0;
                while (true) {
                    if (i10 >= size4) {
                        b0VarE = null;
                        break;
                    }
                    b0 b0Var5 = (b0) arrayList2.get(i10);
                    if (b0Var5.h() || b0Var5.c() != i5 || b0Var5.f()) {
                        i10++;
                    } else {
                        arrayList2.remove(i10);
                        if (RecyclerView.f4771m2) {
                            Log.d("SeslRecyclerView", "getScrapOrHiddenOrCachedHolderForPosition(" + i5 + ") found match in cache: " + b0Var5);
                        }
                        b0VarE = b0Var5;
                    }
                }
            } else {
                b0 b0VarV2 = RecyclerView.V(view);
                D3.f fVar2 = recyclerView.f4863h;
                int iIndexOfChild = ((C0552y) fVar2.f505c).f7599a.indexOfChild(view);
                if (iIndexOfChild < 0) {
                    throw new IllegalArgumentException("view is not a child, cannot hide " + view);
                }
                C0531c c0531c = (C0531c) fVar2.f506d;
                if (!c0531c.d(iIndexOfChild)) {
                    throw new RuntimeException("trying to unhide a view that was not hidden" + view);
                }
                c0531c.a(iIndexOfChild);
                fVar2.n(view);
                D3.f fVar3 = recyclerView.f4863h;
                int iIndexOfChild2 = ((C0552y) fVar3.f505c).f7599a.indexOfChild(view);
                if (iIndexOfChild2 == -1) {
                    iB = -1;
                    if (iB != -1) {
                        StringBuilder sb = new StringBuilder("layout index should not be -1 after unhiding a view:");
                        sb.append(b0VarV2);
                        throw new IllegalStateException(AbstractC0432c.f(recyclerView, sb));
                    }
                    recyclerView.f4863h.e(iB);
                    j(view);
                    b0VarV2.b(8224);
                    b0VarE = b0VarV2;
                } else {
                    C0531c c0531c2 = (C0531c) fVar3.f506d;
                    if (!c0531c2.d(iIndexOfChild2)) {
                        iB = iIndexOfChild2 - c0531c2.b(iIndexOfChild2);
                    }
                    if (iB != -1) {
                    }
                }
            }
            if (b0VarE != null) {
                if (!b0VarE.j()) {
                    int i11 = b0VarE.f7408c;
                    if (i11 < 0 || i11 >= recyclerView.f4883o.a()) {
                        StringBuilder sb2 = new StringBuilder("Inconsistency detected. Invalid view holder adapter position");
                        sb2.append(b0VarE);
                        throw new IndexOutOfBoundsException(AbstractC0432c.f(recyclerView, sb2));
                    }
                    if (x4.f7383g || recyclerView.f4883o.c(b0VarE.f7408c) == b0VarE.f) {
                        AbstractC0526A abstractC0526A = recyclerView.f4883o;
                        z9 = !abstractC0526A.f7328b || b0VarE.f7410e == abstractC0526A.b(b0VarE.f7408c);
                    }
                } else {
                    if (RecyclerView.f4770l2 && !x4.f7383g) {
                        throw new IllegalStateException(AbstractC0432c.f(recyclerView, new StringBuilder("should not receive a removed view unless it is pre layout")));
                    }
                    z9 = x4.f7383g;
                }
                if (z9) {
                    z4 = true;
                } else {
                    b0VarE.b(4);
                    if (b0VarE.k()) {
                        recyclerView.removeDetachedView(b0VarE.f7406a, false);
                        b0VarE.n.l(b0VarE);
                    } else if (b0VarE.r()) {
                        b0VarE.f7414j &= -33;
                    }
                    i(b0VarE);
                    b0VarE = null;
                }
            }
        }
        if (b0VarE == null) {
            int iF2 = recyclerView.f4860g.f(i5, 0);
            if (iF2 < 0 || iF2 >= recyclerView.f4883o.a()) {
                throw new IndexOutOfBoundsException("Inconsistency detected. Invalid item position " + i5 + "(offset:" + iF2 + ").state:" + x4.b() + recyclerView.G());
            }
            int iC = recyclerView.f4883o.c(iF2);
            AbstractC0526A abstractC0526A2 = recyclerView.f4883o;
            if (abstractC0526A2.f7328b) {
                long jB2 = abstractC0526A2.b(iF2);
                int size5 = arrayList3.size() - 1;
                while (true) {
                    if (size5 >= 0) {
                        b0 b0Var6 = (b0) arrayList3.get(size5);
                        if (b0Var6.f7410e == jB2 && !b0Var6.r()) {
                            if (iC == b0Var6.f) {
                                b0Var6.b(32);
                                if (b0Var6.j() && !x4.f7383g) {
                                    b0Var6.f7414j = (b0Var6.f7414j & (-15)) | 2;
                                }
                                b0Var2 = b0Var6;
                            } else {
                                arrayList3.remove(size5);
                                View view3 = b0Var6.f7406a;
                                recyclerView.removeDetachedView(view3, false);
                                b0 b0VarV3 = RecyclerView.V(view3);
                                b0VarV3.n = null;
                                b0VarV3.f7418o = false;
                                b0VarV3.f7414j &= -33;
                                i(b0VarV3);
                            }
                        }
                        size5--;
                    } else {
                        int size6 = arrayList2.size() - 1;
                        while (true) {
                            if (size6 < 0) {
                                break;
                            }
                            b0Var2 = (b0) arrayList2.get(size6);
                            if (b0Var2.f7410e != jB2 || b0Var2.f()) {
                                size6--;
                            } else if (iC == b0Var2.f) {
                                arrayList2.remove(size6);
                            } else {
                                g(size6);
                            }
                        }
                        b0Var2 = null;
                    }
                }
                if (b0Var2 != null) {
                    b0Var2.f7408c = iF2;
                    b0VarE = b0Var2;
                    z4 = true;
                } else {
                    b0VarE = b0Var2;
                }
            }
            if (b0VarE == null) {
                if (RecyclerView.f4771m2) {
                    Log.d("SeslRecyclerView", "tryGetViewHolderForPositionByDeadline(" + i5 + ") fetching from shared pool");
                }
                SparseArray sparseArray = c().f7360a;
                N n = (N) sparseArray.get(iC);
                if (n != null) {
                    ArrayList arrayList5 = n.f7356a;
                    if (arrayList5.isEmpty()) {
                        b0Var = null;
                        if (b0Var != null) {
                        }
                        b0VarE = b0Var;
                    } else {
                        for (int size7 = arrayList5.size() - 1; size7 >= 0; size7--) {
                            if (arrayList5.get(size7) != null) {
                                if (!((b0) arrayList5.get(size7)).f()) {
                                    b0Var = (b0) arrayList5.remove(size7);
                                    break;
                                }
                            } else {
                                StringBuilder sb3 = new StringBuilder("ViewHolder object null when getRecycledView is in progress. pos= ");
                                sb3.append(size7);
                                sb3.append(" size=");
                                sb3.append(arrayList5.size());
                                sb3.append(" max= ");
                                sb3.append(n.f7357b);
                                sb3.append(" holder= ");
                                int size8 = 0;
                                for (int i12 = 0; i12 < sparseArray.size(); i12++) {
                                    ArrayList arrayList6 = ((N) sparseArray.valueAt(i12)).f7356a;
                                    if (arrayList6 != null) {
                                        size8 = arrayList6.size() + size8;
                                    }
                                }
                                sb3.append(size8);
                                sb3.append(" scrapHeap= ");
                                sb3.append(arrayList5);
                                Log.e("SeslRecyclerView", sb3.toString());
                            }
                        }
                        b0Var = null;
                        if (b0Var != null) {
                            b0Var.o();
                            boolean z10 = RecyclerView.f4770l2;
                        }
                        b0VarE = b0Var;
                    }
                }
            }
            if (b0VarE == null) {
                long nanoTime = recyclerView.getNanoTime();
                if (j3 != Long.MAX_VALUE) {
                    long j5 = this.f7368g.a(iC).f7358c;
                    if (!(j5 == 0 || j5 + nanoTime < j3)) {
                        return null;
                    }
                }
                AbstractC0526A abstractC0526A3 = recyclerView.f4883o;
                abstractC0526A3.getClass();
                try {
                    Trace.beginSection("RV CreateView");
                    b0VarE = abstractC0526A3.e(recyclerView, iC);
                    View view4 = b0VarE.f7406a;
                    if (view4.getParent() != null) {
                        throw new IllegalStateException("ViewHolder views must not be attached when created. Ensure that you are not passing 'true' to the attachToRoot parameter of LayoutInflater.inflate(..., boolean attachToRoot)");
                    }
                    b0VarE.f = iC;
                    Trace.endSection();
                    if (RecyclerView.f4774r2 && (recyclerViewP = RecyclerView.P(view4)) != null) {
                        b0VarE.f7407b = new WeakReference(recyclerViewP);
                    }
                    long nanoTime2 = recyclerView.getNanoTime() - nanoTime;
                    N nA = this.f7368g.a(iC);
                    long j6 = nA.f7358c;
                    if (j6 != 0) {
                        nanoTime2 = (nanoTime2 / 4) + ((j6 / 4) * 3);
                    }
                    nA.f7358c = nanoTime2;
                    if (RecyclerView.f4771m2) {
                        Log.d("SeslRecyclerView", "tryGetViewHolderForPositionByDeadline created new ViewHolder");
                    }
                } finally {
                    Trace.endSection();
                }
            }
        }
        if (z4 && !x4.f7383g && b0VarE.e(8192)) {
            b0VarE.f7414j &= -8193;
            if (x4.f7386j) {
                F.b(b0VarE);
                F f = recyclerView.f4815O;
                b0VarE.d();
                f.getClass();
                C0042p c0042p = new C0042p();
                c0042p.a(b0VarE);
                recyclerView.o0(b0VarE, c0042p);
            }
        }
        boolean z11 = x4.f7383g;
        View view5 = b0VarE.f7406a;
        if (!z11 || !b0VarE.g()) {
            if (b0VarE.g()) {
                if (((b0VarE.f7414j & 2) != 0) || b0VarE.h()) {
                }
                layoutParams = view5.getLayoutParams();
                if (layoutParams == null) {
                    k5 = (K) recyclerView.generateDefaultLayoutParams();
                    view5.setLayoutParams(k5);
                } else if (recyclerView.checkLayoutParams(layoutParams)) {
                    k5 = (K) layoutParams;
                } else {
                    k5 = (K) recyclerView.generateLayoutParams(layoutParams);
                    view5.setLayoutParams(k5);
                }
                k5.f7352a = b0VarE;
                k5.f7355d = (z4 && z5) ? z8 : false;
                return b0VarE;
            }
            if (RecyclerView.f4770l2 && b0VarE.j()) {
                StringBuilder sb4 = new StringBuilder("Removed holder should be bound and it should come here only in pre-layout. Holder: ");
                sb4.append(b0VarE);
                throw new IllegalStateException(AbstractC0432c.f(recyclerView, sb4));
            }
            z5 = false;
            int iF3 = recyclerView.f4860g.f(i5, 0);
            b0VarE.f7422s = null;
            b0VarE.f7421r = recyclerView;
            int i13 = b0VarE.f;
            long nanoTime3 = recyclerView.getNanoTime();
            if (j3 != Long.MAX_VALUE) {
                long j7 = this.f7368g.a(i13).f7359d;
                if (j7 == 0 || j7 + nanoTime3 < j3) {
                    if (!b0VarE.l() || recyclerView.indexOfChild(view5) <= 0) {
                        z6 = false;
                    } else {
                        recyclerView.attachViewToParent(view5, recyclerView.getChildCount(), view5.getLayoutParams());
                        z6 = true;
                    }
                    AbstractC0526A abstractC0526A4 = recyclerView.f4883o;
                    abstractC0526A4.getClass();
                    boolean z12 = b0VarE.f7422s == null;
                    if (z12) {
                        b0VarE.f7408c = iF3;
                        z7 = z6;
                        if (abstractC0526A4.f7328b) {
                            b0VarE.f7410e = abstractC0526A4.b(iF3);
                        }
                        b0VarE.f7414j = (b0VarE.f7414j & (-520)) | 1;
                        Trace.beginSection("RV OnBindView");
                    } else {
                        z7 = z6;
                    }
                    b0VarE.f7422s = abstractC0526A4;
                    if (RecyclerView.f4770l2) {
                        if (view5.getParent() == null) {
                            WeakHashMap weakHashMap = J.Q.f940a;
                            if (view5.isAttachedToWindow() != b0VarE.l()) {
                                throw new IllegalStateException("Temp-detached state out of sync with reality. holder.isTmpDetached(): " + b0VarE.l() + ", attached to window: " + view5.isAttachedToWindow() + ", holder: " + b0VarE);
                            }
                        }
                        if (view5.getParent() == null) {
                            WeakHashMap weakHashMap2 = J.Q.f940a;
                            if (view5.isAttachedToWindow()) {
                                throw new IllegalStateException("Attempting to bind attached holder with no parent (AKA temp detached): " + b0VarE);
                            }
                        }
                    }
                    b0VarE.d();
                    abstractC0526A4.d(b0VarE, iF3);
                    if (z12) {
                        ArrayList arrayList7 = b0VarE.f7415k;
                        if (arrayList7 != null) {
                            arrayList7.clear();
                        }
                        b0VarE.f7414j &= KnoxContainerManager.ERROR_INVALID_PASSWORD_RESET_TOKEN;
                        ViewGroup.LayoutParams layoutParams2 = view5.getLayoutParams();
                        if (layoutParams2 instanceof K) {
                            ((K) layoutParams2).f7354c = true;
                        }
                    }
                    if (z7) {
                        recyclerView.detachViewFromParent(view5);
                    }
                    long nanoTime4 = recyclerView.getNanoTime() - nanoTime3;
                    N nA2 = this.f7368g.a(b0VarE.f);
                    long j8 = nA2.f7359d;
                    if (j8 != 0) {
                        nanoTime4 = (nanoTime4 / 4) + ((j8 / 4) * 3);
                    }
                    nA2.f7359d = nanoTime4;
                    AccessibilityManager accessibilityManager = recyclerView.f4786D;
                    if (accessibilityManager != null && accessibilityManager.isEnabled()) {
                        WeakHashMap weakHashMap3 = J.Q.f940a;
                        if (view5.getImportantForAccessibility() == 0) {
                            z8 = true;
                            view5.setImportantForAccessibility(1);
                        } else {
                            z8 = true;
                        }
                        if (recyclerView.s0 == null) {
                            recyclerView.setAccessibilityDelegateCompat(new d0(recyclerView));
                            Log.d("SeslRecyclerView", "attachAccessibilityDelegate: mAccessibilityDelegate is null, so re create");
                        }
                        C0028b c0028bJ = recyclerView.s0.j();
                        if (c0028bJ instanceof c0) {
                            c0 c0Var = (c0) c0028bJ;
                            c0Var.getClass();
                            View.AccessibilityDelegate accessibilityDelegateA = J.N.a(view5);
                            C0028b c0028b = accessibilityDelegateA == null ? null : accessibilityDelegateA instanceof C0027a ? ((C0027a) accessibilityDelegateA).f953a : new C0028b(accessibilityDelegateA);
                            if (c0028b != null && c0028b != c0Var) {
                                c0Var.f7427e.put(view5, c0028b);
                            }
                        }
                        J.Q.h(view5, c0028bJ);
                    } else {
                        z8 = true;
                    }
                    if (x4.f7383g) {
                        b0VarE.f7411g = i5;
                    }
                    z5 = z8;
                } else {
                    z8 = true;
                }
            }
            layoutParams = view5.getLayoutParams();
            if (layoutParams == null) {
            }
            k5.f7352a = b0VarE;
            k5.f7355d = (z4 && z5) ? z8 : false;
            return b0VarE;
        }
        b0VarE.f7411g = i5;
        z8 = true;
        z5 = false;
        layoutParams = view5.getLayoutParams();
        if (layoutParams == null) {
        }
        k5.f7352a = b0VarE;
        k5.f7355d = (z4 && z5) ? z8 : false;
        return b0VarE;
    }

    public final void l(b0 b0Var) {
        if (b0Var.f7418o) {
            this.f7364b.remove(b0Var);
        } else {
            this.f7363a.remove(b0Var);
        }
        b0Var.n = null;
        b0Var.f7418o = false;
        b0Var.f7414j &= -33;
    }

    public final void m() {
        J j3 = this.f7369h.f4884p;
        this.f = this.f7367e + (j3 != null ? j3.f7347j : 0);
        ArrayList arrayList = this.f7365c;
        for (int size = arrayList.size() - 1; size >= 0 && arrayList.size() > this.f; size--) {
            g(size);
        }
    }
}
