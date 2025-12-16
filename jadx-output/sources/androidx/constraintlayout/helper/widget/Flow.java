package androidx.constraintlayout.helper.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import com.google.android.gms.internal.p000firebaseauthapi.a5;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import s.C0826c;
import s.C0827d;
import s.e;
import s.f;
import s.g;
import s.h;
import t.C0853b;
import u.o;
import u.p;

/* loaded from: classes.dex */
public class Flow extends p {

    /* renamed from: l, reason: collision with root package name */
    public g f3569l;

    public Flow(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f9151c = new int[32];
        this.f9156i = new HashMap();
        this.f9153e = context;
        f(attributeSet);
    }

    @Override // u.p, u.c
    public final void f(AttributeSet attributeSet) {
        super.f(attributeSet);
        g gVar = new g();
        gVar.m0 = 0;
        gVar.n0 = 0;
        gVar.o0 = 0;
        gVar.f8996p0 = 0;
        gVar.q0 = 0;
        gVar.r0 = 0;
        gVar.s0 = false;
        gVar.t0 = 0;
        gVar.u0 = 0;
        gVar.f8997v0 = new C0853b();
        gVar.f8998w0 = null;
        gVar.f8999x0 = -1;
        gVar.f9000y0 = -1;
        gVar.f9001z0 = -1;
        gVar.f8976A0 = -1;
        gVar.B0 = -1;
        gVar.f8977C0 = -1;
        gVar.f8978D0 = 0.5f;
        gVar.f8979E0 = 0.5f;
        gVar.f8980F0 = 0.5f;
        gVar.f8981G0 = 0.5f;
        gVar.f8982H0 = 0.5f;
        gVar.f8983I0 = 0.5f;
        gVar.f8984J0 = 0;
        gVar.f8985K0 = 0;
        gVar.f8986L0 = 2;
        gVar.f8987M0 = 2;
        gVar.f8988N0 = 0;
        gVar.O0 = -1;
        gVar.f8989P0 = 0;
        gVar.f8990Q0 = new ArrayList();
        gVar.f8991R0 = null;
        gVar.f8992S0 = null;
        gVar.f8993T0 = null;
        gVar.f8995V0 = 0;
        this.f3569l = gVar;
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, o.f9311b);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i5 = 0; i5 < indexCount; i5++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i5);
                if (index == 0) {
                    this.f3569l.f8989P0 = typedArrayObtainStyledAttributes.getInt(index, 0);
                } else if (index == 1) {
                    g gVar2 = this.f3569l;
                    int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0);
                    gVar2.m0 = dimensionPixelSize;
                    gVar2.n0 = dimensionPixelSize;
                    gVar2.o0 = dimensionPixelSize;
                    gVar2.f8996p0 = dimensionPixelSize;
                } else if (index == 11) {
                    g gVar3 = this.f3569l;
                    int dimensionPixelSize2 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0);
                    gVar3.o0 = dimensionPixelSize2;
                    gVar3.q0 = dimensionPixelSize2;
                    gVar3.r0 = dimensionPixelSize2;
                } else if (index == 12) {
                    this.f3569l.f8996p0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0);
                } else if (index == 2) {
                    this.f3569l.q0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0);
                } else if (index == 3) {
                    this.f3569l.m0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0);
                } else if (index == 4) {
                    this.f3569l.r0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0);
                } else if (index == 5) {
                    this.f3569l.n0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0);
                } else if (index == 38) {
                    this.f3569l.f8988N0 = typedArrayObtainStyledAttributes.getInt(index, 0);
                } else if (index == 28) {
                    this.f3569l.f8999x0 = typedArrayObtainStyledAttributes.getInt(index, 0);
                } else if (index == 37) {
                    this.f3569l.f9000y0 = typedArrayObtainStyledAttributes.getInt(index, 0);
                } else if (index == 22) {
                    this.f3569l.f9001z0 = typedArrayObtainStyledAttributes.getInt(index, 0);
                } else if (index == 30) {
                    this.f3569l.B0 = typedArrayObtainStyledAttributes.getInt(index, 0);
                } else if (index == 24) {
                    this.f3569l.f8976A0 = typedArrayObtainStyledAttributes.getInt(index, 0);
                } else if (index == 32) {
                    this.f3569l.f8977C0 = typedArrayObtainStyledAttributes.getInt(index, 0);
                } else if (index == 26) {
                    this.f3569l.f8978D0 = typedArrayObtainStyledAttributes.getFloat(index, 0.5f);
                } else if (index == 21) {
                    this.f3569l.f8980F0 = typedArrayObtainStyledAttributes.getFloat(index, 0.5f);
                } else if (index == 29) {
                    this.f3569l.f8982H0 = typedArrayObtainStyledAttributes.getFloat(index, 0.5f);
                } else if (index == 23) {
                    this.f3569l.f8981G0 = typedArrayObtainStyledAttributes.getFloat(index, 0.5f);
                } else if (index == 31) {
                    this.f3569l.f8983I0 = typedArrayObtainStyledAttributes.getFloat(index, 0.5f);
                } else if (index == 35) {
                    this.f3569l.f8979E0 = typedArrayObtainStyledAttributes.getFloat(index, 0.5f);
                } else if (index == 25) {
                    this.f3569l.f8986L0 = typedArrayObtainStyledAttributes.getInt(index, 2);
                } else if (index == 34) {
                    this.f3569l.f8987M0 = typedArrayObtainStyledAttributes.getInt(index, 2);
                } else if (index == 27) {
                    this.f3569l.f8984J0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0);
                } else if (index == 36) {
                    this.f3569l.f8985K0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0);
                } else if (index == 33) {
                    this.f3569l.O0 = typedArrayObtainStyledAttributes.getInt(index, -1);
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
        this.f = this.f3569l;
        h();
    }

    @Override // u.c
    public final void g(C0827d c0827d, boolean z4) {
        g gVar = this.f3569l;
        int i5 = gVar.o0;
        if (i5 > 0 || gVar.f8996p0 > 0) {
            if (z4) {
                gVar.q0 = gVar.f8996p0;
                gVar.r0 = i5;
            } else {
                gVar.q0 = i5;
                gVar.r0 = gVar.f8996p0;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:294:0x04fe  */
    /* JADX WARN: Removed duplicated region for block: B:307:0x05a4  */
    /* JADX WARN: Removed duplicated region for block: B:308:0x05a9  */
    /* JADX WARN: Removed duplicated region for block: B:315:0x05bd  */
    /* JADX WARN: Removed duplicated region for block: B:316:0x05c0  */
    /* JADX WARN: Removed duplicated region for block: B:323:0x05dc  */
    /* JADX WARN: Removed duplicated region for block: B:324:0x05df  */
    /* JADX WARN: Removed duplicated region for block: B:334:0x00ce A[EDGE_INSN: B:334:0x00ce->B:59:0x00ce BREAK  A[LOOP:1: B:53:0x00ba->B:58:0x00ca], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x009c  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00a9  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00c0  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x00d0  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x00f9  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0109  */
    /* JADX WARN: Type inference failed for: r35v2 */
    /* JADX WARN: Type inference failed for: r35v5 */
    /* JADX WARN: Type inference failed for: r35v6 */
    /* JADX WARN: Type inference failed for: r35v7 */
    @Override // u.p
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void i(g gVar, int i5, int i6) {
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int[] iArr;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        int i21;
        int i22;
        boolean z4;
        f fVar;
        char c2;
        ?? r35;
        int i23;
        int i24;
        int iMin;
        boolean z5;
        int i25;
        int i26;
        int i27;
        C0827d[] c0827dArr;
        int i28;
        C0826c c0826c;
        int i29;
        int i30;
        C0827d c0827d;
        int i31;
        int iCeil;
        int iCeil2;
        boolean z6;
        C0827d c0827d2;
        int i32;
        int mode = View.MeasureSpec.getMode(i5);
        int size = View.MeasureSpec.getSize(i5);
        int mode2 = View.MeasureSpec.getMode(i6);
        int size2 = View.MeasureSpec.getSize(i6);
        if (gVar == null) {
            setMeasuredDimension(0, 0);
            return;
        }
        if (gVar.l0 <= 0) {
            int i33 = gVar.q0;
            int i34 = gVar.r0;
            int i35 = gVar.m0;
            int i36 = gVar.n0;
            int[] iArr2 = new int[2];
            int i37 = (size - i33) - i34;
            i7 = gVar.f8989P0;
            if (i7 == 1) {
                i37 = (size2 - i35) - i36;
            }
            if (i7 != 0) {
                if (gVar.f8999x0 == -1) {
                    gVar.f8999x0 = 0;
                }
                if (gVar.f9000y0 == -1) {
                    gVar.f9000y0 = 0;
                }
            } else {
                if (gVar.f8999x0 == -1) {
                    gVar.f8999x0 = 0;
                }
                if (gVar.f9000y0 == -1) {
                    gVar.f9000y0 = 0;
                }
            }
            C0827d[] c0827dArr2 = gVar.k0;
            i8 = 0;
            i9 = 0;
            while (true) {
                i10 = gVar.l0;
                if (i8 < i10) {
                    break;
                }
                if (gVar.k0[i8].f8919a0 == 8) {
                    i9++;
                }
                i8++;
            }
            if (i9 <= 0) {
                c0827dArr2 = new C0827d[i10 - i9];
                int i38 = 0;
                i13 = 0;
                while (i38 < gVar.l0) {
                    C0827d c0827d3 = gVar.k0[i38];
                    int i39 = i36;
                    int i40 = i35;
                    if (c0827d3.f8919a0 != 8) {
                        c0827dArr2[i13] = c0827d3;
                        i13++;
                    }
                    i38++;
                    i36 = i39;
                    i35 = i40;
                }
                i11 = i36;
                i12 = i35;
            } else {
                i11 = i36;
                i12 = i35;
                i13 = i10;
            }
            C0827d[] c0827dArr3 = c0827dArr2;
            gVar.f8994U0 = c0827dArr3;
            gVar.f8995V0 = i13;
            i14 = gVar.f8988N0;
            ArrayList arrayList = gVar.f8990Q0;
            if (i14 == 0) {
                if (i14 == 1) {
                    z5 = true;
                    i25 = i34;
                    i26 = i33;
                    i20 = size2;
                    int i41 = gVar.f8989P0;
                    if (i13 != 0) {
                        arrayList.clear();
                        int i42 = i37;
                        iArr = iArr2;
                        i21 = i11;
                        i22 = i12;
                        i15 = i25;
                        i16 = i26;
                        i19 = mode2;
                        z4 = true;
                        f fVar2 = new f(gVar, i41, gVar.f8895C, gVar.f8896D, gVar.E, gVar.f8897F, i42);
                        arrayList.add(fVar2);
                        if (i41 == 0) {
                            f fVar3 = fVar2;
                            int i43 = 0;
                            i27 = 0;
                            int i44 = 0;
                            while (i43 < i13) {
                                C0827d c0827d4 = c0827dArr3[i43];
                                int i45 = i42;
                                int iN = gVar.N(c0827d4, i45);
                                if (c0827d4.f8935j0[0] == 3) {
                                    i27++;
                                }
                                int i46 = i27;
                                boolean z7 = (i44 == i45 || (gVar.f8984J0 + i44) + iN > i45) && fVar3.f8961b != null;
                                if (!z7 && i43 > 0 && (i31 = gVar.O0) > 0 && i43 % i31 == 0) {
                                    z7 = true;
                                }
                                if (z7) {
                                    i42 = i45;
                                    i30 = size;
                                    i29 = mode;
                                    c0827d = c0827d4;
                                    f fVar4 = new f(gVar, i41, gVar.f8895C, gVar.f8896D, gVar.E, gVar.f8897F, i42);
                                    fVar4.n = i43;
                                    arrayList.add(fVar4);
                                    fVar3 = fVar4;
                                } else {
                                    i42 = i45;
                                    i29 = mode;
                                    i30 = size;
                                    c0827d = c0827d4;
                                    if (i43 > 0) {
                                        i44 = gVar.f8984J0 + iN + i44;
                                    }
                                    fVar3.a(c0827d);
                                    i43++;
                                    i27 = i46;
                                    size = i30;
                                    mode = i29;
                                }
                                i44 = iN;
                                fVar3.a(c0827d);
                                i43++;
                                i27 = i46;
                                size = i30;
                                mode = i29;
                            }
                            i17 = mode;
                            i18 = size;
                        } else {
                            i17 = mode;
                            i18 = size;
                            f fVar5 = fVar2;
                            int i47 = 0;
                            i27 = 0;
                            int i48 = 0;
                            while (i47 < i13) {
                                C0827d c0827d5 = c0827dArr3[i47];
                                int i49 = i42;
                                int iM = gVar.M(c0827d5, i49);
                                if (c0827d5.f8935j0[1] == 3) {
                                    i27++;
                                }
                                int i50 = i27;
                                boolean z8 = (i48 == i49 || (gVar.f8985K0 + i48) + iM > i49) && fVar5.f8961b != null;
                                if (!z8 && i47 > 0 && (i28 = gVar.O0) > 0 && i47 % i28 == 0) {
                                    z8 = true;
                                }
                                if (z8) {
                                    c0827dArr = c0827dArr3;
                                    f fVar6 = new f(gVar, i41, gVar.f8895C, gVar.f8896D, gVar.E, gVar.f8897F, i49);
                                    fVar6.n = i47;
                                    arrayList.add(fVar6);
                                    fVar5 = fVar6;
                                } else {
                                    c0827dArr = c0827dArr3;
                                    if (i47 > 0) {
                                        i48 = gVar.f8985K0 + iM + i48;
                                    }
                                    fVar5.a(c0827d5);
                                    i47++;
                                    i27 = i50;
                                    c0827dArr3 = c0827dArr;
                                    i42 = i49;
                                }
                                i48 = iM;
                                fVar5.a(c0827d5);
                                i47++;
                                i27 = i50;
                                c0827dArr3 = c0827dArr;
                                i42 = i49;
                            }
                        }
                        int i51 = i42;
                        int size3 = arrayList.size();
                        int i52 = gVar.q0;
                        int i53 = gVar.m0;
                        int i54 = gVar.r0;
                        int i55 = gVar.n0;
                        int[] iArr3 = gVar.f8935j0;
                        boolean z9 = iArr3[0] == 2 || iArr3[1] == 2;
                        if (i27 > 0 && z9) {
                            for (int i56 = 0; i56 < size3; i56++) {
                                f fVar7 = (f) arrayList.get(i56);
                                if (i41 == 0) {
                                    fVar7.e(i51 - fVar7.d());
                                } else {
                                    fVar7.e(i51 - fVar7.c());
                                }
                            }
                        }
                        C0826c c0826c2 = gVar.f8897F;
                        C0826c c0826c3 = gVar.E;
                        C0826c c0826c4 = gVar.f8895C;
                        C0826c c0826c5 = gVar.f8896D;
                        C0826c c0826c6 = c0826c2;
                        C0826c c0826c7 = c0826c3;
                        int i57 = 0;
                        int i58 = 0;
                        int i59 = 0;
                        while (i57 < size3) {
                            C0826c c0826c8 = c0826c2;
                            f fVar8 = (f) arrayList.get(i57);
                            if (i41 == 0) {
                                if (i57 < size3 - 1) {
                                    c0826c6 = ((f) arrayList.get(i57 + 1)).f8961b.f8896D;
                                    c0826c = c0826c3;
                                    i55 = 0;
                                } else {
                                    i55 = gVar.n0;
                                    c0826c6 = c0826c8;
                                    c0826c = c0826c3;
                                }
                                C0826c c0826c9 = fVar8.f8961b.f8897F;
                                fVar8.f(i41, c0826c4, c0826c5, c0826c7, c0826c6, i52, i53, i54, i55, i51);
                                int iMax = Math.max(i58, fVar8.d());
                                int iC = fVar8.c() + i59;
                                if (i57 > 0) {
                                    iC += gVar.f8985K0;
                                }
                                i59 = iC;
                                i58 = iMax;
                                c0826c5 = c0826c9;
                                i53 = 0;
                            } else {
                                c0826c = c0826c3;
                                if (i57 < size3 - 1) {
                                    c0826c7 = ((f) arrayList.get(i57 + 1)).f8961b.f8895C;
                                    i54 = 0;
                                } else {
                                    i54 = gVar.r0;
                                    c0826c7 = c0826c;
                                }
                                C0826c c0826c10 = fVar8.f8961b.E;
                                fVar8.f(i41, c0826c4, c0826c5, c0826c7, c0826c6, i52, i53, i54, i55, i51);
                                int iD = fVar8.d() + i58;
                                int iMax2 = Math.max(i59, fVar8.c());
                                if (i57 > 0) {
                                    iD += gVar.f8984J0;
                                }
                                i59 = iMax2;
                                i58 = iD;
                                c0826c4 = c0826c10;
                                i52 = 0;
                            }
                            i57++;
                            c0826c2 = c0826c8;
                            c0826c3 = c0826c;
                        }
                        iArr[0] = i58;
                        iArr[1] = i59;
                    }
                    c2 = 0;
                    r35 = z4;
                    int i60 = iArr[c2] + i16 + i15;
                    int i61 = iArr[r35] + i22 + i21;
                    i23 = i17;
                    if (i23 != 1073741824) {
                    }
                    if (i24 != 1073741824) {
                    }
                    gVar.t0 = iMin;
                    gVar.u0 = iMin;
                    gVar.H(iMin);
                    gVar.E(iMin);
                    gVar.s0 = gVar.l0 <= 0 ? r35 : false;
                } else if (i14 != 2) {
                    iArr = iArr2;
                    i15 = i34;
                    i16 = i33;
                    i17 = mode;
                    i18 = size;
                    i19 = mode2;
                    i20 = size2;
                    i21 = i11;
                    i22 = i12;
                    c2 = 0;
                    r35 = 1;
                    int i602 = iArr[c2] + i16 + i15;
                    int i612 = iArr[r35] + i22 + i21;
                    i23 = i17;
                    if (i23 != 1073741824) {
                        i24 = i19;
                        iMin = i18;
                    } else {
                        if (i23 == Integer.MIN_VALUE) {
                            iMin = Math.min(i602, i18);
                        } else if (i23 == 0) {
                            iMin = i602;
                        } else {
                            i24 = i19;
                            iMin = 0;
                        }
                        i24 = i19;
                    }
                    int iMin2 = i24 != 1073741824 ? i20 : i24 == Integer.MIN_VALUE ? Math.min(i612, i20) : i24 == 0 ? i612 : 0;
                    gVar.t0 = iMin;
                    gVar.u0 = iMin2;
                    gVar.H(iMin);
                    gVar.E(iMin2);
                    gVar.s0 = gVar.l0 <= 0 ? r35 : false;
                } else {
                    int i62 = gVar.f8989P0;
                    if (i62 == 0) {
                        int i63 = gVar.O0;
                        if (i63 <= 0) {
                            int i64 = 0;
                            int i65 = 0;
                            iCeil2 = 0;
                            while (true) {
                                i25 = i34;
                                if (i64 >= i13) {
                                    break;
                                }
                                if (i64 > 0) {
                                    i65 += gVar.f8984J0;
                                }
                                C0827d c0827d6 = c0827dArr3[i64];
                                if (c0827d6 != null) {
                                    int iN2 = gVar.N(c0827d6, i37) + i65;
                                    if (iN2 > i37) {
                                        break;
                                    }
                                    iCeil2++;
                                    i65 = iN2;
                                }
                                i64++;
                                i34 = i25;
                            }
                        } else {
                            i25 = i34;
                            iCeil2 = i63;
                        }
                        iCeil = 0;
                    } else {
                        i25 = i34;
                        iCeil = gVar.O0;
                        if (iCeil <= 0) {
                            int i66 = 0;
                            int i67 = 0;
                            for (int i68 = 0; i68 < i13; i68++) {
                                if (i68 > 0) {
                                    i66 += gVar.f8985K0;
                                }
                                C0827d c0827d7 = c0827dArr3[i68];
                                if (c0827d7 != null) {
                                    int iM2 = gVar.M(c0827d7, i37) + i66;
                                    if (iM2 > i37) {
                                        break;
                                    }
                                    i67++;
                                    i66 = iM2;
                                }
                            }
                            iCeil = i67;
                        }
                        iCeil2 = 0;
                    }
                    if (gVar.f8993T0 == null) {
                        gVar.f8993T0 = new int[2];
                    }
                    boolean z10 = (iCeil == 0 && i62 == 1) || (iCeil2 == 0 && i62 == 0);
                    while (!z10) {
                        if (i62 == 0) {
                            z6 = z10;
                            iCeil = (int) Math.ceil(i13 / iCeil2);
                        } else {
                            z6 = z10;
                            iCeil2 = (int) Math.ceil(i13 / iCeil);
                        }
                        C0827d[] c0827dArr4 = gVar.f8992S0;
                        if (c0827dArr4 == null || c0827dArr4.length < iCeil2) {
                            gVar.f8992S0 = new C0827d[iCeil2];
                        } else {
                            Arrays.fill(c0827dArr4, (Object) null);
                        }
                        C0827d[] c0827dArr5 = gVar.f8991R0;
                        if (c0827dArr5 == null || c0827dArr5.length < iCeil) {
                            gVar.f8991R0 = new C0827d[iCeil];
                        } else {
                            Arrays.fill(c0827dArr5, (Object) null);
                        }
                        for (int i69 = 0; i69 < iCeil2; i69++) {
                            int i70 = 0;
                            while (i70 < iCeil) {
                                int i71 = (i70 * iCeil2) + i69;
                                int i72 = i33;
                                if (i62 == 1) {
                                    i71 = (i69 * iCeil) + i70;
                                }
                                int i73 = i71;
                                if (i73 < c0827dArr3.length && (c0827d2 = c0827dArr3[i73]) != null) {
                                    int iN3 = gVar.N(c0827d2, i37);
                                    i32 = size2;
                                    C0827d c0827d8 = gVar.f8992S0[i69];
                                    if (c0827d8 == null || c0827d8.n() < iN3) {
                                        gVar.f8992S0[i69] = c0827d2;
                                    }
                                    int iM3 = gVar.M(c0827d2, i37);
                                    C0827d c0827d9 = gVar.f8991R0[i70];
                                    if (c0827d9 == null || c0827d9.k() < iM3) {
                                        gVar.f8991R0[i70] = c0827d2;
                                    }
                                } else {
                                    i32 = size2;
                                }
                                i70++;
                                i33 = i72;
                                size2 = i32;
                            }
                        }
                        int i74 = i33;
                        int i75 = size2;
                        int iN4 = 0;
                        for (int i76 = 0; i76 < iCeil2; i76++) {
                            C0827d c0827d10 = gVar.f8992S0[i76];
                            if (c0827d10 != null) {
                                if (i76 > 0) {
                                    iN4 += gVar.f8984J0;
                                }
                                iN4 = gVar.N(c0827d10, i37) + iN4;
                            }
                        }
                        int iM4 = 0;
                        for (int i77 = 0; i77 < iCeil; i77++) {
                            C0827d c0827d11 = gVar.f8991R0[i77];
                            if (c0827d11 != null) {
                                if (i77 > 0) {
                                    iM4 += gVar.f8985K0;
                                }
                                iM4 = gVar.M(c0827d11, i37) + iM4;
                            }
                        }
                        iArr2[0] = iN4;
                        iArr2[1] = iM4;
                        if (i62 == 0) {
                            if (iN4 > i37 && iCeil2 > 1) {
                                iCeil2--;
                                z10 = z6;
                            }
                            z10 = true;
                        } else {
                            if (iM4 > i37 && iCeil > 1) {
                                iCeil--;
                                z10 = z6;
                            }
                            z10 = true;
                        }
                        i33 = i74;
                        size2 = i75;
                    }
                    i26 = i33;
                    i20 = size2;
                    z5 = true;
                    int[] iArr4 = gVar.f8993T0;
                    iArr4[0] = iCeil2;
                    iArr4[1] = iCeil;
                }
                z4 = z5;
                iArr = iArr2;
                i17 = mode;
                i18 = size;
                i19 = mode2;
                i15 = i25;
                i21 = i11;
                i22 = i12;
                i16 = i26;
                c2 = 0;
                r35 = z4;
                int i6022 = iArr[c2] + i16 + i15;
                int i6122 = iArr[r35] + i22 + i21;
                i23 = i17;
                if (i23 != 1073741824) {
                }
                if (i24 != 1073741824) {
                }
                gVar.t0 = iMin;
                gVar.u0 = iMin2;
                gVar.H(iMin);
                gVar.E(iMin2);
                gVar.s0 = gVar.l0 <= 0 ? r35 : false;
            } else {
                iArr = iArr2;
                i15 = i34;
                i16 = i33;
                i17 = mode;
                i18 = size;
                i19 = mode2;
                i20 = size2;
                i21 = i11;
                i22 = i12;
                z4 = true;
                r35 = 1;
                int i78 = i37;
                int i79 = gVar.f8989P0;
                if (i13 == 0) {
                    c2 = 0;
                    r35 = z4;
                } else {
                    if (arrayList.size() == 0) {
                        fVar = new f(gVar, i79, gVar.f8895C, gVar.f8896D, gVar.E, gVar.f8897F, i78);
                        arrayList.add(fVar);
                    } else {
                        fVar = (f) arrayList.get(0);
                        fVar.f8962c = 0;
                        fVar.f8961b = null;
                        fVar.f8970l = 0;
                        fVar.f8971m = 0;
                        fVar.n = 0;
                        fVar.f8972o = 0;
                        fVar.f8973p = 0;
                        fVar.f(i79, gVar.f8895C, gVar.f8896D, gVar.E, gVar.f8897F, gVar.q0, gVar.m0, gVar.r0, gVar.n0, i78);
                    }
                    for (int i80 = 0; i80 < i13; i80++) {
                        fVar.a(c0827dArr3[i80]);
                    }
                    c2 = 0;
                    iArr[0] = fVar.d();
                    iArr[1] = fVar.c();
                }
                int i60222 = iArr[c2] + i16 + i15;
                int i61222 = iArr[r35] + i22 + i21;
                i23 = i17;
                if (i23 != 1073741824) {
                }
                if (i24 != 1073741824) {
                }
                gVar.t0 = iMin;
                gVar.u0 = iMin2;
                gVar.H(iMin);
                gVar.E(iMin2);
                gVar.s0 = gVar.l0 <= 0 ? r35 : false;
            }
        } else {
            C0827d c0827d12 = gVar.f8905N;
            a5 a5Var = c0827d12 != null ? ((e) c0827d12).n0 : null;
            if (a5Var == null) {
                gVar.t0 = 0;
                gVar.u0 = 0;
                gVar.s0 = false;
            } else {
                for (int i81 = 0; i81 < gVar.l0; i81++) {
                    C0827d c0827d13 = gVar.k0[i81];
                    if (c0827d13 != null && !(c0827d13 instanceof h)) {
                        int iJ = c0827d13.j(0);
                        int iJ2 = c0827d13.j(1);
                        if (iJ != 3 || c0827d13.f8937l == 1 || iJ2 != 3 || c0827d13.f8938m == 1) {
                            if (iJ == 3) {
                                iJ = 2;
                            }
                            if (iJ2 == 3) {
                                iJ2 = 2;
                            }
                            C0853b c0853b = gVar.f8997v0;
                            c0853b.f9077a = iJ;
                            c0853b.f9078b = iJ2;
                            c0853b.f9079c = c0827d13.n();
                            c0853b.f9080d = c0827d13.k();
                            a5Var.b(c0827d13, c0853b);
                            c0827d13.H(c0853b.f9081e);
                            c0827d13.E(c0853b.f);
                            c0827d13.B(c0853b.f9082g);
                        }
                    }
                }
                int i332 = gVar.q0;
                int i342 = gVar.r0;
                int i352 = gVar.m0;
                int i362 = gVar.n0;
                int[] iArr22 = new int[2];
                int i372 = (size - i332) - i342;
                i7 = gVar.f8989P0;
                if (i7 == 1) {
                }
                if (i7 != 0) {
                }
                C0827d[] c0827dArr22 = gVar.k0;
                i8 = 0;
                i9 = 0;
                while (true) {
                    i10 = gVar.l0;
                    if (i8 < i10) {
                    }
                    i8++;
                }
                if (i9 <= 0) {
                }
                C0827d[] c0827dArr32 = c0827dArr22;
                gVar.f8994U0 = c0827dArr32;
                gVar.f8995V0 = i13;
                i14 = gVar.f8988N0;
                ArrayList arrayList2 = gVar.f8990Q0;
                if (i14 == 0) {
                }
            }
        }
        setMeasuredDimension(gVar.t0, gVar.u0);
    }

    @Override // u.c, android.view.View
    public final void onMeasure(int i5, int i6) {
        i(this.f3569l, i5, i6);
    }

    public void setFirstHorizontalBias(float f) {
        this.f3569l.f8980F0 = f;
        requestLayout();
    }

    public void setFirstHorizontalStyle(int i5) {
        this.f3569l.f9001z0 = i5;
        requestLayout();
    }

    public void setFirstVerticalBias(float f) {
        this.f3569l.f8981G0 = f;
        requestLayout();
    }

    public void setFirstVerticalStyle(int i5) {
        this.f3569l.f8976A0 = i5;
        requestLayout();
    }

    public void setHorizontalAlign(int i5) {
        this.f3569l.f8986L0 = i5;
        requestLayout();
    }

    public void setHorizontalBias(float f) {
        this.f3569l.f8978D0 = f;
        requestLayout();
    }

    public void setHorizontalGap(int i5) {
        this.f3569l.f8984J0 = i5;
        requestLayout();
    }

    public void setHorizontalStyle(int i5) {
        this.f3569l.f8999x0 = i5;
        requestLayout();
    }

    public void setMaxElementsWrap(int i5) {
        this.f3569l.O0 = i5;
        requestLayout();
    }

    public void setOrientation(int i5) {
        this.f3569l.f8989P0 = i5;
        requestLayout();
    }

    public void setPadding(int i5) {
        g gVar = this.f3569l;
        gVar.m0 = i5;
        gVar.n0 = i5;
        gVar.o0 = i5;
        gVar.f8996p0 = i5;
        requestLayout();
    }

    public void setPaddingBottom(int i5) {
        this.f3569l.n0 = i5;
        requestLayout();
    }

    public void setPaddingLeft(int i5) {
        this.f3569l.q0 = i5;
        requestLayout();
    }

    public void setPaddingRight(int i5) {
        this.f3569l.r0 = i5;
        requestLayout();
    }

    public void setPaddingTop(int i5) {
        this.f3569l.m0 = i5;
        requestLayout();
    }

    public void setVerticalAlign(int i5) {
        this.f3569l.f8987M0 = i5;
        requestLayout();
    }

    public void setVerticalBias(float f) {
        this.f3569l.f8979E0 = f;
        requestLayout();
    }

    public void setVerticalGap(int i5) {
        this.f3569l.f8985K0 = i5;
        requestLayout();
    }

    public void setVerticalStyle(int i5) {
        this.f3569l.f9000y0 = i5;
        requestLayout();
    }

    public void setWrapMode(int i5) {
        this.f3569l.f8988N0 = i5;
        requestLayout();
    }
}
