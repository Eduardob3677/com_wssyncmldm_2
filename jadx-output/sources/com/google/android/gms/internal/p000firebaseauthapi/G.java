package com.google.android.gms.internal.p000firebaseauthapi;

import java.util.Iterator;

/* loaded from: classes.dex */
public final class G implements Iterator {

    /* renamed from: c, reason: collision with root package name */
    public final Iterator f5372c;

    public G(H h5) {
        this.f5372c = h5.f5385c.iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f5372c.hasNext();
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ Object next() {
        return (String) this.f5372c.next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
