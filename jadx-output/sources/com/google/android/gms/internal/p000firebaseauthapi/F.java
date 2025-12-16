package com.google.android.gms.internal.p000firebaseauthapi;

import java.util.ListIterator;

/* loaded from: classes.dex */
public final class F implements ListIterator {

    /* renamed from: c, reason: collision with root package name */
    public final ListIterator f5368c;

    public F(H h5, int i5) {
        this.f5368c = h5.f5385c.listIterator(i5);
    }

    @Override // java.util.ListIterator
    public final /* bridge */ /* synthetic */ void add(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final boolean hasNext() {
        return this.f5368c.hasNext();
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.f5368c.hasPrevious();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final /* bridge */ /* synthetic */ Object next() {
        return (String) this.f5368c.next();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f5368c.nextIndex();
    }

    @Override // java.util.ListIterator
    public final /* bridge */ /* synthetic */ Object previous() {
        return (String) this.f5368c.previous();
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f5368c.previousIndex();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator
    public final /* bridge */ /* synthetic */ void set(Object obj) {
        throw new UnsupportedOperationException();
    }
}
