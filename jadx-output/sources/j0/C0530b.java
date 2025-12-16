package j0;

import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;

/* renamed from: j0.b, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0530b {

    /* renamed from: d, reason: collision with root package name */
    public final C0552y f7403d;

    /* renamed from: a, reason: collision with root package name */
    public final I.c f7400a = new I.c(30);

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f7401b = new ArrayList();

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f7402c = new ArrayList();
    public int f = 0;

    /* renamed from: e, reason: collision with root package name */
    public final c1.w f7404e = new c1.w(this);

    public C0530b(C0552y c0552y) {
        this.f7403d = c0552y;
    }

    public final boolean a(int i5) {
        ArrayList arrayList = this.f7402c;
        int size = arrayList.size();
        for (int i6 = 0; i6 < size; i6++) {
            C0529a c0529a = (C0529a) arrayList.get(i6);
            int i7 = c0529a.f7390a;
            if (i7 == 8) {
                if (f(c0529a.f7393d, i6 + 1) == i5) {
                    return true;
                }
            } else if (i7 == 1) {
                int i8 = c0529a.f7391b;
                int i9 = c0529a.f7393d + i8;
                while (i8 < i9) {
                    if (f(i8, i6 + 1) == i5) {
                        return true;
                    }
                    i8++;
                }
            } else {
                continue;
            }
        }
        return false;
    }

    public final void b() {
        ArrayList arrayList = this.f7402c;
        int size = arrayList.size();
        for (int i5 = 0; i5 < size; i5++) {
            this.f7403d.a((C0529a) arrayList.get(i5));
        }
        k(arrayList);
        this.f = 0;
    }

    public final void c() {
        b();
        ArrayList arrayList = this.f7401b;
        int size = arrayList.size();
        for (int i5 = 0; i5 < size; i5++) {
            C0529a c0529a = (C0529a) arrayList.get(i5);
            int i6 = c0529a.f7390a;
            C0552y c0552y = this.f7403d;
            if (i6 == 1) {
                c0552y.a(c0529a);
                c0552y.d(c0529a.f7391b, c0529a.f7393d);
            } else if (i6 == 2) {
                c0552y.a(c0529a);
                int i7 = c0529a.f7391b;
                int i8 = c0529a.f7393d;
                RecyclerView recyclerView = c0552y.f7599a;
                recyclerView.g0(i7, true, i8);
                recyclerView.o0 = true;
                recyclerView.l0.f7380c += i8;
            } else if (i6 == 4) {
                c0552y.a(c0529a);
                c0552y.c(c0529a.f7391b, c0529a.f7392c, c0529a.f7393d);
            } else if (i6 == 8) {
                c0552y.a(c0529a);
                c0552y.e(c0529a.f7391b, c0529a.f7393d);
            }
        }
        k(arrayList);
        this.f = 0;
    }

    public final void d(C0529a c0529a) {
        int i5;
        I.c cVar;
        int i6 = c0529a.f7390a;
        if (i6 == 1 || i6 == 8) {
            throw new IllegalArgumentException("should not dispatch add or move for pre layout");
        }
        int iL = l(c0529a.f7391b, i6);
        int i7 = c0529a.f7391b;
        int i8 = c0529a.f7390a;
        if (i8 == 2) {
            i5 = 0;
        } else {
            if (i8 != 4) {
                throw new IllegalArgumentException("op should be remove or update." + c0529a);
            }
            i5 = 1;
        }
        int i9 = 1;
        int i10 = 1;
        while (true) {
            int i11 = c0529a.f7393d;
            cVar = this.f7400a;
            if (i9 >= i11) {
                break;
            }
            int iL2 = l((i5 * i9) + c0529a.f7391b, c0529a.f7390a);
            int i12 = c0529a.f7390a;
            if (i12 == 2 ? iL2 != iL : !(i12 == 4 && iL2 == iL + 1)) {
                C0529a c0529aH = h(i12, iL, i10, c0529a.f7392c);
                e(c0529aH, i7);
                c0529aH.f7392c = null;
                cVar.c(c0529aH);
                if (c0529a.f7390a == 4) {
                    i7 += i10;
                }
                i10 = 1;
                iL = iL2;
            } else {
                i10++;
            }
            i9++;
        }
        Object obj = c0529a.f7392c;
        c0529a.f7392c = null;
        cVar.c(c0529a);
        if (i10 > 0) {
            C0529a c0529aH2 = h(c0529a.f7390a, iL, i10, obj);
            e(c0529aH2, i7);
            c0529aH2.f7392c = null;
            cVar.c(c0529aH2);
        }
    }

    public final void e(C0529a c0529a, int i5) {
        C0552y c0552y = this.f7403d;
        c0552y.a(c0529a);
        int i6 = c0529a.f7390a;
        if (i6 != 2) {
            if (i6 != 4) {
                throw new IllegalArgumentException("only remove and update ops can be dispatched in first pass");
            }
            c0552y.c(i5, c0529a.f7392c, c0529a.f7393d);
            return;
        }
        int i7 = c0529a.f7393d;
        RecyclerView recyclerView = c0552y.f7599a;
        recyclerView.g0(i5, true, i7);
        recyclerView.o0 = true;
        recyclerView.l0.f7380c += i7;
    }

    public final int f(int i5, int i6) {
        ArrayList arrayList = this.f7402c;
        int size = arrayList.size();
        while (i6 < size) {
            C0529a c0529a = (C0529a) arrayList.get(i6);
            int i7 = c0529a.f7390a;
            if (i7 == 8) {
                int i8 = c0529a.f7391b;
                if (i8 == i5) {
                    i5 = c0529a.f7393d;
                } else {
                    if (i8 < i5) {
                        i5--;
                    }
                    if (c0529a.f7393d <= i5) {
                        i5++;
                    }
                }
            } else {
                int i9 = c0529a.f7391b;
                if (i9 > i5) {
                    continue;
                } else if (i7 == 2) {
                    int i10 = c0529a.f7393d;
                    if (i5 < i9 + i10) {
                        return -1;
                    }
                    i5 -= i10;
                } else if (i7 == 1) {
                    i5 += c0529a.f7393d;
                }
            }
            i6++;
        }
        return i5;
    }

    public final boolean g() {
        return this.f7401b.size() > 0;
    }

    public final C0529a h(int i5, int i6, int i7, Object obj) {
        C0529a c0529a = (C0529a) this.f7400a.a();
        if (c0529a != null) {
            c0529a.f7390a = i5;
            c0529a.f7391b = i6;
            c0529a.f7393d = i7;
            c0529a.f7392c = obj;
            return c0529a;
        }
        C0529a c0529a2 = new C0529a();
        c0529a2.f7390a = i5;
        c0529a2.f7391b = i6;
        c0529a2.f7393d = i7;
        c0529a2.f7392c = obj;
        return c0529a2;
    }

    public final void i(C0529a c0529a) {
        this.f7402c.add(c0529a);
        int i5 = c0529a.f7390a;
        C0552y c0552y = this.f7403d;
        if (i5 == 1) {
            c0552y.d(c0529a.f7391b, c0529a.f7393d);
            return;
        }
        if (i5 == 2) {
            int i6 = c0529a.f7391b;
            int i7 = c0529a.f7393d;
            RecyclerView recyclerView = c0552y.f7599a;
            recyclerView.g0(i6, false, i7);
            recyclerView.o0 = true;
            return;
        }
        if (i5 == 4) {
            c0552y.c(c0529a.f7391b, c0529a.f7392c, c0529a.f7393d);
        } else if (i5 == 8) {
            c0552y.e(c0529a.f7391b, c0529a.f7393d);
        } else {
            throw new IllegalArgumentException("Unknown update op type for " + c0529a);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:184:0x00a4 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:185:0x012b A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:188:0x0119 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:202:0x0009 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x009f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void j() {
        char c2;
        int i5;
        boolean z4;
        char c5;
        C0529a c0529aH;
        int i6;
        int i7;
        C0529a c0529aH2;
        boolean z5;
        boolean z6;
        C0529a c0529aH3;
        ArrayList arrayList = this.f7401b;
        c1.w wVar = this.f7404e;
        wVar.getClass();
        while (true) {
            int size = arrayList.size() - 1;
            boolean z7 = false;
            while (true) {
                c2 = 65535;
                i5 = 8;
                if (size < 0) {
                    size = -1;
                    break;
                }
                if (((C0529a) arrayList.get(size)).f7390a != 8) {
                    z7 = true;
                } else if (z7) {
                    break;
                }
                size--;
            }
            if (size == -1) {
                break;
            }
            int i8 = size + 1;
            C0529a c0529a = (C0529a) arrayList.get(size);
            C0529a c0529a2 = (C0529a) arrayList.get(i8);
            int i9 = c0529a2.f7390a;
            if (i9 != 1) {
                C0530b c0530b = (C0530b) wVar.f5265c;
                if (i9 == 2) {
                    int i10 = c0529a.f7391b;
                    int i11 = c0529a.f7393d;
                    if (i10 < i11) {
                        z6 = c0529a2.f7391b == i10 && c0529a2.f7393d == i11 - i10;
                        z5 = false;
                    } else if (c0529a2.f7391b == i11 + 1 && c0529a2.f7393d == i10 - i11) {
                        z6 = true;
                        z5 = true;
                    } else {
                        z5 = true;
                        z6 = false;
                    }
                    int i12 = c0529a2.f7391b;
                    if (i11 < i12) {
                        c0529a2.f7391b = i12 - 1;
                    } else {
                        int i13 = c0529a2.f7393d;
                        if (i11 < i12 + i13) {
                            c0529a2.f7393d = i13 - 1;
                            c0529a.f7390a = 2;
                            c0529a.f7393d = 1;
                            if (c0529a2.f7393d == 0) {
                                arrayList.remove(i8);
                                c0530b.getClass();
                                c0529a2.f7392c = null;
                                c0530b.f7400a.c(c0529a2);
                            }
                        }
                    }
                    int i14 = c0529a.f7391b;
                    int i15 = c0529a2.f7391b;
                    if (i14 <= i15) {
                        c0529a2.f7391b = i15 + 1;
                    } else {
                        int i16 = i15 + c0529a2.f7393d;
                        if (i14 < i16) {
                            c0529aH3 = c0530b.h(2, i14 + 1, i16 - i14, null);
                            c0529a2.f7393d = c0529a.f7391b - c0529a2.f7391b;
                        }
                        if (z6) {
                            if (z5) {
                                if (c0529aH3 != null) {
                                    int i17 = c0529a.f7391b;
                                    if (i17 > c0529aH3.f7391b) {
                                        c0529a.f7391b = i17 - c0529aH3.f7393d;
                                    }
                                    int i18 = c0529a.f7393d;
                                    if (i18 > c0529aH3.f7391b) {
                                        c0529a.f7393d = i18 - c0529aH3.f7393d;
                                    }
                                }
                                int i19 = c0529a.f7391b;
                                if (i19 > c0529a2.f7391b) {
                                    c0529a.f7391b = i19 - c0529a2.f7393d;
                                }
                                int i20 = c0529a.f7393d;
                                if (i20 > c0529a2.f7391b) {
                                    c0529a.f7393d = i20 - c0529a2.f7393d;
                                }
                            } else {
                                if (c0529aH3 != null) {
                                    int i21 = c0529a.f7391b;
                                    if (i21 >= c0529aH3.f7391b) {
                                        c0529a.f7391b = i21 - c0529aH3.f7393d;
                                    }
                                    int i22 = c0529a.f7393d;
                                    if (i22 >= c0529aH3.f7391b) {
                                        c0529a.f7393d = i22 - c0529aH3.f7393d;
                                    }
                                }
                                int i23 = c0529a.f7391b;
                                if (i23 >= c0529a2.f7391b) {
                                    c0529a.f7391b = i23 - c0529a2.f7393d;
                                }
                                int i24 = c0529a.f7393d;
                                if (i24 >= c0529a2.f7391b) {
                                    c0529a.f7393d = i24 - c0529a2.f7393d;
                                }
                            }
                            arrayList.set(size, c0529a2);
                            if (c0529a.f7391b != c0529a.f7393d) {
                                arrayList.set(i8, c0529a);
                            } else {
                                arrayList.remove(i8);
                            }
                            if (c0529aH3 != null) {
                                arrayList.add(size, c0529aH3);
                            }
                        } else {
                            arrayList.set(size, c0529a2);
                            arrayList.remove(i8);
                            c0530b.getClass();
                            c0529a.f7392c = null;
                            c0530b.f7400a.c(c0529a);
                        }
                    }
                    c0529aH3 = null;
                    if (z6) {
                    }
                } else if (i9 == 4) {
                    int i25 = c0529a.f7393d;
                    int i26 = c0529a2.f7391b;
                    if (i25 < i26) {
                        c0529a2.f7391b = i26 - 1;
                    } else {
                        int i27 = c0529a2.f7393d;
                        if (i25 < i26 + i27) {
                            c0529a2.f7393d = i27 - 1;
                            c0529aH = c0530b.h(4, c0529a.f7391b, 1, c0529a2.f7392c);
                        }
                        i6 = c0529a.f7391b;
                        i7 = c0529a2.f7391b;
                        if (i6 > i7) {
                            c0529a2.f7391b = i7 + 1;
                        } else {
                            int i28 = i7 + c0529a2.f7393d;
                            if (i6 < i28) {
                                int i29 = i28 - i6;
                                c0529aH2 = c0530b.h(4, i6 + 1, i29, c0529a2.f7392c);
                                c0529a2.f7393d -= i29;
                            }
                            arrayList.set(i8, c0529a);
                            if (c0529a2.f7393d > 0) {
                                arrayList.set(size, c0529a2);
                            } else {
                                arrayList.remove(size);
                                c0530b.getClass();
                                c0529a2.f7392c = null;
                                c0530b.f7400a.c(c0529a2);
                            }
                            if (c0529aH != null) {
                                arrayList.add(size, c0529aH);
                            }
                            if (c0529aH2 != null) {
                                arrayList.add(size, c0529aH2);
                            }
                        }
                        c0529aH2 = null;
                        arrayList.set(i8, c0529a);
                        if (c0529a2.f7393d > 0) {
                        }
                        if (c0529aH != null) {
                        }
                        if (c0529aH2 != null) {
                        }
                    }
                    c0529aH = null;
                    i6 = c0529a.f7391b;
                    i7 = c0529a2.f7391b;
                    if (i6 > i7) {
                    }
                    c0529aH2 = null;
                    arrayList.set(i8, c0529a);
                    if (c0529a2.f7393d > 0) {
                    }
                    if (c0529aH != null) {
                    }
                    if (c0529aH2 != null) {
                    }
                }
            } else {
                int i30 = c0529a.f7393d;
                int i31 = c0529a2.f7391b;
                int i32 = i30 < i31 ? -1 : 0;
                int i33 = c0529a.f7391b;
                if (i33 < i31) {
                    i32++;
                }
                if (i31 <= i33) {
                    c0529a.f7391b = i33 + c0529a2.f7393d;
                }
                int i34 = c0529a2.f7391b;
                if (i34 <= i30) {
                    c0529a.f7393d = i30 + c0529a2.f7393d;
                }
                c0529a2.f7391b = i34 + i32;
                arrayList.set(size, c0529a2);
                arrayList.set(i8, c0529a);
            }
        }
        int size2 = arrayList.size();
        int i35 = 0;
        while (i35 < size2) {
            C0529a c0529aH4 = (C0529a) arrayList.get(i35);
            int i36 = c0529aH4.f7390a;
            if (i36 != 1) {
                I.c cVar = this.f7400a;
                C0552y c0552y = this.f7403d;
                if (i36 == 2) {
                    int i37 = c0529aH4.f7391b;
                    int i38 = c0529aH4.f7393d + i37;
                    int i39 = i37;
                    int i40 = 0;
                    char c6 = 65535;
                    while (i39 < i38) {
                        if (c0552y.b(i39) != null || a(i39)) {
                            if (c6 == 0) {
                                d(h(2, i37, i40, null));
                                z4 = true;
                            } else {
                                z4 = false;
                            }
                            c5 = 1;
                        } else {
                            if (c6 == 1) {
                                i(h(2, i37, i40, null));
                                z4 = true;
                            } else {
                                z4 = false;
                            }
                            c5 = 0;
                        }
                        if (z4) {
                            i39 -= i40;
                            i38 -= i40;
                            i40 = 1;
                        } else {
                            i40++;
                        }
                        i39++;
                        c6 = c5;
                    }
                    if (i40 != c0529aH4.f7393d) {
                        c0529aH4.f7392c = null;
                        cVar.c(c0529aH4);
                        c0529aH4 = h(2, i37, i40, null);
                    }
                    if (c6 == 0) {
                        d(c0529aH4);
                    } else {
                        i(c0529aH4);
                    }
                } else if (i36 == 4) {
                    int i41 = c0529aH4.f7391b;
                    int i42 = c0529aH4.f7393d + i41;
                    char c7 = c2;
                    int i43 = i41;
                    int i44 = 0;
                    while (i41 < i42) {
                        if (c0552y.b(i41) != null || a(i41)) {
                            if (c7 == 0) {
                                d(h(4, i43, i44, c0529aH4.f7392c));
                                i43 = i41;
                                i44 = 0;
                            }
                            c7 = 1;
                        } else {
                            if (c7 == 1) {
                                i(h(4, i43, i44, c0529aH4.f7392c));
                                i43 = i41;
                                i44 = 0;
                            }
                            c7 = 0;
                        }
                        i44++;
                        i41++;
                    }
                    if (i44 != c0529aH4.f7393d) {
                        Object obj = c0529aH4.f7392c;
                        c0529aH4.f7392c = null;
                        cVar.c(c0529aH4);
                        c0529aH4 = h(4, i43, i44, obj);
                    }
                    if (c7 == 0) {
                        d(c0529aH4);
                    } else {
                        i(c0529aH4);
                    }
                } else if (i36 == i5) {
                    i(c0529aH4);
                }
            } else {
                i(c0529aH4);
            }
            i35++;
            c2 = 65535;
            i5 = 8;
        }
        arrayList.clear();
    }

    public final void k(ArrayList arrayList) {
        int size = arrayList.size();
        for (int i5 = 0; i5 < size; i5++) {
            C0529a c0529a = (C0529a) arrayList.get(i5);
            c0529a.f7392c = null;
            this.f7400a.c(c0529a);
        }
        arrayList.clear();
    }

    public final int l(int i5, int i6) {
        int i7;
        int i8;
        ArrayList arrayList = this.f7402c;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            C0529a c0529a = (C0529a) arrayList.get(size);
            int i9 = c0529a.f7390a;
            if (i9 == 8) {
                int i10 = c0529a.f7391b;
                int i11 = c0529a.f7393d;
                if (i10 < i11) {
                    i8 = i10;
                    i7 = i11;
                } else {
                    i7 = i10;
                    i8 = i11;
                }
                if (i5 < i8 || i5 > i7) {
                    if (i5 < i10) {
                        if (i6 == 1) {
                            c0529a.f7391b = i10 + 1;
                            c0529a.f7393d = i11 + 1;
                        } else if (i6 == 2) {
                            c0529a.f7391b = i10 - 1;
                            c0529a.f7393d = i11 - 1;
                        }
                    }
                } else if (i8 == i10) {
                    if (i6 == 1) {
                        c0529a.f7393d = i11 + 1;
                    } else if (i6 == 2) {
                        c0529a.f7393d = i11 - 1;
                    }
                    i5++;
                } else {
                    if (i6 == 1) {
                        c0529a.f7391b = i10 + 1;
                    } else if (i6 == 2) {
                        c0529a.f7391b = i10 - 1;
                    }
                    i5--;
                }
            } else {
                int i12 = c0529a.f7391b;
                if (i12 <= i5) {
                    if (i9 == 1) {
                        i5 -= c0529a.f7393d;
                    } else if (i9 == 2) {
                        i5 += c0529a.f7393d;
                    }
                } else if (i6 == 1) {
                    c0529a.f7391b = i12 + 1;
                } else if (i6 == 2) {
                    c0529a.f7391b = i12 - 1;
                }
            }
        }
        for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
            C0529a c0529a2 = (C0529a) arrayList.get(size2);
            int i13 = c0529a2.f7390a;
            I.c cVar = this.f7400a;
            if (i13 == 8) {
                int i14 = c0529a2.f7393d;
                if (i14 == c0529a2.f7391b || i14 < 0) {
                    arrayList.remove(size2);
                    c0529a2.f7392c = null;
                    cVar.c(c0529a2);
                }
            } else if (c0529a2.f7393d <= 0) {
                arrayList.remove(size2);
                c0529a2.f7392c = null;
                cVar.c(c0529a2);
            }
        }
        return i5;
    }
}
