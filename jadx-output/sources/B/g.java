package B;

import android.graphics.Path;
import android.util.Log;

/* loaded from: classes.dex */
public final class g {

    /* renamed from: a, reason: collision with root package name */
    public char f187a;

    /* renamed from: b, reason: collision with root package name */
    public final float[] f188b;

    public g(char c2, float[] fArr) {
        this.f187a = c2;
        this.f188b = fArr;
    }

    public static void a(Path path, float f, float f5, float f6, float f7, float f8, float f9, float f10, boolean z4, boolean z5) {
        double d2;
        double d5;
        double radians = Math.toRadians(f10);
        double dCos = Math.cos(radians);
        double dSin = Math.sin(radians);
        double d6 = f;
        double d7 = f5;
        double d8 = (d7 * dSin) + (d6 * dCos);
        double d9 = d6;
        double d10 = f8;
        double d11 = d8 / d10;
        double d12 = f9;
        double d13 = ((d7 * dCos) + ((-f) * dSin)) / d12;
        double d14 = d7;
        double d15 = f7;
        double d16 = ((d15 * dSin) + (f6 * dCos)) / d10;
        double d17 = ((d15 * dCos) + ((-f6) * dSin)) / d12;
        double d18 = d11 - d16;
        double d19 = d13 - d17;
        double d20 = (d11 + d16) / 2.0d;
        double d21 = (d13 + d17) / 2.0d;
        double d22 = (d19 * d19) + (d18 * d18);
        if (d22 == 0.0d) {
            Log.w("PathParser", " Points are coincident");
            return;
        }
        double d23 = (1.0d / d22) - 0.25d;
        if (d23 < 0.0d) {
            Log.w("PathParser", "Points are too far apart " + d22);
            float fSqrt = (float) (Math.sqrt(d22) / 1.99999d);
            a(path, f, f5, f6, f7, f8 * fSqrt, f9 * fSqrt, f10, z4, z5);
            return;
        }
        double dSqrt = Math.sqrt(d23);
        double d24 = d18 * dSqrt;
        double d25 = dSqrt * d19;
        if (z4 == z5) {
            d2 = d20 - d25;
            d5 = d21 + d24;
        } else {
            d2 = d20 + d25;
            d5 = d21 - d24;
        }
        double dAtan2 = Math.atan2(d13 - d5, d11 - d2);
        double dAtan22 = Math.atan2(d17 - d5, d16 - d2) - dAtan2;
        if (z5 != (dAtan22 >= 0.0d)) {
            dAtan22 = dAtan22 > 0.0d ? dAtan22 - 6.283185307179586d : dAtan22 + 6.283185307179586d;
        }
        double d26 = d2 * d10;
        double d27 = d5 * d12;
        double d28 = (d26 * dCos) - (d27 * dSin);
        double d29 = (d27 * dCos) + (d26 * dSin);
        int iCeil = (int) Math.ceil(Math.abs((dAtan22 * 4.0d) / 3.141592653589793d));
        double dCos2 = Math.cos(radians);
        double dSin2 = Math.sin(radians);
        double dCos3 = Math.cos(dAtan2);
        double dSin3 = Math.sin(dAtan2);
        double d30 = -d10;
        double d31 = d30 * dCos2;
        double d32 = d12 * dSin2;
        double d33 = (d31 * dSin3) - (d32 * dCos3);
        double d34 = d30 * dSin2;
        double d35 = d12 * dCos2;
        double d36 = (dCos3 * d35) + (dSin3 * d34);
        double d37 = d35;
        double d38 = dAtan22 / iCeil;
        int i5 = 0;
        while (i5 < iCeil) {
            double d39 = dAtan2 + d38;
            double dSin4 = Math.sin(d39);
            double dCos4 = Math.cos(d39);
            double d40 = d38;
            double d41 = (((d10 * dCos2) * dCos4) + d28) - (d32 * dSin4);
            double d42 = d37;
            double d43 = d28;
            double d44 = (d42 * dSin4) + (d10 * dSin2 * dCos4) + d29;
            double d45 = (d31 * dSin4) - (d32 * dCos4);
            double d46 = (dCos4 * d42) + (dSin4 * d34);
            double d47 = d39 - dAtan2;
            double dTan = Math.tan(d47 / 2.0d);
            double dSqrt2 = ((Math.sqrt(((dTan * 3.0d) * dTan) + 4.0d) - 1.0d) * Math.sin(d47)) / 3.0d;
            path.rLineTo(0.0f, 0.0f);
            path.cubicTo((float) ((d33 * dSqrt2) + d9), (float) ((d36 * dSqrt2) + d14), (float) (d41 - (dSqrt2 * d45)), (float) (d44 - (dSqrt2 * d46)), (float) d41, (float) d44);
            i5++;
            dAtan2 = d39;
            d34 = d34;
            dCos2 = dCos2;
            iCeil = iCeil;
            d36 = d46;
            d10 = d10;
            d33 = d45;
            d9 = d41;
            d14 = d44;
            d28 = d43;
            d38 = d40;
            d37 = d42;
        }
    }

