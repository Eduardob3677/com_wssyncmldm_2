package s;

/* loaded from: classes.dex */
public final class f {

    /* renamed from: a, reason: collision with root package name */
    public int f8960a;

    /* renamed from: d, reason: collision with root package name */
    public C0826c f8963d;

    /* renamed from: e, reason: collision with root package name */
    public C0826c f8964e;
    public C0826c f;

    /* renamed from: g, reason: collision with root package name */
    public C0826c f8965g;

    /* renamed from: h, reason: collision with root package name */
    public int f8966h;

    /* renamed from: i, reason: collision with root package name */
    public int f8967i;

    /* renamed from: j, reason: collision with root package name */
    public int f8968j;

    /* renamed from: k, reason: collision with root package name */
    public int f8969k;

    /* renamed from: q, reason: collision with root package name */
    public int f8974q;

    /* renamed from: r, reason: collision with root package name */
    public final /* synthetic */ g f8975r;

    /* renamed from: b, reason: collision with root package name */
    public C0827d f8961b = null;

    /* renamed from: c, reason: collision with root package name */
    public int f8962c = 0;

    /* renamed from: l, reason: collision with root package name */
    public int f8970l = 0;

    /* renamed from: m, reason: collision with root package name */
    public int f8971m = 0;
    public int n = 0;

    /* renamed from: o, reason: collision with root package name */
    public int f8972o = 0;

    /* renamed from: p, reason: collision with root package name */
    public int f8973p = 0;

    public f(g gVar, int i5, C0826c c0826c, C0826c c0826c2, C0826c c0826c3, C0826c c0826c4, int i6) {
        this.f8975r = gVar;
        this.f8966h = 0;
        this.f8967i = 0;
        this.f8968j = 0;
        this.f8969k = 0;
        this.f8974q = 0;
        this.f8960a = i5;
        this.f8963d = c0826c;
        this.f8964e = c0826c2;
        this.f = c0826c3;
        this.f8965g = c0826c4;
        this.f8966h = gVar.q0;
        this.f8967i = gVar.m0;
        this.f8968j = gVar.r0;
        this.f8969k = gVar.n0;
        this.f8974q = i6;
    }

    public final void a(C0827d c0827d) {
        int i5 = this.f8960a;
        g gVar = this.f8975r;
        if (i5 == 0) {
            int iN = gVar.N(c0827d, this.f8974q);
            if (c0827d.f8935j0[0] == 3) {
                this.f8973p++;
                iN = 0;
            }
            this.f8970l = iN + (c0827d.f8919a0 != 8 ? gVar.f8984J0 : 0) + this.f8970l;
            int iM = gVar.M(c0827d, this.f8974q);
            if (this.f8961b == null || this.f8962c < iM) {
                this.f8961b = c0827d;
                this.f8962c = iM;
                this.f8971m = iM;
            }
        } else {
            int iN2 = gVar.N(c0827d, this.f8974q);
            int iM2 = gVar.M(c0827d, this.f8974q);
            if (c0827d.f8935j0[1] == 3) {
                this.f8973p++;
                iM2 = 0;
            }
            this.f8971m = iM2 + (c0827d.f8919a0 != 8 ? gVar.f8985K0 : 0) + this.f8971m;
            if (this.f8961b == null || this.f8962c < iN2) {
                this.f8961b = c0827d;
                this.f8962c = iN2;
                this.f8970l = iN2;
            }
        }
        this.f8972o++;
    }

