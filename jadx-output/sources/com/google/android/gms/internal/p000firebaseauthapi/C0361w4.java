package com.google.android.gms.internal.p000firebaseauthapi;

import android.os.Parcel;
import android.os.Parcelable;
import d1.AbstractC0387a;
import i3.x;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* renamed from: com.google.android.gms.internal.firebase-auth-api.w4, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0361w4 extends AbstractC0387a {
    public static final Parcelable.Creator<C0361w4> CREATOR = new C0301m3(7);

    /* renamed from: c, reason: collision with root package name */
    public final List f5769c;

    public C0361w4() {
        this.f5769c = new ArrayList();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i5) {
        int iT1 = x.t1(parcel, 20293);
        x.s1(parcel, 2, this.f5769c);
        x.v1(parcel, iT1);
    }

    public C0361w4(ArrayList arrayList) {
        List listUnmodifiableList;
        if (arrayList == null) {
            listUnmodifiableList = Collections.emptyList();
        } else {
            listUnmodifiableList = Collections.unmodifiableList(arrayList);
        }
        this.f5769c = listUnmodifiableList;
    }
}
