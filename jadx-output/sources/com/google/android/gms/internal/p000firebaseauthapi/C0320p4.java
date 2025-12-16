package com.google.android.gms.internal.p000firebaseauthapi;

import android.os.Parcel;
import android.os.Parcelable;
import d1.AbstractC0387a;
import i3.x;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.google.android.gms.internal.firebase-auth-api.p4, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0320p4 extends AbstractC0387a implements Y3 {
    public static final Parcelable.Creator<C0320p4> CREATOR = new C0301m3(4);

    /* renamed from: c, reason: collision with root package name */
    public String f5686c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f5687d;

    /* renamed from: e, reason: collision with root package name */
    public String f5688e;
    public boolean f;

    /* renamed from: g, reason: collision with root package name */
    public M4 f5689g;

    /* renamed from: h, reason: collision with root package name */
    public List f5690h;

    @Override // com.google.android.gms.internal.p000firebaseauthapi.Y3
    public final /* bridge */ /* synthetic */ Y3 b(String str) throws C0360w3 {
        try {
            JSONObject jSONObject = new JSONObject(str);
            this.f5686c = jSONObject.optString("authUri", null);
            this.f5687d = jSONObject.optBoolean("registered", false);
            this.f5688e = jSONObject.optString("providerId", null);
            this.f = jSONObject.optBoolean("forExistingProvider", false);
            if (jSONObject.has("allProviders")) {
                this.f5689g = new M4(AbstractC0332s.r(jSONObject.optJSONArray("allProviders")), 1);
            } else {
                this.f5689g = new M4(null);
            }
            this.f5690h = AbstractC0332s.r(jSONObject.optJSONArray("signinMethods"));
            return this;
        } catch (NullPointerException | JSONException e5) {
            throw AbstractC0332s.d(e5, "p4", str);
        }
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i5) {
        int iT1 = x.t1(parcel, 20293);
        x.p1(parcel, 2, this.f5686c);
        boolean z4 = this.f5687d;
        x.w1(parcel, 3, 4);
        parcel.writeInt(z4 ? 1 : 0);
        x.p1(parcel, 4, this.f5688e);
        boolean z5 = this.f;
        x.w1(parcel, 5, 4);
        parcel.writeInt(z5 ? 1 : 0);
        x.o1(parcel, 6, this.f5689g, i5);
        x.q1(parcel, 7, this.f5690h);
        x.v1(parcel, iT1);
    }
}
