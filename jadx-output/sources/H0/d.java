package H0;

import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import j0.K;
import j0.M;
import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.Locale;

/* loaded from: classes.dex */
public final class d extends M {

    /* renamed from: a, reason: collision with root package name */
    public j f833a;

    /* renamed from: b, reason: collision with root package name */
    public final ViewPager2 f834b;

    /* renamed from: c, reason: collision with root package name */
    public final RecyclerView f835c;

    /* renamed from: d, reason: collision with root package name */
    public final LinearLayoutManager f836d;

    /* renamed from: e, reason: collision with root package name */
    public int f837e;
    public int f;

    /* renamed from: g, reason: collision with root package name */
    public final c f838g;

    /* renamed from: h, reason: collision with root package name */
    public int f839h;

    /* renamed from: i, reason: collision with root package name */
    public int f840i;

    /* renamed from: j, reason: collision with root package name */
    public boolean f841j;

    /* renamed from: k, reason: collision with root package name */
    public boolean f842k;

    /* renamed from: l, reason: collision with root package name */
    public boolean f843l;

    /* renamed from: m, reason: collision with root package name */
    public boolean f844m;

    public d(ViewPager2 viewPager2) {
        this.f834b = viewPager2;
        n nVar = viewPager2.f5037l;
        this.f835c = nVar;
        this.f836d = (LinearLayoutManager) nVar.getLayoutManager();
        this.f838g = new c();
        d();
    }

