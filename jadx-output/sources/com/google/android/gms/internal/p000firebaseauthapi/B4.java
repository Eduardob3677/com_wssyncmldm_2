package com.google.android.gms.internal.p000firebaseauthapi;

import android.os.Parcel;
import android.os.Parcelable;
import d1.AbstractC0387a;
import h1.b;
import i3.x;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class B4 extends AbstractC0387a {
    public static final Parcelable.Creator<B4> CREATOR = new C0301m3(11);

    /* renamed from: c, reason: collision with root package name */
    public final List f5341c;

    public B4() {
        this.f5341c = new ArrayList();
    }

    public static B4 d(JSONArray jSONArray) throws JSONException {
        if (jSONArray == null || jSONArray.length() == 0) {
            return new B4(new ArrayList());
        }
        ArrayList arrayList = new ArrayList();
        for (int i5 = 0; i5 < jSONArray.length(); i5++) {
            JSONObject jSONObject = jSONArray.getJSONObject(i5);
            arrayList.add(jSONObject == null ? new A4() : new A4(b.a(jSONObject.optString("federatedId", null)), b.a(jSONObject.optString("displayName", null)), b.a(jSONObject.optString("photoUrl", null)), b.a(jSONObject.optString("providerId", null)), null, b.a(jSONObject.optString("phoneNumber", null)), b.a(jSONObject.optString("email", null))));
        }
        return new B4(arrayList);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i5) {
        int iT1 = x.t1(parcel, 20293);
        x.s1(parcel, 2, this.f5341c);
        x.v1(parcel, iT1);
    }

    public B4(ArrayList arrayList) {
        if (arrayList != null && !arrayList.isEmpty()) {
            this.f5341c = Collections.unmodifiableList(arrayList);
        } else {
            this.f5341c = Collections.emptyList();
        }
    }
}
