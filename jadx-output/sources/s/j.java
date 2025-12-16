package s;

import java.util.ArrayList;
import r.C0765b;

/* loaded from: classes.dex */
public abstract class j {

    /* renamed from: a, reason: collision with root package name */
    public static final boolean[] f9003a = new boolean[3];

    /* JADX WARN: Removed duplicated region for block: B:179:0x0279  */
    /* JADX WARN: Removed duplicated region for block: B:196:0x02cd  */
    /* JADX WARN: Removed duplicated region for block: B:202:0x02f7  */
    /* JADX WARN: Removed duplicated region for block: B:293:0x04d2  */
    /* JADX WARN: Removed duplicated region for block: B:398:0x06a9 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:406:0x06cf  */
    /* JADX WARN: Removed duplicated region for block: B:407:0x06d2  */
    /* JADX WARN: Removed duplicated region for block: B:410:0x06d8  */
    /* JADX WARN: Removed duplicated region for block: B:411:0x06db  */
    /* JADX WARN: Removed duplicated region for block: B:413:0x06df  */
    /* JADX WARN: Removed duplicated region for block: B:418:0x06ef  */
    /* JADX WARN: Removed duplicated region for block: B:420:0x06f3 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:430:0x0710 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x00ec  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x010b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void a(e eVar, r.c cVar, ArrayList arrayList, int i5) {
        int i6;
        C0825b[] c0825bArr;
        int i7;
        int i8;
        boolean z4;
        boolean z5;
        float f;
        C0827d c0827d;
        boolean z6;
        boolean z7;
        C0826c[] c0826cArr;
        int i9;
        C0825b[] c0825bArr2;
        C0827d c0827d2;
        int i10;
        C0827d c0827d3;
        C0827d c0827d4;
        r.f fVar;
        int i11;
        C0827d c0827d5;
        int i12;
        r.f fVar2;
        C0826c c0826c;
        r.f fVar3;
        C0827d c0827d6;
        C0826c c0826c2;
        r.f fVar4;
        r.f fVar5;
        C0827d c0827d7;
        C0827d c0827d8;
        C0827d c0827d9;
        int size;
        float f5;
        ArrayList arrayList2;
        int i13;
        float f6;
        boolean z8;
        C0827d c0827d10;
        C0827d c0827d11;
        C0827d c0827d12;
        C0827d c0827d13;
        int i14;
        int i15;
        C0827d c0827d14;
        e eVar2 = eVar;
        ArrayList arrayList3 = arrayList;
        int i16 = 2;
        if (i5 == 0) {
            i6 = eVar2.s0;
            c0825bArr = eVar2.f8955v0;
            i7 = 0;
        } else {
            i6 = eVar2.t0;
            c0825bArr = eVar2.u0;
            i7 = 2;
        }
        int i17 = 0;
        while (i17 < i6) {
            C0825b c0825b = c0825bArr[i17];
            boolean z9 = c0825b.f8884q;
            C0827d c0827d15 = c0825b.f8870a;
            int i18 = 3;
            int i19 = 1;
            int i20 = 8;
            if (z9) {
                i8 = i17;
                z4 = true;
            } else {
                int i21 = c0825b.f8880l;
                int i22 = i21 * 2;
                C0827d c0827d16 = c0827d15;
                C0827d c0827d17 = c0827d16;
                boolean z10 = false;
                while (!z10) {
                    c0825b.f8877i += i19;
                    c0827d16.g0[i21] = null;
                    c0827d16.f8928f0[i21] = null;
                    int i23 = c0827d16.f8919a0;
                    C0826c[] c0826cArr2 = c0827d16.f8902K;
                    if (i23 != i20) {
                        c0827d16.j(i21);
                        c0826cArr2[i22].e();
                        int i24 = i22 + 1;
                        c0826cArr2[i24].e();
                        c0826cArr2[i22].e();
                        c0826cArr2[i24].e();
                        if (c0825b.f8871b == null) {
                            c0825b.f8871b = c0827d16;
                        }
                        c0825b.f8873d = c0827d16;
                        int i25 = c0827d16.f8935j0[i21];
                        if (i25 == i18) {
                            int i26 = c0827d16.n[i21];
                            if (i26 == 0 || i26 == i18 || i26 == i16) {
                                c0825b.f8878j++;
                                float f7 = c0827d16.f8927e0[i21];
                                if (f7 > 0.0f) {
                                    c0825b.f8879k += f7;
                                }
                                i15 = i17;
                                if (c0827d16.f8919a0 != 8 && i25 == 3 && (i26 == 0 || i26 == 3)) {
                                    if (f7 < 0.0f) {
                                        c0825b.n = true;
                                    } else {
                                        c0825b.f8882o = true;
                                    }
                                    if (c0825b.f8876h == null) {
                                        c0825b.f8876h = new ArrayList();
                                    }
                                    c0825b.f8876h.add(c0827d16);
                                }
                                if (c0825b.f == null) {
                                    c0825b.f = c0827d16;
                                }
                                C0827d c0827d18 = c0825b.f8875g;
                                if (c0827d18 != null) {
                                    c0827d18.f8928f0[i21] = c0827d16;
                                }
                                c0825b.f8875g = c0827d16;
                            } else {
                                i15 = i17;
                            }
                            if (i21 == 0) {
                                if (c0827d16.f8937l == 0 && c0827d16.f8939o == 0) {
                                    int i27 = c0827d16.f8940p;
                                }
                            } else if (c0827d16.f8938m == 0 && c0827d16.f8942r == 0) {
                                int i28 = c0827d16.f8943s;
                            }
                        } else {
                            i15 = i17;
                        }
                    }
                    C0827d c0827d19 = c0827d17;
                    if (c0827d19 != c0827d16) {
                        c0827d19.g0[i21] = c0827d16;
                    }
                    C0826c c0826c3 = c0826cArr2[i22 + 1].f;
                    if (c0826c3 != null) {
                        c0827d14 = c0826c3.f8888d;
                        C0826c c0826c4 = c0827d14.f8902K[i22].f;
                        if (c0826c4 == null || c0826c4.f8888d != c0827d16) {
                            c0827d14 = null;
                        }
                    }
                    if (c0827d14 == null) {
                        c0827d14 = c0827d16;
                        z10 = true;
                    }
                    c0827d17 = c0827d16;
                    i17 = i15;
                    i19 = 1;
                    i20 = 8;
                    i16 = 2;
                    c0827d16 = c0827d14;
                    i18 = 3;
                }
                i8 = i17;
                C0827d c0827d20 = c0825b.f8871b;
                if (c0827d20 != null) {
                    c0827d20.f8902K[i22].e();
                }
                C0827d c0827d21 = c0825b.f8873d;
                if (c0827d21 != null) {
                    c0827d21.f8902K[i22 + 1].e();
                }
                c0825b.f8872c = c0827d16;
                if (i21 == 0 && c0825b.f8881m) {
                    c0825b.f8874e = c0827d16;
                } else {
                    c0825b.f8874e = c0827d15;
                }
                c0825b.f8883p = c0825b.f8882o && c0825b.n;
                z4 = true;
            }
            c0825b.f8884q = z4;
            if (arrayList3 == null || arrayList3.contains(c0827d15)) {
                C0827d c0827d22 = c0825b.f8872c;
                C0827d c0827d23 = c0825b.f8871b;
                C0827d c0827d24 = c0825b.f8873d;
                C0827d c0827d25 = c0825b.f8874e;
                float f8 = c0825b.f8879k;
                boolean z11 = eVar2.f8935j0[i5] == 2;
                if (i5 == 0) {
                    int i29 = c0827d25.f8923c0;
                    boolean z12 = i29 == 0;
                    z7 = i29 == 1;
                    z5 = i29 == 2;
                    f = f8;
                    c0827d = c0827d15;
                    z6 = z12;
                } else {
                    int i30 = c0827d25.f8925d0;
                    boolean z13 = i30 == 0;
                    boolean z14 = i30 == 1;
                    z5 = i30 == 2;
                    f = f8;
                    c0827d = c0827d15;
                    z6 = z13;
                    z7 = z14;
                }
                boolean z15 = false;
                while (true) {
                    c0826cArr = eVar2.f8902K;
                    if (z15) {
                        break;
                    }
                    C0826c c0826c5 = c0827d.f8902K[i7];
                    int i31 = z5 ? 1 : 4;
                    int iE = c0826c5.e();
                    boolean z16 = z15;
                    int[] iArr = c0827d.f8935j0;
                    int i32 = i6;
                    C0825b[] c0825bArr3 = c0825bArr;
                    boolean z17 = iArr[i5] == 3 && c0827d.n[i5] == 0;
                    C0826c c0826c6 = c0826c5.f;
                    if (c0826c6 != null && c0827d != c0827d15) {
                        iE = c0826c6.e() + iE;
                    }
                    int i33 = iE;
                    if (!z5 || c0827d == c0827d15 || c0827d == c0827d23) {
                        c0827d10 = c0827d25;
                    } else {
                        c0827d10 = c0827d25;
                        i31 = 8;
                    }
                    C0826c c0826c7 = c0826c5.f;
                    if (c0826c7 != null) {
                        if (c0827d == c0827d23) {
                            c0827d11 = c0827d15;
                            c0827d12 = c0827d23;
                            cVar.f(c0826c5.f8892i, c0826c7.f8892i, i33, 6);
                        } else {
                            c0827d11 = c0827d15;
                            c0827d12 = c0827d23;
                            cVar.f(c0826c5.f8892i, c0826c7.f8892i, i33, 8);
                        }
                        cVar.e(c0826c5.f8892i, c0826c5.f.f8892i, i33, (!z17 || z5) ? i31 : 5);
                    } else {
                        c0827d11 = c0827d15;
                        c0827d12 = c0827d23;
                    }
                    C0826c[] c0826cArr3 = c0827d.f8902K;
                    if (z11) {
                        if (c0827d.f8919a0 == 8 || iArr[i5] != 3) {
                            i14 = 0;
                        } else {
                            i14 = 0;
                            cVar.f(c0826cArr3[i7 + 1].f8892i, c0826cArr3[i7].f8892i, 0, 5);
                        }
                        cVar.f(c0826cArr3[i7].f8892i, c0826cArr[i7].f8892i, i14, 8);
                    }
                    C0826c c0826c8 = c0826cArr3[i7 + 1].f;
                    if (c0826c8 != null) {
                        c0827d13 = c0826c8.f8888d;
                        C0826c c0826c9 = c0827d13.f8902K[i7].f;
                        if (c0826c9 == null || c0826c9.f8888d != c0827d) {
                            c0827d13 = null;
                        }
                    }
                    if (c0827d13 != null) {
                        c0827d = c0827d13;
                        z15 = z16;
                    } else {
                        z15 = true;
                    }
                    c0827d25 = c0827d10;
                    i6 = i32;
                    c0825bArr = c0825bArr3;
                    c0827d15 = c0827d11;
                    c0827d23 = c0827d12;
                }
                C0827d c0827d26 = c0827d25;
                C0827d c0827d27 = c0827d15;
                C0827d c0827d28 = c0827d23;
                i9 = i6;
                c0825bArr2 = c0825bArr;
                if (c0827d24 != null) {
                    int i34 = i7 + 1;
                    if (c0827d22.f8902K[i34].f != null) {
                        C0826c c0826c10 = c0827d24.f8902K[i34];
                        if (c0827d24.f8935j0[i5] == 3 && c0827d24.n[i5] == 0 && !z5) {
                            C0826c c0826c11 = c0826c10.f;
                            if (c0826c11.f8888d == eVar2) {
                                cVar.e(c0826c10.f8892i, c0826c11.f8892i, -c0826c10.e(), 5);
                            }
                            cVar.g(c0826c10.f8892i, c0827d22.f8902K[i34].f.f8892i, -c0826c10.e(), 6);
                        } else {
                            if (z5) {
                                C0826c c0826c12 = c0826c10.f;
                                if (c0826c12.f8888d == eVar2) {
                                    cVar.e(c0826c10.f8892i, c0826c12.f8892i, -c0826c10.e(), 4);
                                }
                            }
                            cVar.g(c0826c10.f8892i, c0827d22.f8902K[i34].f.f8892i, -c0826c10.e(), 6);
                        }
                    }
                    if (z11) {
                        int i35 = i7 + 1;
                        r.f fVar6 = c0826cArr[i35].f8892i;
                        C0826c c0826c13 = c0827d22.f8902K[i35];
                        cVar.f(fVar6, c0826c13.f8892i, c0826c13.e(), 8);
                    }
                    ArrayList arrayList4 = c0825b.f8876h;
                    if (arrayList4 != null && (size = arrayList4.size()) > 1) {
                        float f9 = (!c0825b.n || c0825b.f8883p) ? f : c0825b.f8878j;
                        C0827d c0827d29 = null;
                        float f10 = 0.0f;
                        int i36 = 0;
                        while (i36 < size) {
                            C0827d c0827d30 = (C0827d) arrayList4.get(i36);
                            float f11 = c0827d30.f8927e0[i5];
                            C0826c[] c0826cArr4 = c0827d30.f8902K;
                            if (f11 >= 0.0f) {
                                f5 = 0.0f;
                            } else if (c0825b.f8883p) {
                                z8 = false;
                                cVar.e(c0826cArr4[i7 + 1].f8892i, c0826cArr4[i7].f8892i, 0, 4);
                                arrayList2 = arrayList4;
                                i13 = size;
                                f6 = f9;
                                i36++;
                                f9 = f6;
                                arrayList4 = arrayList2;
                                size = i13;
                            } else {
                                f11 = 1.0f;
                                f5 = 0.0f;
                            }
                            if (f11 == f5) {
                                z8 = false;
                                cVar.e(c0826cArr4[i7 + 1].f8892i, c0826cArr4[i7].f8892i, 0, 8);
                                arrayList2 = arrayList4;
                                i13 = size;
                                f6 = f9;
                                i36++;
                                f9 = f6;
                                arrayList4 = arrayList2;
                                size = i13;
                            } else {
                                if (c0827d29 != null) {
                                    C0826c[] c0826cArr5 = c0827d29.f8902K;
                                    r.f fVar7 = c0826cArr5[i7].f8892i;
                                    int i37 = i7 + 1;
                                    r.f fVar8 = c0826cArr5[i37].f8892i;
                                    r.f fVar9 = c0826cArr4[i7].f8892i;
                                    r.f fVar10 = c0826cArr4[i37].f8892i;
                                    arrayList2 = arrayList4;
                                    C0765b c0765bL = cVar.l();
                                    i13 = size;
                                    c0765bL.f8719b = 0.0f;
                                    if (f9 == 0.0f || f10 == f11) {
                                        f6 = f9;
                                        c0765bL.f8721d.j(fVar7, 1.0f);
                                        c0765bL.f8721d.j(fVar8, -1.0f);
                                        c0765bL.f8721d.j(fVar10, 1.0f);
                                        c0765bL.f8721d.j(fVar9, -1.0f);
                                    } else {
                                        if (f10 == 0.0f) {
                                            c0765bL.f8721d.j(fVar7, 1.0f);
                                            c0765bL.f8721d.j(fVar8, -1.0f);
                                        } else if (f11 == f5) {
                                            c0765bL.f8721d.j(fVar9, 1.0f);
                                            c0765bL.f8721d.j(fVar10, -1.0f);
                                        } else {
                                            float f12 = (f10 / f9) / (f11 / f9);
                                            f6 = f9;
                                            c0765bL.f8721d.j(fVar7, 1.0f);
                                            c0765bL.f8721d.j(fVar8, -1.0f);
                                            c0765bL.f8721d.j(fVar10, f12);
                                            c0765bL.f8721d.j(fVar9, -f12);
                                        }
                                        f6 = f9;
                                    }
                                    cVar.c(c0765bL);
                                } else {
                                    arrayList2 = arrayList4;
                                    i13 = size;
                                    f6 = f9;
                                }
                                c0827d29 = c0827d30;
                                f10 = f11;
                                i36++;
                                f9 = f6;
                                arrayList4 = arrayList2;
                                size = i13;
                            }
                        }
                    }
                    if (c0827d28 != null) {
                        c0827d4 = c0827d28;
                        if (c0827d4 == c0827d24 || z5) {
                            C0826c c0826c14 = c0827d27.f8902K[i7];
                            int i38 = i7 + 1;
                            C0826c c0826c15 = c0827d22.f8902K[i38];
                            C0826c c0826c16 = c0826c14.f;
                            r.f fVar11 = c0826c16 != null ? c0826c16.f8892i : null;
                            C0826c c0826c17 = c0826c15.f;
                            r.f fVar12 = c0826c17 != null ? c0826c17.f8892i : null;
                            C0826c c0826c18 = c0827d4.f8902K[i7];
                            C0826c c0826c19 = c0827d24.f8902K[i38];
                            if (fVar11 == null || fVar12 == null) {
                                c0827d2 = c0827d24;
                                i10 = i8;
                            } else {
                                c0827d2 = c0827d24;
                                i10 = i8;
                                cVar.b(c0826c18.f8892i, fVar11, c0826c18.e(), i5 == 0 ? c0827d26.f8915X : c0827d26.f8916Y, fVar12, c0826c19.f8892i, c0826c19.e(), 7);
                            }
                            if ((z6 || z7) && c0827d4 != null && c0827d4 != c0827d2) {
                                C0826c[] c0826cArr6 = c0827d4.f8902K;
                                C0826c c0826c20 = c0826cArr6[i7];
                                int i39 = i7 + 1;
                                C0826c c0826c21 = c0827d2.f8902K[i39];
                                C0826c c0826c22 = c0826c20.f;
                                fVar = c0826c22 != null ? c0826c22.f8892i : null;
                                C0826c c0826c23 = c0826c21.f;
                                r.f fVar13 = c0826c23 != null ? c0826c23.f8892i : null;
                                if (c0827d22 != c0827d2) {
                                    C0826c c0826c24 = c0827d22.f8902K[i39].f;
                                    fVar13 = c0826c24 != null ? c0826c24.f8892i : null;
                                }
                                if (c0827d4 == c0827d2) {
                                    c0826c21 = c0826cArr6[i39];
                                }
                                if (fVar != null && fVar13 != null) {
                                    cVar.b(c0826c20.f8892i, fVar, c0826c20.e(), 0.5f, fVar13, c0826c21.f8892i, c0827d2.f8902K[i39].e(), 5);
                                }
                            }
                        } else {
                            c0827d2 = c0827d24;
                            i10 = i8;
                            c0827d3 = c0827d27;
                        }
                    } else {
                        c0827d2 = c0827d24;
                        i10 = i8;
                        c0827d3 = c0827d27;
                        c0827d4 = c0827d28;
                    }
                    if (!z6 || c0827d4 == null) {
                        C0827d c0827d31 = c0827d3;
                        int i40 = 8;
                        if (z7 && c0827d4 != null) {
                            int i41 = c0825b.f8878j;
                            boolean z18 = i41 > 0 && c0825b.f8877i == i41;
                            C0827d c0827d32 = c0827d4;
                            C0827d c0827d33 = c0827d32;
                            while (c0827d32 != null) {
                                C0827d c0827d34 = c0827d32.g0[i5];
                                while (c0827d34 != null && c0827d34.f8919a0 == i40) {
                                    c0827d34 = c0827d34.g0[i5];
                                }
                                if (c0827d32 == c0827d4 || c0827d32 == c0827d2 || c0827d34 == null) {
                                    c0827d5 = c0827d33;
                                    i12 = i40;
                                } else {
                                    C0827d c0827d35 = c0827d34 == c0827d2 ? null : c0827d34;
                                    C0826c[] c0826cArr7 = c0827d32.f8902K;
                                    C0826c c0826c25 = c0826cArr7[i7];
                                    r.f fVar14 = c0826c25.f8892i;
                                    int i42 = i7 + 1;
                                    r.f fVar15 = c0827d33.f8902K[i42].f8892i;
                                    int iE2 = c0826c25.e();
                                    int iE3 = c0826cArr7[i42].e();
                                    if (c0827d35 != null) {
                                        c0826c = c0827d35.f8902K[i7];
                                        fVar3 = c0826c.f8892i;
                                        C0826c c0826c26 = c0826c.f;
                                        fVar2 = c0826c26 != null ? c0826c26.f8892i : null;
                                    } else {
                                        C0826c c0826c27 = c0827d2.f8902K[i7];
                                        r.f fVar16 = c0826c27 != null ? c0826c27.f8892i : null;
                                        fVar2 = c0826cArr7[i42].f8892i;
                                        c0826c = c0826c27;
                                        fVar3 = fVar16;
                                    }
                                    int iE4 = c0826c != null ? c0826c.e() + iE3 : iE3;
                                    int iE5 = c0827d33.f8902K[i42].e() + iE2;
                                    int i43 = z18 ? 8 : 4;
                                    if (fVar14 == null || fVar15 == null || fVar3 == null || fVar2 == null) {
                                        c0827d6 = c0827d35;
                                        c0827d5 = c0827d33;
                                        i12 = 8;
                                    } else {
                                        c0827d6 = c0827d35;
                                        int i44 = iE4;
                                        c0827d5 = c0827d33;
                                        i12 = 8;
                                        cVar.b(fVar14, fVar15, iE5, 0.5f, fVar3, fVar2, i44, i43);
                                    }
                                    c0827d34 = c0827d6;
                                }
                                if (c0827d32.f8919a0 == i12) {
                                    c0827d32 = c0827d5;
                                }
                                i40 = i12;
                                c0827d33 = c0827d32;
                                c0827d32 = c0827d34;
                            }
                            C0826c c0826c28 = c0827d4.f8902K[i7];
                            C0826c c0826c29 = c0827d31.f8902K[i7].f;
                            int i45 = i7 + 1;
                            C0826c c0826c30 = c0827d2.f8902K[i45];
                            C0826c c0826c31 = c0827d22.f8902K[i45].f;
                            if (c0826c29 == null) {
                                i11 = 5;
                                if (c0826c31 != null && c0827d4 != c0827d2) {
                                    cVar.e(c0826c30.f8892i, c0826c31.f8892i, -c0826c30.e(), i11);
                                }
                            } else {
                                if (c0827d4 != c0827d2) {
                                    cVar.e(c0826c28.f8892i, c0826c29.f8892i, c0826c28.e(), 5);
                                } else {
                                    if (c0826c31 != null) {
                                        i11 = 5;
                                        cVar.b(c0826c28.f8892i, c0826c29.f8892i, c0826c28.e(), 0.5f, c0826c30.f8892i, c0826c31.f8892i, c0826c30.e(), 5);
                                    }
                                    if (c0826c31 != null) {
                                        cVar.e(c0826c30.f8892i, c0826c31.f8892i, -c0826c30.e(), i11);
                                    }
                                }
                                i11 = 5;
                                if (c0826c31 != null) {
                                }
                            }
                        }
                    } else {
                        int i46 = c0825b.f8878j;
                        boolean z19 = i46 > 0 && c0825b.f8877i == i46;
                        C0827d c0827d36 = c0827d4;
                        C0827d c0827d37 = c0827d36;
                        while (c0827d37 != null) {
                            C0827d c0827d38 = c0827d37.g0[i5];
                            while (c0827d38 != null && c0827d38.f8919a0 == 8) {
                                c0827d38 = c0827d38.g0[i5];
                            }
                            if (c0827d38 != null || c0827d37 == c0827d2) {
                                C0826c[] c0826cArr8 = c0827d37.f8902K;
                                C0826c c0826c32 = c0826cArr8[i7];
                                r.f fVar17 = c0826c32.f8892i;
                                C0826c c0826c33 = c0826c32.f;
                                r.f fVar18 = c0826c33 != null ? c0826c33.f8892i : null;
                                if (c0827d36 != c0827d37) {
                                    fVar18 = c0827d36.f8902K[i7 + 1].f8892i;
                                } else if (c0827d37 == c0827d4 && c0827d36 == c0827d37) {
                                    C0826c c0826c34 = c0827d3.f8902K[i7].f;
                                    fVar18 = c0826c34 != null ? c0826c34.f8892i : null;
                                }
                                int iE6 = c0826c32.e();
                                int i47 = i7 + 1;
                                int iE7 = c0826cArr8[i47].e();
                                if (c0827d38 != null) {
                                    c0826c2 = c0827d38.f8902K[i7];
                                    fVar4 = c0826c2.f8892i;
                                    fVar5 = c0826cArr8[i47].f8892i;
                                } else {
                                    c0826c2 = c0827d22.f8902K[i47].f;
                                    fVar4 = c0826c2 != null ? c0826c2.f8892i : null;
                                    fVar5 = c0826cArr8[i47].f8892i;
                                }
                                r.f fVar19 = fVar5;
                                if (c0826c2 != null) {
                                    iE7 = c0826c2.e() + iE7;
                                }
                                if (c0827d36 != null) {
                                    iE6 += c0827d36.f8902K[i47].e();
                                }
                                if (fVar17 == null || fVar18 == null || fVar4 == null || fVar19 == null) {
                                    c0827d7 = c0827d38;
                                    c0827d8 = c0827d3;
                                    c0827d9 = c0827d36;
                                } else {
                                    int iE8 = c0827d37 == c0827d4 ? c0827d4.f8902K[i7].e() : iE6;
                                    if (c0827d37 == c0827d2) {
                                        iE7 = c0827d2.f8902K[i47].e();
                                    }
                                    r.f fVar20 = fVar18;
                                    int i48 = iE8;
                                    r.f fVar21 = fVar4;
                                    c0827d7 = c0827d38;
                                    c0827d8 = c0827d3;
                                    int i49 = iE7;
                                    c0827d9 = c0827d36;
                                    cVar.b(fVar17, fVar20, i48, 0.5f, fVar21, fVar19, i49, z19 ? 8 : 5);
                                }
                            }
                            if (c0827d37.f8919a0 == 8) {
                                c0827d37 = c0827d9;
                            }
                            c0827d36 = c0827d37;
                            c0827d37 = c0827d7;
                            c0827d3 = c0827d8;
                        }
                    }
                    if (z6) {
                        C0826c[] c0826cArr62 = c0827d4.f8902K;
                        C0826c c0826c202 = c0826cArr62[i7];
                        int i392 = i7 + 1;
                        C0826c c0826c212 = c0827d2.f8902K[i392];
                        C0826c c0826c222 = c0826c202.f;
                        if (c0826c222 != null) {
                        }
                        C0826c c0826c232 = c0826c212.f;
                        if (c0826c232 != null) {
                        }
                        if (c0827d22 != c0827d2) {
                        }
                        if (c0827d4 == c0827d2) {
                        }
                        if (fVar != null) {
                        }
                    } else {
                        C0826c[] c0826cArr622 = c0827d4.f8902K;
                        C0826c c0826c2022 = c0826cArr622[i7];
                        int i3922 = i7 + 1;
                        C0826c c0826c2122 = c0827d2.f8902K[i3922];
                        C0826c c0826c2222 = c0826c2022.f;
                        if (c0826c2222 != null) {
                        }
                        C0826c c0826c2322 = c0826c2122.f;
                        if (c0826c2322 != null) {
                        }
                        if (c0827d22 != c0827d2) {
                        }
                        if (c0827d4 == c0827d2) {
                        }
                        if (fVar != null) {
                        }
                    }
                }
            } else {
                i9 = i6;
                c0825bArr2 = c0825bArr;
                i10 = i8;
            }
            i17 = i10 + 1;
            i16 = 2;
            eVar2 = eVar;
            arrayList3 = arrayList;
            i6 = i9;
            c0825bArr = c0825bArr2;
        }
    }

    public static void b(e eVar, r.c cVar, C0827d c0827d) {
        c0827d.f8934j = -1;
        c0827d.f8936k = -1;
        int i5 = eVar.f8935j0[0];
        int[] iArr = c0827d.f8935j0;
        if (i5 != 2 && iArr[0] == 4) {
            C0826c c0826c = c0827d.f8895C;
            int i6 = c0826c.f8890g;
            int iN = eVar.n();
            C0826c c0826c2 = c0827d.E;
            int i7 = iN - c0826c2.f8890g;
            c0826c.f8892i = cVar.k(c0826c);
            c0826c2.f8892i = cVar.k(c0826c2);
            cVar.d(c0826c.f8892i, i6);
            cVar.d(c0826c2.f8892i, i7);
            c0827d.f8934j = 2;
            c0827d.f8910S = i6;
            int i8 = i7 - i6;
            c0827d.f8906O = i8;
            int i9 = c0827d.f8913V;
            if (i8 < i9) {
                c0827d.f8906O = i9;
            }
        }
        if (eVar.f8935j0[1] == 2 || iArr[1] != 4) {
            return;
        }
        C0826c c0826c3 = c0827d.f8896D;
        int i10 = c0826c3.f8890g;
        int iK = eVar.k();
        C0826c c0826c4 = c0827d.f8897F;
        int i11 = iK - c0826c4.f8890g;
        c0826c3.f8892i = cVar.k(c0826c3);
        c0826c4.f8892i = cVar.k(c0826c4);
        cVar.d(c0826c3.f8892i, i10);
        cVar.d(c0826c4.f8892i, i11);
        if (c0827d.f8912U > 0 || c0827d.f8919a0 == 8) {
            C0826c c0826c5 = c0827d.f8898G;
            r.f fVarK = cVar.k(c0826c5);
            c0826c5.f8892i = fVarK;
            cVar.d(fVarK, c0827d.f8912U + i10);
        }
        c0827d.f8936k = 2;
        c0827d.f8911T = i10;
        int i12 = i11 - i10;
        c0827d.f8907P = i12;
        int i13 = c0827d.f8914W;
        if (i12 < i13) {
            c0827d.f8907P = i13;
        }
    }

    public static final boolean c(int i5, int i6) {
        return (i5 & i6) == i6;
    }
}
