package com.google.android.gms.internal.p000firebaseauthapi;

import B.f;
import J0.b;
import com.samsung.android.knox.custom.CustomDeviceManager;
import java.lang.reflect.Field;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.List;
import sun.misc.Unsafe;

/* renamed from: com.google.android.gms.internal.firebase-auth-api.t, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0338t implements A {

    /* renamed from: m, reason: collision with root package name */
    public static final int[] f5717m = new int[0];
    public static final Unsafe n = L.j();

    /* renamed from: a, reason: collision with root package name */
    public final int[] f5718a;

    /* renamed from: b, reason: collision with root package name */
    public final Object[] f5719b;

    /* renamed from: c, reason: collision with root package name */
    public final int f5720c;

    /* renamed from: d, reason: collision with root package name */
    public final int f5721d;

    /* renamed from: e, reason: collision with root package name */
    public final U4 f5722e;
    public final boolean f;

    /* renamed from: g, reason: collision with root package name */
    public final boolean f5723g;

    /* renamed from: h, reason: collision with root package name */
    public final int[] f5724h;

    /* renamed from: i, reason: collision with root package name */
    public final int f5725i;

    /* renamed from: j, reason: collision with root package name */
    public final int f5726j;

    /* renamed from: k, reason: collision with root package name */
    public final AbstractC0291l f5727k;

    /* renamed from: l, reason: collision with root package name */
    public final E f5728l;

    public C0338t(int[] iArr, Object[] objArr, int i5, int i6, U4 u42, boolean z4, int[] iArr2, int i7, int i8, AbstractC0291l abstractC0291l, E e5, h5 h5Var, C0315p c0315p) {
        this.f5718a = iArr;
        this.f5719b = objArr;
        this.f5720c = i5;
        this.f5721d = i6;
        this.f = u42 instanceof m5;
        this.f5723g = z4;
        this.f5724h = iArr2;
        this.f5725i = i7;
        this.f5726j = i8;
        this.f5727k = abstractC0291l;
        this.f5728l = e5;
        this.f5722e = u42;
    }

    public static boolean A(int i5, A a3, Object obj) {
        return a3.i(L.f5414c.m(i5 & 1048575, obj));
    }

    public static final void D(int i5, Object obj, C0303n c0303n) {
        if (!(obj instanceof String)) {
            c0303n.r(i5, (Z4) obj);
        } else {
            ((f5) c0303n.f5655d).n0(i5, (String) obj);
        }
    }

    public static C0338t F(C0374z c0374z, AbstractC0291l abstractC0291l, E e5, h5 h5Var, C0315p c0315p) {
        if (c0374z instanceof C0374z) {
            return G(c0374z, abstractC0291l, e5, h5Var, c0315p);
        }
        f.F(c0374z);
        throw null;
    }

    /* JADX WARN: Removed duplicated region for block: B:123:0x025f  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x0265  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x027b  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x027f  */
    /* JADX WARN: Removed duplicated region for block: B:164:0x032e  */
    /* JADX WARN: Removed duplicated region for block: B:180:0x037a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static C0338t G(C0374z c0374z, AbstractC0291l abstractC0291l, E e5, h5 h5Var, C0315p c0315p) {
        int i5;
        int iCharAt;
        int iCharAt2;
        int iCharAt3;
        int[] iArr;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        char cCharAt;
        int i11;
        char cCharAt2;
        int i12;
        char cCharAt3;
        int i13;
        char cCharAt4;
        int i14;
        char cCharAt5;
        int i15;
        char cCharAt6;
        int i16;
        char cCharAt7;
        int i17;
        char cCharAt8;
        int i18;
        int i19;
        int i20;
        int i21;
        int i22;
        int i23;
        int i24;
        int iObjectFieldOffset;
        boolean z4;
        int iObjectFieldOffset2;
        int i25;
        int i26;
        Field fieldS;
        char cCharAt9;
        int i27;
        int i28;
        int i29;
        Object obj;
        Field fieldS2;
        Object obj2;
        Field fieldS3;
        int i30;
        char cCharAt10;
        int i31;
        char cCharAt11;
        int i32;
        char cCharAt12;
        int i33;
        char cCharAt13;
        boolean z5 = c0374z.b() == 2;
        String strC = c0374z.c();
        int length = strC.length();
        char c2 = 55296;
        if (strC.charAt(0) >= 55296) {
            int i34 = 1;
            while (true) {
                i5 = i34 + 1;
                if (strC.charAt(i34) < 55296) {
                    break;
                }
                i34 = i5;
            }
        } else {
            i5 = 1;
        }
        int i35 = i5 + 1;
        int iCharAt4 = strC.charAt(i5);
        if (iCharAt4 >= 55296) {
            int i36 = iCharAt4 & 8191;
            int i37 = 13;
            while (true) {
                i33 = i35 + 1;
                cCharAt13 = strC.charAt(i35);
                if (cCharAt13 < 55296) {
                    break;
                }
                i36 |= (cCharAt13 & 8191) << i37;
                i37 += 13;
                i35 = i33;
            }
            iCharAt4 = i36 | (cCharAt13 << i37);
            i35 = i33;
        }
        if (iCharAt4 == 0) {
            iCharAt = 0;
            iCharAt2 = 0;
            iCharAt3 = 0;
            i9 = 0;
            i8 = 0;
            i6 = 0;
            iArr = f5717m;
            i7 = 0;
        } else {
            int i38 = i35 + 1;
            int iCharAt5 = strC.charAt(i35);
            if (iCharAt5 >= 55296) {
                int i39 = iCharAt5 & 8191;
                int i40 = 13;
                while (true) {
                    i17 = i38 + 1;
                    cCharAt8 = strC.charAt(i38);
                    if (cCharAt8 < 55296) {
                        break;
                    }
                    i39 |= (cCharAt8 & 8191) << i40;
                    i40 += 13;
                    i38 = i17;
                }
                iCharAt5 = i39 | (cCharAt8 << i40);
                i38 = i17;
            }
            int i41 = i38 + 1;
            int iCharAt6 = strC.charAt(i38);
            if (iCharAt6 >= 55296) {
                int i42 = iCharAt6 & 8191;
                int i43 = 13;
                while (true) {
                    i16 = i41 + 1;
                    cCharAt7 = strC.charAt(i41);
                    if (cCharAt7 < 55296) {
                        break;
                    }
                    i42 |= (cCharAt7 & 8191) << i43;
                    i43 += 13;
                    i41 = i16;
                }
                iCharAt6 = i42 | (cCharAt7 << i43);
                i41 = i16;
            }
            int i44 = i41 + 1;
            iCharAt = strC.charAt(i41);
            if (iCharAt >= 55296) {
                int i45 = iCharAt & 8191;
                int i46 = 13;
                while (true) {
                    i15 = i44 + 1;
                    cCharAt6 = strC.charAt(i44);
                    if (cCharAt6 < 55296) {
                        break;
                    }
                    i45 |= (cCharAt6 & 8191) << i46;
                    i46 += 13;
                    i44 = i15;
                }
                iCharAt = i45 | (cCharAt6 << i46);
                i44 = i15;
            }
            int i47 = i44 + 1;
            iCharAt2 = strC.charAt(i44);
            if (iCharAt2 >= 55296) {
                int i48 = iCharAt2 & 8191;
                int i49 = 13;
                while (true) {
                    i14 = i47 + 1;
                    cCharAt5 = strC.charAt(i47);
                    if (cCharAt5 < 55296) {
                        break;
                    }
                    i48 |= (cCharAt5 & 8191) << i49;
                    i49 += 13;
                    i47 = i14;
                }
                iCharAt2 = i48 | (cCharAt5 << i49);
                i47 = i14;
            }
            int i50 = i47 + 1;
            iCharAt3 = strC.charAt(i47);
            if (iCharAt3 >= 55296) {
                int i51 = iCharAt3 & 8191;
                int i52 = 13;
                while (true) {
                    i13 = i50 + 1;
                    cCharAt4 = strC.charAt(i50);
                    if (cCharAt4 < 55296) {
                        break;
                    }
                    i51 |= (cCharAt4 & 8191) << i52;
                    i52 += 13;
                    i50 = i13;
                }
                iCharAt3 = i51 | (cCharAt4 << i52);
                i50 = i13;
            }
            int i53 = i50 + 1;
            int iCharAt7 = strC.charAt(i50);
            if (iCharAt7 >= 55296) {
                int i54 = iCharAt7 & 8191;
                int i55 = 13;
                while (true) {
                    i12 = i53 + 1;
                    cCharAt3 = strC.charAt(i53);
                    if (cCharAt3 < 55296) {
                        break;
                    }
                    i54 |= (cCharAt3 & 8191) << i55;
                    i55 += 13;
                    i53 = i12;
                }
                iCharAt7 = i54 | (cCharAt3 << i55);
                i53 = i12;
            }
            int i56 = i53 + 1;
            int iCharAt8 = strC.charAt(i53);
            if (iCharAt8 >= 55296) {
                int i57 = iCharAt8 & 8191;
                int i58 = 13;
                while (true) {
                    i11 = i56 + 1;
                    cCharAt2 = strC.charAt(i56);
                    if (cCharAt2 < 55296) {
                        break;
                    }
                    i57 |= (cCharAt2 & 8191) << i58;
                    i58 += 13;
                    i56 = i11;
                }
                iCharAt8 = i57 | (cCharAt2 << i58);
                i56 = i11;
            }
            int i59 = i56 + 1;
            int iCharAt9 = strC.charAt(i56);
            if (iCharAt9 >= 55296) {
                int i60 = iCharAt9 & 8191;
                int i61 = 13;
                while (true) {
                    i10 = i59 + 1;
                    cCharAt = strC.charAt(i59);
                    if (cCharAt < 55296) {
                        break;
                    }
                    i60 |= (cCharAt & 8191) << i61;
                    i61 += 13;
                    i59 = i10;
                }
                iCharAt9 = i60 | (cCharAt << i61);
                i59 = i10;
            }
            iArr = new int[iCharAt9 + iCharAt7 + iCharAt8];
            i6 = iCharAt5 + iCharAt5 + iCharAt6;
            i7 = iCharAt5;
            i35 = i59;
            int i62 = iCharAt9;
            i8 = iCharAt7;
            i9 = i62;
        }
        Unsafe unsafe = n;
        Object[] objArrD = c0374z.d();
        Class<?> cls = c0374z.a().getClass();
        int[] iArr2 = new int[iCharAt3 * 3];
        Object[] objArr = new Object[iCharAt3 + iCharAt3];
        int i63 = i8 + i9;
        int i64 = i9;
        int i65 = i63;
        int i66 = 0;
        int i67 = 0;
        while (i35 < length) {
            int i68 = i35 + 1;
            int iCharAt10 = strC.charAt(i35);
            if (iCharAt10 >= c2) {
                int i69 = iCharAt10 & 8191;
                int i70 = i68;
                int i71 = 13;
                while (true) {
                    i32 = i70 + 1;
                    cCharAt12 = strC.charAt(i70);
                    if (cCharAt12 < c2) {
                        break;
                    }
                    i69 |= (cCharAt12 & 8191) << i71;
                    i71 += 13;
                    i70 = i32;
                }
                iCharAt10 = i69 | (cCharAt12 << i71);
                i18 = i32;
            } else {
                i18 = i68;
            }
            int i72 = i18 + 1;
            int iCharAt11 = strC.charAt(i18);
            if (iCharAt11 >= c2) {
                int i73 = iCharAt11 & 8191;
                int i74 = i72;
                int i75 = 13;
                while (true) {
                    i31 = i74 + 1;
                    cCharAt11 = strC.charAt(i74);
                    i19 = length;
                    if (cCharAt11 < 55296) {
                        break;
                    }
                    i73 |= (cCharAt11 & 8191) << i75;
                    i75 += 13;
                    i74 = i31;
                    length = i19;
                }
                iCharAt11 = i73 | (cCharAt11 << i75);
                i20 = i31;
            } else {
                i19 = length;
                i20 = i72;
            }
            int i76 = iCharAt11 & CustomDeviceManager.CALL_SCREEN_ALL;
            int i77 = i63;
            if ((iCharAt11 & 1024) != 0) {
                iArr[i67] = i66;
                i67++;
            }
            if (i76 >= 51) {
                int i78 = i20 + 1;
                int iCharAt12 = strC.charAt(i20);
                if (iCharAt12 >= 55296) {
                    int i79 = iCharAt12 & 8191;
                    int i80 = i78;
                    int i81 = 13;
                    while (true) {
                        i30 = i80 + 1;
                        cCharAt10 = strC.charAt(i80);
                        i23 = i9;
                        if (cCharAt10 < 55296) {
                            break;
                        }
                        i79 |= (cCharAt10 & 8191) << i81;
                        i81 += 13;
                        i80 = i30;
                        i9 = i23;
                    }
                    iCharAt12 = i79 | (cCharAt10 << i81);
                    i28 = i30;
                } else {
                    i23 = i9;
                    i28 = i78;
                }
                int i82 = i76 - 51;
                int i83 = i28;
                if (i82 == 9 || i82 == 17) {
                    int i84 = i66 / 3;
                    i29 = i6 + 1;
                    objArr[i84 + i84 + 1] = objArrD[i6];
                } else {
                    if (i82 == 12 && !z5) {
                        int i85 = i66 / 3;
                        i29 = i6 + 1;
                        objArr[i85 + i85 + 1] = objArrD[i6];
                    }
                    int i86 = iCharAt12 + iCharAt12;
                    obj = objArrD[i86];
                    if (obj instanceof Field) {
                        fieldS2 = s(cls, (String) obj);
                        objArrD[i86] = fieldS2;
                    } else {
                        fieldS2 = (Field) obj;
                    }
                    i21 = iCharAt;
                    i22 = iCharAt2;
                    int iObjectFieldOffset3 = (int) unsafe.objectFieldOffset(fieldS2);
                    int i87 = i86 + 1;
                    obj2 = objArrD[i87];
                    if (obj2 instanceof Field) {
                        fieldS3 = s(cls, (String) obj2);
                        objArrD[i87] = fieldS3;
                    } else {
                        fieldS3 = (Field) obj2;
                    }
                    iObjectFieldOffset2 = (int) unsafe.objectFieldOffset(fieldS3);
                    z4 = z5;
                    i25 = i83;
                    iObjectFieldOffset = iObjectFieldOffset3;
                    i26 = 0;
                }
                i6 = i29;
                int i862 = iCharAt12 + iCharAt12;
                obj = objArrD[i862];
                if (obj instanceof Field) {
                }
                i21 = iCharAt;
                i22 = iCharAt2;
                int iObjectFieldOffset32 = (int) unsafe.objectFieldOffset(fieldS2);
                int i872 = i862 + 1;
                obj2 = objArrD[i872];
                if (obj2 instanceof Field) {
                }
                iObjectFieldOffset2 = (int) unsafe.objectFieldOffset(fieldS3);
                z4 = z5;
                i25 = i83;
                iObjectFieldOffset = iObjectFieldOffset32;
                i26 = 0;
            } else {
                i21 = iCharAt;
                i22 = iCharAt2;
                i23 = i9;
                int i88 = i6 + 1;
                Field fieldS4 = s(cls, (String) objArrD[i6]);
                if (i76 == 9 || i76 == 17) {
                    int i89 = i66 / 3;
                    objArr[i89 + i89 + 1] = fieldS4.getType();
                } else {
                    if (i76 == 27 || i76 == 49) {
                        int i90 = i66 / 3;
                        i27 = i6 + 2;
                        objArr[i90 + i90 + 1] = objArrD[i88];
                    } else if (i76 == 12 || i76 == 30 || i76 == 44) {
                        if (!z5) {
                            int i91 = i66 / 3;
                            i27 = i6 + 2;
                            objArr[i91 + i91 + 1] = objArrD[i88];
                        }
                    } else if (i76 == 50) {
                        int i92 = i64 + 1;
                        iArr[i64] = i66;
                        int i93 = i66 / 3;
                        int i94 = i93 + i93;
                        int i95 = i6 + 2;
                        objArr[i94] = objArrD[i88];
                        if ((iCharAt11 & 2048) != 0) {
                            i88 = i6 + 3;
                            objArr[i94 + 1] = objArrD[i95];
                            i64 = i92;
                        } else {
                            i64 = i92;
                            i24 = i95;
                            iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldS4);
                            i6 = i24;
                            if ((iCharAt11 & 4096) != 4096 || i76 > 17) {
                                z4 = z5;
                                iObjectFieldOffset2 = 1048575;
                                i25 = i20;
                                i26 = 0;
                            } else {
                                int i96 = i20 + 1;
                                int iCharAt13 = strC.charAt(i20);
                                if (iCharAt13 >= 55296) {
                                    int i97 = iCharAt13 & 8191;
                                    int i98 = 13;
                                    while (true) {
                                        i25 = i96 + 1;
                                        cCharAt9 = strC.charAt(i96);
                                        if (cCharAt9 < 55296) {
                                            break;
                                        }
                                        i97 |= (cCharAt9 & 8191) << i98;
                                        i98 += 13;
                                        i96 = i25;
                                    }
                                    iCharAt13 = i97 | (cCharAt9 << i98);
                                } else {
                                    i25 = i96;
                                }
                                int i99 = (iCharAt13 / 32) + i7 + i7;
                                Object obj3 = objArrD[i99];
                                if (obj3 instanceof Field) {
                                    fieldS = (Field) obj3;
                                } else {
                                    fieldS = s(cls, (String) obj3);
                                    objArrD[i99] = fieldS;
                                }
                                z4 = z5;
                                iObjectFieldOffset2 = (int) unsafe.objectFieldOffset(fieldS);
                                i26 = iCharAt13 % 32;
                            }
                            if (i76 >= 18 && i76 <= 49) {
                                iArr[i65] = iObjectFieldOffset;
                                i65++;
                            }
                        }
                    }
                    i24 = i27;
                    iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldS4);
                    i6 = i24;
                    if ((iCharAt11 & 4096) != 4096) {
                        z4 = z5;
                        iObjectFieldOffset2 = 1048575;
                        i25 = i20;
                        i26 = 0;
                        if (i76 >= 18) {
                            iArr[i65] = iObjectFieldOffset;
                            i65++;
                        }
                    }
                }
                i24 = i88;
                iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldS4);
                i6 = i24;
                if ((iCharAt11 & 4096) != 4096) {
                }
            }
            int i100 = i66 + 1;
            iArr2[i66] = iCharAt10;
            int i101 = i66 + 2;
            String str = strC;
            iArr2[i100] = ((iCharAt11 & 512) != 0 ? 536870912 : 0) | ((iCharAt11 & 256) != 0 ? 268435456 : 0) | (i76 << 20) | iObjectFieldOffset;
            i66 += 3;
            iArr2[i101] = (i26 << 20) | iObjectFieldOffset2;
            z5 = z4;
            iCharAt = i21;
            i63 = i77;
            strC = str;
            length = i19;
            i35 = i25;
            iCharAt2 = i22;
            i9 = i23;
            c2 = 55296;
        }
        return new C0338t(iArr2, objArr, iCharAt, iCharAt2, c0374z.a(), z5, iArr, i9, i63, abstractC0291l, e5, h5Var, c0315p);
    }

    public static int J(long j3, Object obj) {
        return ((Integer) L.f5414c.m(j3, obj)).intValue();
    }

    public static int l(int i5) {
        return (i5 >>> 20) & CustomDeviceManager.CALL_SCREEN_ALL;
    }

    public static long n(long j3, Object obj) {
        return ((Long) L.f5414c.m(j3, obj)).longValue();
    }

    public static Field s(Class cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException unused) {
            Field[] declaredFields = cls.getDeclaredFields();
            for (Field field : declaredFields) {
                if (str.equals(field.getName())) {
                    return field;
                }
            }
            String name = cls.getName();
            String string = Arrays.toString(declaredFields);
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 40 + name.length() + String.valueOf(string).length());
            sb.append("Field ");
            sb.append(str);
            sb.append(" for ");
            sb.append(name);
            throw new RuntimeException(f.w(sb, " not found. Known fields are ", string));
        }
    }

    public final boolean B(int i5, Object obj, int i6) {
        return L.f5414c.j((long) (this.f5718a[i6 + 2] & 1048575), obj) == i5;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public final void C(Object obj, C0303n c0303n) {
        int i5;
        boolean z4;
        int[] iArr = this.f5718a;
        int length = iArr.length;
        Unsafe unsafe = n;
        int i6 = 1048575;
        int i7 = 1048575;
        int i8 = 0;
        int i9 = 0;
        while (i8 < length) {
            int iM = m(i8);
            int i10 = iArr[i8];
            int iL = l(iM);
            if (iL <= 17) {
                int i11 = iArr[i8 + 2];
                int i12 = i11 & i6;
                if (i12 != i7) {
                    i9 = unsafe.getInt(obj, i12);
                    i7 = i12;
                }
                i5 = 1 << (i11 >>> 20);
            } else {
                i5 = 0;
            }
            int i13 = i5;
            long j3 = iM & i6;
            switch (iL) {
                case 0:
                    if ((i9 & i13) != 0) {
                        c0303n.u(i10, L.d(j3, obj));
                    }
                    i8 += 3;
                    i6 = 1048575;
                case 1:
                    if ((i9 & i13) != 0) {
                        c0303n.B(i10, L.e(j3, obj));
                    }
                    i8 += 3;
                    i6 = 1048575;
                case 2:
                    if ((i9 & i13) != 0) {
                        c0303n.E(i10, unsafe.getLong(obj, j3));
                    }
                    i8 += 3;
                    i6 = 1048575;
                case 3:
                    if ((i9 & i13) != 0) {
                        c0303n.g(i10, unsafe.getLong(obj, j3));
                    }
                    i8 += 3;
                    i6 = 1048575;
                case 4:
                    if ((i9 & i13) != 0) {
                        c0303n.D(i10, unsafe.getInt(obj, j3));
                    }
                    i8 += 3;
                    i6 = 1048575;
                case 5:
                    if ((i9 & i13) != 0) {
                        c0303n.A(i10, unsafe.getLong(obj, j3));
                    }
                    i8 += 3;
                    i6 = 1048575;
                case 6:
                    if ((i9 & i13) != 0) {
                        c0303n.z(i10, unsafe.getInt(obj, j3));
                    }
                    i8 += 3;
                    i6 = 1048575;
                case 7:
                    if ((i9 & i13) != 0) {
                        c0303n.l(i10, L.v(j3, obj));
                    }
                    i8 += 3;
                    i6 = 1048575;
                case 8:
                    if ((i9 & i13) != 0) {
                        D(i10, unsafe.getObject(obj, j3), c0303n);
                    }
                    i8 += 3;
                    i6 = 1048575;
                case 9:
                    if ((i9 & i13) != 0) {
                        c0303n.F(i10, p(i8), unsafe.getObject(obj, j3));
                    }
                    i8 += 3;
                    i6 = 1048575;
                case 10:
                    if ((i9 & i13) != 0) {
                        c0303n.r(i10, (Z4) unsafe.getObject(obj, j3));
                    }
                    i8 += 3;
                    i6 = 1048575;
                case 11:
                    if ((i9 & i13) != 0) {
                        c0303n.f(i10, unsafe.getInt(obj, j3));
                    }
                    i8 += 3;
                    i6 = 1048575;
                case 12:
                    if ((i9 & i13) != 0) {
                        c0303n.y(i10, unsafe.getInt(obj, j3));
                    }
                    i8 += 3;
                    i6 = 1048575;
                case 13:
                    if ((i9 & i13) != 0) {
                        c0303n.G(i10, unsafe.getInt(obj, j3));
                    }
                    i8 += 3;
                    i6 = 1048575;
                case 14:
                    if ((i9 & i13) != 0) {
                        c0303n.H(i10, unsafe.getLong(obj, j3));
                    }
                    i8 += 3;
                    i6 = 1048575;
                case 15:
                    if ((i9 & i13) != 0) {
                        c0303n.d(i10, unsafe.getInt(obj, j3));
                    }
                    i8 += 3;
                    i6 = 1048575;
                case 16:
                    if ((i9 & i13) != 0) {
                        c0303n.e(i10, unsafe.getLong(obj, j3));
                    }
                    i8 += 3;
                    i6 = 1048575;
                case 17:
                    if ((i9 & i13) != 0) {
                        c0303n.C(i10, p(i8), unsafe.getObject(obj, j3));
                    }
                    i8 += 3;
                    i6 = 1048575;
                case 18:
                    B.f(iArr[i8], (List) unsafe.getObject(obj, j3), c0303n, false);
                    i8 += 3;
                    i6 = 1048575;
                case 19:
                    B.j(iArr[i8], (List) unsafe.getObject(obj, j3), c0303n, false);
                    i8 += 3;
                    i6 = 1048575;
                case 20:
                    B.m(iArr[i8], (List) unsafe.getObject(obj, j3), c0303n, false);
                    i8 += 3;
                    i6 = 1048575;
                case 21:
                    B.v(iArr[i8], (List) unsafe.getObject(obj, j3), c0303n, false);
                    i8 += 3;
                    i6 = 1048575;
                case 22:
                    B.l(iArr[i8], (List) unsafe.getObject(obj, j3), c0303n, false);
                    i8 += 3;
                    i6 = 1048575;
                case 23:
                    B.i(iArr[i8], (List) unsafe.getObject(obj, j3), c0303n, false);
                    i8 += 3;
                    i6 = 1048575;
                case 24:
                    B.h(iArr[i8], (List) unsafe.getObject(obj, j3), c0303n, false);
                    i8 += 3;
                    i6 = 1048575;
                case 25:
                    B.d(iArr[i8], (List) unsafe.getObject(obj, j3), c0303n, false);
                    i8 += 3;
                    i6 = 1048575;
                case 26:
                    B.s(iArr[i8], (List) unsafe.getObject(obj, j3), c0303n);
                    i8 += 3;
                    i6 = 1048575;
                case 27:
                    B.n(iArr[i8], (List) unsafe.getObject(obj, j3), c0303n, p(i8));
                    i8 += 3;
                    i6 = 1048575;
                case 28:
                    B.e(iArr[i8], (List) unsafe.getObject(obj, j3), c0303n);
                    i8 += 3;
                    i6 = 1048575;
                case 29:
                    z4 = false;
                    B.t(iArr[i8], (List) unsafe.getObject(obj, j3), c0303n, false);
                    i8 += 3;
                    i6 = 1048575;
                case 30:
                    z4 = false;
                    B.g(iArr[i8], (List) unsafe.getObject(obj, j3), c0303n, false);
                    i8 += 3;
                    i6 = 1048575;
                case 31:
                    z4 = false;
                    B.o(iArr[i8], (List) unsafe.getObject(obj, j3), c0303n, false);
                    i8 += 3;
                    i6 = 1048575;
                case 32:
                    z4 = false;
                    B.p(iArr[i8], (List) unsafe.getObject(obj, j3), c0303n, false);
                    i8 += 3;
                    i6 = 1048575;
                case 33:
                    z4 = false;
                    B.q(iArr[i8], (List) unsafe.getObject(obj, j3), c0303n, false);
                    i8 += 3;
                    i6 = 1048575;
                case 34:
                    z4 = false;
                    B.r(iArr[i8], (List) unsafe.getObject(obj, j3), c0303n, false);
                    i8 += 3;
                    i6 = 1048575;
                case 35:
                    B.f(iArr[i8], (List) unsafe.getObject(obj, j3), c0303n, true);
                    i8 += 3;
                    i6 = 1048575;
                case 36:
                    B.j(iArr[i8], (List) unsafe.getObject(obj, j3), c0303n, true);
                    i8 += 3;
                    i6 = 1048575;
                case 37:
                    B.m(iArr[i8], (List) unsafe.getObject(obj, j3), c0303n, true);
                    i8 += 3;
                    i6 = 1048575;
                case 38:
                    B.v(iArr[i8], (List) unsafe.getObject(obj, j3), c0303n, true);
                    i8 += 3;
                    i6 = 1048575;
                case 39:
                    B.l(iArr[i8], (List) unsafe.getObject(obj, j3), c0303n, true);
                    i8 += 3;
                    i6 = 1048575;
                case 40:
                    B.i(iArr[i8], (List) unsafe.getObject(obj, j3), c0303n, true);
                    i8 += 3;
                    i6 = 1048575;
                case 41:
                    B.h(iArr[i8], (List) unsafe.getObject(obj, j3), c0303n, true);
                    i8 += 3;
                    i6 = 1048575;
                case 42:
                    B.d(iArr[i8], (List) unsafe.getObject(obj, j3), c0303n, true);
                    i8 += 3;
                    i6 = 1048575;
                case 43:
                    B.t(iArr[i8], (List) unsafe.getObject(obj, j3), c0303n, true);
                    i8 += 3;
                    i6 = 1048575;
                case 44:
                    B.g(iArr[i8], (List) unsafe.getObject(obj, j3), c0303n, true);
                    i8 += 3;
                    i6 = 1048575;
                case 45:
                    B.o(iArr[i8], (List) unsafe.getObject(obj, j3), c0303n, true);
                    i8 += 3;
                    i6 = 1048575;
                case 46:
                    B.p(iArr[i8], (List) unsafe.getObject(obj, j3), c0303n, true);
                    i8 += 3;
                    i6 = 1048575;
                case 47:
                    B.q(iArr[i8], (List) unsafe.getObject(obj, j3), c0303n, true);
                    i8 += 3;
                    i6 = 1048575;
                case 48:
                    B.r(iArr[i8], (List) unsafe.getObject(obj, j3), c0303n, true);
                    i8 += 3;
                    i6 = 1048575;
                case 49:
                    B.k(iArr[i8], (List) unsafe.getObject(obj, j3), c0303n, p(i8));
                    i8 += 3;
                    i6 = 1048575;
                case 50:
                    if (unsafe.getObject(obj, j3) != null) {
                        f.F(r(i8));
                        throw null;
                    }
                    i8 += 3;
                    i6 = 1048575;
                case 51:
                    if (B(i10, obj, i8)) {
                        c0303n.u(i10, ((Double) L.f5414c.m(j3, obj)).doubleValue());
                    }
                    i8 += 3;
                    i6 = 1048575;
                case 52:
                    if (B(i10, obj, i8)) {
                        c0303n.B(i10, ((Float) L.f5414c.m(j3, obj)).floatValue());
                    }
                    i8 += 3;
                    i6 = 1048575;
                case 53:
                    if (B(i10, obj, i8)) {
                        c0303n.E(i10, n(j3, obj));
                    }
                    i8 += 3;
                    i6 = 1048575;
                case 54:
                    if (B(i10, obj, i8)) {
                        c0303n.g(i10, n(j3, obj));
                    }
                    i8 += 3;
                    i6 = 1048575;
                case 55:
                    if (B(i10, obj, i8)) {
                        c0303n.D(i10, J(j3, obj));
                    }
                    i8 += 3;
                    i6 = 1048575;
                case 56:
                    if (B(i10, obj, i8)) {
                        c0303n.A(i10, n(j3, obj));
                    }
                    i8 += 3;
                    i6 = 1048575;
                case 57:
                    if (B(i10, obj, i8)) {
                        c0303n.z(i10, J(j3, obj));
                    }
                    i8 += 3;
                    i6 = 1048575;
                case 58:
                    if (B(i10, obj, i8)) {
                        c0303n.l(i10, ((Boolean) L.f5414c.m(j3, obj)).booleanValue());
                    }
                    i8 += 3;
                    i6 = 1048575;
                case 59:
                    if (B(i10, obj, i8)) {
                        D(i10, unsafe.getObject(obj, j3), c0303n);
                    }
                    i8 += 3;
                    i6 = 1048575;
                case 60:
                    if (B(i10, obj, i8)) {
                        c0303n.F(i10, p(i8), unsafe.getObject(obj, j3));
                    }
                    i8 += 3;
                    i6 = 1048575;
                case 61:
                    if (B(i10, obj, i8)) {
                        c0303n.r(i10, (Z4) unsafe.getObject(obj, j3));
                    }
                    i8 += 3;
                    i6 = 1048575;
                case 62:
                    if (B(i10, obj, i8)) {
                        c0303n.f(i10, J(j3, obj));
                    }
                    i8 += 3;
                    i6 = 1048575;
                case 63:
                    if (B(i10, obj, i8)) {
                        c0303n.y(i10, J(j3, obj));
                    }
                    i8 += 3;
                    i6 = 1048575;
                case 64:
                    if (B(i10, obj, i8)) {
                        c0303n.G(i10, J(j3, obj));
                    }
                    i8 += 3;
                    i6 = 1048575;
                case 65:
                    if (B(i10, obj, i8)) {
                        c0303n.H(i10, n(j3, obj));
                    }
                    i8 += 3;
                    i6 = 1048575;
                case 66:
                    if (B(i10, obj, i8)) {
                        c0303n.d(i10, J(j3, obj));
                    }
                    i8 += 3;
                    i6 = 1048575;
                case 67:
                    if (B(i10, obj, i8)) {
                        c0303n.e(i10, n(j3, obj));
                    }
                    i8 += 3;
                    i6 = 1048575;
                case 68:
                    if (B(i10, obj, i8)) {
                        c0303n.C(i10, p(i8), unsafe.getObject(obj, j3));
                    }
                    i8 += 3;
                    i6 = 1048575;
                default:
                    i8 += 3;
                    i6 = 1048575;
            }
        }
        this.f5728l.getClass();
        E.d(E.b(obj), c0303n);
    }

    public final int E(Object obj, byte[] bArr, int i5, int i6, int i7, b bVar) {
        Unsafe unsafe;
        int i8;
        Object obj2;
        int i9;
        int iU;
        int i10;
        int iK;
        int iK2;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        char c2;
        int i21;
        int i22;
        int iW;
        int i23;
        int i24;
        int i25;
        int i26;
        int i27;
        C0338t c0338t = this;
        Object obj3 = obj;
        byte[] bArr2 = bArr;
        int i28 = i6;
        int i29 = i7;
        b bVar2 = bVar;
        Unsafe unsafe2 = n;
        int iS = i5;
        int i30 = 0;
        int i31 = -1;
        int i32 = 0;
        int i33 = 0;
        int i34 = 1048575;
        while (true) {
            if (iS < i28) {
                int i35 = iS + 1;
                byte b3 = bArr2[iS];
                if (b3 < 0) {
                    iU = AbstractC0332s.U(b3, bArr2, i35, bVar2);
                    i9 = bVar2.f1033a;
                } else {
                    i9 = b3;
                    iU = i35;
                }
                int i36 = i9 >>> 3;
                int i37 = i9 & 7;
                int i38 = c0338t.f5721d;
                int i39 = iU;
                int i40 = c0338t.f5720c;
                int i41 = i9;
                if (i36 > i31) {
                    iK2 = (i36 < i40 || i36 > i38) ? -1 : c0338t.k(i36, i32 / 3);
                    i11 = -1;
                    i10 = 0;
                } else {
                    if (i36 < i40 || i36 > i38) {
                        i10 = 0;
                        iK = -1;
                    } else {
                        i10 = 0;
                        iK = c0338t.k(i36, 0);
                    }
                    iK2 = iK;
                    i11 = -1;
                }
                if (iK2 == i11) {
                    i12 = i33;
                    i13 = i34;
                    i14 = i36;
                    i15 = i10;
                    unsafe = unsafe2;
                    i8 = i29;
                    obj2 = obj3;
                    i16 = i41;
                    i17 = i39;
                } else {
                    int[] iArr = c0338t.f5718a;
                    int i42 = iArr[iK2 + 1];
                    int iL = l(i42);
                    long j3 = i42 & 1048575;
                    if (iL <= 17) {
                        int i43 = iArr[iK2 + 2];
                        int i44 = 1 << (i43 >>> 20);
                        int i45 = i43 & 1048575;
                        if (i45 != i34) {
                            i18 = iL;
                            if (i34 != 1048575) {
                                unsafe2.putInt(obj3, i34, i33);
                            }
                            i13 = i45;
                            i19 = unsafe2.getInt(obj3, i45);
                        } else {
                            i18 = iL;
                            i19 = i33;
                            i13 = i34;
                        }
                        switch (i18) {
                            case 0:
                                i21 = i39;
                                c2 = 65535;
                                i20 = iK2;
                                i22 = i41;
                                bArr2 = bArr;
                                if (i37 == 1) {
                                    L.n(obj3, j3, Double.longBitsToDouble(AbstractC0332s.X(i21, bArr2)));
                                    iS = i21 + 8;
                                    i33 = i19 | i44;
                                    i31 = i36;
                                    i30 = i22;
                                    i32 = i20;
                                    i34 = i13;
                                    i28 = i6;
                                    i29 = i7;
                                    break;
                                } else {
                                    i17 = i21;
                                    unsafe = unsafe2;
                                    i16 = i22;
                                    i15 = i20;
                                    obj2 = obj3;
                                    i12 = i19;
                                    i14 = i36;
                                    i8 = i7;
                                    break;
                                }
                            case 1:
                                i21 = i39;
                                c2 = 65535;
                                i20 = iK2;
                                i22 = i41;
                                bArr2 = bArr;
                                if (i37 == 5) {
                                    L.o(obj3, j3, Float.intBitsToFloat(AbstractC0332s.o(i21, bArr2)));
                                    iS = i21 + 4;
                                    i33 = i19 | i44;
                                    i31 = i36;
                                    i30 = i22;
                                    i32 = i20;
                                    i34 = i13;
                                    i28 = i6;
                                    i29 = i7;
                                    break;
                                } else {
                                    i17 = i21;
                                    unsafe = unsafe2;
                                    i16 = i22;
                                    i15 = i20;
                                    obj2 = obj3;
                                    i12 = i19;
                                    i14 = i36;
                                    i8 = i7;
                                    break;
                                }
                            case 2:
                            case 3:
                                i21 = i39;
                                c2 = 65535;
                                i20 = iK2;
                                i22 = i41;
                                bArr2 = bArr;
                                if (i37 == 0) {
                                    iW = AbstractC0332s.W(bArr2, i21, bVar2);
                                    unsafe2.putLong(obj, j3, bVar2.f1034b);
                                    i33 = i19 | i44;
                                    i31 = i36;
                                    iS = iW;
                                    i30 = i22;
                                    i32 = i20;
                                    i34 = i13;
                                    i28 = i6;
                                    i29 = i7;
                                    break;
                                } else {
                                    i17 = i21;
                                    unsafe = unsafe2;
                                    i16 = i22;
                                    i15 = i20;
                                    obj2 = obj3;
                                    i12 = i19;
                                    i14 = i36;
                                    i8 = i7;
                                    break;
                                }
                            case 4:
                            case 11:
                                i21 = i39;
                                c2 = 65535;
                                i20 = iK2;
                                i22 = i41;
                                bArr2 = bArr;
                                if (i37 == 0) {
                                    iS = AbstractC0332s.T(bArr2, i21, bVar2);
                                    unsafe2.putInt(obj3, j3, bVar2.f1033a);
                                    i33 = i19 | i44;
                                    i31 = i36;
                                    i30 = i22;
                                    i32 = i20;
                                    i34 = i13;
                                    i28 = i6;
                                    i29 = i7;
                                    break;
                                } else {
                                    i17 = i21;
                                    unsafe = unsafe2;
                                    i16 = i22;
                                    i15 = i20;
                                    obj2 = obj3;
                                    i12 = i19;
                                    i14 = i36;
                                    i8 = i7;
                                    break;
                                }
                            case 5:
                            case 14:
                                i23 = i39;
                                c2 = 65535;
                                i20 = iK2;
                                i22 = i41;
                                bArr2 = bArr;
                                if (i37 == 1) {
                                    unsafe2.putLong(obj, j3, AbstractC0332s.X(i23, bArr2));
                                    iS = i23 + 8;
                                    i33 = i19 | i44;
                                    i31 = i36;
                                    i30 = i22;
                                    i32 = i20;
                                    i34 = i13;
                                    i28 = i6;
                                    i29 = i7;
                                    break;
                                } else {
                                    i21 = i23;
                                    i17 = i21;
                                    unsafe = unsafe2;
                                    i16 = i22;
                                    i15 = i20;
                                    obj2 = obj3;
                                    i12 = i19;
                                    i14 = i36;
                                    i8 = i7;
                                    break;
                                }
                            case 6:
                            case 13:
                                i24 = i6;
                                i23 = i39;
                                c2 = 65535;
                                i20 = iK2;
                                i22 = i41;
                                bArr2 = bArr;
                                if (i37 == 5) {
                                    unsafe2.putInt(obj3, j3, AbstractC0332s.o(i23, bArr2));
                                    iS = i23 + 4;
                                    i31 = i36;
                                    i32 = i20;
                                    i34 = i13;
                                    i28 = i24;
                                    i33 = i19 | i44;
                                    i30 = i22;
                                    i29 = i7;
                                    break;
                                } else {
                                    i21 = i23;
                                    i17 = i21;
                                    unsafe = unsafe2;
                                    i16 = i22;
                                    i15 = i20;
                                    obj2 = obj3;
                                    i12 = i19;
                                    i14 = i36;
                                    i8 = i7;
                                    break;
                                }
                            case 7:
                                i23 = i39;
                                c2 = 65535;
                                i20 = iK2;
                                i22 = i41;
                                bArr2 = bArr;
                                if (i37 == 0) {
                                    int iW2 = AbstractC0332s.W(bArr2, i23, bVar2);
                                    L.l(obj3, j3, bVar2.f1034b != 0);
                                    i31 = i36;
                                    i30 = i22;
                                    i32 = i20;
                                    i34 = i13;
                                    i29 = i7;
                                    i28 = i6;
                                    i33 = i19 | i44;
                                    iS = iW2;
                                    break;
                                } else {
                                    i21 = i23;
                                    i17 = i21;
                                    unsafe = unsafe2;
                                    i16 = i22;
                                    i15 = i20;
                                    obj2 = obj3;
                                    i12 = i19;
                                    i14 = i36;
                                    i8 = i7;
                                    break;
                                }
                            case 8:
                                i24 = i6;
                                i23 = i39;
                                c2 = 65535;
                                i20 = iK2;
                                i22 = i41;
                                bArr2 = bArr;
                                if (i37 == 2) {
                                    iS = (i42 & 536870912) == 0 ? AbstractC0332s.P(bArr2, i23, bVar2) : AbstractC0332s.R(bArr2, i23, bVar2);
                                    unsafe2.putObject(obj3, j3, bVar2.f1035c);
                                    i31 = i36;
                                    i32 = i20;
                                    i34 = i13;
                                    i28 = i24;
                                    i33 = i19 | i44;
                                    i30 = i22;
                                    i29 = i7;
                                    break;
                                } else {
                                    i21 = i23;
                                    i17 = i21;
                                    unsafe = unsafe2;
                                    i16 = i22;
                                    i15 = i20;
                                    obj2 = obj3;
                                    i12 = i19;
                                    i14 = i36;
                                    i8 = i7;
                                    break;
                                }
                            case 9:
                                i20 = iK2;
                                i23 = i39;
                                i22 = i41;
                                c2 = 65535;
                                bArr2 = bArr;
                                if (i37 == 2) {
                                    i24 = i6;
                                    iS = AbstractC0332s.E(c0338t.p(i20), bArr2, i23, i24, bVar2);
                                    if ((i19 & i44) == 0) {
                                        unsafe2.putObject(obj3, j3, bVar2.f1035c);
                                    } else {
                                        unsafe2.putObject(obj3, j3, AbstractC0243d.b(unsafe2.getObject(obj3, j3), bVar2.f1035c));
                                    }
                                    i31 = i36;
                                    i32 = i20;
                                    i34 = i13;
                                    i28 = i24;
                                    i33 = i19 | i44;
                                    i30 = i22;
                                    i29 = i7;
                                    break;
                                } else {
                                    i21 = i23;
                                    i17 = i21;
                                    unsafe = unsafe2;
                                    i16 = i22;
                                    i15 = i20;
                                    obj2 = obj3;
                                    i12 = i19;
                                    i14 = i36;
                                    i8 = i7;
                                    break;
                                }
                            case 10:
                                i20 = iK2;
                                i25 = i39;
                                i22 = i41;
                                c2 = 65535;
                                bArr2 = bArr;
                                if (i37 == 2) {
                                    iS = AbstractC0332s.a(bArr2, i25, bVar2);
                                    unsafe2.putObject(obj3, j3, bVar2.f1035c);
                                    i33 = i19 | i44;
                                    i31 = i36;
                                    i30 = i22;
                                    i32 = i20;
                                    i34 = i13;
                                    i28 = i6;
                                    i29 = i7;
                                    break;
                                } else {
                                    i21 = i25;
                                    i17 = i21;
                                    unsafe = unsafe2;
                                    i16 = i22;
                                    i15 = i20;
                                    obj2 = obj3;
                                    i12 = i19;
                                    i14 = i36;
                                    i8 = i7;
                                    break;
                                }
                            case 12:
                                i20 = iK2;
                                i25 = i39;
                                i22 = i41;
                                c2 = 65535;
                                bArr2 = bArr;
                                if (i37 == 0) {
                                    iS = AbstractC0332s.T(bArr2, i25, bVar2);
                                    int i46 = bVar2.f1033a;
                                    c0338t.o(i20);
                                    unsafe2.putInt(obj3, j3, i46);
                                    i33 = i19 | i44;
                                    i31 = i36;
                                    i30 = i22;
                                    i32 = i20;
                                    i34 = i13;
                                    i28 = i6;
                                    i29 = i7;
                                    break;
                                } else {
                                    i21 = i25;
                                    i17 = i21;
                                    unsafe = unsafe2;
                                    i16 = i22;
                                    i15 = i20;
                                    obj2 = obj3;
                                    i12 = i19;
                                    i14 = i36;
                                    i8 = i7;
                                    break;
                                }
                            case 15:
                                i20 = iK2;
                                i25 = i39;
                                i22 = i41;
                                c2 = 65535;
                                bArr2 = bArr;
                                if (i37 == 0) {
                                    iS = AbstractC0332s.T(bArr2, i25, bVar2);
                                    unsafe2.putInt(obj3, j3, a5.k(bVar2.f1033a));
                                    i33 = i19 | i44;
                                    i31 = i36;
                                    i30 = i22;
                                    i32 = i20;
                                    i34 = i13;
                                    i28 = i6;
                                    i29 = i7;
                                    break;
                                } else {
                                    i21 = i25;
                                    i17 = i21;
                                    unsafe = unsafe2;
                                    i16 = i22;
                                    i15 = i20;
                                    obj2 = obj3;
                                    i12 = i19;
                                    i14 = i36;
                                    i8 = i7;
                                    break;
                                }
                            case 16:
                                i20 = iK2;
                                i25 = i39;
                                c2 = 65535;
                                if (i37 == 0) {
                                    bArr2 = bArr;
                                    iW = AbstractC0332s.W(bArr2, i25, bVar2);
                                    i22 = i41;
                                    unsafe2.putLong(obj, j3, a5.l(bVar2.f1034b));
                                    i33 = i19 | i44;
                                    i31 = i36;
                                    iS = iW;
                                    i30 = i22;
                                    i32 = i20;
                                    i34 = i13;
                                    i28 = i6;
                                    i29 = i7;
                                    break;
                                } else {
                                    i22 = i41;
                                    i21 = i25;
                                    i17 = i21;
                                    unsafe = unsafe2;
                                    i16 = i22;
                                    i15 = i20;
                                    obj2 = obj3;
                                    i12 = i19;
                                    i14 = i36;
                                    i8 = i7;
                                    break;
                                }
                            default:
                                if (i37 == 3) {
                                    int i47 = iK2;
                                    iS = AbstractC0332s.y(c0338t.p(iK2), bArr, i39, i6, (i36 << 3) | 4, bVar);
                                    if ((i19 & i44) == 0) {
                                        unsafe2.putObject(obj3, j3, bVar2.f1035c);
                                    } else {
                                        unsafe2.putObject(obj3, j3, AbstractC0243d.b(unsafe2.getObject(obj3, j3), bVar2.f1035c));
                                    }
                                    i33 = i19 | i44;
                                    bArr2 = bArr;
                                    i29 = i7;
                                    i31 = i36;
                                    i30 = i41;
                                    i32 = i47;
                                    i34 = i13;
                                    i28 = i6;
                                    break;
                                } else {
                                    i20 = iK2;
                                    c2 = 65535;
                                    i21 = i39;
                                    i22 = i41;
                                    i17 = i21;
                                    unsafe = unsafe2;
                                    i16 = i22;
                                    i15 = i20;
                                    obj2 = obj3;
                                    i12 = i19;
                                    i14 = i36;
                                    i8 = i7;
                                    break;
                                }
                        }
                    } else {
                        int i48 = iK2;
                        bArr2 = bArr;
                        if (iL != 27) {
                            i12 = i33;
                            i13 = i34;
                            i14 = i36;
                            if (iL <= 49) {
                                unsafe = unsafe2;
                                i15 = i48;
                                iS = N(obj, bArr, i39, i6, i41, i14, i37, i48, i42, iL, j3, bVar);
                                if (iS != i39) {
                                    c0338t = this;
                                    obj3 = obj;
                                    bArr2 = bArr;
                                    i30 = i41;
                                    i28 = i6;
                                    i29 = i7;
                                    bVar2 = bVar;
                                    i33 = i12;
                                    i31 = i14;
                                    i34 = i13;
                                    unsafe2 = unsafe;
                                    i32 = i15;
                                } else {
                                    obj2 = obj;
                                    i16 = i41;
                                    i8 = i7;
                                    i17 = iS;
                                }
                            } else {
                                i26 = i39;
                                unsafe = unsafe2;
                                i27 = i41;
                                i15 = i48;
                                if (iL != 50) {
                                    obj2 = obj;
                                    iS = L(obj, bArr, i26, i6, i27, i14, i37, i42, iL, j3, i15, bVar);
                                    if (iS != i26) {
                                        bArr2 = bArr;
                                        i30 = i27;
                                        i28 = i6;
                                        i29 = i7;
                                        bVar2 = bVar;
                                        obj3 = obj2;
                                        i33 = i12;
                                        i31 = i14;
                                        i32 = i15;
                                        i34 = i13;
                                        unsafe2 = unsafe;
                                        c0338t = this;
                                    } else {
                                        i16 = i27;
                                        i8 = i7;
                                        i17 = iS;
                                        i15 = i15;
                                    }
                                } else if (i37 == 2) {
                                    K(i15, j3, obj);
                                    throw null;
                                }
                            }
                        } else if (i37 == 2) {
                            V4 v4 = (V4) ((InterfaceC0237c) unsafe2.getObject(obj3, j3));
                            boolean zM = v4.m();
                            InterfaceC0237c interfaceC0237c = v4;
                            if (!zM) {
                                int size = v4.size();
                                InterfaceC0237c interfaceC0237cD = v4.d(size == 0 ? 10 : size + size);
                                unsafe2.putObject(obj3, j3, interfaceC0237cD);
                                interfaceC0237c = interfaceC0237cD;
                            }
                            i30 = i41;
                            i13 = i34;
                            iS = AbstractC0332s.K(c0338t.p(i48), i30, bArr, i39, i6, interfaceC0237c, bVar);
                            i32 = i48;
                            i33 = i33;
                            i31 = i36;
                            i34 = i13;
                            i28 = i6;
                            i29 = i7;
                        } else {
                            i12 = i33;
                            i13 = i34;
                            i14 = i36;
                            i26 = i39;
                            unsafe = unsafe2;
                            i27 = i41;
                            i15 = i48;
                        }
                        i16 = i27;
                        i8 = i7;
                        i17 = i26;
                        obj2 = obj;
                    }
                }
                if (i16 != i8 || i8 == 0) {
                    m5 m5Var = (m5) obj2;
                    D dB = m5Var.zzc;
                    if (dB == D.f) {
                        dB = D.b();
                        m5Var.zzc = dB;
                    }
                    iS = AbstractC0332s.S(i16, bArr, i17, i6, dB, bVar);
                    bArr2 = bArr;
                    i28 = i6;
                    bVar2 = bVar;
                    i29 = i8;
                    i30 = i16;
                    obj3 = obj2;
                    i33 = i12;
                    i31 = i14;
                    i34 = i13;
                    unsafe2 = unsafe;
                    i32 = i15;
                    c0338t = this;
                } else {
                    iS = i17;
                    i30 = i16;
                    i33 = i12;
                    i34 = i13;
                }
            } else {
                unsafe = unsafe2;
                i8 = i29;
                obj2 = obj3;
            }
        }
        if (i34 != 1048575) {
            unsafe.putInt(obj2, i34, i33);
        }
        for (int i49 = this.f5725i; i49 < this.f5726j; i49++) {
            q(obj2, this.f5724h[i49], null);
        }
        if (i8 == 0) {
            if (iS != i6) {
                throw C0255f.d();
            }
        } else if (iS > i6 || i30 != i8) {
            throw C0255f.d();
        }
        return iS;
    }

    public final int H(Object obj) {
        int i5;
        int iA0;
        int iB0;
        int iA02;
        int iU0;
        int iK;
        Unsafe unsafe = n;
        int i6 = 1048575;
        int i7 = 1048575;
        int i8 = 0;
        int iR = 0;
        int i9 = 0;
        while (true) {
            int[] iArr = this.f5718a;
            if (i8 >= iArr.length) {
                this.f5728l.getClass();
                return E.a(E.b(obj)) + iR;
            }
            int iM = m(i8);
            int i10 = iArr[i8];
            int iL = l(iM);
            if (iL <= 17) {
                int i11 = iArr[i8 + 2];
                int i12 = i11 & i6;
                i5 = 1 << (i11 >>> 20);
                if (i12 != i7) {
                    i9 = unsafe.getInt(obj, i12);
                    i7 = i12;
                }
            } else {
                i5 = 0;
            }
            long j3 = iM & i6;
            switch (iL) {
                case 0:
                    if ((i9 & i5) == 0) {
                        break;
                    } else {
                        iR = f.r(i10 << 3, 8, iR);
                        break;
                    }
                case 1:
                    if ((i9 & i5) == 0) {
                        break;
                    } else {
                        iR = f.r(i10 << 3, 4, iR);
                        break;
                    }
                case 2:
                    if ((i5 & i9) == 0) {
                        break;
                    } else {
                        long j5 = unsafe.getLong(obj, j3);
                        iA0 = f5.a0(i10 << 3);
                        iB0 = f5.b0(j5);
                        iK = iB0 + iA0;
                        iR += iK;
                        break;
                    }
                case 3:
                    if ((i5 & i9) == 0) {
                        break;
                    } else {
                        long j6 = unsafe.getLong(obj, j3);
                        iA0 = f5.a0(i10 << 3);
                        iB0 = f5.b0(j6);
                        iK = iB0 + iA0;
                        iR += iK;
                        break;
                    }
                case 4:
                    if ((i5 & i9) == 0) {
                        break;
                    } else {
                        int i13 = unsafe.getInt(obj, j3);
                        iA02 = f5.a0(i10 << 3);
                        iU0 = f5.u0(i13);
                        iK = iU0 + iA02;
                        iR += iK;
                        break;
                    }
                case 5:
                    if ((i9 & i5) == 0) {
                        break;
                    } else {
                        iR = f.r(i10 << 3, 8, iR);
                        break;
                    }
                case 6:
                    if ((i9 & i5) == 0) {
                        break;
                    } else {
                        iR = f.r(i10 << 3, 4, iR);
                        break;
                    }
                case 7:
                    if ((i9 & i5) == 0) {
                        break;
                    } else {
                        iR = f.r(i10 << 3, 1, iR);
                        break;
                    }
                case 8:
                    if ((i5 & i9) == 0) {
                        break;
                    } else {
                        Object object = unsafe.getObject(obj, j3);
                        if (!(object instanceof Z4)) {
                            iA02 = f5.a0(i10 << 3);
                            iU0 = f5.Y((String) object);
                            iK = iU0 + iA02;
                            iR += iK;
                            break;
                        } else {
                            int iA03 = f5.a0(i10 << 3);
                            int iN = ((Z4) object).n();
                            iR = f.s(iN, iN, iA03, iR);
                            break;
                        }
                    }
                case 9:
                    if ((i5 & i9) == 0) {
                        break;
                    } else {
                        iK = B.K(i10, p(i8), unsafe.getObject(obj, j3));
                        iR += iK;
                        break;
                    }
                case 10:
                    if ((i5 & i9) == 0) {
                        break;
                    } else {
                        Z4 z4 = (Z4) unsafe.getObject(obj, j3);
                        int iA04 = f5.a0(i10 << 3);
                        int iN2 = z4.n();
                        iR = f.s(iN2, iN2, iA04, iR);
                        break;
                    }
                case 11:
                    if ((i5 & i9) == 0) {
                        break;
                    } else {
                        iR = f.r(unsafe.getInt(obj, j3), f5.a0(i10 << 3), iR);
                        break;
                    }
                case 12:
                    if ((i5 & i9) == 0) {
                        break;
                    } else {
                        int i14 = unsafe.getInt(obj, j3);
                        iA02 = f5.a0(i10 << 3);
                        iU0 = f5.u0(i14);
                        iK = iU0 + iA02;
                        iR += iK;
                        break;
                    }
                case 13:
                    if ((i9 & i5) == 0) {
                        break;
                    } else {
                        iR = f.r(i10 << 3, 4, iR);
                        break;
                    }
                case 14:
                    if ((i9 & i5) == 0) {
                        break;
                    } else {
                        iR = f.r(i10 << 3, 8, iR);
                        break;
                    }
                case 15:
                    if ((i5 & i9) == 0) {
                        break;
                    } else {
                        int i15 = unsafe.getInt(obj, j3);
                        iR = f.r((i15 >> 31) ^ (i15 + i15), f5.a0(i10 << 3), iR);
                        break;
                    }
                case 16:
                    if ((i5 & i9) == 0) {
                        break;
                    } else {
                        long j7 = unsafe.getLong(obj, j3);
                        iA0 = f5.a0(i10 << 3);
                        iB0 = f5.b0((j7 >> 63) ^ (j7 + j7));
                        iK = iB0 + iA0;
                        iR += iK;
                        break;
                    }
                case 17:
                    if ((i5 & i9) == 0) {
                        break;
                    } else {
                        iK = f5.t0(i10, (U4) unsafe.getObject(obj, j3), p(i8));
                        iR += iK;
                        break;
                    }
                case 18:
                    iK = B.D(i10, (List) unsafe.getObject(obj, j3));
                    iR += iK;
                    break;
                case 19:
                    iK = B.B(i10, (List) unsafe.getObject(obj, j3));
                    iR += iK;
                    break;
                case 20:
                    iK = B.I(i10, (List) unsafe.getObject(obj, j3));
                    iR += iK;
                    break;
                case 21:
                    iK = B.T(i10, (List) unsafe.getObject(obj, j3));
                    iR += iK;
                    break;
                case 22:
                    iK = B.G(i10, (List) unsafe.getObject(obj, j3));
                    iR += iK;
                    break;
                case 23:
                    iK = B.D(i10, (List) unsafe.getObject(obj, j3));
                    iR += iK;
                    break;
                case 24:
                    iK = B.B(i10, (List) unsafe.getObject(obj, j3));
                    iR += iK;
                    break;
                case 25:
                    iK = B.u(i10, (List) unsafe.getObject(obj, j3));
                    iR += iK;
                    break;
                case 26:
                    iK = B.Q(i10, (List) unsafe.getObject(obj, j3));
                    iR += iK;
                    break;
                case 27:
                    iK = B.L(i10, (List) unsafe.getObject(obj, j3), p(i8));
                    iR += iK;
                    break;
                case 28:
                    iK = B.y(i10, (List) unsafe.getObject(obj, j3));
                    iR += iK;
                    break;
                case 29:
                    iK = B.R(i10, (List) unsafe.getObject(obj, j3));
                    iR += iK;
                    break;
                case 30:
                    iK = B.z(i10, (List) unsafe.getObject(obj, j3));
                    iR += iK;
                    break;
                case 31:
                    iK = B.B(i10, (List) unsafe.getObject(obj, j3));
                    iR += iK;
                    break;
                case 32:
                    iK = B.D(i10, (List) unsafe.getObject(obj, j3));
                    iR += iK;
                    break;
                case 33:
                    iK = B.M(i10, (List) unsafe.getObject(obj, j3));
                    iR += iK;
                    break;
                case 34:
                    iK = B.O(i10, (List) unsafe.getObject(obj, j3));
                    iR += iK;
                    break;
                case 35:
                    int iE = B.E((List) unsafe.getObject(obj, j3));
                    if (iE <= 0) {
                        break;
                    } else {
                        iR = f.s(iE, f5.Z(i10), iE, iR);
                        break;
                    }
                case 36:
                    int iC = B.C((List) unsafe.getObject(obj, j3));
                    if (iC <= 0) {
                        break;
                    } else {
                        iR = f.s(iC, f5.Z(i10), iC, iR);
                        break;
                    }
                case 37:
                    int iJ = B.J((List) unsafe.getObject(obj, j3));
                    if (iJ <= 0) {
                        break;
                    } else {
                        iR = f.s(iJ, f5.Z(i10), iJ, iR);
                        break;
                    }
                case 38:
                    int iU = B.U((List) unsafe.getObject(obj, j3));
                    if (iU <= 0) {
                        break;
                    } else {
                        iR = f.s(iU, f5.Z(i10), iU, iR);
                        break;
                    }
                case 39:
                    int iH = B.H((List) unsafe.getObject(obj, j3));
                    if (iH <= 0) {
                        break;
                    } else {
                        iR = f.s(iH, f5.Z(i10), iH, iR);
                        break;
                    }
                case 40:
                    int iE2 = B.E((List) unsafe.getObject(obj, j3));
                    if (iE2 <= 0) {
                        break;
                    } else {
                        iR = f.s(iE2, f5.Z(i10), iE2, iR);
                        break;
                    }
                case 41:
                    int iC2 = B.C((List) unsafe.getObject(obj, j3));
                    if (iC2 <= 0) {
                        break;
                    } else {
                        iR = f.s(iC2, f5.Z(i10), iC2, iR);
                        break;
                    }
                case 42:
                    int iX = B.x((List) unsafe.getObject(obj, j3));
                    if (iX <= 0) {
                        break;
                    } else {
                        iR = f.s(iX, f5.Z(i10), iX, iR);
                        break;
                    }
                case 43:
                    int iS = B.S((List) unsafe.getObject(obj, j3));
                    if (iS <= 0) {
                        break;
                    } else {
                        iR = f.s(iS, f5.Z(i10), iS, iR);
                        break;
                    }
                case 44:
                    int iA = B.A((List) unsafe.getObject(obj, j3));
                    if (iA <= 0) {
                        break;
                    } else {
                        iR = f.s(iA, f5.Z(i10), iA, iR);
                        break;
                    }
                case 45:
                    int iC3 = B.C((List) unsafe.getObject(obj, j3));
                    if (iC3 <= 0) {
                        break;
                    } else {
                        iR = f.s(iC3, f5.Z(i10), iC3, iR);
                        break;
                    }
                case 46:
                    int iE3 = B.E((List) unsafe.getObject(obj, j3));
                    if (iE3 <= 0) {
                        break;
                    } else {
                        iR = f.s(iE3, f5.Z(i10), iE3, iR);
                        break;
                    }
                case 47:
                    int iN3 = B.N((List) unsafe.getObject(obj, j3));
                    if (iN3 <= 0) {
                        break;
                    } else {
                        iR = f.s(iN3, f5.Z(i10), iN3, iR);
                        break;
                    }
                case 48:
                    int iP = B.P((List) unsafe.getObject(obj, j3));
                    if (iP <= 0) {
                        break;
                    } else {
                        iR = f.s(iP, f5.Z(i10), iP, iR);
                        break;
                    }
                case 49:
                    iK = B.F(i10, (List) unsafe.getObject(obj, j3), p(i8));
                    iR += iK;
                    break;
                case 50:
                    C0315p.a(unsafe.getObject(obj, j3), r(i8));
                    break;
                case 51:
                    if (!B(i10, obj, i8)) {
                        break;
                    } else {
                        iR = f.r(i10 << 3, 8, iR);
                        break;
                    }
                case 52:
                    if (!B(i10, obj, i8)) {
                        break;
                    } else {
                        iR = f.r(i10 << 3, 4, iR);
                        break;
                    }
                case 53:
                    if (!B(i10, obj, i8)) {
                        break;
                    } else {
                        long jN = n(j3, obj);
                        iA0 = f5.a0(i10 << 3);
                        iB0 = f5.b0(jN);
                        iK = iB0 + iA0;
                        iR += iK;
                        break;
                    }
                case 54:
                    if (!B(i10, obj, i8)) {
                        break;
                    } else {
                        long jN2 = n(j3, obj);
                        iA0 = f5.a0(i10 << 3);
                        iB0 = f5.b0(jN2);
                        iK = iB0 + iA0;
                        iR += iK;
                        break;
                    }
                case 55:
                    if (!B(i10, obj, i8)) {
                        break;
                    } else {
                        int iJ2 = J(j3, obj);
                        iA02 = f5.a0(i10 << 3);
                        iU0 = f5.u0(iJ2);
                        iK = iU0 + iA02;
                        iR += iK;
                        break;
                    }
                case 56:
                    if (!B(i10, obj, i8)) {
                        break;
                    } else {
                        iR = f.r(i10 << 3, 8, iR);
                        break;
                    }
                case 57:
                    if (!B(i10, obj, i8)) {
                        break;
                    } else {
                        iR = f.r(i10 << 3, 4, iR);
                        break;
                    }
                case 58:
                    if (!B(i10, obj, i8)) {
                        break;
                    } else {
                        iR = f.r(i10 << 3, 1, iR);
                        break;
                    }
                case 59:
                    if (!B(i10, obj, i8)) {
                        break;
                    } else {
                        Object object2 = unsafe.getObject(obj, j3);
                        if (!(object2 instanceof Z4)) {
                            iA02 = f5.a0(i10 << 3);
                            iU0 = f5.Y((String) object2);
                            iK = iU0 + iA02;
                            iR += iK;
                            break;
                        } else {
                            int iA05 = f5.a0(i10 << 3);
                            int iN4 = ((Z4) object2).n();
                            iR = f.s(iN4, iN4, iA05, iR);
                            break;
                        }
                    }
                case 60:
                    if (!B(i10, obj, i8)) {
                        break;
                    } else {
                        iK = B.K(i10, p(i8), unsafe.getObject(obj, j3));
                        iR += iK;
                        break;
                    }
                case 61:
                    if (!B(i10, obj, i8)) {
                        break;
                    } else {
                        Z4 z42 = (Z4) unsafe.getObject(obj, j3);
                        int iA06 = f5.a0(i10 << 3);
                        int iN5 = z42.n();
                        iR = f.s(iN5, iN5, iA06, iR);
                        break;
                    }
                case 62:
                    if (!B(i10, obj, i8)) {
                        break;
                    } else {
                        iR = f.r(J(j3, obj), f5.a0(i10 << 3), iR);
                        break;
                    }
                case 63:
                    if (!B(i10, obj, i8)) {
                        break;
                    } else {
                        int iJ3 = J(j3, obj);
                        iA02 = f5.a0(i10 << 3);
                        iU0 = f5.u0(iJ3);
                        iK = iU0 + iA02;
                        iR += iK;
                        break;
                    }
                case 64:
                    if (!B(i10, obj, i8)) {
                        break;
                    } else {
                        iR = f.r(i10 << 3, 4, iR);
                        break;
                    }
                case 65:
                    if (!B(i10, obj, i8)) {
                        break;
                    } else {
                        iR = f.r(i10 << 3, 8, iR);
                        break;
                    }
                case 66:
                    if (!B(i10, obj, i8)) {
                        break;
                    } else {
                        int iJ4 = J(j3, obj);
                        iR = f.r((iJ4 >> 31) ^ (iJ4 + iJ4), f5.a0(i10 << 3), iR);
                        break;
                    }
                case 67:
                    if (!B(i10, obj, i8)) {
                        break;
                    } else {
                        long jN3 = n(j3, obj);
                        iA0 = f5.a0(i10 << 3);
                        iB0 = f5.b0((jN3 >> 63) ^ (jN3 + jN3));
                        iK = iB0 + iA0;
                        iR += iK;
                        break;
                    }
                case 68:
                    if (!B(i10, obj, i8)) {
                        break;
                    } else {
                        iK = f5.t0(i10, (U4) unsafe.getObject(obj, j3), p(i8));
                        iR += iK;
                        break;
                    }
            }
            i8 += 3;
            i6 = 1048575;
        }
    }

    public final int I(Object obj) {
        int iA0;
        int iB0;
        int iA02;
        int iU0;
        int iK;
        int iA03;
        int iB02;
        Unsafe unsafe = n;
        int i5 = 0;
        int iR = 0;
        while (true) {
            int[] iArr = this.f5718a;
            if (i5 >= iArr.length) {
                this.f5728l.getClass();
                return E.a(E.b(obj)) + iR;
            }
            int iM = m(i5);
            int iL = l(iM);
            int i6 = iArr[i5];
            long j3 = iM & 1048575;
            if (iL >= j5.f5622d.a() && iL <= j5.f5623e.a()) {
                int i7 = iArr[i5 + 2];
            }
            switch (iL) {
                case 0:
                    if (!z(i5, obj)) {
                        break;
                    } else {
                        iR = f.r(i6 << 3, 8, iR);
                        break;
                    }
                case 1:
                    if (!z(i5, obj)) {
                        break;
                    } else {
                        iR = f.r(i6 << 3, 4, iR);
                        break;
                    }
                case 2:
                    if (!z(i5, obj)) {
                        break;
                    } else {
                        long jG = L.g(j3, obj);
                        iA0 = f5.a0(i6 << 3);
                        iB0 = f5.b0(jG);
                        iK = iB0 + iA0;
                        iR = iK + iR;
                        break;
                    }
                case 3:
                    if (!z(i5, obj)) {
                        break;
                    } else {
                        long jG2 = L.g(j3, obj);
                        iA0 = f5.a0(i6 << 3);
                        iB0 = f5.b0(jG2);
                        iK = iB0 + iA0;
                        iR = iK + iR;
                        break;
                    }
                case 4:
                    if (!z(i5, obj)) {
                        break;
                    } else {
                        int iF = L.f(j3, obj);
                        iA02 = f5.a0(i6 << 3);
                        iU0 = f5.u0(iF);
                        iK = iU0 + iA02;
                        iR = iK + iR;
                        break;
                    }
                case 5:
                    if (!z(i5, obj)) {
                        break;
                    } else {
                        iR = f.r(i6 << 3, 8, iR);
                        break;
                    }
                case 6:
                    if (!z(i5, obj)) {
                        break;
                    } else {
                        iR = f.r(i6 << 3, 4, iR);
                        break;
                    }
                case 7:
                    if (!z(i5, obj)) {
                        break;
                    } else {
                        iR = f.r(i6 << 3, 1, iR);
                        break;
                    }
                case 8:
                    if (!z(i5, obj)) {
                        break;
                    } else {
                        Object objI = L.i(j3, obj);
                        if (!(objI instanceof Z4)) {
                            iA02 = f5.a0(i6 << 3);
                            iU0 = f5.Y((String) objI);
                            iK = iU0 + iA02;
                            iR = iK + iR;
                            break;
                        } else {
                            int iA04 = f5.a0(i6 << 3);
                            int iN = ((Z4) objI).n();
                            iR = f.s(iN, iN, iA04, iR);
                            break;
                        }
                    }
                case 9:
                    if (!z(i5, obj)) {
                        break;
                    } else {
                        iK = B.K(i6, p(i5), L.i(j3, obj));
                        iR = iK + iR;
                        break;
                    }
                case 10:
                    if (!z(i5, obj)) {
                        break;
                    } else {
                        Z4 z4 = (Z4) L.i(j3, obj);
                        int iA05 = f5.a0(i6 << 3);
                        int iN2 = z4.n();
                        iR = f.s(iN2, iN2, iA05, iR);
                        break;
                    }
                case 11:
                    if (!z(i5, obj)) {
                        break;
                    } else {
                        iR = f.r(L.f(j3, obj), f5.a0(i6 << 3), iR);
                        break;
                    }
                case 12:
                    if (!z(i5, obj)) {
                        break;
                    } else {
                        int iF2 = L.f(j3, obj);
                        iA02 = f5.a0(i6 << 3);
                        iU0 = f5.u0(iF2);
                        iK = iU0 + iA02;
                        iR = iK + iR;
                        break;
                    }
                case 13:
                    if (!z(i5, obj)) {
                        break;
                    } else {
                        iR = f.r(i6 << 3, 4, iR);
                        break;
                    }
                case 14:
                    if (!z(i5, obj)) {
                        break;
                    } else {
                        iR = f.r(i6 << 3, 8, iR);
                        break;
                    }
                case 15:
                    if (!z(i5, obj)) {
                        break;
                    } else {
                        int iF3 = L.f(j3, obj);
                        iR = f.r((iF3 >> 31) ^ (iF3 + iF3), f5.a0(i6 << 3), iR);
                        break;
                    }
                case 16:
                    if (!z(i5, obj)) {
                        break;
                    } else {
                        long jG3 = L.g(j3, obj);
                        iA03 = f5.a0(i6 << 3);
                        iB02 = f5.b0((jG3 + jG3) ^ (jG3 >> 63));
                        iR = iB02 + iA03 + iR;
                        break;
                    }
                case 17:
                    if (!z(i5, obj)) {
                        break;
                    } else {
                        iK = f5.t0(i6, (U4) L.i(j3, obj), p(i5));
                        iR = iK + iR;
                        break;
                    }
                case 18:
                    iK = B.D(i6, (List) L.i(j3, obj));
                    iR = iK + iR;
                    break;
                case 19:
                    iK = B.B(i6, (List) L.i(j3, obj));
                    iR = iK + iR;
                    break;
                case 20:
                    iK = B.I(i6, (List) L.i(j3, obj));
                    iR = iK + iR;
                    break;
                case 21:
                    iK = B.T(i6, (List) L.i(j3, obj));
                    iR = iK + iR;
                    break;
                case 22:
                    iK = B.G(i6, (List) L.i(j3, obj));
                    iR = iK + iR;
                    break;
                case 23:
                    iK = B.D(i6, (List) L.i(j3, obj));
                    iR = iK + iR;
                    break;
                case 24:
                    iK = B.B(i6, (List) L.i(j3, obj));
                    iR = iK + iR;
                    break;
                case 25:
                    iK = B.u(i6, (List) L.i(j3, obj));
                    iR = iK + iR;
                    break;
                case 26:
                    iK = B.Q(i6, (List) L.i(j3, obj));
                    iR = iK + iR;
                    break;
                case 27:
                    iK = B.L(i6, (List) L.i(j3, obj), p(i5));
                    iR = iK + iR;
                    break;
                case 28:
                    iK = B.y(i6, (List) L.i(j3, obj));
                    iR = iK + iR;
                    break;
                case 29:
                    iK = B.R(i6, (List) L.i(j3, obj));
                    iR = iK + iR;
                    break;
                case 30:
                    iK = B.z(i6, (List) L.i(j3, obj));
                    iR = iK + iR;
                    break;
                case 31:
                    iK = B.B(i6, (List) L.i(j3, obj));
                    iR = iK + iR;
                    break;
                case 32:
                    iK = B.D(i6, (List) L.i(j3, obj));
                    iR = iK + iR;
                    break;
                case 33:
                    iK = B.M(i6, (List) L.i(j3, obj));
                    iR = iK + iR;
                    break;
                case 34:
                    iK = B.O(i6, (List) L.i(j3, obj));
                    iR = iK + iR;
                    break;
                case 35:
                    int iE = B.E((List) unsafe.getObject(obj, j3));
                    if (iE <= 0) {
                        break;
                    } else {
                        iR = f.s(iE, f5.Z(i6), iE, iR);
                        break;
                    }
                case 36:
                    int iC = B.C((List) unsafe.getObject(obj, j3));
                    if (iC <= 0) {
                        break;
                    } else {
                        iR = f.s(iC, f5.Z(i6), iC, iR);
                        break;
                    }
                case 37:
                    int iJ = B.J((List) unsafe.getObject(obj, j3));
                    if (iJ <= 0) {
                        break;
                    } else {
                        iR = f.s(iJ, f5.Z(i6), iJ, iR);
                        break;
                    }
                case 38:
                    int iU = B.U((List) unsafe.getObject(obj, j3));
                    if (iU <= 0) {
                        break;
                    } else {
                        iR = f.s(iU, f5.Z(i6), iU, iR);
                        break;
                    }
                case 39:
                    int iH = B.H((List) unsafe.getObject(obj, j3));
                    if (iH <= 0) {
                        break;
                    } else {
                        iR = f.s(iH, f5.Z(i6), iH, iR);
                        break;
                    }
                case 40:
                    int iE2 = B.E((List) unsafe.getObject(obj, j3));
                    if (iE2 <= 0) {
                        break;
                    } else {
                        iR = f.s(iE2, f5.Z(i6), iE2, iR);
                        break;
                    }
                case 41:
                    int iC2 = B.C((List) unsafe.getObject(obj, j3));
                    if (iC2 <= 0) {
                        break;
                    } else {
                        iR = f.s(iC2, f5.Z(i6), iC2, iR);
                        break;
                    }
                case 42:
                    int iX = B.x((List) unsafe.getObject(obj, j3));
                    if (iX <= 0) {
                        break;
                    } else {
                        iR = f.s(iX, f5.Z(i6), iX, iR);
                        break;
                    }
                case 43:
                    int iS = B.S((List) unsafe.getObject(obj, j3));
                    if (iS <= 0) {
                        break;
                    } else {
                        iR = f.s(iS, f5.Z(i6), iS, iR);
                        break;
                    }
                case 44:
                    int iA = B.A((List) unsafe.getObject(obj, j3));
                    if (iA <= 0) {
                        break;
                    } else {
                        iR = f.s(iA, f5.Z(i6), iA, iR);
                        break;
                    }
                case 45:
                    int iC3 = B.C((List) unsafe.getObject(obj, j3));
                    if (iC3 <= 0) {
                        break;
                    } else {
                        iR = f.s(iC3, f5.Z(i6), iC3, iR);
                        break;
                    }
                case 46:
                    int iE3 = B.E((List) unsafe.getObject(obj, j3));
                    if (iE3 <= 0) {
                        break;
                    } else {
                        iR = f.s(iE3, f5.Z(i6), iE3, iR);
                        break;
                    }
                case 47:
                    int iN3 = B.N((List) unsafe.getObject(obj, j3));
                    if (iN3 <= 0) {
                        break;
                    } else {
                        iR = f.s(iN3, f5.Z(i6), iN3, iR);
                        break;
                    }
                case 48:
                    int iP = B.P((List) unsafe.getObject(obj, j3));
                    if (iP <= 0) {
                        break;
                    } else {
                        iR = f.s(iP, f5.Z(i6), iP, iR);
                        break;
                    }
                case 49:
                    iK = B.F(i6, (List) L.i(j3, obj), p(i5));
                    iR = iK + iR;
                    break;
                case 50:
                    C0315p.a(L.i(j3, obj), r(i5));
                    break;
                case 51:
                    if (!B(i6, obj, i5)) {
                        break;
                    } else {
                        iR = f.r(i6 << 3, 8, iR);
                        break;
                    }
                case 52:
                    if (!B(i6, obj, i5)) {
                        break;
                    } else {
                        iR = f.r(i6 << 3, 4, iR);
                        break;
                    }
                case 53:
                    if (!B(i6, obj, i5)) {
                        break;
                    } else {
                        long jN = n(j3, obj);
                        iA0 = f5.a0(i6 << 3);
                        iB0 = f5.b0(jN);
                        iK = iB0 + iA0;
                        iR = iK + iR;
                        break;
                    }
                case 54:
                    if (!B(i6, obj, i5)) {
                        break;
                    } else {
                        long jN2 = n(j3, obj);
                        iA0 = f5.a0(i6 << 3);
                        iB0 = f5.b0(jN2);
                        iK = iB0 + iA0;
                        iR = iK + iR;
                        break;
                    }
                case 55:
                    if (!B(i6, obj, i5)) {
                        break;
                    } else {
                        int iJ2 = J(j3, obj);
                        iA02 = f5.a0(i6 << 3);
                        iU0 = f5.u0(iJ2);
                        iK = iU0 + iA02;
                        iR = iK + iR;
                        break;
                    }
                case 56:
                    if (!B(i6, obj, i5)) {
                        break;
                    } else {
                        iR = f.r(i6 << 3, 8, iR);
                        break;
                    }
                case 57:
                    if (!B(i6, obj, i5)) {
                        break;
                    } else {
                        iR = f.r(i6 << 3, 4, iR);
                        break;
                    }
                case 58:
                    if (!B(i6, obj, i5)) {
                        break;
                    } else {
                        iR = f.r(i6 << 3, 1, iR);
                        break;
                    }
                case 59:
                    if (!B(i6, obj, i5)) {
                        break;
                    } else {
                        Object objI2 = L.i(j3, obj);
                        if (!(objI2 instanceof Z4)) {
                            iA02 = f5.a0(i6 << 3);
                            iU0 = f5.Y((String) objI2);
                            iK = iU0 + iA02;
                            iR = iK + iR;
                            break;
                        } else {
                            int iA06 = f5.a0(i6 << 3);
                            int iN4 = ((Z4) objI2).n();
                            iR = f.s(iN4, iN4, iA06, iR);
                            break;
                        }
                    }
                case 60:
                    if (!B(i6, obj, i5)) {
                        break;
                    } else {
                        iK = B.K(i6, p(i5), L.i(j3, obj));
                        iR = iK + iR;
                        break;
                    }
                case 61:
                    if (!B(i6, obj, i5)) {
                        break;
                    } else {
                        Z4 z42 = (Z4) L.i(j3, obj);
                        int iA07 = f5.a0(i6 << 3);
                        int iN5 = z42.n();
                        iR = f.s(iN5, iN5, iA07, iR);
                        break;
                    }
                case 62:
                    if (!B(i6, obj, i5)) {
                        break;
                    } else {
                        iR = f.r(J(j3, obj), f5.a0(i6 << 3), iR);
                        break;
                    }
                case 63:
                    if (!B(i6, obj, i5)) {
                        break;
                    } else {
                        int iJ3 = J(j3, obj);
                        iA02 = f5.a0(i6 << 3);
                        iU0 = f5.u0(iJ3);
                        iK = iU0 + iA02;
                        iR = iK + iR;
                        break;
                    }
                case 64:
                    if (!B(i6, obj, i5)) {
                        break;
                    } else {
                        iR = f.r(i6 << 3, 4, iR);
                        break;
                    }
                case 65:
                    if (!B(i6, obj, i5)) {
                        break;
                    } else {
                        iR = f.r(i6 << 3, 8, iR);
                        break;
                    }
                case 66:
                    if (!B(i6, obj, i5)) {
                        break;
                    } else {
                        int iJ4 = J(j3, obj);
                        iR = f.r((iJ4 >> 31) ^ (iJ4 + iJ4), f5.a0(i6 << 3), iR);
                        break;
                    }
                case 67:
                    if (!B(i6, obj, i5)) {
                        break;
                    } else {
                        long jN3 = n(j3, obj);
                        iA03 = f5.a0(i6 << 3);
                        iB02 = f5.b0((jN3 + jN3) ^ (jN3 >> 63));
                        iR = iB02 + iA03 + iR;
                        break;
                    }
                case 68:
                    if (!B(i6, obj, i5)) {
                        break;
                    } else {
                        iK = f5.t0(i6, (U4) L.i(j3, obj), p(i5));
                        iR = iK + iR;
                        break;
                    }
            }
            i5 += 3;
        }
    }

    public final void K(int i5, long j3, Object obj) {
        Unsafe unsafe = n;
        Object objR = r(i5);
        Object object = unsafe.getObject(obj, j3);
        if (C0315p.b(object)) {
            C0309o c0309oB = C0309o.a().b();
            C0315p.c(c0309oB, object);
            unsafe.putObject(obj, j3, c0309oB);
        }
        f.F(objR);
        throw null;
    }

    public final int L(Object obj, byte[] bArr, int i5, int i6, int i7, int i8, int i9, int i10, int i11, long j3, int i12, b bVar) throws C0255f {
        Unsafe unsafe = n;
        long j5 = this.f5718a[i12 + 2] & 1048575;
        switch (i11) {
            case 51:
                if (i9 == 1) {
                    unsafe.putObject(obj, j3, Double.valueOf(Double.longBitsToDouble(AbstractC0332s.X(i5, bArr))));
                    unsafe.putInt(obj, j5, i8);
                    return i5 + 8;
                }
                break;
            case 52:
                if (i9 == 5) {
                    unsafe.putObject(obj, j3, Float.valueOf(Float.intBitsToFloat(AbstractC0332s.o(i5, bArr))));
                    unsafe.putInt(obj, j5, i8);
                    return i5 + 4;
                }
                break;
            case 53:
            case 54:
                if (i9 == 0) {
                    int iW = AbstractC0332s.W(bArr, i5, bVar);
                    unsafe.putObject(obj, j3, Long.valueOf(bVar.f1034b));
                    unsafe.putInt(obj, j5, i8);
                    return iW;
                }
                break;
            case 55:
            case 62:
                if (i9 == 0) {
                    int iT = AbstractC0332s.T(bArr, i5, bVar);
                    unsafe.putObject(obj, j3, Integer.valueOf(bVar.f1033a));
                    unsafe.putInt(obj, j5, i8);
                    return iT;
                }
                break;
            case 56:
            case 65:
                if (i9 == 1) {
                    unsafe.putObject(obj, j3, Long.valueOf(AbstractC0332s.X(i5, bArr)));
                    unsafe.putInt(obj, j5, i8);
                    return i5 + 8;
                }
                break;
            case 57:
            case 64:
                if (i9 == 5) {
                    unsafe.putObject(obj, j3, Integer.valueOf(AbstractC0332s.o(i5, bArr)));
                    unsafe.putInt(obj, j5, i8);
                    return i5 + 4;
                }
                break;
            case 58:
                if (i9 == 0) {
                    int iW2 = AbstractC0332s.W(bArr, i5, bVar);
                    unsafe.putObject(obj, j3, Boolean.valueOf(bVar.f1034b != 0));
                    unsafe.putInt(obj, j5, i8);
                    return iW2;
                }
                break;
            case 59:
                if (i9 == 2) {
                    int iT2 = AbstractC0332s.T(bArr, i5, bVar);
                    int i13 = bVar.f1033a;
                    if (i13 == 0) {
                        unsafe.putObject(obj, j3, "");
                    } else {
                        if ((i10 & 536870912) != 0 && !O.e(bArr, iT2, iT2 + i13)) {
                            throw C0255f.b();
                        }
                        unsafe.putObject(obj, j3, new String(bArr, iT2, i13, AbstractC0243d.f5546a));
                        iT2 += i13;
                    }
                    unsafe.putInt(obj, j5, i8);
                    return iT2;
                }
                break;
            case 60:
                if (i9 == 2) {
                    int iE = AbstractC0332s.E(p(i12), bArr, i5, i6, bVar);
                    Object object = unsafe.getInt(obj, j5) == i8 ? unsafe.getObject(obj, j3) : null;
                    if (object == null) {
                        unsafe.putObject(obj, j3, bVar.f1035c);
                    } else {
                        unsafe.putObject(obj, j3, AbstractC0243d.b(object, bVar.f1035c));
                    }
                    unsafe.putInt(obj, j5, i8);
                    return iE;
                }
                break;
            case 61:
                if (i9 == 2) {
                    int iA = AbstractC0332s.a(bArr, i5, bVar);
                    unsafe.putObject(obj, j3, bVar.f1035c);
                    unsafe.putInt(obj, j5, i8);
                    return iA;
                }
                break;
            case 63:
                if (i9 == 0) {
                    int iT3 = AbstractC0332s.T(bArr, i5, bVar);
                    int i14 = bVar.f1033a;
                    o(i12);
                    unsafe.putObject(obj, j3, Integer.valueOf(i14));
                    unsafe.putInt(obj, j5, i8);
                    return iT3;
                }
                break;
            case 66:
                if (i9 == 0) {
                    int iT4 = AbstractC0332s.T(bArr, i5, bVar);
                    unsafe.putObject(obj, j3, Integer.valueOf(a5.k(bVar.f1033a)));
                    unsafe.putInt(obj, j5, i8);
                    return iT4;
                }
                break;
            case 67:
                if (i9 == 0) {
                    int iW3 = AbstractC0332s.W(bArr, i5, bVar);
                    unsafe.putObject(obj, j3, Long.valueOf(a5.l(bVar.f1034b)));
                    unsafe.putInt(obj, j5, i8);
                    return iW3;
                }
                break;
            case 68:
                if (i9 == 3) {
                    int iY = AbstractC0332s.y(p(i12), bArr, i5, i6, (i7 & (-8)) | 4, bVar);
                    Object object2 = unsafe.getInt(obj, j5) == i8 ? unsafe.getObject(obj, j3) : null;
                    if (object2 == null) {
                        unsafe.putObject(obj, j3, bVar.f1035c);
                    } else {
                        unsafe.putObject(obj, j3, AbstractC0243d.b(object2, bVar.f1035c));
                    }
                    unsafe.putInt(obj, j5, i8);
                    return iY;
                }
                break;
        }
        return i5;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:34:0x00a2. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:14:0x003f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void M(Object obj, byte[] bArr, int i5, int i6, b bVar) throws C0255f {
        int i7;
        int iU;
        int iK;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        Unsafe unsafe;
        Object obj2;
        int i13;
        int i14;
        int iW;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        C0338t c0338t = this;
        Object obj3 = obj;
        byte[] bArr2 = bArr;
        int i20 = i6;
        b bVar2 = bVar;
        Unsafe unsafe2 = n;
        int i21 = 0;
        int iS = i5;
        int i22 = 0;
        int i23 = 0;
        int i24 = -1;
        int i25 = 1048575;
        while (iS < i20) {
            int i26 = iS + 1;
            byte b3 = bArr2[iS];
            if (b3 < 0) {
                iU = AbstractC0332s.U(b3, bArr2, i26, bVar2);
                i7 = bVar2.f1033a;
            } else {
                i7 = b3;
                iU = i26;
            }
            int i27 = i7 >>> 3;
            int i28 = i7 & 7;
            int i29 = c0338t.f5721d;
            int i30 = c0338t.f5720c;
            if (i27 > i24) {
                iK = (i27 < i30 || i27 > i29) ? -1 : c0338t.k(i27, i22 / 3);
            } else if (i27 >= i30 && i27 <= i29) {
                iK = c0338t.k(i27, i21);
            }
            int i31 = iK;
            if (i31 == -1) {
                i8 = i27;
                i9 = iU;
                i10 = i23;
                i11 = i21;
                i12 = i11;
                unsafe = unsafe2;
                obj2 = obj3;
            } else {
                int[] iArr = c0338t.f5718a;
                int i32 = iArr[i31 + 1];
                int iL = l(i32);
                int i33 = iU;
                long j3 = i32 & 1048575;
                if (iL <= 17) {
                    int i34 = iArr[i31 + 2];
                    int i35 = 1 << (i34 >>> 20);
                    int i36 = i34 & 1048575;
                    if (i36 != i25) {
                        if (i25 != 1048575) {
                            unsafe2.putInt(obj3, i25, i23);
                            i17 = i36;
                        } else {
                            i17 = i36;
                        }
                        if (i17 != 1048575) {
                            i23 = unsafe2.getInt(obj3, i17);
                        }
                        i13 = i17;
                    } else {
                        i13 = i25;
                    }
                    int i37 = i23;
                    switch (iL) {
                        case 0:
                            i14 = i33;
                            i8 = i27;
                            i20 = i6;
                            if (i28 != 1) {
                                i10 = i37;
                                i9 = i14;
                                unsafe = unsafe2;
                                i12 = i31;
                                obj2 = obj3;
                                i25 = i13;
                                i11 = 0;
                                break;
                            } else {
                                L.n(obj3, j3, Double.longBitsToDouble(AbstractC0332s.X(i14, bArr2)));
                                iS = i14 + 8;
                                i23 = i37 | i35;
                                i22 = i31;
                                i24 = i8;
                                i25 = i13;
                                i21 = 0;
                                break;
                            }
                        case 1:
                            i14 = i33;
                            i8 = i27;
                            i20 = i6;
                            if (i28 != 5) {
                                i10 = i37;
                                i9 = i14;
                                unsafe = unsafe2;
                                i12 = i31;
                                obj2 = obj3;
                                i25 = i13;
                                i11 = 0;
                                break;
                            } else {
                                L.o(obj3, j3, Float.intBitsToFloat(AbstractC0332s.o(i14, bArr2)));
                                iS = i14 + 4;
                                i23 = i37 | i35;
                                i22 = i31;
                                i24 = i8;
                                i25 = i13;
                                i21 = 0;
                                break;
                            }
                        case 2:
                        case 3:
                            i14 = i33;
                            i8 = i27;
                            i20 = i6;
                            if (i28 != 0) {
                                i10 = i37;
                                i9 = i14;
                                unsafe = unsafe2;
                                i12 = i31;
                                obj2 = obj3;
                                i25 = i13;
                                i11 = 0;
                                break;
                            } else {
                                iW = AbstractC0332s.W(bArr2, i14, bVar2);
                                unsafe2.putLong(obj, j3, bVar2.f1034b);
                                i23 = i37 | i35;
                                iS = iW;
                                i22 = i31;
                                i24 = i8;
                                i25 = i13;
                                i21 = 0;
                                break;
                            }
                        case 4:
                        case 11:
                            i14 = i33;
                            i8 = i27;
                            i20 = i6;
                            if (i28 != 0) {
                                i10 = i37;
                                i9 = i14;
                                unsafe = unsafe2;
                                i12 = i31;
                                obj2 = obj3;
                                i25 = i13;
                                i11 = 0;
                                break;
                            } else {
                                iS = AbstractC0332s.T(bArr2, i14, bVar2);
                                unsafe2.putInt(obj3, j3, bVar2.f1033a);
                                i23 = i37 | i35;
                                i22 = i31;
                                i24 = i8;
                                i25 = i13;
                                i21 = 0;
                                break;
                            }
                        case 5:
                        case 14:
                            i15 = i33;
                            i8 = i27;
                            i20 = i6;
                            if (i28 != 1) {
                                i14 = i15;
                                i10 = i37;
                                i9 = i14;
                                unsafe = unsafe2;
                                i12 = i31;
                                obj2 = obj3;
                                i25 = i13;
                                i11 = 0;
                                break;
                            } else {
                                i14 = i15;
                                unsafe2.putLong(obj, j3, AbstractC0332s.X(i15, bArr2));
                                iS = i14 + 8;
                                i23 = i37 | i35;
                                i22 = i31;
                                i24 = i8;
                                i25 = i13;
                                i21 = 0;
                                break;
                            }
                        case 6:
                        case 13:
                            i15 = i33;
                            i8 = i27;
                            i20 = i6;
                            if (i28 != 5) {
                                i14 = i15;
                                i10 = i37;
                                i9 = i14;
                                unsafe = unsafe2;
                                i12 = i31;
                                obj2 = obj3;
                                i25 = i13;
                                i11 = 0;
                                break;
                            } else {
                                unsafe2.putInt(obj3, j3, AbstractC0332s.o(i15, bArr2));
                                iS = i15 + 4;
                                i23 = i37 | i35;
                                i22 = i31;
                                i24 = i8;
                                i25 = i13;
                                i21 = 0;
                                break;
                            }
                        case 7:
                            i15 = i33;
                            i8 = i27;
                            i20 = i6;
                            if (i28 != 0) {
                                i14 = i15;
                                i10 = i37;
                                i9 = i14;
                                unsafe = unsafe2;
                                i12 = i31;
                                obj2 = obj3;
                                i25 = i13;
                                i11 = 0;
                                break;
                            } else {
                                iS = AbstractC0332s.W(bArr2, i15, bVar2);
                                L.l(obj3, j3, bVar2.f1034b != 0);
                                i23 = i37 | i35;
                                i22 = i31;
                                i24 = i8;
                                i25 = i13;
                                i21 = 0;
                                break;
                            }
                        case 8:
                            i15 = i33;
                            i8 = i27;
                            i20 = i6;
                            if (i28 != 2) {
                                i14 = i15;
                                i10 = i37;
                                i9 = i14;
                                unsafe = unsafe2;
                                i12 = i31;
                                obj2 = obj3;
                                i25 = i13;
                                i11 = 0;
                                break;
                            } else {
                                iS = (i32 & 536870912) == 0 ? AbstractC0332s.P(bArr2, i15, bVar2) : AbstractC0332s.R(bArr2, i15, bVar2);
                                unsafe2.putObject(obj3, j3, bVar2.f1035c);
                                i23 = i37 | i35;
                                i22 = i31;
                                i24 = i8;
                                i25 = i13;
                                i21 = 0;
                                break;
                            }
                        case 9:
                            i15 = i33;
                            i8 = i27;
                            if (i28 != 2) {
                                i14 = i15;
                                i10 = i37;
                                i9 = i14;
                                unsafe = unsafe2;
                                i12 = i31;
                                obj2 = obj3;
                                i25 = i13;
                                i11 = 0;
                                break;
                            } else {
                                i20 = i6;
                                iS = AbstractC0332s.E(c0338t.p(i31), bArr2, i15, i20, bVar2);
                                Object object = unsafe2.getObject(obj3, j3);
                                if (object == null) {
                                    unsafe2.putObject(obj3, j3, bVar2.f1035c);
                                } else {
                                    unsafe2.putObject(obj3, j3, AbstractC0243d.b(object, bVar2.f1035c));
                                }
                                i23 = i37 | i35;
                                i22 = i31;
                                i24 = i8;
                                i25 = i13;
                                i21 = 0;
                                break;
                            }
                        case 10:
                            i16 = i33;
                            i8 = i27;
                            if (i28 != 2) {
                                i14 = i16;
                                i10 = i37;
                                i9 = i14;
                                unsafe = unsafe2;
                                i12 = i31;
                                obj2 = obj3;
                                i25 = i13;
                                i11 = 0;
                                break;
                            } else {
                                iS = AbstractC0332s.a(bArr2, i16, bVar2);
                                unsafe2.putObject(obj3, j3, bVar2.f1035c);
                                i23 = i37 | i35;
                                i20 = i6;
                                i22 = i31;
                                i24 = i8;
                                i25 = i13;
                                i21 = 0;
                                break;
                            }
                        case 12:
                            i16 = i33;
                            i8 = i27;
                            if (i28 != 0) {
                                i14 = i16;
                                i10 = i37;
                                i9 = i14;
                                unsafe = unsafe2;
                                i12 = i31;
                                obj2 = obj3;
                                i25 = i13;
                                i11 = 0;
                                break;
                            } else {
                                iS = AbstractC0332s.T(bArr2, i16, bVar2);
                                unsafe2.putInt(obj3, j3, bVar2.f1033a);
                                i23 = i37 | i35;
                                i20 = i6;
                                i22 = i31;
                                i24 = i8;
                                i25 = i13;
                                i21 = 0;
                                break;
                            }
                        case 15:
                            i16 = i33;
                            i8 = i27;
                            if (i28 != 0) {
                                i14 = i16;
                                i10 = i37;
                                i9 = i14;
                                unsafe = unsafe2;
                                i12 = i31;
                                obj2 = obj3;
                                i25 = i13;
                                i11 = 0;
                                break;
                            } else {
                                iS = AbstractC0332s.T(bArr2, i16, bVar2);
                                unsafe2.putInt(obj3, j3, a5.k(bVar2.f1033a));
                                i23 = i37 | i35;
                                i20 = i6;
                                i22 = i31;
                                i24 = i8;
                                i25 = i13;
                                i21 = 0;
                                break;
                            }
                        case 16:
                            if (i28 != 0) {
                                i16 = i33;
                                i8 = i27;
                                i14 = i16;
                                i10 = i37;
                                i9 = i14;
                                unsafe = unsafe2;
                                i12 = i31;
                                obj2 = obj3;
                                i25 = i13;
                                i11 = 0;
                                break;
                            } else {
                                iW = AbstractC0332s.W(bArr2, i33, bVar2);
                                i8 = i27;
                                unsafe2.putLong(obj, j3, a5.l(bVar2.f1034b));
                                i23 = i37 | i35;
                                i20 = i6;
                                iS = iW;
                                i22 = i31;
                                i24 = i8;
                                i25 = i13;
                                i21 = 0;
                                break;
                            }
                        default:
                            i14 = i33;
                            i8 = i27;
                            i10 = i37;
                            i9 = i14;
                            unsafe = unsafe2;
                            i12 = i31;
                            obj2 = obj3;
                            i25 = i13;
                            i11 = 0;
                            break;
                    }
                } else {
                    i8 = i27;
                    if (iL != 27) {
                        int i38 = i25;
                        int i39 = i23;
                        if (iL <= 49) {
                            i18 = i38;
                            i10 = i39;
                            i11 = 0;
                            unsafe = unsafe2;
                            i12 = i31;
                            iS = N(obj, bArr, i33, i6, i7, i8, i28, i31, i32, iL, j3, bVar);
                            if (iS != i33) {
                                c0338t = this;
                                obj3 = obj;
                                bArr2 = bArr;
                                i20 = i6;
                                bVar2 = bVar;
                                i21 = 0;
                                i24 = i8;
                                i25 = i18;
                                i23 = i10;
                                i22 = i12;
                                unsafe2 = unsafe;
                            } else {
                                obj2 = obj;
                                i9 = iS;
                            }
                        } else {
                            i18 = i38;
                            i10 = i39;
                            i19 = i33;
                            unsafe = unsafe2;
                            i12 = i31;
                            i11 = 0;
                            if (iL != 50) {
                                obj2 = obj;
                                iS = L(obj, bArr, i19, i6, i7, i8, i28, i32, iL, j3, i12, bVar);
                                if (iS != i19) {
                                    bArr2 = bArr;
                                    i20 = i6;
                                    bVar2 = bVar;
                                    obj3 = obj2;
                                    i22 = i12;
                                    i21 = 0;
                                    i24 = i8;
                                    i25 = i18;
                                    i23 = i10;
                                    unsafe2 = unsafe;
                                    c0338t = this;
                                } else {
                                    i9 = iS;
                                    i12 = i12;
                                }
                            } else if (i28 == 2) {
                                K(i12, j3, obj);
                                throw null;
                            }
                        }
                        i25 = i18;
                    } else if (i28 == 2) {
                        V4 v4 = (V4) ((InterfaceC0237c) unsafe2.getObject(obj3, j3));
                        boolean zM = v4.m();
                        InterfaceC0237c interfaceC0237c = v4;
                        if (!zM) {
                            int size = v4.size();
                            InterfaceC0237c interfaceC0237cD = v4.d(size == 0 ? 10 : size + size);
                            unsafe2.putObject(obj3, j3, interfaceC0237cD);
                            interfaceC0237c = interfaceC0237cD;
                        }
                        iS = AbstractC0332s.K(c0338t.p(i31), i7, bArr, i33, i6, interfaceC0237c, bVar);
                        i23 = i23;
                        i25 = i25;
                        i22 = i31;
                        i24 = i8;
                        i21 = 0;
                    } else {
                        i10 = i23;
                        i18 = i25;
                        i19 = i33;
                        unsafe = unsafe2;
                        i12 = i31;
                        i11 = 0;
                    }
                    i9 = i19;
                    i25 = i18;
                    obj2 = obj;
                }
            }
            m5 m5Var = (m5) obj2;
            D dB = m5Var.zzc;
            if (dB == D.f) {
                dB = D.b();
                m5Var.zzc = dB;
            }
            iS = AbstractC0332s.S(i7, bArr, i9, i6, dB, bVar);
            bArr2 = bArr;
            i20 = i6;
            bVar2 = bVar;
            obj3 = obj2;
            i21 = i11;
            i24 = i8;
            i23 = i10;
            i22 = i12;
            unsafe2 = unsafe;
            c0338t = this;
        }
        int i40 = i23;
        int i41 = i25;
        Unsafe unsafe3 = unsafe2;
        Object obj4 = obj3;
        if (i41 != 1048575) {
            unsafe3.putInt(obj4, i41, i40);
        }
        if (iS != i6) {
            throw C0255f.d();
        }
    }

    public final int N(Object obj, byte[] bArr, int i5, int i6, int i7, int i8, int i9, int i10, long j3, int i11, long j5, b bVar) throws C0255f {
        int iT;
        Unsafe unsafe = n;
        V4 v4 = (V4) ((InterfaceC0237c) unsafe.getObject(obj, j5));
        boolean zM = v4.m();
        InterfaceC0237c interfaceC0237c = v4;
        if (!zM) {
            int size = v4.size();
            InterfaceC0237c interfaceC0237cD = v4.d(size == 0 ? 10 : size + size);
            unsafe.putObject(obj, j5, interfaceC0237cD);
            interfaceC0237c = interfaceC0237cD;
        }
        switch (i11) {
            case 18:
            case 35:
                if (i9 == 2) {
                    f.A(interfaceC0237c);
                    int iT2 = AbstractC0332s.T(bArr, i5, bVar);
                    int i12 = bVar.f1033a + iT2;
                    if (iT2 < i12) {
                        Double.longBitsToDouble(AbstractC0332s.X(iT2, bArr));
                        throw null;
                    }
                    if (iT2 == i12) {
                        return iT2;
                    }
                    throw C0255f.e();
                }
                if (i9 == 1) {
                    f.A(interfaceC0237c);
                    Double.longBitsToDouble(AbstractC0332s.X(i5, bArr));
                    throw null;
                }
                break;
            case 19:
            case 36:
                if (i9 == 2) {
                    f.A(interfaceC0237c);
                    int iT3 = AbstractC0332s.T(bArr, i5, bVar);
                    int i13 = bVar.f1033a + iT3;
                    if (iT3 < i13) {
                        Float.intBitsToFloat(AbstractC0332s.o(iT3, bArr));
                        throw null;
                    }
                    if (iT3 == i13) {
                        return iT3;
                    }
                    throw C0255f.e();
                }
                if (i9 == 5) {
                    f.A(interfaceC0237c);
                    Float.intBitsToFloat(AbstractC0332s.o(i5, bArr));
                    throw null;
                }
                break;
            case 20:
            case 21:
            case 37:
            case 38:
                if (i9 == 2) {
                    f.A(interfaceC0237c);
                    int iT4 = AbstractC0332s.T(bArr, i5, bVar);
                    int i14 = bVar.f1033a + iT4;
                    if (iT4 < i14) {
                        AbstractC0332s.W(bArr, iT4, bVar);
                        throw null;
                    }
                    if (iT4 == i14) {
                        return iT4;
                    }
                    throw C0255f.e();
                }
                if (i9 == 0) {
                    f.A(interfaceC0237c);
                    AbstractC0332s.W(bArr, i5, bVar);
                    throw null;
                }
                break;
            case 22:
            case 29:
            case 39:
            case 43:
                if (i9 == 2) {
                    return AbstractC0332s.N(bArr, i5, interfaceC0237c, bVar);
                }
                if (i9 == 0) {
                    AbstractC0332s.V(bArr, i5, interfaceC0237c, bVar);
                    throw null;
                }
                break;
            case 23:
            case 32:
            case 40:
            case 46:
                if (i9 == 2) {
                    f.A(interfaceC0237c);
                    int iT5 = AbstractC0332s.T(bArr, i5, bVar);
                    int i15 = bVar.f1033a + iT5;
                    if (iT5 < i15) {
                        AbstractC0332s.X(iT5, bArr);
                        throw null;
                    }
                    if (iT5 == i15) {
                        return iT5;
                    }
                    throw C0255f.e();
                }
                if (i9 == 1) {
                    f.A(interfaceC0237c);
                    AbstractC0332s.X(i5, bArr);
                    throw null;
                }
                break;
            case 24:
            case 31:
            case 41:
            case 45:
                if (i9 == 2) {
                    f.A(interfaceC0237c);
                    int iT6 = AbstractC0332s.T(bArr, i5, bVar);
                    int i16 = bVar.f1033a + iT6;
                    if (iT6 < i16) {
                        AbstractC0332s.o(iT6, bArr);
                        throw null;
                    }
                    if (iT6 == i16) {
                        return iT6;
                    }
                    throw C0255f.e();
                }
                if (i9 == 5) {
                    f.A(interfaceC0237c);
                    AbstractC0332s.o(i5, bArr);
                    throw null;
                }
                break;
            case 25:
            case 42:
                if (i9 == 2) {
                    f.A(interfaceC0237c);
                    int iT7 = AbstractC0332s.T(bArr, i5, bVar);
                    int i17 = bVar.f1033a + iT7;
                    if (iT7 < i17) {
                        AbstractC0332s.W(bArr, iT7, bVar);
                        throw null;
                    }
                    if (iT7 == i17) {
                        return iT7;
                    }
                    throw C0255f.e();
                }
                if (i9 == 0) {
                    f.A(interfaceC0237c);
                    AbstractC0332s.W(bArr, i5, bVar);
                    throw null;
                }
                break;
            case 26:
                if (i9 == 2) {
                    if ((j3 & 536870912) == 0) {
                        int iT8 = AbstractC0332s.T(bArr, i5, bVar);
                        int i18 = bVar.f1033a;
                        if (i18 < 0) {
                            throw C0255f.c();
                        }
                        if (i18 == 0) {
                            interfaceC0237c.add("");
                        } else {
                            interfaceC0237c.add(new String(bArr, iT8, i18, AbstractC0243d.f5546a));
                            iT8 += i18;
                        }
                        while (iT8 < i6) {
                            int iT9 = AbstractC0332s.T(bArr, iT8, bVar);
                            if (i7 != bVar.f1033a) {
                                return iT8;
                            }
                            iT8 = AbstractC0332s.T(bArr, iT9, bVar);
                            int i19 = bVar.f1033a;
                            if (i19 < 0) {
                                throw C0255f.c();
                            }
                            if (i19 == 0) {
                                interfaceC0237c.add("");
                            } else {
                                interfaceC0237c.add(new String(bArr, iT8, i19, AbstractC0243d.f5546a));
                                iT8 += i19;
                            }
                        }
                        return iT8;
                    }
                    int iT10 = AbstractC0332s.T(bArr, i5, bVar);
                    int i20 = bVar.f1033a;
                    if (i20 < 0) {
                        throw C0255f.c();
                    }
                    if (i20 == 0) {
                        interfaceC0237c.add("");
                        iT = iT10;
                    } else {
                        iT = iT10 + i20;
                        if (!O.e(bArr, iT10, iT)) {
                            throw C0255f.b();
                        }
                        interfaceC0237c.add(new String(bArr, iT10, i20, AbstractC0243d.f5546a));
                    }
                    while (iT < i6) {
                        int iT11 = AbstractC0332s.T(bArr, iT, bVar);
                        if (i7 != bVar.f1033a) {
                            return iT;
                        }
                        iT = AbstractC0332s.T(bArr, iT11, bVar);
                        int i21 = bVar.f1033a;
                        if (i21 < 0) {
                            throw C0255f.c();
                        }
                        if (i21 == 0) {
                            interfaceC0237c.add("");
                        } else {
                            int i22 = iT + i21;
                            if (!O.e(bArr, iT, i22)) {
                                throw C0255f.b();
                            }
                            interfaceC0237c.add(new String(bArr, iT, i21, AbstractC0243d.f5546a));
                            iT = i22;
                        }
                    }
                    return iT;
                }
                break;
            case 27:
                if (i9 == 2) {
                    return AbstractC0332s.K(p(i10), i7, bArr, i5, i6, interfaceC0237c, bVar);
                }
                break;
            case 28:
                if (i9 == 2) {
                    int iT12 = AbstractC0332s.T(bArr, i5, bVar);
                    int i23 = bVar.f1033a;
                    if (i23 < 0) {
                        throw C0255f.c();
                    }
                    if (i23 > bArr.length - iT12) {
                        throw C0255f.e();
                    }
                    if (i23 == 0) {
                        interfaceC0237c.add(Z4.f5499d);
                    } else {
                        interfaceC0237c.add(Z4.q(bArr, iT12, i23));
                        iT12 += i23;
                    }
                    while (iT12 < i6) {
                        int iT13 = AbstractC0332s.T(bArr, iT12, bVar);
                        if (i7 != bVar.f1033a) {
                            return iT12;
                        }
                        iT12 = AbstractC0332s.T(bArr, iT13, bVar);
                        int i24 = bVar.f1033a;
                        if (i24 < 0) {
                            throw C0255f.c();
                        }
                        if (i24 > bArr.length - iT12) {
                            throw C0255f.e();
                        }
                        if (i24 == 0) {
                            interfaceC0237c.add(Z4.f5499d);
                        } else {
                            interfaceC0237c.add(Z4.q(bArr, iT12, i24));
                            iT12 += i24;
                        }
                    }
                    return iT12;
                }
                break;
            case 30:
            case 44:
                if (i9 == 2) {
                    int iN = AbstractC0332s.N(bArr, i5, interfaceC0237c, bVar);
                    m5 m5Var = (m5) obj;
                    D d2 = m5Var.zzc;
                    D d5 = d2 != D.f ? d2 : null;
                    o(i10);
                    B.a(i8, interfaceC0237c, d5, this.f5728l);
                    if (d5 == null) {
                        return iN;
                    }
                    m5Var.zzc = d5;
                    return iN;
                }
                if (i9 == 0) {
                    AbstractC0332s.V(bArr, i5, interfaceC0237c, bVar);
                    throw null;
                }
                break;
            case 33:
            case 47:
                if (i9 == 2) {
                    f.A(interfaceC0237c);
                    int iT14 = AbstractC0332s.T(bArr, i5, bVar);
                    int i25 = bVar.f1033a + iT14;
                    if (iT14 < i25) {
                        AbstractC0332s.T(bArr, iT14, bVar);
                        throw null;
                    }
                    if (iT14 == i25) {
                        return iT14;
                    }
                    throw C0255f.e();
                }
                if (i9 == 0) {
                    f.A(interfaceC0237c);
                    AbstractC0332s.T(bArr, i5, bVar);
                    throw null;
                }
                break;
            case 34:
            case 48:
                if (i9 == 2) {
                    f.A(interfaceC0237c);
                    int iT15 = AbstractC0332s.T(bArr, i5, bVar);
                    int i26 = bVar.f1033a + iT15;
                    if (iT15 < i26) {
                        AbstractC0332s.W(bArr, iT15, bVar);
                        throw null;
                    }
                    if (iT15 == i26) {
                        return iT15;
                    }
                    throw C0255f.e();
                }
                if (i9 == 0) {
                    f.A(interfaceC0237c);
                    AbstractC0332s.W(bArr, i5, bVar);
                    throw null;
                }
                break;
            default:
                if (i9 == 3) {
                    A aP = p(i10);
                    int i27 = (i7 & (-8)) | 4;
                    int iY = AbstractC0332s.y(aP, bArr, i5, i6, i27, bVar);
                    interfaceC0237c.add(bVar.f1035c);
                    while (iY < i6) {
                        int iT16 = AbstractC0332s.T(bArr, iY, bVar);
                        if (i7 != bVar.f1033a) {
                            return iY;
                        }
                        iY = AbstractC0332s.y(aP, bArr, iT16, i6, i27, bVar);
                        interfaceC0237c.add(bVar.f1035c);
                    }
                    return iY;
                }
                break;
        }
        return i5;
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.A
    public final Object a() {
        return ((m5) this.f5722e).h(4);
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.A
    public final void b(Object obj) {
        int[] iArr;
        int i5;
        int i6 = this.f5725i;
        while (true) {
            iArr = this.f5724h;
            i5 = this.f5726j;
            if (i6 >= i5) {
                break;
            }
            long jM = m(iArr[i6]) & 1048575;
            Object objM = L.f5414c.m(jM, obj);
            if (objM != null) {
                ((C0309o) objM).f5664c = false;
                L.r(jM, obj, objM);
            }
            i6++;
        }
        int length = iArr.length;
        while (i5 < length) {
            this.f5727k.b(iArr[i5], obj);
            i5++;
        }
        this.f5728l.getClass();
        ((m5) obj).zzc.f5354e = false;
    }

    /* JADX WARN: Removed duplicated region for block: B:159:0x06bd A[Catch: all -> 0x0526, TryCatch #2 {all -> 0x0526, blocks: (B:157:0x06b8, B:159:0x06bd, B:161:0x06c4, B:163:0x06cb, B:128:0x051a, B:133:0x052c, B:134:0x0546, B:135:0x055c, B:136:0x0572, B:137:0x058b, B:138:0x05a1, B:139:0x05b3, B:141:0x05bc, B:142:0x05d8, B:143:0x05ef, B:144:0x05fa, B:148:0x060f, B:149:0x0617, B:150:0x062d, B:151:0x0643, B:152:0x0658, B:153:0x066d, B:154:0x0682, B:155:0x069b), top: B:185:0x06b8 }] */
    /* JADX WARN: Removed duplicated region for block: B:175:0x06ec A[LOOP:3: B:174:0x06ea->B:175:0x06ec, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:177:0x06f6  */
    /* JADX WARN: Removed duplicated region for block: B:197:0x06d1 A[SYNTHETIC] */
    @Override // com.google.android.gms.internal.p000firebaseauthapi.A
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void c(Object obj, b5 b5Var, g5 g5Var) throws Throwable {
        int i5;
        E e5;
        int i6;
        int iL;
        a5 a5Var;
        AbstractC0291l abstractC0291l;
        int[] iArr = this.f5724h;
        int i7 = this.f5726j;
        int i8 = this.f5725i;
        g5Var.getClass();
        E e6 = this.f5728l;
        D dB = null;
        while (true) {
            try {
                int iU = b5Var.u();
                int iK = (iU < this.f5720c || iU > this.f5721d) ? -1 : k(iU, 0);
                D d2 = D.f;
                if (iK >= 0) {
                    int iM = m(iK);
                    try {
                        iL = l(iM);
                        a5Var = (a5) b5Var.f5524d;
                        abstractC0291l = this.f5727k;
                    } catch (C0249e unused) {
                        i5 = i8;
                    }
                    switch (iL) {
                        case 0:
                            i5 = i8;
                            e5 = e6;
                            b5Var.t(1);
                            L.n(obj, iM & 1048575, Double.longBitsToDouble(a5Var.g()));
                            w(iK, obj);
                            e6 = e5;
                            i8 = i5;
                            break;
                        case 1:
                            i5 = i8;
                            e5 = e6;
                            b5Var.t(5);
                            L.o(obj, iM & 1048575, Float.intBitsToFloat(a5Var.d()));
                            w(iK, obj);
                            e6 = e5;
                            i8 = i5;
                            break;
                        case 2:
                            i5 = i8;
                            e5 = e6;
                            b5Var.t(0);
                            L.q(obj, iM & 1048575, a5Var.h());
                            w(iK, obj);
                            e6 = e5;
                            i8 = i5;
                            break;
                        case 3:
                            i5 = i8;
                            e5 = e6;
                            b5Var.t(0);
                            L.q(obj, iM & 1048575, a5Var.h());
                            w(iK, obj);
                            e6 = e5;
                            i8 = i5;
                            break;
                        case 4:
                            i5 = i8;
                            e5 = e6;
                            b5Var.t(0);
                            L.p(a5Var.e(), iM & 1048575, obj);
                            w(iK, obj);
                            e6 = e5;
                            i8 = i5;
                            break;
                        case 5:
                            i5 = i8;
                            e5 = e6;
                            b5Var.t(1);
                            L.q(obj, iM & 1048575, a5Var.g());
                            w(iK, obj);
                            e6 = e5;
                            i8 = i5;
                            break;
                        case 6:
                            i5 = i8;
                            e5 = e6;
                            b5Var.t(5);
                            L.p(a5Var.d(), iM & 1048575, obj);
                            w(iK, obj);
                            e6 = e5;
                            i8 = i5;
                            break;
                        case 7:
                            i5 = i8;
                            e5 = e6;
                            long j3 = iM & 1048575;
                            b5Var.t(0);
                            L.l(obj, j3, a5Var.h() != 0);
                            w(iK, obj);
                            e6 = e5;
                            i8 = i5;
                            break;
                        case 8:
                            i5 = i8;
                            e5 = e6;
                            v(obj, iM, b5Var);
                            w(iK, obj);
                            e6 = e5;
                            i8 = i5;
                            break;
                        case 9:
                            i5 = i8;
                            e5 = e6;
                            if (z(iK, obj)) {
                                long j5 = iM & 1048575;
                                Object objI = L.i(j5, obj);
                                A aP = p(iK);
                                b5Var.t(2);
                                L.r(j5, obj, AbstractC0243d.b(objI, b5Var.r(aP, g5Var)));
                            } else {
                                A aP2 = p(iK);
                                b5Var.t(2);
                                L.r(iM & 1048575, obj, b5Var.r(aP2, g5Var));
                                w(iK, obj);
                            }
                            e6 = e5;
                            i8 = i5;
                            break;
                        case 10:
                            i5 = i8;
                            e5 = e6;
                            L.r(iM & 1048575, obj, b5Var.v());
                            w(iK, obj);
                            e6 = e5;
                            i8 = i5;
                            break;
                        case 11:
                            i5 = i8;
                            e5 = e6;
                            b5Var.t(0);
                            L.p(a5Var.e(), iM & 1048575, obj);
                            w(iK, obj);
                            e6 = e5;
                            i8 = i5;
                            break;
                        case 12:
                            i5 = i8;
                            e5 = e6;
                            b5Var.t(0);
                            int iE = a5Var.e();
                            o(iK);
                            L.p(iE, iM & 1048575, obj);
                            w(iK, obj);
                            e6 = e5;
                            i8 = i5;
                            break;
                        case 13:
                            i5 = i8;
                            e5 = e6;
                            b5Var.t(5);
                            L.p(a5Var.d(), iM & 1048575, obj);
                            w(iK, obj);
                            e6 = e5;
                            i8 = i5;
                            break;
                        case 14:
                            i5 = i8;
                            e5 = e6;
                            b5Var.t(1);
                            L.q(obj, iM & 1048575, a5Var.g());
                            w(iK, obj);
                            e6 = e5;
                            i8 = i5;
                            break;
                        case 15:
                            i5 = i8;
                            e5 = e6;
                            b5Var.t(0);
                            L.p(a5.k(a5Var.e()), iM & 1048575, obj);
                            w(iK, obj);
                            e6 = e5;
                            i8 = i5;
                            break;
                        case 16:
                            i5 = i8;
                            long j6 = iM & 1048575;
                            b5Var.t(0);
                            e5 = e6;
                            try {
                                L.q(obj, j6, a5.l(a5Var.h()));
                                w(iK, obj);
                            } catch (C0249e unused2) {
                                try {
                                    e5.getClass();
                                    if (dB == null) {
                                        m5 m5Var = (m5) obj;
                                        D dB2 = m5Var.zzc;
                                        if (dB2 == d2) {
                                            dB2 = D.b();
                                            m5Var.zzc = dB2;
                                        }
                                        dB = dB2;
                                    }
                                    if (!E.c(dB, b5Var)) {
                                        for (int i9 = i5; i9 < i7; i9++) {
                                            q(obj, iArr[i9], dB);
                                        }
                                        if (dB != null) {
                                            ((m5) obj).zzc = dB;
                                            return;
                                        }
                                        return;
                                    }
                                    e6 = e5;
                                    i8 = i5;
                                } catch (Throwable th) {
                                    th = th;
                                    for (i6 = i5; i6 < i7; i6++) {
                                        q(obj, iArr[i6], dB);
                                    }
                                    if (dB != null) {
                                        e5.getClass();
                                        ((m5) obj).zzc = dB;
                                    }
                                    throw th;
                                }
                            }
                            e6 = e5;
                            i8 = i5;
                        case 17:
                            i5 = i8;
                            if (z(iK, obj)) {
                                long j7 = iM & 1048575;
                                Object objI2 = L.i(j7, obj);
                                A aP3 = p(iK);
                                b5Var.t(3);
                                L.r(j7, obj, AbstractC0243d.b(objI2, b5Var.q(aP3, g5Var)));
                            } else {
                                A aP4 = p(iK);
                                b5Var.t(3);
                                L.r(iM & 1048575, obj, b5Var.q(aP4, g5Var));
                                w(iK, obj);
                            }
                            e5 = e6;
                            e6 = e5;
                            i8 = i5;
                            break;
                        case 18:
                            i5 = i8;
                            b5Var.A(abstractC0291l.a(iM & 1048575, obj));
                            e5 = e6;
                            e6 = e5;
                            i8 = i5;
                            break;
                        case 19:
                            i5 = i8;
                            b5Var.e(abstractC0291l.a(iM & 1048575, obj));
                            e5 = e6;
                            e6 = e5;
                            i8 = i5;
                            break;
                        case 20:
                            i5 = i8;
                            b5Var.h(abstractC0291l.a(iM & 1048575, obj));
                            e5 = e6;
                            e6 = e5;
                            i8 = i5;
                            break;
                        case 21:
                            i5 = i8;
                            b5Var.p(abstractC0291l.a(iM & 1048575, obj));
                            e5 = e6;
                            e6 = e5;
                            i8 = i5;
                            break;
                        case 22:
                            i5 = i8;
                            b5Var.g(abstractC0291l.a(iM & 1048575, obj));
                            e5 = e6;
                            e6 = e5;
                            i8 = i5;
                            break;
                        case 23:
                            i5 = i8;
                            b5Var.d(abstractC0291l.a(iM & 1048575, obj));
                            e5 = e6;
                            e6 = e5;
                            i8 = i5;
                            break;
                        case 24:
                            i5 = i8;
                            b5Var.C(abstractC0291l.a(iM & 1048575, obj));
                            e5 = e6;
                            e6 = e5;
                            i8 = i5;
                            break;
                        case 25:
                            i5 = i8;
                            b5Var.y(abstractC0291l.a(iM & 1048575, obj));
                            e5 = e6;
                            e6 = e5;
                            i8 = i5;
                            break;
                        case 26:
                            i5 = i8;
                            if ((536870912 & iM) != 0) {
                                b5Var.n(abstractC0291l.a(iM & 1048575, obj), true);
                            } else {
                                b5Var.n(abstractC0291l.a(iM & 1048575, obj), false);
                            }
                            e5 = e6;
                            e6 = e5;
                            i8 = i5;
                            break;
                        case 27:
                            i5 = i8;
                            b5Var.i(abstractC0291l.a(iM & 1048575, obj), p(iK), g5Var);
                            e5 = e6;
                            e6 = e5;
                            i8 = i5;
                            break;
                        case 28:
                            i5 = i8;
                            b5Var.z(abstractC0291l.a(iM & 1048575, obj));
                            e5 = e6;
                            e6 = e5;
                            i8 = i5;
                            break;
                        case 29:
                            i5 = i8;
                            b5Var.o(abstractC0291l.a(iM & 1048575, obj));
                            e5 = e6;
                            e6 = e5;
                            i8 = i5;
                            break;
                        case 30:
                            i5 = i8;
                            List listA = abstractC0291l.a(iM & 1048575, obj);
                            b5Var.B(listA);
                            o(iK);
                            B.a(iU, listA, dB, e6);
                            e5 = e6;
                            e6 = e5;
                            i8 = i5;
                            break;
                        case 31:
                            i5 = i8;
                            b5Var.j(abstractC0291l.a(iM & 1048575, obj));
                            e5 = e6;
                            e6 = e5;
                            i8 = i5;
                            break;
                        case 32:
                            i5 = i8;
                            b5Var.k(abstractC0291l.a(iM & 1048575, obj));
                            e5 = e6;
                            e6 = e5;
                            i8 = i5;
                            break;
                        case 33:
                            i5 = i8;
                            b5Var.l(abstractC0291l.a(iM & 1048575, obj));
                            e5 = e6;
                            e6 = e5;
                            i8 = i5;
                            break;
                        case 34:
                            i5 = i8;
                            b5Var.m(abstractC0291l.a(iM & 1048575, obj));
                            e5 = e6;
                            e6 = e5;
                            i8 = i5;
                            break;
                        case 35:
                            i5 = i8;
                            b5Var.A(abstractC0291l.a(iM & 1048575, obj));
                            e5 = e6;
                            e6 = e5;
                            i8 = i5;
                            break;
                        case 36:
                            i5 = i8;
                            b5Var.e(abstractC0291l.a(iM & 1048575, obj));
                            e5 = e6;
                            e6 = e5;
                            i8 = i5;
                            break;
                        case 37:
                            i5 = i8;
                            b5Var.h(abstractC0291l.a(iM & 1048575, obj));
                            e5 = e6;
                            e6 = e5;
                            i8 = i5;
                            break;
                        case 38:
                            i5 = i8;
                            b5Var.p(abstractC0291l.a(iM & 1048575, obj));
                            e5 = e6;
                            e6 = e5;
                            i8 = i5;
                            break;
                        case 39:
                            i5 = i8;
                            b5Var.g(abstractC0291l.a(iM & 1048575, obj));
                            e5 = e6;
                            e6 = e5;
                            i8 = i5;
                            break;
                        case 40:
                            i5 = i8;
                            b5Var.d(abstractC0291l.a(iM & 1048575, obj));
                            e5 = e6;
                            e6 = e5;
                            i8 = i5;
                            break;
                        case 41:
                            i5 = i8;
                            b5Var.C(abstractC0291l.a(iM & 1048575, obj));
                            e5 = e6;
                            e6 = e5;
                            i8 = i5;
                            break;
                        case 42:
                            i5 = i8;
                            b5Var.y(abstractC0291l.a(iM & 1048575, obj));
                            e5 = e6;
                            e6 = e5;
                            i8 = i5;
                            break;
                        case 43:
                            i5 = i8;
                            b5Var.o(abstractC0291l.a(iM & 1048575, obj));
                            e5 = e6;
                            e6 = e5;
                            i8 = i5;
                            break;
                        case 44:
                            i5 = i8;
                            List listA2 = abstractC0291l.a(iM & 1048575, obj);
                            b5Var.B(listA2);
                            o(iK);
                            B.a(iU, listA2, dB, e6);
                            e5 = e6;
                            e6 = e5;
                            i8 = i5;
                            break;
                        case 45:
                            i5 = i8;
                            b5Var.j(abstractC0291l.a(iM & 1048575, obj));
                            e5 = e6;
                            e6 = e5;
                            i8 = i5;
                            break;
                        case 46:
                            i5 = i8;
                            b5Var.k(abstractC0291l.a(iM & 1048575, obj));
                            e5 = e6;
                            e6 = e5;
                            i8 = i5;
                            break;
                        case 47:
                            i5 = i8;
                            b5Var.l(abstractC0291l.a(iM & 1048575, obj));
                            e5 = e6;
                            e6 = e5;
                            i8 = i5;
                            break;
                        case 48:
                            i5 = i8;
                            b5Var.m(abstractC0291l.a(iM & 1048575, obj));
                            e5 = e6;
                            e6 = e5;
                            i8 = i5;
                            break;
                        case 49:
                            i5 = i8;
                            b5Var.f(abstractC0291l.a(iM & 1048575, obj), p(iK), g5Var);
                            e5 = e6;
                            e6 = e5;
                            i8 = i5;
                            break;
                        case 50:
                            i5 = i8;
                            Object objR = r(iK);
                            long jM = m(iK) & 1048575;
                            Object objI3 = L.i(jM, obj);
                            if (objI3 == null) {
                                objI3 = C0309o.a().b();
                                L.r(jM, obj, objI3);
                            } else if (C0315p.b(objI3)) {
                                Object objB = C0309o.a().b();
                                C0315p.c(objB, objI3);
                                L.r(jM, obj, objB);
                                objI3 = objB;
                            }
                            f.F(objR);
                            throw null;
                            break;
                        case 51:
                            i5 = i8;
                            b5Var.t(1);
                            L.r(iM & 1048575, obj, Double.valueOf(Double.longBitsToDouble(a5Var.g())));
                            x(iU, obj, iK);
                            e5 = e6;
                            e6 = e5;
                            i8 = i5;
                            break;
                        case 52:
                            i5 = i8;
                            b5Var.t(5);
                            L.r(iM & 1048575, obj, Float.valueOf(Float.intBitsToFloat(a5Var.d())));
                            x(iU, obj, iK);
                            e5 = e6;
                            e6 = e5;
                            i8 = i5;
                            break;
                        case 53:
                            i5 = i8;
                            b5Var.t(0);
                            L.r(iM & 1048575, obj, Long.valueOf(a5Var.h()));
                            x(iU, obj, iK);
                            e5 = e6;
                            e6 = e5;
                            i8 = i5;
                            break;
                        case 54:
                            i5 = i8;
                            b5Var.t(0);
                            L.r(iM & 1048575, obj, Long.valueOf(a5Var.h()));
                            x(iU, obj, iK);
                            e5 = e6;
                            e6 = e5;
                            i8 = i5;
                            break;
                        case 55:
                            i5 = i8;
                            b5Var.t(0);
                            L.r(iM & 1048575, obj, Integer.valueOf(a5Var.e()));
                            x(iU, obj, iK);
                            e5 = e6;
                            e6 = e5;
                            i8 = i5;
                            break;
                        case 56:
                            i5 = i8;
                            b5Var.t(1);
                            L.r(iM & 1048575, obj, Long.valueOf(a5Var.g()));
                            x(iU, obj, iK);
                            e5 = e6;
                            e6 = e5;
                            i8 = i5;
                            break;
                        case 57:
                            i5 = i8;
                            b5Var.t(5);
                            L.r(iM & 1048575, obj, Integer.valueOf(a5Var.d()));
                            x(iU, obj, iK);
                            e5 = e6;
                            e6 = e5;
                            i8 = i5;
                            break;
                        case 58:
                            i5 = i8;
                            long j8 = iM & 1048575;
                            b5Var.t(0);
                            L.r(j8, obj, Boolean.valueOf(a5Var.h() != 0));
                            x(iU, obj, iK);
                            e5 = e6;
                            e6 = e5;
                            i8 = i5;
                            break;
                        case 59:
                            i5 = i8;
                            v(obj, iM, b5Var);
                            x(iU, obj, iK);
                            e5 = e6;
                            e6 = e5;
                            i8 = i5;
                            break;
                        case 60:
                            if (B(iU, obj, iK)) {
                                long j9 = iM & 1048575;
                                Object objI4 = L.i(j9, obj);
                                A aP5 = p(iK);
                                i5 = i8;
                                try {
                                    b5Var.t(2);
                                    L.r(j9, obj, AbstractC0243d.b(objI4, b5Var.r(aP5, g5Var)));
                                } catch (C0249e unused3) {
                                    e5 = e6;
                                    e5.getClass();
                                    if (dB == null) {
                                    }
                                    if (!E.c(dB, b5Var)) {
                                    }
                                    e6 = e5;
                                    i8 = i5;
                                } catch (Throwable th2) {
                                    th = th2;
                                    e5 = e6;
                                    while (i6 < i7) {
                                    }
                                    if (dB != null) {
                                    }
                                    throw th;
                                }
                            } else {
                                i5 = i8;
                                A aP6 = p(iK);
                                b5Var.t(2);
                                L.r(iM & 1048575, obj, b5Var.r(aP6, g5Var));
                                w(iK, obj);
                            }
                            x(iU, obj, iK);
                            e5 = e6;
                            e6 = e5;
                            i8 = i5;
                            break;
                        case 61:
                            L.r(iM & 1048575, obj, b5Var.v());
                            x(iU, obj, iK);
                            i5 = i8;
                            e5 = e6;
                            e6 = e5;
                            i8 = i5;
                            break;
                        case 62:
                            b5Var.t(0);
                            L.r(iM & 1048575, obj, Integer.valueOf(a5Var.e()));
                            x(iU, obj, iK);
                            i5 = i8;
                            e5 = e6;
                            e6 = e5;
                            i8 = i5;
                            break;
                        case 63:
                            b5Var.t(0);
                            int iE2 = a5Var.e();
                            o(iK);
                            L.r(iM & 1048575, obj, Integer.valueOf(iE2));
                            x(iU, obj, iK);
                            i5 = i8;
                            e5 = e6;
                            e6 = e5;
                            i8 = i5;
                            break;
                        case 64:
                            b5Var.t(5);
                            L.r(iM & 1048575, obj, Integer.valueOf(a5Var.d()));
                            x(iU, obj, iK);
                            i5 = i8;
                            e5 = e6;
                            e6 = e5;
                            i8 = i5;
                            break;
                        case 65:
                            b5Var.t(1);
                            L.r(iM & 1048575, obj, Long.valueOf(a5Var.g()));
                            x(iU, obj, iK);
                            i5 = i8;
                            e5 = e6;
                            e6 = e5;
                            i8 = i5;
                            break;
                        case 66:
                            b5Var.t(0);
                            L.r(iM & 1048575, obj, Integer.valueOf(a5.k(a5Var.e())));
                            x(iU, obj, iK);
                            i5 = i8;
                            e5 = e6;
                            e6 = e5;
                            i8 = i5;
                            break;
                        case 67:
                            b5Var.t(0);
                            L.r(iM & 1048575, obj, Long.valueOf(a5.l(a5Var.h())));
                            x(iU, obj, iK);
                            i5 = i8;
                            e5 = e6;
                            e6 = e5;
                            i8 = i5;
                            break;
                        case 68:
                            long j10 = iM & 1048575;
                            A aP7 = p(iK);
                            b5Var.t(3);
                            L.r(j10, obj, b5Var.q(aP7, g5Var));
                            x(iU, obj, iK);
                            i5 = i8;
                            e5 = e6;
                            e6 = e5;
                            i8 = i5;
                            break;
                        default:
                            if (dB == null) {
                                e6.getClass();
                                dB = D.b();
                            }
                            e6.getClass();
                            if (!E.c(dB, b5Var)) {
                                while (i8 < i7) {
                                    q(obj, iArr[i8], dB);
                                    i8++;
                                }
                                ((m5) obj).zzc = dB;
                                return;
                            }
                            i5 = i8;
                            e5 = e6;
                            e6 = e5;
                            i8 = i5;
                            break;
                    }
                } else {
                    if (iU == Integer.MAX_VALUE) {
                        while (i8 < i7) {
                            q(obj, iArr[i8], dB);
                            i8++;
                        }
                        if (dB != null) {
                            e6.getClass();
                            ((m5) obj).zzc = dB;
                            return;
                        }
                        return;
                    }
                    e6.getClass();
                    if (dB == null) {
                        m5 m5Var2 = (m5) obj;
                        D dB3 = m5Var2.zzc;
                        if (dB3 == d2) {
                            dB3 = D.b();
                            m5Var2.zzc = dB3;
                        }
                        dB = dB3;
                    }
                    if (!E.c(dB, b5Var)) {
                        while (i8 < i7) {
                            q(obj, iArr[i8], dB);
                            i8++;
                        }
                        if (dB != null) {
                            ((m5) obj).zzc = dB;
                            return;
                        }
                        return;
                    }
                }
            } catch (Throwable th3) {
                th = th3;
                i5 = i8;
            }
        }
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.A
    public final void d(Object obj, byte[] bArr, int i5, int i6, b bVar) throws C0255f {
        if (this.f5723g) {
            M(obj, bArr, i5, i6, bVar);
        } else {
            E(obj, bArr, i5, i6, 0, bVar);
        }
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.A
    public final int e(Object obj) {
        return this.f5723g ? I(obj) : H(obj);
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.A
    public final void f(Object obj, Object obj2) {
        obj2.getClass();
        int i5 = 0;
        while (true) {
            int[] iArr = this.f5718a;
            if (i5 >= iArr.length) {
                B.b(this.f5728l, obj, obj2);
                return;
            }
            int iM = m(i5);
            long j3 = 1048575 & iM;
            int i6 = iArr[i5];
            switch (l(iM)) {
                case 0:
                    if (!z(i5, obj2)) {
                        break;
                    } else {
                        L.n(obj, j3, L.f5414c.a(j3, obj2));
                        w(i5, obj);
                        break;
                    }
                case 1:
                    if (!z(i5, obj2)) {
                        break;
                    } else {
                        L.o(obj, j3, L.f5414c.b(j3, obj2));
                        w(i5, obj);
                        break;
                    }
                case 2:
                    if (!z(i5, obj2)) {
                        break;
                    } else {
                        L.q(obj, j3, L.f5414c.k(j3, obj2));
                        w(i5, obj);
                        break;
                    }
                case 3:
                    if (!z(i5, obj2)) {
                        break;
                    } else {
                        L.q(obj, j3, L.f5414c.k(j3, obj2));
                        w(i5, obj);
                        break;
                    }
                case 4:
                    if (!z(i5, obj2)) {
                        break;
                    } else {
                        L.p(L.f5414c.j(j3, obj2), j3, obj);
                        w(i5, obj);
                        break;
                    }
                case 5:
                    if (!z(i5, obj2)) {
                        break;
                    } else {
                        L.q(obj, j3, L.f5414c.k(j3, obj2));
                        w(i5, obj);
                        break;
                    }
                case 6:
                    if (!z(i5, obj2)) {
                        break;
                    } else {
                        L.p(L.f5414c.j(j3, obj2), j3, obj);
                        w(i5, obj);
                        break;
                    }
                case 7:
                    if (!z(i5, obj2)) {
                        break;
                    } else {
                        L.l(obj, j3, L.f5414c.g(j3, obj2));
                        w(i5, obj);
                        break;
                    }
                case 8:
                    if (!z(i5, obj2)) {
                        break;
                    } else {
                        L.r(j3, obj, L.f5414c.m(j3, obj2));
                        w(i5, obj);
                        break;
                    }
                case 9:
                    t(obj, i5, obj2);
                    break;
                case 10:
                    if (!z(i5, obj2)) {
                        break;
                    } else {
                        L.r(j3, obj, L.f5414c.m(j3, obj2));
                        w(i5, obj);
                        break;
                    }
                case 11:
                    if (!z(i5, obj2)) {
                        break;
                    } else {
                        L.p(L.f5414c.j(j3, obj2), j3, obj);
                        w(i5, obj);
                        break;
                    }
                case 12:
                    if (!z(i5, obj2)) {
                        break;
                    } else {
                        L.p(L.f5414c.j(j3, obj2), j3, obj);
                        w(i5, obj);
                        break;
                    }
                case 13:
                    if (!z(i5, obj2)) {
                        break;
                    } else {
                        L.p(L.f5414c.j(j3, obj2), j3, obj);
                        w(i5, obj);
                        break;
                    }
                case 14:
                    if (!z(i5, obj2)) {
                        break;
                    } else {
                        L.q(obj, j3, L.f5414c.k(j3, obj2));
                        w(i5, obj);
                        break;
                    }
                case 15:
                    if (!z(i5, obj2)) {
                        break;
                    } else {
                        L.p(L.f5414c.j(j3, obj2), j3, obj);
                        w(i5, obj);
                        break;
                    }
                case 16:
                    if (!z(i5, obj2)) {
                        break;
                    } else {
                        L.q(obj, j3, L.f5414c.k(j3, obj2));
                        w(i5, obj);
                        break;
                    }
                case 17:
                    t(obj, i5, obj2);
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case 49:
                    this.f5727k.c(j3, obj, obj2);
                    break;
                case 50:
                    Class cls = B.f5333a;
                    K k5 = L.f5414c;
                    L.r(j3, obj, C0315p.c(k5.m(j3, obj), k5.m(j3, obj2)));
                    break;
                case 51:
                case 52:
                case 53:
                case 54:
                case 55:
                case 56:
                case 57:
                case 58:
                case 59:
                    if (!B(i6, obj2, i5)) {
                        break;
                    } else {
                        L.r(j3, obj, L.f5414c.m(j3, obj2));
                        x(i6, obj, i5);
                        break;
                    }
                case 60:
                    u(obj, i5, obj2);
                    break;
                case 61:
                case 62:
                case 63:
                case 64:
                case 65:
                case 66:
                case 67:
                    if (!B(i6, obj2, i5)) {
                        break;
                    } else {
                        L.r(j3, obj, L.f5414c.m(j3, obj2));
                        x(i6, obj, i5);
                        break;
                    }
                case 68:
                    u(obj, i5, obj2);
                    break;
            }
            i5 += 3;
        }
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.A
    public final void g(Object obj, C0303n c0303n) {
        if (!this.f5723g) {
            C(obj, c0303n);
            return;
        }
        int[] iArr = this.f5718a;
        int length = iArr.length;
        for (int i5 = 0; i5 < length; i5 += 3) {
            int iM = m(i5);
            int i6 = iArr[i5];
            switch (l(iM)) {
                case 0:
                    if (z(i5, obj)) {
                        c0303n.u(i6, L.f5414c.a(iM & 1048575, obj));
                        break;
                    } else {
                        break;
                    }
                case 1:
                    if (z(i5, obj)) {
                        c0303n.B(i6, L.f5414c.b(iM & 1048575, obj));
                        break;
                    } else {
                        break;
                    }
                case 2:
                    if (z(i5, obj)) {
                        c0303n.E(i6, L.f5414c.k(iM & 1048575, obj));
                        break;
                    } else {
                        break;
                    }
                case 3:
                    if (z(i5, obj)) {
                        c0303n.g(i6, L.f5414c.k(iM & 1048575, obj));
                        break;
                    } else {
                        break;
                    }
                case 4:
                    if (z(i5, obj)) {
                        c0303n.D(i6, L.f5414c.j(iM & 1048575, obj));
                        break;
                    } else {
                        break;
                    }
                case 5:
                    if (z(i5, obj)) {
                        c0303n.A(i6, L.f5414c.k(iM & 1048575, obj));
                        break;
                    } else {
                        break;
                    }
                case 6:
                    if (z(i5, obj)) {
                        c0303n.z(i6, L.f5414c.j(iM & 1048575, obj));
                        break;
                    } else {
                        break;
                    }
                case 7:
                    if (z(i5, obj)) {
                        c0303n.l(i6, L.f5414c.g(iM & 1048575, obj));
                        break;
                    } else {
                        break;
                    }
                case 8:
                    if (z(i5, obj)) {
                        D(i6, L.f5414c.m(iM & 1048575, obj), c0303n);
                        break;
                    } else {
                        break;
                    }
                case 9:
                    if (z(i5, obj)) {
                        c0303n.F(i6, p(i5), L.f5414c.m(iM & 1048575, obj));
                        break;
                    } else {
                        break;
                    }
                case 10:
                    if (z(i5, obj)) {
                        c0303n.r(i6, (Z4) L.f5414c.m(iM & 1048575, obj));
                        break;
                    } else {
                        break;
                    }
                case 11:
                    if (z(i5, obj)) {
                        c0303n.f(i6, L.f5414c.j(iM & 1048575, obj));
                        break;
                    } else {
                        break;
                    }
                case 12:
                    if (z(i5, obj)) {
                        c0303n.y(i6, L.f5414c.j(iM & 1048575, obj));
                        break;
                    } else {
                        break;
                    }
                case 13:
                    if (z(i5, obj)) {
                        c0303n.G(i6, L.f5414c.j(iM & 1048575, obj));
                        break;
                    } else {
                        break;
                    }
                case 14:
                    if (z(i5, obj)) {
                        c0303n.H(i6, L.f5414c.k(iM & 1048575, obj));
                        break;
                    } else {
                        break;
                    }
                case 15:
                    if (z(i5, obj)) {
                        c0303n.d(i6, L.f5414c.j(iM & 1048575, obj));
                        break;
                    } else {
                        break;
                    }
                case 16:
                    if (z(i5, obj)) {
                        c0303n.e(i6, L.f5414c.k(iM & 1048575, obj));
                        break;
                    } else {
                        break;
                    }
                case 17:
                    if (z(i5, obj)) {
                        c0303n.C(i6, p(i5), L.f5414c.m(iM & 1048575, obj));
                        break;
                    } else {
                        break;
                    }
                case 18:
                    B.f(iArr[i5], (List) L.f5414c.m(iM & 1048575, obj), c0303n, false);
                    break;
                case 19:
                    B.j(iArr[i5], (List) L.f5414c.m(iM & 1048575, obj), c0303n, false);
                    break;
                case 20:
                    B.m(iArr[i5], (List) L.f5414c.m(iM & 1048575, obj), c0303n, false);
                    break;
                case 21:
                    B.v(iArr[i5], (List) L.f5414c.m(iM & 1048575, obj), c0303n, false);
                    break;
                case 22:
                    B.l(iArr[i5], (List) L.f5414c.m(iM & 1048575, obj), c0303n, false);
                    break;
                case 23:
                    B.i(iArr[i5], (List) L.f5414c.m(iM & 1048575, obj), c0303n, false);
                    break;
                case 24:
                    B.h(iArr[i5], (List) L.f5414c.m(iM & 1048575, obj), c0303n, false);
                    break;
                case 25:
                    B.d(iArr[i5], (List) L.f5414c.m(iM & 1048575, obj), c0303n, false);
                    break;
                case 26:
                    B.s(iArr[i5], (List) L.f5414c.m(iM & 1048575, obj), c0303n);
                    break;
                case 27:
                    B.n(iArr[i5], (List) L.f5414c.m(iM & 1048575, obj), c0303n, p(i5));
                    break;
                case 28:
                    B.e(iArr[i5], (List) L.f5414c.m(iM & 1048575, obj), c0303n);
                    break;
                case 29:
                    B.t(iArr[i5], (List) L.f5414c.m(iM & 1048575, obj), c0303n, false);
                    break;
                case 30:
                    B.g(iArr[i5], (List) L.f5414c.m(iM & 1048575, obj), c0303n, false);
                    break;
                case 31:
                    B.o(iArr[i5], (List) L.f5414c.m(iM & 1048575, obj), c0303n, false);
                    break;
                case 32:
                    B.p(iArr[i5], (List) L.f5414c.m(iM & 1048575, obj), c0303n, false);
                    break;
                case 33:
                    B.q(iArr[i5], (List) L.f5414c.m(iM & 1048575, obj), c0303n, false);
                    break;
                case 34:
                    B.r(iArr[i5], (List) L.f5414c.m(iM & 1048575, obj), c0303n, false);
                    break;
                case 35:
                    B.f(iArr[i5], (List) L.f5414c.m(iM & 1048575, obj), c0303n, true);
                    break;
                case 36:
                    B.j(iArr[i5], (List) L.f5414c.m(iM & 1048575, obj), c0303n, true);
                    break;
                case 37:
                    B.m(iArr[i5], (List) L.f5414c.m(iM & 1048575, obj), c0303n, true);
                    break;
                case 38:
                    B.v(iArr[i5], (List) L.f5414c.m(iM & 1048575, obj), c0303n, true);
                    break;
                case 39:
                    B.l(iArr[i5], (List) L.f5414c.m(iM & 1048575, obj), c0303n, true);
                    break;
                case 40:
                    B.i(iArr[i5], (List) L.f5414c.m(iM & 1048575, obj), c0303n, true);
                    break;
                case 41:
                    B.h(iArr[i5], (List) L.f5414c.m(iM & 1048575, obj), c0303n, true);
                    break;
                case 42:
                    B.d(iArr[i5], (List) L.f5414c.m(iM & 1048575, obj), c0303n, true);
                    break;
                case 43:
                    B.t(iArr[i5], (List) L.f5414c.m(iM & 1048575, obj), c0303n, true);
                    break;
                case 44:
                    B.g(iArr[i5], (List) L.f5414c.m(iM & 1048575, obj), c0303n, true);
                    break;
                case 45:
                    B.o(iArr[i5], (List) L.f5414c.m(iM & 1048575, obj), c0303n, true);
                    break;
                case 46:
                    B.p(iArr[i5], (List) L.f5414c.m(iM & 1048575, obj), c0303n, true);
                    break;
                case 47:
                    B.q(iArr[i5], (List) L.f5414c.m(iM & 1048575, obj), c0303n, true);
                    break;
                case 48:
                    B.r(iArr[i5], (List) L.f5414c.m(iM & 1048575, obj), c0303n, true);
                    break;
                case 49:
                    B.k(iArr[i5], (List) L.f5414c.m(iM & 1048575, obj), c0303n, p(i5));
                    break;
                case 50:
                    if (L.f5414c.m(iM & 1048575, obj) != null) {
                        f.F(r(i5));
                        throw null;
                    }
                    break;
                case 51:
                    if (B(i6, obj, i5)) {
                        c0303n.u(i6, ((Double) L.f5414c.m(iM & 1048575, obj)).doubleValue());
                        break;
                    } else {
                        break;
                    }
                case 52:
                    if (B(i6, obj, i5)) {
                        c0303n.B(i6, ((Float) L.f5414c.m(iM & 1048575, obj)).floatValue());
                        break;
                    } else {
                        break;
                    }
                case 53:
                    if (B(i6, obj, i5)) {
                        c0303n.E(i6, n(iM & 1048575, obj));
                        break;
                    } else {
                        break;
                    }
                case 54:
                    if (B(i6, obj, i5)) {
                        c0303n.g(i6, n(iM & 1048575, obj));
                        break;
                    } else {
                        break;
                    }
                case 55:
                    if (B(i6, obj, i5)) {
                        c0303n.D(i6, J(iM & 1048575, obj));
                        break;
                    } else {
                        break;
                    }
                case 56:
                    if (B(i6, obj, i5)) {
                        c0303n.A(i6, n(iM & 1048575, obj));
                        break;
                    } else {
                        break;
                    }
                case 57:
                    if (B(i6, obj, i5)) {
                        c0303n.z(i6, J(iM & 1048575, obj));
                        break;
                    } else {
                        break;
                    }
                case 58:
                    if (B(i6, obj, i5)) {
                        c0303n.l(i6, ((Boolean) L.f5414c.m(iM & 1048575, obj)).booleanValue());
                        break;
                    } else {
                        break;
                    }
                case 59:
                    if (B(i6, obj, i5)) {
                        D(i6, L.f5414c.m(iM & 1048575, obj), c0303n);
                        break;
                    } else {
                        break;
                    }
                case 60:
                    if (B(i6, obj, i5)) {
                        c0303n.F(i6, p(i5), L.f5414c.m(iM & 1048575, obj));
                        break;
                    } else {
                        break;
                    }
                case 61:
                    if (B(i6, obj, i5)) {
                        c0303n.r(i6, (Z4) L.f5414c.m(iM & 1048575, obj));
                        break;
                    } else {
                        break;
                    }
                case 62:
                    if (B(i6, obj, i5)) {
                        c0303n.f(i6, J(iM & 1048575, obj));
                        break;
                    } else {
                        break;
                    }
                case 63:
                    if (B(i6, obj, i5)) {
                        c0303n.y(i6, J(iM & 1048575, obj));
                        break;
                    } else {
                        break;
                    }
                case 64:
                    if (B(i6, obj, i5)) {
                        c0303n.G(i6, J(iM & 1048575, obj));
                        break;
                    } else {
                        break;
                    }
                case 65:
                    if (B(i6, obj, i5)) {
                        c0303n.H(i6, n(iM & 1048575, obj));
                        break;
                    } else {
                        break;
                    }
                case 66:
                    if (B(i6, obj, i5)) {
                        c0303n.d(i6, J(iM & 1048575, obj));
                        break;
                    } else {
                        break;
                    }
                case 67:
                    if (B(i6, obj, i5)) {
                        c0303n.e(i6, n(iM & 1048575, obj));
                        break;
                    } else {
                        break;
                    }
                case 68:
                    if (B(i6, obj, i5)) {
                        c0303n.C(i6, p(i5), L.f5414c.m(iM & 1048575, obj));
                        break;
                    } else {
                        break;
                    }
            }
        }
        this.f5728l.getClass();
        ((m5) obj).zzc.d(c0303n);
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.A
    public final boolean h(Object obj, Object obj2) {
        boolean zC;
        int[] iArr = this.f5718a;
        int length = iArr.length;
        for (int i5 = 0; i5 < length; i5 += 3) {
            int iM = m(i5);
            long j3 = iM & 1048575;
            switch (l(iM)) {
                case 0:
                    if (y(obj, i5, obj2)) {
                        K k5 = L.f5414c;
                        if (Double.doubleToLongBits(k5.a(j3, obj)) == Double.doubleToLongBits(k5.a(j3, obj2))) {
                            continue;
                        }
                    }
                    return false;
                case 1:
                    if (y(obj, i5, obj2)) {
                        K k6 = L.f5414c;
                        if (Float.floatToIntBits(k6.b(j3, obj)) == Float.floatToIntBits(k6.b(j3, obj2))) {
                            continue;
                        }
                    }
                    return false;
                case 2:
                    if (y(obj, i5, obj2)) {
                        K k7 = L.f5414c;
                        if (k7.k(j3, obj) == k7.k(j3, obj2)) {
                            continue;
                        }
                    }
                    return false;
                case 3:
                    if (y(obj, i5, obj2)) {
                        K k8 = L.f5414c;
                        if (k8.k(j3, obj) == k8.k(j3, obj2)) {
                            continue;
                        }
                    }
                    return false;
                case 4:
                    if (y(obj, i5, obj2)) {
                        K k9 = L.f5414c;
                        if (k9.j(j3, obj) == k9.j(j3, obj2)) {
                            continue;
                        }
                    }
                    return false;
                case 5:
                    if (y(obj, i5, obj2)) {
                        K k10 = L.f5414c;
                        if (k10.k(j3, obj) == k10.k(j3, obj2)) {
                            continue;
                        }
                    }
                    return false;
                case 6:
                    if (y(obj, i5, obj2)) {
                        K k11 = L.f5414c;
                        if (k11.j(j3, obj) == k11.j(j3, obj2)) {
                            continue;
                        }
                    }
                    return false;
                case 7:
                    if (y(obj, i5, obj2)) {
                        K k12 = L.f5414c;
                        if (k12.g(j3, obj) == k12.g(j3, obj2)) {
                            continue;
                        }
                    }
                    return false;
                case 8:
                    if (y(obj, i5, obj2)) {
                        K k13 = L.f5414c;
                        if (B.c(k13.m(j3, obj), k13.m(j3, obj2))) {
                            continue;
                        }
                    }
                    return false;
                case 9:
                    if (y(obj, i5, obj2)) {
                        K k14 = L.f5414c;
                        if (B.c(k14.m(j3, obj), k14.m(j3, obj2))) {
                            continue;
                        }
                    }
                    return false;
                case 10:
                    if (y(obj, i5, obj2)) {
                        K k15 = L.f5414c;
                        if (B.c(k15.m(j3, obj), k15.m(j3, obj2))) {
                            continue;
                        }
                    }
                    return false;
                case 11:
                    if (y(obj, i5, obj2)) {
                        K k16 = L.f5414c;
                        if (k16.j(j3, obj) == k16.j(j3, obj2)) {
                            continue;
                        }
                    }
                    return false;
                case 12:
                    if (y(obj, i5, obj2)) {
                        K k17 = L.f5414c;
                        if (k17.j(j3, obj) == k17.j(j3, obj2)) {
                            continue;
                        }
                    }
                    return false;
                case 13:
                    if (y(obj, i5, obj2)) {
                        K k18 = L.f5414c;
                        if (k18.j(j3, obj) == k18.j(j3, obj2)) {
                            continue;
                        }
                    }
                    return false;
                case 14:
                    if (y(obj, i5, obj2)) {
                        K k19 = L.f5414c;
                        if (k19.k(j3, obj) == k19.k(j3, obj2)) {
                            continue;
                        }
                    }
                    return false;
                case 15:
                    if (y(obj, i5, obj2)) {
                        K k20 = L.f5414c;
                        if (k20.j(j3, obj) == k20.j(j3, obj2)) {
                            continue;
                        }
                    }
                    return false;
                case 16:
                    if (y(obj, i5, obj2)) {
                        K k21 = L.f5414c;
                        if (k21.k(j3, obj) == k21.k(j3, obj2)) {
                            continue;
                        }
                    }
                    return false;
                case 17:
                    if (y(obj, i5, obj2)) {
                        K k22 = L.f5414c;
                        if (B.c(k22.m(j3, obj), k22.m(j3, obj2))) {
                            continue;
                        }
                    }
                    return false;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case 49:
                    K k23 = L.f5414c;
                    zC = B.c(k23.m(j3, obj), k23.m(j3, obj2));
                    break;
                case 50:
                    K k24 = L.f5414c;
                    zC = B.c(k24.m(j3, obj), k24.m(j3, obj2));
                    break;
                case 51:
                case 52:
                case 53:
                case 54:
                case 55:
                case 56:
                case 57:
                case 58:
                case 59:
                case 60:
                case 61:
                case 62:
                case 63:
                case 64:
                case 65:
                case 66:
                case 67:
                case 68:
                    long j5 = iArr[i5 + 2] & 1048575;
                    K k25 = L.f5414c;
                    if (k25.j(j5, obj) != k25.j(j5, obj2) || !B.c(k25.m(j3, obj), k25.m(j3, obj2))) {
                        return false;
                    }
                    continue;
                    break;
                default:
            }
            if (!zC) {
                return false;
            }
        }
        this.f5728l.getClass();
        return ((m5) obj).zzc.equals(((m5) obj2).zzc);
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x0091  */
    @Override // com.google.android.gms.internal.p000firebaseauthapi.A
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean i(Object obj) {
        int i5 = 1048575;
        int i6 = 0;
        int i7 = 0;
        while (true) {
            boolean z4 = true;
            if (i6 >= this.f5725i) {
                return true;
            }
            int i8 = this.f5724h[i6];
            int[] iArr = this.f5718a;
            int i9 = iArr[i8];
            int iM = m(i8);
            int i10 = iArr[i8 + 2];
            int i11 = i10 & 1048575;
            int i12 = 1 << (i10 >>> 20);
            if (i11 != i5) {
                if (i11 != 1048575) {
                    i7 = n.getInt(obj, i11);
                }
                i5 = i11;
            }
            if ((268435456 & iM) != 0) {
                if (!(i5 == 1048575 ? z(i8, obj) : (i7 & i12) != 0)) {
                    return false;
                }
            }
            int iL = l(iM);
            if (iL == 9 || iL == 17) {
                if (i5 == 1048575) {
                    z4 = z(i8, obj);
                } else if ((i12 & i7) == 0) {
                    z4 = false;
                }
                if (z4 && !A(iM, p(i8), obj)) {
                    return false;
                }
            } else if (iL == 27) {
                List list = (List) L.i(iM & 1048575, obj);
                if (list.isEmpty()) {
                    continue;
                } else {
                    A aP = p(i8);
                    for (int i13 = 0; i13 < list.size(); i13++) {
                        if (!aP.i(list.get(i13))) {
                            return false;
                        }
                    }
                }
            } else if (iL == 60 || iL == 68) {
                if (B(i9, obj, i8) && !A(iM, p(i8), obj)) {
                    return false;
                }
            } else if (iL != 49) {
                if (iL == 50 && !((C0309o) L.i(iM & 1048575, obj)).isEmpty()) {
                    f.F(r(i8));
                    throw null;
                }
            }
            i6++;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x00e1 A[PHI: r3
      0x00e1: PHI (r3v32 int) = (r3v10 int), (r3v33 int) binds: [B:83:0x0216, B:41:0x00df] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // com.google.android.gms.internal.p000firebaseauthapi.A
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int j(Object obj) {
        int i5;
        int iA;
        int i6;
        int[] iArr = this.f5718a;
        int length = iArr.length;
        int i7 = 0;
        for (int i8 = 0; i8 < length; i8 += 3) {
            int iM = m(i8);
            int i9 = iArr[i8];
            long j3 = 1048575 & iM;
            int i10 = 1237;
            int iHashCode = 37;
            switch (l(iM)) {
                case 0:
                    i5 = i7 * 53;
                    iA = AbstractC0243d.a(Double.doubleToLongBits(L.f5414c.a(j3, obj)));
                    i7 = iA + i5;
                    break;
                case 1:
                    i5 = i7 * 53;
                    iA = Float.floatToIntBits(L.f5414c.b(j3, obj));
                    i7 = iA + i5;
                    break;
                case 2:
                    i5 = i7 * 53;
                    iA = AbstractC0243d.a(L.f5414c.k(j3, obj));
                    i7 = iA + i5;
                    break;
                case 3:
                    i5 = i7 * 53;
                    iA = AbstractC0243d.a(L.f5414c.k(j3, obj));
                    i7 = iA + i5;
                    break;
                case 4:
                    i5 = i7 * 53;
                    iA = L.f5414c.j(j3, obj);
                    i7 = iA + i5;
                    break;
                case 5:
                    i5 = i7 * 53;
                    iA = AbstractC0243d.a(L.f5414c.k(j3, obj));
                    i7 = iA + i5;
                    break;
                case 6:
                    i5 = i7 * 53;
                    iA = L.f5414c.j(j3, obj);
                    i7 = iA + i5;
                    break;
                case 7:
                    i6 = i7 * 53;
                    boolean zG = L.f5414c.g(j3, obj);
                    Charset charset = AbstractC0243d.f5546a;
                    if (zG) {
                        i10 = 1231;
                    }
                    i7 = i10 + i6;
                    break;
                case 8:
                    i5 = i7 * 53;
                    iA = ((String) L.f5414c.m(j3, obj)).hashCode();
                    i7 = iA + i5;
                    break;
                case 9:
                    Object objM = L.f5414c.m(j3, obj);
                    if (objM != null) {
                        iHashCode = objM.hashCode();
                    }
                    i7 = (i7 * 53) + iHashCode;
                    break;
                case 10:
                    i5 = i7 * 53;
                    iA = L.f5414c.m(j3, obj).hashCode();
                    i7 = iA + i5;
                    break;
                case 11:
                    i5 = i7 * 53;
                    iA = L.f5414c.j(j3, obj);
                    i7 = iA + i5;
                    break;
                case 12:
                    i5 = i7 * 53;
                    iA = L.f5414c.j(j3, obj);
                    i7 = iA + i5;
                    break;
                case 13:
                    i5 = i7 * 53;
                    iA = L.f5414c.j(j3, obj);
                    i7 = iA + i5;
                    break;
                case 14:
                    i5 = i7 * 53;
                    iA = AbstractC0243d.a(L.f5414c.k(j3, obj));
                    i7 = iA + i5;
                    break;
                case 15:
                    i5 = i7 * 53;
                    iA = L.f5414c.j(j3, obj);
                    i7 = iA + i5;
                    break;
                case 16:
                    i5 = i7 * 53;
                    iA = AbstractC0243d.a(L.f5414c.k(j3, obj));
                    i7 = iA + i5;
                    break;
                case 17:
                    Object objM2 = L.f5414c.m(j3, obj);
                    if (objM2 != null) {
                        iHashCode = objM2.hashCode();
                    }
                    i7 = (i7 * 53) + iHashCode;
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case 49:
                    i5 = i7 * 53;
                    iA = L.f5414c.m(j3, obj).hashCode();
                    i7 = iA + i5;
                    break;
                case 50:
                    i5 = i7 * 53;
                    iA = L.f5414c.m(j3, obj).hashCode();
                    i7 = iA + i5;
                    break;
                case 51:
                    if (B(i9, obj, i8)) {
                        i5 = i7 * 53;
                        iA = AbstractC0243d.a(Double.doubleToLongBits(((Double) L.f5414c.m(j3, obj)).doubleValue()));
                        i7 = iA + i5;
                        break;
                    } else {
                        break;
                    }
                case 52:
                    if (B(i9, obj, i8)) {
                        i5 = i7 * 53;
                        iA = Float.floatToIntBits(((Float) L.f5414c.m(j3, obj)).floatValue());
                        i7 = iA + i5;
                        break;
                    } else {
                        break;
                    }
                case 53:
                    if (B(i9, obj, i8)) {
                        i5 = i7 * 53;
                        iA = AbstractC0243d.a(n(j3, obj));
                        i7 = iA + i5;
                        break;
                    } else {
                        break;
                    }
                case 54:
                    if (B(i9, obj, i8)) {
                        i5 = i7 * 53;
                        iA = AbstractC0243d.a(n(j3, obj));
                        i7 = iA + i5;
                        break;
                    } else {
                        break;
                    }
                case 55:
                    if (B(i9, obj, i8)) {
                        i5 = i7 * 53;
                        iA = J(j3, obj);
                        i7 = iA + i5;
                        break;
                    } else {
                        break;
                    }
                case 56:
                    if (B(i9, obj, i8)) {
                        i5 = i7 * 53;
                        iA = AbstractC0243d.a(n(j3, obj));
                        i7 = iA + i5;
                        break;
                    } else {
                        break;
                    }
                case 57:
                    if (B(i9, obj, i8)) {
                        i5 = i7 * 53;
                        iA = J(j3, obj);
                        i7 = iA + i5;
                        break;
                    } else {
                        break;
                    }
                case 58:
                    if (B(i9, obj, i8)) {
                        i6 = i7 * 53;
                        boolean zBooleanValue = ((Boolean) L.f5414c.m(j3, obj)).booleanValue();
                        Charset charset2 = AbstractC0243d.f5546a;
                        if (zBooleanValue) {
                        }
                        i7 = i10 + i6;
                        break;
                    } else {
                        break;
                    }
                    break;
                case 59:
                    if (B(i9, obj, i8)) {
                        i5 = i7 * 53;
                        iA = ((String) L.f5414c.m(j3, obj)).hashCode();
                        i7 = iA + i5;
                        break;
                    } else {
                        break;
                    }
                case 60:
                    if (B(i9, obj, i8)) {
                        i5 = i7 * 53;
                        iA = L.f5414c.m(j3, obj).hashCode();
                        i7 = iA + i5;
                        break;
                    } else {
                        break;
                    }
                case 61:
                    if (B(i9, obj, i8)) {
                        i5 = i7 * 53;
                        iA = L.f5414c.m(j3, obj).hashCode();
                        i7 = iA + i5;
                        break;
                    } else {
                        break;
                    }
                case 62:
                    if (B(i9, obj, i8)) {
                        i5 = i7 * 53;
                        iA = J(j3, obj);
                        i7 = iA + i5;
                        break;
                    } else {
                        break;
                    }
                case 63:
                    if (B(i9, obj, i8)) {
                        i5 = i7 * 53;
                        iA = J(j3, obj);
                        i7 = iA + i5;
                        break;
                    } else {
                        break;
                    }
                case 64:
                    if (B(i9, obj, i8)) {
                        i5 = i7 * 53;
                        iA = J(j3, obj);
                        i7 = iA + i5;
                        break;
                    } else {
                        break;
                    }
                case 65:
                    if (B(i9, obj, i8)) {
                        i5 = i7 * 53;
                        iA = AbstractC0243d.a(n(j3, obj));
                        i7 = iA + i5;
                        break;
                    } else {
                        break;
                    }
                case 66:
                    if (B(i9, obj, i8)) {
                        i5 = i7 * 53;
                        iA = J(j3, obj);
                        i7 = iA + i5;
                        break;
                    } else {
                        break;
                    }
                case 67:
                    if (B(i9, obj, i8)) {
                        i5 = i7 * 53;
                        iA = AbstractC0243d.a(n(j3, obj));
                        i7 = iA + i5;
                        break;
                    } else {
                        break;
                    }
                case 68:
                    if (B(i9, obj, i8)) {
                        i5 = i7 * 53;
                        iA = L.f5414c.m(j3, obj).hashCode();
                        i7 = iA + i5;
                        break;
                    } else {
                        break;
                    }
            }
        }
        this.f5728l.getClass();
        return ((m5) obj).zzc.hashCode() + (i7 * 53);
    }

    public final int k(int i5, int i6) {
        int[] iArr = this.f5718a;
        int length = (iArr.length / 3) - 1;
        while (i6 <= length) {
            int i7 = (length + i6) >>> 1;
            int i8 = i7 * 3;
            int i9 = iArr[i8];
            if (i5 == i9) {
                return i8;
            }
            if (i5 < i9) {
                length = i7 - 1;
            } else {
                i6 = i7 + 1;
            }
        }
        return -1;
    }

    public final int m(int i5) {
        return this.f5718a[i5 + 1];
    }

    public final void o(int i5) {
        int i6 = i5 / 3;
        f.F(this.f5719b[i6 + i6 + 1]);
    }

    public final A p(int i5) {
        int i6 = i5 / 3;
        int i7 = i6 + i6;
        Object[] objArr = this.f5719b;
        A a3 = (A) objArr[i7];
        if (a3 != null) {
            return a3;
        }
        A a5 = C0362x.f5770c.a((Class) objArr[i7 + 1]);
        objArr[i7] = a5;
        return a5;
    }

    public final void q(Object obj, int i5, Object obj2) {
        int i6 = this.f5718a[i5];
        if (L.f5414c.m(m(i5) & 1048575, obj) == null) {
            return;
        }
        o(i5);
    }

    public final Object r(int i5) {
        int i6 = i5 / 3;
        return this.f5719b[i6 + i6];
    }

    public final void t(Object obj, int i5, Object obj2) {
        long jM = m(i5) & 1048575;
        if (z(i5, obj2)) {
            K k5 = L.f5414c;
            Object objM = k5.m(jM, obj);
            Object objM2 = k5.m(jM, obj2);
            if (objM != null && objM2 != null) {
                L.r(jM, obj, AbstractC0243d.b(objM, objM2));
                w(i5, obj);
            } else if (objM2 != null) {
                L.r(jM, obj, objM2);
                w(i5, obj);
            }
        }
    }

    public final void u(Object obj, int i5, Object obj2) {
        int iM = m(i5);
        int i6 = this.f5718a[i5];
        long j3 = iM & 1048575;
        if (B(i6, obj2, i5)) {
            Object objM = B(i6, obj, i5) ? L.f5414c.m(j3, obj) : null;
            Object objM2 = L.f5414c.m(j3, obj2);
            if (objM != null && objM2 != null) {
                L.r(j3, obj, AbstractC0243d.b(objM, objM2));
                x(i6, obj, i5);
            } else if (objM2 != null) {
                L.r(j3, obj, objM2);
                x(i6, obj, i5);
            }
        }
    }

    public final void v(Object obj, int i5, b5 b5Var) {
        if ((536870912 & i5) != 0) {
            L.r(i5 & 1048575, obj, b5Var.x());
        } else if (this.f) {
            L.r(i5 & 1048575, obj, b5Var.w());
        } else {
            L.r(i5 & 1048575, obj, b5Var.v());
        }
    }

    public final void w(int i5, Object obj) {
        int i6 = this.f5718a[i5 + 2];
        long j3 = 1048575 & i6;
        if (j3 == 1048575) {
            return;
        }
        L.p((1 << (i6 >>> 20)) | L.f5414c.j(j3, obj), j3, obj);
    }

    public final void x(int i5, Object obj, int i6) {
        L.p(i5, this.f5718a[i6 + 2] & 1048575, obj);
    }

    public final boolean y(Object obj, int i5, Object obj2) {
        return z(i5, obj) == z(i5, obj2);
    }

    public final boolean z(int i5, Object obj) {
        int i6 = this.f5718a[i5 + 2];
        long j3 = i6 & 1048575;
        if (j3 != 1048575) {
            return (L.f5414c.j(j3, obj) & (1 << (i6 >>> 20))) != 0;
        }
        int iM = m(i5);
        long j5 = iM & 1048575;
        switch (l(iM)) {
            case 0:
                return L.f5414c.a(j5, obj) != 0.0d;
            case 1:
                return L.f5414c.b(j5, obj) != 0.0f;
            case 2:
                return L.f5414c.k(j5, obj) != 0;
            case 3:
                return L.f5414c.k(j5, obj) != 0;
            case 4:
                return L.f5414c.j(j5, obj) != 0;
            case 5:
                return L.f5414c.k(j5, obj) != 0;
            case 6:
                return L.f5414c.j(j5, obj) != 0;
            case 7:
                return L.f5414c.g(j5, obj);
            case 8:
                Object objM = L.f5414c.m(j5, obj);
                if (objM instanceof String) {
                    return !((String) objM).isEmpty();
                }
                if (objM instanceof Z4) {
                    return !Z4.f5499d.equals(objM);
                }
                throw new IllegalArgumentException();
            case 9:
                return L.f5414c.m(j5, obj) != null;
            case 10:
                return !Z4.f5499d.equals(L.f5414c.m(j5, obj));
            case 11:
                return L.f5414c.j(j5, obj) != 0;
            case 12:
                return L.f5414c.j(j5, obj) != 0;
            case 13:
                return L.f5414c.j(j5, obj) != 0;
            case 14:
                return L.f5414c.k(j5, obj) != 0;
            case 15:
                return L.f5414c.j(j5, obj) != 0;
            case 16:
                return L.f5414c.k(j5, obj) != 0;
            case 17:
                return L.f5414c.m(j5, obj) != null;
            default:
                throw new IllegalArgumentException();
        }
    }
}
