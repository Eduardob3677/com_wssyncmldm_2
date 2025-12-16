package com.google.android.gms.internal.p000firebaseauthapi;

/* renamed from: com.google.android.gms.internal.firebase-auth-api.z, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0374z {

    /* renamed from: a, reason: collision with root package name */
    public final U4 f5791a;

    /* renamed from: b, reason: collision with root package name */
    public final String f5792b;

    /* renamed from: c, reason: collision with root package name */
    public final Object[] f5793c;

    /* renamed from: d, reason: collision with root package name */
    public final int f5794d;

    public C0374z(m5 m5Var, String str, Object[] objArr) {
        char cCharAt;
        this.f5791a = m5Var;
        this.f5792b = str;
        this.f5793c = objArr;
        try {
            cCharAt = str.charAt(0);
        } catch (StringIndexOutOfBoundsException unused) {
            char[] charArray = str.toCharArray();
            String str2 = new String(charArray);
            try {
                try {
                    cCharAt = str2.charAt(0);
                    str = str2;
                } catch (ArrayIndexOutOfBoundsException | StringIndexOutOfBoundsException e5) {
                    e = e5;
                    throw new IllegalStateException(String.format("Failed parsing '%s' with charArray.length of %d", str2, Integer.valueOf(charArray.length)), e);
                }
            } catch (StringIndexOutOfBoundsException unused2) {
                char[] cArr = new char[str2.length()];
                str2.getChars(0, str2.length(), cArr, 0);
                String str3 = new String(cArr);
                try {
                    cCharAt = str3.charAt(0);
                    str = str3;
                } catch (ArrayIndexOutOfBoundsException | StringIndexOutOfBoundsException e6) {
                    e = e6;
                    str2 = str3;
                    throw new IllegalStateException(String.format("Failed parsing '%s' with charArray.length of %d", str2, Integer.valueOf(charArray.length)), e);
                }
            }
        }
        if (cCharAt < 55296) {
            this.f5794d = cCharAt;
            return;
        }
        int i5 = cCharAt & 8191;
        int i6 = 1;
        int i7 = 13;
        while (true) {
            int i8 = i6 + 1;
            char cCharAt2 = str.charAt(i6);
            if (cCharAt2 < 55296) {
                this.f5794d = i5 | (cCharAt2 << i7);
                return;
            } else {
                i5 |= (cCharAt2 & 8191) << i7;
                i7 += 13;
                i6 = i8;
            }
        }
    }

    public final U4 a() {
        return this.f5791a;
    }

    public final int b() {
        return (this.f5794d & 1) == 1 ? 1 : 2;
    }

    public final String c() {
        return this.f5792b;
    }

    public final Object[] d() {
        return this.f5793c;
    }
}
