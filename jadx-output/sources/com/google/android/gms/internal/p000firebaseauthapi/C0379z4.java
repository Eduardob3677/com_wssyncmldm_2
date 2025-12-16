package com.google.android.gms.internal.p000firebaseauthapi;

import android.os.Parcel;
import android.os.Parcelable;
import c1.AbstractC0213D;
import d1.AbstractC0387a;
import i3.x;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONObject;

/* renamed from: com.google.android.gms.internal.firebase-auth-api.z4, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0379z4 extends AbstractC0387a {
    public static final Parcelable.Creator<C0379z4> CREATOR = new C0301m3(9);

    /* renamed from: c, reason: collision with root package name */
    public final String f5800c;

    /* renamed from: d, reason: collision with root package name */
    public final String f5801d;

    /* renamed from: e, reason: collision with root package name */
    public final String f5802e;
    public final long f;

    public C0379z4(long j3, String str, String str2, String str3) {
        this.f5800c = str;
        AbstractC0213D.c(str2);
        this.f5801d = str2;
        this.f5802e = str3;
        this.f = j3;
    }

    public static C0379z4 d(JSONObject jSONObject) {
        JSONObject jSONObjectOptJSONObject;
        C0379z4 c0379z4 = new C0379z4((jSONObject.has("enrolledAt") && (jSONObjectOptJSONObject = jSONObject.optJSONObject("enrolledAt")) != null && jSONObjectOptJSONObject.has("seconds")) ? jSONObjectOptJSONObject.optLong("seconds", 0L) : 0L, jSONObject.optString("phoneInfo", null), jSONObject.optString("mfaEnrollmentId", null), jSONObject.optString("displayName", null));
        jSONObject.optString("unobfuscatedPhoneInfo");
        return c0379z4;
    }

    public static ArrayList e(JSONArray jSONArray) {
        if (jSONArray == null || jSONArray.length() == 0) {
            return new ArrayList();
        }
        ArrayList arrayList = new ArrayList();
        for (int i5 = 0; i5 < jSONArray.length(); i5++) {
            arrayList.add(d(jSONArray.getJSONObject(i5)));
        }
        return arrayList;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i5) {
        int iT1 = x.t1(parcel, 20293);
        x.p1(parcel, 1, this.f5800c);
        x.p1(parcel, 2, this.f5801d);
        x.p1(parcel, 3, this.f5802e);
        x.w1(parcel, 4, 8);
        parcel.writeLong(this.f);
        x.v1(parcel, iT1);
    }
}
