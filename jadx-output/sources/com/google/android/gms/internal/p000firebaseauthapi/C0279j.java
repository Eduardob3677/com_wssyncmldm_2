package com.google.android.gms.internal.p000firebaseauthapi;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* renamed from: com.google.android.gms.internal.firebase-auth-api.j, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0279j extends AbstractC0291l {

    /* renamed from: c, reason: collision with root package name */
    public static final Class f5607c = Collections.unmodifiableList(Collections.emptyList()).getClass();

    /* JADX WARN: Multi-variable type inference failed */
    public static List d(int i5, long j3, Object obj) {
        C0267h c0267h;
        List list = (List) L.f5414c.m(j3, obj);
        if (list.isEmpty()) {
            List c0267h2 = list instanceof InterfaceC0273i ? new C0267h(i5) : new ArrayList(i5);
            L.r(j3, obj, c0267h2);
            return c0267h2;
        }
        if (f5607c.isAssignableFrom(list.getClass())) {
            ArrayList arrayList = new ArrayList(list.size() + i5);
            arrayList.addAll(list);
            L.r(j3, obj, arrayList);
            c0267h = arrayList;
        } else {
            if (!(list instanceof H)) {
                return list;
            }
            C0267h c0267h3 = new C0267h(list.size() + i5);
            c0267h3.addAll(c0267h3.f5588d.size(), (H) list);
            L.r(j3, obj, c0267h3);
            c0267h = c0267h3;
        }
        return c0267h;
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.AbstractC0291l
    public final List a(long j3, Object obj) {
        return d(10, j3, obj);
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.AbstractC0291l
    public final void b(long j3, Object obj) {
        Object objUnmodifiableList;
        List list = (List) L.f5414c.m(j3, obj);
        if (list instanceof InterfaceC0273i) {
            objUnmodifiableList = ((InterfaceC0273i) list).a();
        } else {
            if (f5607c.isAssignableFrom(list.getClass())) {
                return;
            } else {
                objUnmodifiableList = Collections.unmodifiableList(list);
            }
        }
        L.r(j3, obj, objUnmodifiableList);
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.AbstractC0291l
    public final void c(long j3, Object obj, Object obj2) {
        List list = (List) L.f5414c.m(j3, obj2);
        List listD = d(list.size(), j3, obj);
        int size = listD.size();
        int size2 = list.size();
        if (size > 0 && size2 > 0) {
            listD.addAll(list);
        }
        if (size > 0) {
            list = listD;
        }
        L.r(j3, obj, list);
    }
}