    public final void b(int i5, boolean z4, boolean z5) {
        g gVar;
        int i6;
        C0827d c0827d;
        char c2;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11 = this.f8972o;
        int i12 = 0;
        while (true) {
            gVar = this.f8975r;
            if (i12 >= i11 || (i10 = this.n + i12) >= gVar.f8995V0) {
                break;
            }
            C0827d c0827d2 = gVar.f8994U0[i10];
            if (c0827d2 != null) {
                c0827d2.z();
            }
            i12++;
        }
        if (i11 == 0 || this.f8961b == null) {
            return;
        }
        boolean z6 = z5 && i5 == 0;
        int i13 = -1;
        int i14 = -1;
        for (int i15 = 0; i15 < i11; i15++) {
            int i16 = this.n + (z4 ? (i11 - 1) - i15 : i15);
            if (i16 >= gVar.f8995V0) {
                break;
            }
            if (gVar.f8994U0[i16].f8919a0 == 0) {
                if (i13 == -1) {
                    i13 = i15;
                }
                i14 = i15;
            }
        }
        if (this.f8960a != 0) {
            C0827d c0827d3 = this.f8961b;
            c0827d3.f8923c0 = gVar.f8999x0;
            int i17 = this.f8966h;
            if (i5 > 0) {
                i17 += gVar.f8984J0;
            }
            C0826c c0826c = c0827d3.f8895C;
            C0826c c0826c2 = c0827d3.E;
            if (z4) {
                c0826c2.a(this.f, i17);
                if (z5) {
                    c0826c.a(this.f8963d, this.f8968j);
                }
                if (i5 > 0) {
                    this.f.f8888d.f8895C.a(c0826c2, 0);
                }
            } else {
                c0826c.a(this.f8963d, i17);
                if (z5) {
                    c0826c2.a(this.f, this.f8968j);
                }
                if (i5 > 0) {
                    this.f8963d.f8888d.E.a(c0826c, 0);
                }
            }
            int i18 = 0;
            C0827d c0827d4 = null;
            while (i18 < i11) {
                int i19 = this.n + i18;
                if (i19 >= gVar.f8995V0) {
                    return;
                }
                C0827d c0827d5 = gVar.f8994U0[i19];
                if (i18 == 0) {
                    c0827d5.f(c0827d5.f8896D, this.f8964e, this.f8967i);
                    int i20 = gVar.f9000y0;
                    float f = gVar.f8979E0;
                    if (this.n == 0) {
                        int i21 = gVar.f8976A0;
                        i6 = -1;
                        if (i21 != -1) {
                            f = gVar.f8981G0;
                        }
                        i20 = i21;
                        c0827d5.f8925d0 = i20;
                        c0827d5.f8916Y = f;
                    } else {
                        i6 = -1;
                    }
                    if (z5 && (i21 = gVar.f8977C0) != i6) {
                        f = gVar.f8983I0;
                        i20 = i21;
                    }
                    c0827d5.f8925d0 = i20;
                    c0827d5.f8916Y = f;
                }
                if (i18 == i11 - 1) {
                    c0827d5.f(c0827d5.f8897F, this.f8965g, this.f8969k);
                }
                if (c0827d4 != null) {
                    C0826c c0826c3 = c0827d5.f8896D;
                    int i22 = gVar.f8985K0;
                    C0826c c0826c4 = c0827d4.f8897F;
                    c0826c3.a(c0826c4, i22);
                    C0826c c0826c5 = c0827d5.f8896D;
                    if (i18 == i13) {
                        int i23 = this.f8967i;
                        if (c0826c5.h()) {
                            c0826c5.f8891h = i23;
                        }
                    }
                    c0826c4.a(c0826c5, 0);
                    if (i18 == i14 + 1) {
                        int i24 = this.f8969k;
                        if (c0826c4.h()) {
                            c0826c4.f8891h = i24;
                        }
                    }
                }
                if (c0827d5 != c0827d3) {
                    if (z4) {
                        int i25 = gVar.f8986L0;
                        if (i25 == 0) {
                            c0827d5.E.a(c0826c2, 0);
                        } else if (i25 == 1) {
                            c0827d5.f8895C.a(c0826c, 0);
                        } else if (i25 == 2) {
                            c0827d5.f8895C.a(c0826c, 0);
                            c0827d5.E.a(c0826c2, 0);
                        }
                    } else {
                        int i26 = gVar.f8986L0;
                        if (i26 == 0) {
                            c0827d5.f8895C.a(c0826c, 0);
                        } else if (i26 == 1) {
                            c0827d5.E.a(c0826c2, 0);
                        } else if (i26 == 2) {
                            if (z6) {
                                c0827d5.f8895C.a(this.f8963d, this.f8966h);
                                c0827d5.E.a(this.f, this.f8968j);
                            } else {
                                c0827d5.f8895C.a(c0826c, 0);
                                c0827d5.E.a(c0826c2, 0);
                            }
                        }
                    }
                }
                i18++;
                c0827d4 = c0827d5;
            }
            return;
        }
        C0827d c0827d6 = this.f8961b;
        c0827d6.f8925d0 = gVar.f9000y0;
        int i27 = this.f8967i;
        if (i5 > 0) {
            i27 += gVar.f8985K0;
        }
        C0826c c0826c6 = this.f8964e;
        C0826c c0826c7 = c0827d6.f8896D;
        c0826c7.a(c0826c6, i27);
        C0826c c0826c8 = c0827d6.f8897F;
        if (z5) {
            c0826c8.a(this.f8965g, this.f8969k);
        }
        if (i5 > 0) {
            this.f8964e.f8888d.f8897F.a(c0826c7, 0);
        }
        if (gVar.f8987M0 != 3 || c0827d6.f8949y) {
            c0827d = c0827d6;
        } else {
            for (int i28 = 0; i28 < i11; i28++) {
                int i29 = this.n + (z4 ? (i11 - 1) - i28 : i28);
                if (i29 >= gVar.f8995V0) {
                    break;
                }
                c0827d = gVar.f8994U0[i29];
                if (c0827d.f8949y) {
                    break;
                }
            }
            c0827d = c0827d6;
        }
        int i30 = 0;
        C0827d c0827d7 = null;
        while (i30 < i11) {
            int i31 = z4 ? (i11 - 1) - i30 : i30;
            int i32 = this.n + i31;
            if (i32 >= gVar.f8995V0) {
                return;
            }
            C0827d c0827d8 = gVar.f8994U0[i32];
            if (i30 == 0) {
                c0827d8.f(c0827d8.f8895C, this.f8963d, this.f8966h);
            }
            if (i31 == 0) {
                int i33 = gVar.f8999x0;
                float f5 = gVar.f8978D0;
                if (this.n == 0) {
                    int i34 = gVar.f9001z0;
                    i7 = i33;
                    i8 = -1;
                    if (i34 != -1) {
                        f5 = gVar.f8980F0;
                    }
                    i9 = i34;
                    c0827d8.f8923c0 = i9;
                    c0827d8.f8915X = f5;
                } else {
                    i7 = i33;
                    i8 = -1;
                }
                if (!z5 || (i34 = gVar.B0) == i8) {
                    i9 = i7;
                    c0827d8.f8923c0 = i9;
                    c0827d8.f8915X = f5;
                } else {
                    f5 = gVar.f8982H0;
                    i9 = i34;
                    c0827d8.f8923c0 = i9;
                    c0827d8.f8915X = f5;
                }
            }
            if (i30 == i11 - 1) {
                c0827d8.f(c0827d8.E, this.f, this.f8968j);
            }
            if (c0827d7 != null) {
                C0826c c0826c9 = c0827d8.f8895C;
                int i35 = gVar.f8984J0;
                C0826c c0826c10 = c0827d7.E;
                c0826c9.a(c0826c10, i35);
                C0826c c0826c11 = c0827d8.f8895C;
                if (i30 == i13) {
                    int i36 = this.f8966h;
                    if (c0826c11.h()) {
                        c0826c11.f8891h = i36;
                    }
                }
                c0826c10.a(c0826c11, 0);
                if (i30 == i14 + 1) {
                    int i37 = this.f8968j;
                    if (c0826c10.h()) {
                        c0826c10.f8891h = i37;
                    }
                }
            }
            if (c0827d8 != c0827d6) {
                int i38 = gVar.f8987M0;
                c2 = 3;
                if (i38 == 3 && c0827d.f8949y && c0827d8 != c0827d && c0827d8.f8949y) {
                    c0827d8.f8898G.a(c0827d.f8898G, 0);
                } else if (i38 == 0) {
                    c0827d8.f8896D.a(c0826c7, 0);
                } else if (i38 == 1) {
                    c0827d8.f8897F.a(c0826c8, 0);
                } else if (z6) {
                    c0827d8.f8896D.a(this.f8964e, this.f8967i);
                    c0827d8.f8897F.a(this.f8965g, this.f8969k);
                } else {
                    c0827d8.f8896D.a(c0826c7, 0);
                    c0827d8.f8897F.a(c0826c8, 0);
                }
            } else {
                c2 = 3;
            }
            i30++;
            c0827d7 = c0827d8;
        }
    }