    public static void b(g[] gVarArr, Path path) {
        int i5;
        int i6;
        char c2;
        int i7;
        int i8;
        g gVar;
        float f;
        float f5;
        float f6;
        float f7;
        float f8;
        float f9;
        float f10;
        float f11;
        float f12;
        float f13;
        float f14;
        float f15;
        g[] gVarArr2 = gVarArr;
        int i9 = 6;
        float[] fArr = new float[6];
        int length = gVarArr2.length;
        int i10 = 0;
        char c5 = 'm';
        while (i10 < length) {
            g gVar2 = gVarArr2[i10];
            char c6 = gVar2.f187a;
            float f16 = fArr[0];
            float f17 = fArr[1];
            float f18 = fArr[2];
            float f19 = fArr[3];
            float f20 = fArr[4];
            float f21 = fArr[5];
            switch (c6) {
                case 'A':
                case 'a':
                    i5 = 7;
                    break;
                case 'C':
                case 'c':
                    i5 = i9;
                    break;
                case 'H':
                case 'V':
                case 'h':
                case 'v':
                    i5 = 1;
                    break;
                case 'Q':
                case 'S':
                case 'q':
                case 's':
                    i5 = 4;
                    break;
                case 'Z':
                case 'z':
                    path.close();
                    path.moveTo(f20, f21);
                    f16 = f20;
                    f18 = f16;
                    f17 = f21;
                    f19 = f17;
                default:
                    i5 = 2;
                    break;
            }
            float f22 = f20;
            float f23 = f21;
            float f24 = f16;
            float f25 = f17;
            int i11 = 0;
            while (true) {
                float[] fArr2 = gVar2.f188b;
                if (i11 < fArr2.length) {
                    if (c6 != 'A') {
                        if (c6 != 'C') {
                            if (c6 == 'H') {
                                i6 = i11;
                                c2 = c6;
                                i7 = i10;
                                i8 = length;
                                gVar = gVar2;
                                path.lineTo(fArr2[i6], f25);
                                f24 = fArr2[i6];
                            } else if (c6 == 'Q') {
                                i6 = i11;
                                c2 = c6;
                                i7 = i10;
                                i8 = length;
                                gVar = gVar2;
                                float f26 = fArr2[i6];
                                int i12 = i6 + 1;
                                float f27 = fArr2[i12];
                                int i13 = i6 + 2;
                                int i14 = i6 + 3;
                                path.quadTo(f26, f27, fArr2[i13], fArr2[i14]);
                                f = fArr2[i6];
                                f5 = fArr2[i12];
                                f24 = fArr2[i13];
                                f25 = fArr2[i14];
                            } else if (c6 == 'V') {
                                i6 = i11;
                                c2 = c6;
                                i7 = i10;
                                i8 = length;
                                gVar = gVar2;
                                path.lineTo(f24, fArr2[i6]);
                                f25 = fArr2[i6];
                            } else if (c6 != 'a') {
                                if (c6 != 'c') {
                                    if (c6 != 'h') {
                                        if (c6 == 'q') {
                                            i6 = i11;
                                            float f28 = f25;
                                            float f29 = f24;
                                            int i15 = i6 + 1;
                                            int i16 = i6 + 2;
                                            int i17 = i6 + 3;
                                            path.rQuadTo(fArr2[i6], fArr2[i15], fArr2[i16], fArr2[i17]);
                                            float f30 = f29 + fArr2[i6];
                                            float f31 = fArr2[i15] + f28;
                                            float f32 = f29 + fArr2[i16];
                                            f25 = f28 + fArr2[i17];
                                            f19 = f31;
                                            f18 = f30;
                                            c2 = c6;
                                            i7 = i10;
                                            i8 = length;
                                            f24 = f32;
                                        } else if (c6 == 'v') {
                                            i6 = i11;
                                            path.rLineTo(0.0f, fArr2[i6]);
                                            f25 += fArr2[i6];
                                        } else if (c6 == 'L') {
                                            i6 = i11;
                                            int i18 = i6 + 1;
                                            path.lineTo(fArr2[i6], fArr2[i18]);
                                            f24 = fArr2[i6];
                                            f25 = fArr2[i18];
                                        } else if (c6 == 'M') {
                                            i6 = i11;
                                            f24 = fArr2[i6];
                                            f25 = fArr2[i6 + 1];
                                            if (i6 > 0) {
                                                path.lineTo(f24, f25);
                                            } else {
                                                path.moveTo(f24, f25);
                                                f23 = f25;
                                                f22 = f24;
                                            }
                                        } else if (c6 == 'S') {
                                            i6 = i11;
                                            float f33 = f25;
                                            float f34 = f24;
                                            if (c5 == 'c' || c5 == 's' || c5 == 'C' || c5 == 'S') {
                                                f10 = (f33 * 2.0f) - f19;
                                                f11 = (f34 * 2.0f) - f18;
                                            } else {
                                                f11 = f34;
                                                f10 = f33;
                                            }
                                            int i19 = i6 + 1;
                                            int i20 = i6 + 2;
                                            int i21 = i6 + 3;
                                            path.cubicTo(f11, f10, fArr2[i6], fArr2[i19], fArr2[i20], fArr2[i21]);
                                            float f35 = fArr2[i6];
                                            float f36 = fArr2[i19];
                                            f24 = fArr2[i20];
                                            f25 = fArr2[i21];
                                            f19 = f36;
                                            f18 = f35;
                                        } else if (c6 == 'T') {
                                            i6 = i11;
                                            float f37 = f25;
                                            float f38 = f24;
                                            if (c5 == 'q' || c5 == 't' || c5 == 'Q' || c5 == 'T') {
                                                f6 = (f38 * 2.0f) - f18;
                                                f7 = (f37 * 2.0f) - f19;
                                            } else {
                                                f6 = f38;
                                                f7 = f37;
                                            }
                                            int i22 = i6 + 1;
                                            path.quadTo(f6, f7, fArr2[i6], fArr2[i22]);
                                            f8 = fArr2[i6];
                                            f9 = fArr2[i22];
                                        } else if (c6 == 'l') {
                                            i6 = i11;
                                            int i23 = i6 + 1;
                                            path.rLineTo(fArr2[i6], fArr2[i23]);
                                            f24 += fArr2[i6];
                                            f25 += fArr2[i23];
                                        } else if (c6 == 'm') {
                                            i6 = i11;
                                            float f39 = fArr2[i6];
                                            f24 += f39;
                                            float f40 = fArr2[i6 + 1];
                                            f25 += f40;
                                            if (i6 > 0) {
                                                path.rLineTo(f39, f40);
                                            } else {
                                                path.rMoveTo(f39, f40);
                                                f23 = f25;
                                                f22 = f24;
                                            }
                                        } else if (c6 == 's') {
                                            if (c5 == 'c' || c5 == 's' || c5 == 'C' || c5 == 'S') {
                                                float f41 = f24 - f18;
                                                f12 = f25 - f19;
                                                f13 = f41;
                                            } else {
                                                f12 = 0.0f;
                                                f13 = 0.0f;
                                            }
                                            int i24 = i11 + 1;
                                            int i25 = i11 + 2;
                                            int i26 = i11 + 3;
                                            i6 = i11;
                                            float f42 = f25;
                                            float f43 = f24;
                                            path.rCubicTo(f13, f12, fArr2[i11], fArr2[i24], fArr2[i25], fArr2[i26]);
                                            f6 = f43 + fArr2[i6];
                                            f7 = f42 + fArr2[i24];
                                            f8 = f43 + fArr2[i25];
                                            f9 = fArr2[i26] + f42;
                                        } else if (c6 != 't') {
                                            i6 = i11;
                                        } else {
                                            if (c5 == 'q' || c5 == 't' || c5 == 'Q' || c5 == 'T') {
                                                f14 = f24 - f18;
                                                f15 = f25 - f19;
                                            } else {
                                                f15 = 0.0f;
                                                f14 = 0.0f;
                                            }
                                            int i27 = i11 + 1;
                                            path.rQuadTo(f14, f15, fArr2[i11], fArr2[i27]);
                                            float f44 = f14 + f24;
                                            float f45 = f15 + f25;
                                            f24 += fArr2[i11];
                                            f25 += fArr2[i27];
                                            f19 = f45;
                                            i6 = i11;
                                            c2 = c6;
                                            i7 = i10;
                                            i8 = length;
                                            f18 = f44;
                                        }
                                        gVar = gVar2;
                                    } else {
                                        i6 = i11;
                                        path.rLineTo(fArr2[i6], 0.0f);
                                        f24 += fArr2[i6];
                                    }
                                    c2 = c6;
                                    i7 = i10;
                                    i8 = length;
                                    gVar = gVar2;
                                } else {
                                    i6 = i11;
                                    float f46 = f25;
                                    float f47 = f24;
                                    int i28 = i6 + 2;
                                    int i29 = i6 + 3;
                                    int i30 = i6 + 4;
                                    int i31 = i6 + 5;
                                    path.rCubicTo(fArr2[i6], fArr2[i6 + 1], fArr2[i28], fArr2[i29], fArr2[i30], fArr2[i31]);
                                    f6 = f47 + fArr2[i28];
                                    f7 = f46 + fArr2[i29];
                                    f8 = f47 + fArr2[i30];
                                    f9 = fArr2[i31] + f46;
                                }
                                f19 = f7;
                                f18 = f6;
                                c2 = c6;
                                i7 = i10;
                                i8 = length;
                                f24 = f8;
                                f25 = f9;
                                gVar = gVar2;
                            } else {
                                i6 = i11;
                                float f48 = f25;
                                float f49 = f24;
                                int i32 = i6 + 5;
                                int i33 = i6 + 6;
                                c2 = c6;
                                i8 = length;
                                gVar = gVar2;
                                i7 = i10;
                                a(path, f49, f48, fArr2[i32] + f49, fArr2[i33] + f48, fArr2[i6], fArr2[i6 + 1], fArr2[i6 + 2], fArr2[i6 + 3] != 0.0f, fArr2[i6 + 4] != 0.0f);
                                f24 = f49 + fArr2[i32];
                                f25 = f48 + fArr2[i33];
                            }
                            i11 = i6 + i5;
                            gVar2 = gVar;
                            length = i8;
                            c5 = c2;
                            c6 = c5;
                            i10 = i7;
                        } else {
                            i6 = i11;
                            c2 = c6;
                            i7 = i10;
                            i8 = length;
                            gVar = gVar2;
                            int i34 = i6 + 2;
                            int i35 = i6 + 3;
                            int i36 = i6 + 4;
                            int i37 = i6 + 5;
                            path.cubicTo(fArr2[i6], fArr2[i6 + 1], fArr2[i34], fArr2[i35], fArr2[i36], fArr2[i37]);
                            f24 = fArr2[i36];
                            f25 = fArr2[i37];
                            f = fArr2[i34];
                            f5 = fArr2[i35];
                        }
                        f18 = f;
                        f19 = f5;
                        i11 = i6 + i5;
                        gVar2 = gVar;
                        length = i8;
                        c5 = c2;
                        c6 = c5;
                        i10 = i7;
                    } else {
                        i6 = i11;
                        c2 = c6;
                        i7 = i10;
                        i8 = length;
                        gVar = gVar2;
                        int i38 = i6 + 5;
                        int i39 = i6 + 6;
                        a(path, f24, f25, fArr2[i38], fArr2[i39], fArr2[i6], fArr2[i6 + 1], fArr2[i6 + 2], fArr2[i6 + 3] != 0.0f, fArr2[i6 + 4] != 0.0f);
                        f24 = fArr2[i38];
                        f25 = fArr2[i39];
                    }
                    f19 = f25;
                    f18 = f24;
                    i11 = i6 + i5;
                    gVar2 = gVar;
                    length = i8;
                    c5 = c2;
                    c6 = c5;
                    i10 = i7;
                }
            }
            fArr[0] = f24;
            fArr[1] = f25;
            fArr[2] = f18;
            fArr[3] = f19;
            fArr[4] = f22;
            fArr[5] = f23;
            c5 = gVar2.f187a;
            i10++;
            gVarArr2 = gVarArr;
            length = length;
            i9 = 6;
        }
    }

    public g(g gVar) {
        this.f187a = gVar.f187a;
        float[] fArr = gVar.f188b;
        this.f188b = W1.a.q(fArr, fArr.length);
    }
}
