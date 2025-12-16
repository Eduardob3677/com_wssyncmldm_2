package com.google.android.gms.internal.p000firebaseauthapi;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* loaded from: classes.dex */
public abstract class C implements Iterator {

    /* renamed from: c, reason: collision with root package name */
    public String f5342c;

    /* renamed from: e, reason: collision with root package name */
    public final CharSequence f5344e;

    /* renamed from: g, reason: collision with root package name */
    public int f5345g;

    /* renamed from: d, reason: collision with root package name */
    public int f5343d = 2;
    public int f = 0;

    public C(C0303n c0303n, CharSequence charSequence) {
        c0303n.getClass();
        this.f5345g = Integer.MAX_VALUE;
        this.f5344e = charSequence;
    }

    public abstract int a(int i5);

    public abstract int b(int i5);

    @Override // java.util.Iterator
    public final boolean hasNext() {
        int iA;
        int i5 = this.f5343d;
        if (i5 == 4) {
            throw new IllegalStateException();
        }
        int i6 = i5 - 1;
        String string = null;
        if (i5 == 0) {
            throw null;
        }
        if (i6 == 0) {
            return true;
        }
        if (i6 != 2) {
            this.f5343d = 4;
            int i7 = this.f;
            while (true) {
                int i8 = this.f;
                if (i8 == -1) {
                    this.f5343d = 3;
                    break;
                }
                int iB = b(i8);
                CharSequence charSequence = this.f5344e;
                if (iB == -1) {
                    iB = charSequence.length();
                    this.f = -1;
                    iA = -1;
                } else {
                    iA = a(iB);
                    this.f = iA;
                }
                if (iA == i7) {
                    int i9 = iA + 1;
                    this.f = i9;
                    if (i9 > charSequence.length()) {
                        this.f = -1;
                    }
                } else {
                    if (i7 < iB) {
                        charSequence.charAt(i7);
                    }
                    if (i7 < iB) {
                        charSequence.charAt(iB - 1);
                    }
                    int i10 = this.f5345g;
                    if (i10 == 1) {
                        iB = charSequence.length();
                        this.f = -1;
                        if (iB > i7) {
                            charSequence.charAt(iB - 1);
                        }
                    } else {
                        this.f5345g = i10 - 1;
                    }
                    string = charSequence.subSequence(i7, iB).toString();
                }
            }
            this.f5342c = string;
            if (this.f5343d != 3) {
                this.f5343d = 1;
                return true;
            }
        }
        return false;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        this.f5343d = 2;
        String str = this.f5342c;
        this.f5342c = null;
        return str;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
