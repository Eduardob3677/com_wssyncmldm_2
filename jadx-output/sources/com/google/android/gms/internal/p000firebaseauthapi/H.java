package com.google.android.gms.internal.p000firebaseauthapi;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

/* loaded from: classes.dex */
public final class H extends AbstractList implements RandomAccess, InterfaceC0273i {

    /* renamed from: c, reason: collision with root package name */
    public final InterfaceC0273i f5385c;

    public H(InterfaceC0273i interfaceC0273i) {
        this.f5385c = interfaceC0273i;
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.InterfaceC0273i
    public final InterfaceC0273i a() {
        return this;
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.InterfaceC0273i
    public final void e(Y4 y4) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.InterfaceC0273i
    public final List g() {
        return this.f5385c.g();
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object get(int i5) {
        return ((C0267h) this.f5385c).get(i5);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator iterator() {
        return new G(this);
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.InterfaceC0273i
    public final Object k(int i5) {
        return this.f5385c.k(i5);
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator listIterator(int i5) {
        return new F(this, i5);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f5385c.size();
    }
}
