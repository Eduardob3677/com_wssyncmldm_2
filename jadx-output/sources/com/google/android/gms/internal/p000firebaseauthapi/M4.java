package com.google.android.gms.internal.p000firebaseauthapi;

import android.os.Parcel;
import android.os.Parcelable;
import d1.AbstractC0387a;
import h1.b;
import i3.x;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public final class M4 extends AbstractC0387a {
    public static final Parcelable.Creator<M4> CREATOR = new C0301m3(14);

    /* renamed from: c, reason: collision with root package name */
    public final int f5432c;

    /* renamed from: d, reason: collision with root package name */
    public final List f5433d;

    public M4(ArrayList arrayList, int i5) {
        this.f5432c = i5;
        if (arrayList == null || arrayList.isEmpty()) {
            this.f5433d = Collections.emptyList();
            return;
        }
        for (int i6 = 0; i6 < arrayList.size(); i6++) {
            arrayList.set(i6, b.a((String) arrayList.get(i6)));
        }
        this.f5433d = Collections.unmodifiableList(arrayList);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i5) {
        int iT1 = x.t1(parcel, 20293);
        x.w1(parcel, 1, 4);
        parcel.writeInt(this.f5432c);
        x.q1(parcel, 2, this.f5433d);
        x.v1(parcel, iT1);
    }

    public M4(List list) {
        this.f5432c = 1;
        ArrayList arrayList = new ArrayList();
        this.f5433d = arrayList;
        if (list == null || list.isEmpty()) {
            return;
        }
        arrayList.addAll(list);
    }
}
