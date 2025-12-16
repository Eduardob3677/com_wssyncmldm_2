package a2;

import c1.AbstractC0213D;
import com.google.android.gms.internal.p000firebaseauthapi.X3;
import com.samsung.android.knox.container.KnoxContainerManager;
import com.samsung.android.lib.episode.EternalContract;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class m implements X3 {

    /* renamed from: c, reason: collision with root package name */
    public final String f3059c;

    /* renamed from: d, reason: collision with root package name */
    public String f3060d;

    /* renamed from: e, reason: collision with root package name */
    public final String f3061e;
    public final String f;

    /* renamed from: g, reason: collision with root package name */
    public final String f3062g;

    public m(String str, String str2, String str3, String str4, String str5) {
        this.f3059c = str;
        this.f3060d = str2;
        this.f3061e = str3;
        this.f = str4;
        this.f3062g = str5;
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.X3
    public String a() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("idToken", this.f3060d);
        this.f3059c.getClass();
        jSONObject.put("mfaProvider", 1);
        String str = this.f;
        if (str != null) {
            jSONObject.put("displayName", str);
        }
        JSONObject jSONObject2 = new JSONObject();
        String str2 = this.f3061e;
        if (str2 != null) {
            jSONObject2.put("sessionInfo", str2);
        }
        String str3 = this.f3062g;
        if (str3 != null) {
            jSONObject2.put(KnoxContainerManager.CONTAINER_CREATION_STATUS_CODE, str3);
        }
        jSONObject.put("phoneVerificationInfo", jSONObject2);
        return jSONObject.toString();
    }

    public m(String str, String str2, String str3, String str4) {
        AbstractC0213D.c(EternalContract.DEVICE_TYPE_PHONE);
        this.f3059c = EternalContract.DEVICE_TYPE_PHONE;
        AbstractC0213D.c(str);
        this.f3060d = str;
        this.f3061e = str2;
        this.f3062g = str3;
        this.f = str4;
    }
}
