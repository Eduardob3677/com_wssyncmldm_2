package W1;

import A3.D;
import android.content.Context;
import android.text.TextUtils;
import c1.AbstractC0213D;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class j {

    /* renamed from: a, reason: collision with root package name */
    public final String f2830a;

    /* renamed from: b, reason: collision with root package name */
    public final String f2831b;

    /* renamed from: c, reason: collision with root package name */
    public final String f2832c;

    /* renamed from: d, reason: collision with root package name */
    public final String f2833d;

    /* renamed from: e, reason: collision with root package name */
    public final String f2834e;
    public final String f;

    /* renamed from: g, reason: collision with root package name */
    public final String f2835g;

    public j(String str, String str2, String str3, String str4, String str5, String str6, String str7) {
        int i5 = h1.b.f6994a;
        AbstractC0213D.g("ApplicationId must be set.", true ^ (str == null || str.trim().isEmpty()));
        this.f2831b = str;
        this.f2830a = str2;
        this.f2832c = str3;
        this.f2833d = str4;
        this.f2834e = str5;
        this.f = str6;
        this.f2835g = str7;
    }

    public static j a(Context context) {
        D d2 = new D(context, 22);
        String strH0 = d2.H0("google_app_id");
        if (TextUtils.isEmpty(strH0)) {
            return null;
        }
        return new j(strH0, d2.H0("google_api_key"), d2.H0("firebase_database_url"), d2.H0("ga_trackingId"), d2.H0("gcm_defaultSenderId"), d2.H0("google_storage_bucket"), d2.H0("project_id"));
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof j)) {
            return false;
        }
        j jVar = (j) obj;
        return AbstractC0213D.h(this.f2831b, jVar.f2831b) && AbstractC0213D.h(this.f2830a, jVar.f2830a) && AbstractC0213D.h(this.f2832c, jVar.f2832c) && AbstractC0213D.h(this.f2833d, jVar.f2833d) && AbstractC0213D.h(this.f2834e, jVar.f2834e) && AbstractC0213D.h(this.f, jVar.f) && AbstractC0213D.h(this.f2835g, jVar.f2835g);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f2831b, this.f2830a, this.f2832c, this.f2833d, this.f2834e, this.f, this.f2835g});
    }

    public final String toString() {
        D d2 = new D(this);
        d2.C0("applicationId", this.f2831b);
        d2.C0("apiKey", this.f2830a);
        d2.C0("databaseUrl", this.f2832c);
        d2.C0("gcmSenderId", this.f2834e);
        d2.C0("storageBucket", this.f);
        d2.C0("projectId", this.f2835g);
        return d2.toString();
    }
}