    @Override // j0.M
    public final void a(RecyclerView recyclerView, int i5) {
        j jVar;
        j jVar2;
        int i6 = this.f837e;
        boolean z4 = true;
        if (!(i6 == 1 && this.f == 1) && i5 == 1) {
            this.f844m = false;
            this.f837e = 1;
            int i7 = this.f840i;
            if (i7 != -1) {
                this.f839h = i7;
                this.f840i = -1;
            } else if (this.f839h == -1) {
                this.f839h = this.f836d.M0();
            }
            c(1);
            return;
        }
        if ((i6 == 1 || i6 == 4) && i5 == 2) {
            if (this.f842k) {
                c(2);
                this.f841j = true;
                return;
            }
            return;
        }
        if (i6 != 1 && i6 != 4) {
            z4 = false;
        }
        c cVar = this.f838g;
        if (z4 && i5 == 0) {
            e();
            if (!this.f842k) {
                int i8 = cVar.f830a;
                if (i8 != -1 && (jVar2 = this.f833a) != null) {
                    jVar2.b(i8, 0.0f, 0);
                }
            } else if (cVar.f832c == 0) {
                int i9 = this.f839h;
                int i10 = cVar.f830a;
                if (i9 != i10 && (jVar = this.f833a) != null) {
                    jVar.c(i10);
                }
            }
            c(0);
            d();
        }
        if (this.f837e == 2 && i5 == 0 && this.f843l) {
            e();
            if (cVar.f832c == 0) {
                int i11 = this.f840i;
                int i12 = cVar.f830a;
                if (i11 != i12) {
                    if (i12 == -1) {
                        i12 = 0;
                    }
                    j jVar3 = this.f833a;
                    if (jVar3 != null) {
                        jVar3.c(i12);
                    }
                }
                c(0);
                d();
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0028  */
    @Override // j0.M
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void b(RecyclerView recyclerView, int i5, int i6) {
        int i7;
        j jVar;
        this.f842k = true;
        e();
        boolean z4 = this.f841j;
        c cVar = this.f838g;
        if (z4) {
            this.f841j = false;
            if (i6 > 0) {
                i7 = cVar.f832c != 0 ? cVar.f830a + 1 : cVar.f830a;
                this.f840i = i7;
                if (this.f839h != i7 && (jVar = this.f833a) != null) {
                    jVar.c(i7);
                }
            } else {
                if (i6 == 0) {
                    if ((i5 < 0) == (this.f834b.f5034i.A() == 1)) {
                    }
                }
                this.f840i = i7;
                if (this.f839h != i7) {
                    jVar.c(i7);
                }
            }
        } else if (this.f837e == 0) {
            int i8 = cVar.f830a;
            if (i8 == -1) {
                i8 = 0;
            }
            j jVar2 = this.f833a;
            if (jVar2 != null) {
                jVar2.c(i8);
            }
        }
        int i9 = cVar.f830a;
        if (i9 == -1) {
            i9 = 0;
        }
        float f = cVar.f831b;
        int i10 = cVar.f832c;
        j jVar3 = this.f833a;
        if (jVar3 != null) {
            jVar3.b(i9, f, i10);
        }
        int i11 = cVar.f830a;
        int i12 = this.f840i;
        if ((i11 == i12 || i12 == -1) && cVar.f832c == 0 && this.f != 1) {
            c(0);
            d();
        }
    }

    public final void c(int i5) {
        if ((this.f837e == 3 && this.f == 0) || this.f == i5) {
            return;
        }
        this.f = i5;
        j jVar = this.f833a;
        if (jVar != null) {
            jVar.a(i5);
        }
    }

    public final void d() {
        this.f837e = 0;
        this.f = 0;
        c cVar = this.f838g;
        cVar.f830a = -1;
        cVar.f831b = 0.0f;
        cVar.f832c = 0;
        this.f839h = -1;
        this.f840i = -1;
        this.f841j = false;
        this.f842k = false;
        this.f844m = false;
        this.f843l = false;
    }

    /* JADX WARN: Removed duplicated region for block: B:65:0x013f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void e() {
        int top;
        int iV;
        int top2;
        int i5;
        int bottom;
        int i6;
        LinearLayoutManager linearLayoutManager = this.f836d;
        int iM0 = linearLayoutManager.M0();
        c cVar = this.f838g;
        cVar.f830a = iM0;
        if (iM0 == -1) {
            cVar.f830a = -1;
            cVar.f831b = 0.0f;
            cVar.f832c = 0;
            return;
        }
        View viewQ = linearLayoutManager.q(iM0);
        if (viewQ == null) {
            cVar.f830a = -1;
            cVar.f831b = 0.0f;
            cVar.f832c = 0;
            return;
        }
        int i7 = ((K) viewQ.getLayoutParams()).f7353b.left;
        int i8 = ((K) viewQ.getLayoutParams()).f7353b.right;
        int i9 = ((K) viewQ.getLayoutParams()).f7353b.top;
        int i10 = ((K) viewQ.getLayoutParams()).f7353b.bottom;
        ViewGroup.LayoutParams layoutParams = viewQ.getLayoutParams();
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            i7 += marginLayoutParams.leftMargin;
            i8 += marginLayoutParams.rightMargin;
            i9 += marginLayoutParams.topMargin;
            i10 += marginLayoutParams.bottomMargin;
        }
        int height = viewQ.getHeight() + i9 + i10;
        int width = viewQ.getWidth() + i7 + i8;
        int i11 = linearLayoutManager.f4759p;
        RecyclerView recyclerView = this.f835c;
        if (i11 == 0) {
            top = (viewQ.getLeft() - i7) - recyclerView.getPaddingLeft();
            if (this.f834b.f5034i.A() == 1) {
                top = -top;
            }
            height = width;
        } else {
            top = (viewQ.getTop() - i9) - recyclerView.getPaddingTop();
        }
        int i12 = -top;
        cVar.f832c = i12;
        if (i12 >= 0) {
            cVar.f831b = height != 0 ? i12 / height : 0.0f;
            return;
        }
        int iV2 = linearLayoutManager.v();
        if (iV2 != 0) {
            boolean z4 = linearLayoutManager.f4759p == 0;
            int[][] iArr = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, iV2, 2);
            for (int i13 = 0; i13 < iV2; i13++) {
                View viewU = linearLayoutManager.u(i13);
                if (viewU == null) {
                    throw new IllegalStateException("null view contained in the view hierarchy");
                }
                ViewGroup.LayoutParams layoutParams2 = viewU.getLayoutParams();
                ViewGroup.MarginLayoutParams marginLayoutParams2 = layoutParams2 instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams2 : a.f829a;
                int[] iArr2 = iArr[i13];
                if (z4) {
                    top2 = viewU.getLeft();
                    i5 = marginLayoutParams2.leftMargin;
                } else {
                    top2 = viewU.getTop();
                    i5 = marginLayoutParams2.topMargin;
                }
                iArr2[0] = top2 - i5;
                int[] iArr3 = iArr[i13];
                if (z4) {
                    bottom = viewU.getRight();
                    i6 = marginLayoutParams2.rightMargin;
                } else {
                    bottom = viewU.getBottom();
                    i6 = marginLayoutParams2.bottomMargin;
                }
                iArr3[1] = bottom + i6;
            }
            Arrays.sort(iArr, new F0.b(1));
            int i14 = 1;
            while (true) {
                if (i14 >= iV2) {
                    int[] iArr4 = iArr[0];
                    int i15 = iArr4[1];
                    int i16 = iArr4[0];
                    int i17 = i15 - i16;
                    if (i16 > 0 || iArr[iV2 - 1][1] < i17) {
                        break;
                    }
                } else if (iArr[i14 - 1][1] != iArr[i14][0]) {
                    break;
                } else {
                    i14++;
                }
            }
            iV = linearLayoutManager.v();
            for (int i18 = 0; i18 < iV; i18++) {
                if (a.a(linearLayoutManager.u(i18))) {
                    throw new IllegalStateException("Page(s) contain a ViewGroup with a LayoutTransition (or animateLayoutChanges=\"true\"), which interferes with the scrolling animation. Make sure to call getLayoutTransition().setAnimateParentHierarchy(false) on all ViewGroups with a LayoutTransition before an animation is started.");
                }
            }
        } else if (linearLayoutManager.v() <= 1) {
            iV = linearLayoutManager.v();
            while (i18 < iV) {
            }
        }
        Locale locale = Locale.US;
        throw new IllegalStateException(B.f.t(cVar.f832c, "Page can only be offset by a positive amount, not by "));
    }
}
