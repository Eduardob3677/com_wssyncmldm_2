package b1;

import android.text.TextUtils;
import c1.AbstractC0213D;
import c1.InterfaceC0216b;
import com.google.android.gms.internal.p000firebaseauthapi.X3;
import com.samsung.android.knox.container.KnoxContainerManager;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: b1.e, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0199e implements InterfaceC0216b, X3 {

    /* renamed from: c, reason: collision with root package name */
    public boolean f5073c;

    /* renamed from: d, reason: collision with root package name */
    public Object f5074d;

    /* renamed from: e, reason: collision with root package name */
    public Object f5075e;
    public Object f;

    /* renamed from: g, reason: collision with root package name */
    public Object f5076g;

    /* renamed from: h, reason: collision with root package name */
    public Object f5077h;

    @Override // com.google.android.gms.internal.p000firebaseauthapi.X3
    public String a() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        if (TextUtils.isEmpty((String) this.f5076g)) {
            jSONObject.put("sessionInfo", (String) this.f5075e);
            jSONObject.put(KnoxContainerManager.CONTAINER_CREATION_STATUS_CODE, (String) this.f);
        } else {
            jSONObject.put("phoneNumber", (String) this.f5074d);
            jSONObject.put("temporaryProof", (String) this.f5076g);
        }
        String str = (String) this.f5077h;
        if (str != null) {
            jSONObject.put("idToken", str);
        }
        if (!this.f5073c) {
            jSONObject.put("operation", 2);
        }
        return jSONObject.toString();
    }

    public void b(Z0.a aVar) {
        C0198d c0198d = (C0198d) ((C0201g) this.f5077h).f5089g.get((C0195a) this.f5075e);
        AbstractC0213D.b(c0198d.f5072l.f5091i);
        ((c1.k) c0198d.f5063b).d();
        c0198d.s(aVar);
    }

    @Override // c1.InterfaceC0216b
    public void d(Z0.a aVar) {
        ((C0201g) this.f5077h).f5091i.post(new G.a(this, aVar, 5, false));
    }
}