    public final int c() {
        return this.f8960a == 1 ? this.f8971m - this.f8975r.f8985K0 : this.f8971m;
    }

    public final int d() {
        return this.f8960a == 0 ? this.f8970l - this.f8975r.f8984J0 : this.f8970l;
    }

    public final void e(int i5) {
        g gVar;
        int i6;
        int i7 = this.f8973p;
        if (i7 == 0) {
            return;
        }
        int i8 = this.f8972o;
        int i9 = i5 / i7;
        int i10 = 0;
        while (true) {
            gVar = this.f8975r;
            if (i10 >= i8 || (i6 = this.n + i10) >= gVar.f8995V0) {
                break;
            }
            C0827d c0827d = gVar.f8994U0[i6];
            if (this.f8960a == 0) {
                if (c0827d != null) {
                    int[] iArr = c0827d.f8935j0;
                    if (iArr[0] == 3 && c0827d.f8937l == 0) {
                        gVar.O(1, i9, iArr[1], c0827d.k(), c0827d);
                    }
                }
            } else if (c0827d != null) {
                int[] iArr2 = c0827d.f8935j0;
                if (iArr2[1] == 3 && c0827d.f8938m == 0) {
                    gVar.O(iArr2[0], c0827d.n(), 1, i9, c0827d);
                }
            }
            i10++;
        }
        this.f8970l = 0;
        this.f8971m = 0;
        this.f8961b = null;
        this.f8962c = 0;
        int i11 = this.f8972o;
        for (int i12 = 0; i12 < i11; i12++) {
            int i13 = this.n + i12;
            if (i13 >= gVar.f8995V0) {
                return;
            }
            C0827d c0827d2 = gVar.f8994U0[i13];
            if (this.f8960a == 0) {
                int iN = c0827d2.n();
                int i14 = gVar.f8984J0;
                if (c0827d2.f8919a0 == 8) {
                    i14 = 0;
                }
                this.f8970l = iN + i14 + this.f8970l;
                int iM = gVar.M(c0827d2, this.f8974q);
                if (this.f8961b == null || this.f8962c < iM) {
                    this.f8961b = c0827d2;
                    this.f8962c = iM;
                    this.f8971m = iM;
                }
            } else {
                int iN2 = gVar.N(c0827d2, this.f8974q);
                int iM2 = gVar.M(c0827d2, this.f8974q);
                int i15 = gVar.f8985K0;
                if (c0827d2.f8919a0 == 8) {
                    i15 = 0;
                }
                this.f8971m = iM2 + i15 + this.f8971m;
                if (this.f8961b == null || this.f8962c < iN2) {
                    this.f8961b = c0827d2;
                    this.f8962c = iN2;
                    this.f8970l = iN2;
                }
            }
        }
    }

    public final void f(int i5, C0826c c0826c, C0826c c0826c2, C0826c c0826c3, C0826c c0826c4, int i6, int i7, int i8, int i9, int i10) {
        this.f8960a = i5;
        this.f8963d = c0826c;
        this.f8964e = c0826c2;
        this.f = c0826c3;
        this.f8965g = c0826c4;
        this.f8966h = i6;
        this.f8967i = i7;
        this.f8968j = i8;
        this.f8969k = i9;
        this.f8974q = i10;
    }
}
