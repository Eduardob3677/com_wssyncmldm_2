package com.google.android.gms.internal.p000firebaseauthapi;

import android.os.Parcel;
import android.os.Parcelable;
import d1.AbstractC0387a;
import h1.b;
import i3.x;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.google.android.gms.internal.firebase-auth-api.u4, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0349u4 extends AbstractC0387a implements Y3 {
    public static final Parcelable.Creator<C0349u4> CREATOR = new C0301m3(5);

    /* renamed from: c, reason: collision with root package name */
    public C0361w4 f5745c;

    @Override // com.google.android.gms.internal.p000firebaseauthapi.Y3
    public final Y3 b(String str) throws JSONException, C0360w3 {
        C0361w4 c0361w4;
        int i5;
        C0355v4 c0355v4;
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (jSONObject.has("users")) {
                JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("users");
                if (jSONArrayOptJSONArray == null || jSONArrayOptJSONArray.length() == 0) {
                    c0361w4 = new C0361w4(new ArrayList());
                } else {
                    ArrayList arrayList = new ArrayList(jSONArrayOptJSONArray.length());
                    boolean z4 = false;
                    int i6 = 0;
                    while (i6 < jSONArrayOptJSONArray.length()) {
                        JSONObject jSONObject2 = jSONArrayOptJSONArray.getJSONObject(i6);
                        if (jSONObject2 == null) {
                            c0355v4 = new C0355v4();
                            c0355v4.f5757h = new B4();
                            i5 = i6;
                        } else {
                            i5 = i6;
                            c0355v4 = new C0355v4(b.a(jSONObject2.optString("localId", null)), b.a(jSONObject2.optString("email", null)), jSONObject2.optBoolean("emailVerified", z4), b.a(jSONObject2.optString("displayName", null)), b.a(jSONObject2.optString("photoUrl", null)), B4.d(jSONObject2.optJSONArray("providerUserInfo")), b.a(jSONObject2.optString("rawPassword", null)), b.a(jSONObject2.optString("phoneNumber", null)), jSONObject2.optLong("createdAt", 0L), jSONObject2.optLong("lastLoginAt", 0L), false, null, C0379z4.e(jSONObject2.optJSONArray("mfaInfo")));
                        }
                        arrayList.add(c0355v4);
                        i6 = i5 + 1;
                        z4 = false;
                    }
                    c0361w4 = new C0361w4(arrayList);
                }
                this.f5745c = c0361w4;
            } else {
                this.f5745c = new C0361w4();
            }
            return this;
        } catch (NullPointerException | JSONException e5) {
            throw AbstractC0332s.d(e5, "u4", str);
        }
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i5) {
        int iT1 = x.t1(parcel, 20293);
        x.o1(parcel, 2, this.f5745c, i5);
        x.v1(parcel, iT1);
    }
}
