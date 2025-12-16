package Y1;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import c1.AbstractC0213D;
import com.google.android.gms.internal.p000firebaseauthapi.F2;
import com.samsung.android.lib.episode.EternalContract;
import d1.AbstractC0387a;
import i3.x;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class k extends AbstractC0387a {
    public static final Parcelable.Creator<k> CREATOR = new p(2);

    /* renamed from: c, reason: collision with root package name */
    public final String f2940c;

    /* renamed from: d, reason: collision with root package name */
    public final String f2941d;

    /* renamed from: e, reason: collision with root package name */
    public final long f2942e;
    public final String f;

    public k(long j3, String str, String str2, String str3) {
        AbstractC0213D.c(str);
        this.f2940c = str;
        this.f2941d = str2;
        this.f2942e = j3;
        AbstractC0213D.c(str3);
        this.f = str3;
    }

    public final JSONObject d() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt("factorIdKey", EternalContract.DEVICE_TYPE_PHONE);
            jSONObject.putOpt("uid", this.f2940c);
            jSONObject.putOpt("displayName", this.f2941d);
            jSONObject.putOpt("enrollmentTimestamp", Long.valueOf(this.f2942e));
            jSONObject.putOpt("phoneNumber", this.f);
            return jSONObject;
        } catch (JSONException e5) {
            Log.d("PhoneMultiFactorInfo", "Failed to jsonify this object");
            throw new F2(e5);
        }
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i5) {
        int iT1 = x.t1(parcel, 20293);
        x.p1(parcel, 1, this.f2940c);
        x.p1(parcel, 2, this.f2941d);
        x.w1(parcel, 3, 8);
        parcel.writeLong(this.f2942e);
        x.p1(parcel, 4, this.f);
        x.v1(parcel, iT1);
    }
}
