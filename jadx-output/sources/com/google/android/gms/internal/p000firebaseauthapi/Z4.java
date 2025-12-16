package com.google.android.gms.internal.p000firebaseauthapi;

import B.f;
import R3.y;
import java.io.Serializable;
import java.util.Iterator;
import java.util.Locale;

/* loaded from: classes.dex */
public abstract class Z4 implements Iterable, Serializable {

    /* renamed from: d, reason: collision with root package name */
    public static final Y4 f5499d = new Y4(AbstractC0243d.f5547b);

    /* renamed from: c, reason: collision with root package name */
    public int f5500c;

    static {
        int i5 = W4.f5485a;
    }

    public static int p(int i5, int i6, int i7) {
        int i8 = i6 - i5;
        if ((i5 | i6 | i8 | (i7 - i6)) >= 0) {
            return i8;
        }
        if (i5 < 0) {
            StringBuilder sb = new StringBuilder(32);
            sb.append("Beginning index: ");
            sb.append(i5);
            sb.append(" < 0");
            throw new IndexOutOfBoundsException(sb.toString());
        }
        if (i6 < i5) {
            StringBuilder sb2 = new StringBuilder(66);
            sb2.append("Beginning index larger than ending index: ");
            sb2.append(i5);
            sb2.append(", ");
            sb2.append(i6);
            throw new IndexOutOfBoundsException(sb2.toString());
        }
        StringBuilder sb3 = new StringBuilder(37);
        sb3.append("End index: ");
        sb3.append(i6);
        sb3.append(" >= ");
        sb3.append(i7);
        throw new IndexOutOfBoundsException(sb3.toString());
    }

    public static Y4 q(byte[] bArr, int i5, int i6) {
        p(i5, i5 + i6, bArr.length);
        byte[] bArr2 = new byte[i6];
        System.arraycopy(bArr, i5, bArr2, 0, i6);
        return new Y4(bArr2);
    }

    public final int hashCode() {
        int i5 = this.f5500c;
        if (i5 != 0) {
            return i5;
        }
        int iN = n();
        Y4 y4 = (Y4) this;
        int i6 = iN;
        for (int i7 = 0; i7 < iN; i7++) {
            i6 = (i6 * 31) + y4.f5495e[i7];
        }
        if (i6 == 0) {
            i6 = 1;
        }
        this.f5500c = i6;
        return i6;
    }

    @Override // java.lang.Iterable
    public final /* bridge */ /* synthetic */ Iterator iterator() {
        return new y(this);
    }

    public abstract byte l(int i5);

    public abstract byte m(int i5);

    public abstract int n();

    public abstract void o(int i5, byte[] bArr);

    public final byte[] r() {
        int iN = n();
        if (iN == 0) {
            return AbstractC0243d.f5547b;
        }
        byte[] bArr = new byte[iN];
        o(iN, bArr);
        return bArr;
    }

    public final String toString() {
        String strConcat;
        Locale locale = Locale.ROOT;
        String hexString = Integer.toHexString(System.identityHashCode(this));
        int iN = n();
        if (n() <= 50) {
            strConcat = AbstractC0332s.h(this);
        } else {
            Y4 y4 = (Y4) this;
            int iP = p(0, 47, y4.n());
            strConcat = String.valueOf(AbstractC0332s.h(iP == 0 ? f5499d : new X4(y4.f5495e, iP))).concat("...");
        }
        StringBuilder sb = new StringBuilder("<ByteString@");
        sb.append(hexString);
        sb.append(" size=");
        sb.append(iN);
        sb.append(" contents=\"");
        return f.w(sb, strConcat, "\">");
    }
}
