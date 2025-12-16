package com.google.android.gms.internal.p000firebaseauthapi;

import java.nio.charset.Charset;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;

/* renamed from: com.google.android.gms.internal.firebase-auth-api.h, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0267h extends V4 implements RandomAccess, InterfaceC0273i {

    /* renamed from: d, reason: collision with root package name */
    public final ArrayList f5588d;

    static {
        new C0267h(10).f5478c = false;
    }

    public C0267h(int i5) {
        this.f5588d = new ArrayList(i5);
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.InterfaceC0273i
    public final InterfaceC0273i a() {
        return this.f5478c ? new H(this) : this;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ void add(int i5, Object obj) {
        l();
        this.f5588d.add(i5, (String) obj);
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.V4, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        return addAll(this.f5588d.size(), collection);
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.V4, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        l();
        this.f5588d.clear();
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.InterfaceC0237c
    public final InterfaceC0237c d(int i5) {
        ArrayList arrayList = this.f5588d;
        if (i5 < arrayList.size()) {
            throw new IllegalArgumentException();
        }
        ArrayList arrayList2 = new ArrayList(i5);
        arrayList2.addAll(arrayList);
        return new C0267h(arrayList2);
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.InterfaceC0273i
    public final void e(Y4 y4) {
        l();
        this.f5588d.add(y4);
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.InterfaceC0273i
    public final List g() {
        return Collections.unmodifiableList(this.f5588d);
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.InterfaceC0273i
    public final Object k(int i5) {
        return this.f5588d.get(i5);
    }

    @Override // java.util.AbstractList, java.util.List
    /* renamed from: n, reason: merged with bridge method [inline-methods] */
    public final String get(int i5) {
        String str;
        ArrayList arrayList = this.f5588d;
        Object obj = arrayList.get(i5);
        if (obj instanceof String) {
            return (String) obj;
        }
        if (!(obj instanceof Z4)) {
            byte[] bArr = (byte[]) obj;
            String str2 = new String(bArr, AbstractC0243d.f5546a);
            M m5 = O.f5450a;
            int length = bArr.length;
            O.f5450a.getClass();
            if (M.c(bArr, 0, length)) {
                arrayList.set(i5, str2);
            }
            return str2;
        }
        Z4 z4 = (Z4) obj;
        Charset charset = AbstractC0243d.f5546a;
        if (z4.n() == 0) {
            str = "";
        } else {
            Y4 y4 = (Y4) z4;
            str = new String(y4.f5495e, 0, y4.n(), charset);
        }
        Y4 y42 = (Y4) z4;
        int iN = y42.n();
        O.f5450a.getClass();
        if (M.c(y42.f5495e, 0, iN)) {
            arrayList.set(i5, str);
        }
        return str;
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.V4, java.util.AbstractList, java.util.List
    public final Object remove(int i5) {
        String str;
        l();
        Object objRemove = this.f5588d.remove(i5);
        ((AbstractList) this).modCount++;
        if (objRemove instanceof String) {
            return (String) objRemove;
        }
        if (objRemove instanceof Z4) {
            Z4 z4 = (Z4) objRemove;
            Charset charset = AbstractC0243d.f5546a;
            if (z4.n() != 0) {
                Y4 y4 = (Y4) z4;
                return new String(y4.f5495e, 0, y4.n(), charset);
            }
            str = "";
        } else {
            str = new String((byte[]) objRemove, AbstractC0243d.f5546a);
        }
        return str;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int i5, Object obj) {
        l();
        Object obj2 = this.f5588d.set(i5, (String) obj);
        if (obj2 instanceof String) {
            return (String) obj2;
        }
        if (!(obj2 instanceof Z4)) {
            return new String((byte[]) obj2, AbstractC0243d.f5546a);
        }
        Z4 z4 = (Z4) obj2;
        Charset charset = AbstractC0243d.f5546a;
        if (z4.n() == 0) {
            return "";
        }
        Y4 y4 = (Y4) z4;
        return new String(y4.f5495e, 0, y4.n(), charset);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f5588d.size();
    }

    public C0267h(ArrayList arrayList) {
        this.f5588d = arrayList;
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.V4, java.util.AbstractList, java.util.List
    public final boolean addAll(int i5, Collection collection) {
        l();
        if (collection instanceof InterfaceC0273i) {
            collection = ((InterfaceC0273i) collection).g();
        }
        boolean zAddAll = this.f5588d.addAll(i5, collection);
        ((AbstractList) this).modCount++;
        return zAddAll;
    }
}
