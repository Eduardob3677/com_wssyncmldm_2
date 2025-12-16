package com.google.android.gms.internal.p000firebaseauthapi;

import J3.c;
import N3.a;
import N3.f;
import N3.g;
import c1.AbstractC0213D;
import com.samsung.android.knox.ex.KnoxContract;
import d3.i;
import d4.r;
import f4.j;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import r3.InterfaceC0807j;
import s2.C0837c;

/* loaded from: classes.dex */
public final class G4 implements X3 {

    /* renamed from: c, reason: collision with root package name */
    public Object f5377c;

    /* renamed from: d, reason: collision with root package name */
    public Object f5378d;

    /* renamed from: e, reason: collision with root package name */
    public Object f5379e;
    public Object f;

    /* renamed from: g, reason: collision with root package name */
    public Object f5380g;

    /* renamed from: h, reason: collision with root package name */
    public Object f5381h;

    /* renamed from: i, reason: collision with root package name */
    public Object f5382i;

    /* renamed from: j, reason: collision with root package name */
    public final Object f5383j;

    /* renamed from: k, reason: collision with root package name */
    public final Object f5384k;

    public G4() {
        this.f5383j = new M4(null);
        this.f5384k = new M4(null);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0080  */
    @Override // com.google.android.gms.internal.p000firebaseauthapi.X3
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public String a() throws JSONException {
        char c2;
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("returnSecureToken", true);
        M4 m42 = (M4) this.f5384k;
        if (!m42.f5433d.isEmpty()) {
            List list = m42.f5433d;
            JSONArray jSONArray = new JSONArray();
            for (int i5 = 0; i5 < list.size(); i5++) {
                jSONArray.put(list.get(i5));
            }
            jSONObject.put("deleteProvider", jSONArray);
        }
        List list2 = ((M4) this.f5383j).f5433d;
        int size = list2.size();
        int[] iArr = new int[size];
        for (int i6 = 0; i6 < list2.size(); i6++) {
            String str = (String) list2.get(i6);
            int i7 = 2;
            switch (str.hashCode()) {
                case -333046776:
                    if (str.equals("DISPLAY_NAME")) {
                        c2 = 1;
                        break;
                    } else {
                        c2 = 65535;
                        break;
                    }
                case 66081660:
                    if (str.equals("EMAIL")) {
                        c2 = 0;
                        break;
                    }
                    break;
                case 1939891618:
                    if (str.equals("PHOTO_URL")) {
                        c2 = 3;
                        break;
                    }
                    break;
                case 1999612571:
                    if (str.equals("PASSWORD")) {
                        c2 = 2;
                        break;
                    }
                    break;
            }
            if (c2 == 0) {
                i7 = 1;
            } else if (c2 != 1) {
                i7 = c2 != 2 ? c2 != 3 ? 0 : 4 : 5;
            }
            iArr[i6] = i7;
        }
        if (size > 0) {
            JSONArray jSONArray2 = new JSONArray();
            for (int i8 = 0; i8 < size; i8++) {
                jSONArray2.put(iArr[i8]);
            }
            jSONObject.put("deleteAttribute", jSONArray2);
        }
        String str2 = (String) this.f5377c;
        if (str2 != null) {
            jSONObject.put("idToken", str2);
        }
        String str3 = (String) this.f5379e;
        if (str3 != null) {
            jSONObject.put("email", str3);
        }
        String str4 = (String) this.f;
        if (str4 != null) {
            jSONObject.put(KnoxContract.Config.Settings.PARAM_PASSWORD, str4);
        }
        String str5 = (String) this.f5378d;
        if (str5 != null) {
            jSONObject.put("displayName", str5);
        }
        String str6 = (String) this.f5381h;
        if (str6 != null) {
            jSONObject.put("photoUrl", str6);
        }
        String str7 = (String) this.f5380g;
        if (str7 != null) {
            jSONObject.put("oobCode", str7);
        }
        String str8 = (String) this.f5382i;
        if (str8 != null) {
            jSONObject.put("tenantId", str8);
        }
        return jSONObject.toString();
    }

    public G4 b(InterfaceC0807j interfaceC0807j, List list, f fVar, C0837c c0837c, g gVar, a aVar) {
        i.e("descriptor", interfaceC0807j);
        i.e("nameResolver", fVar);
        i.e("typeTable", c0837c);
        g gVar2 = gVar;
        i.e("versionRequirementTable", gVar2);
        i.e("metadataVersion", aVar);
        int i5 = aVar.f1866b;
        if ((i5 != 1 || aVar.f1867c < 4) && i5 <= 1) {
            gVar2 = (g) this.f5380g;
        }
        return new G4((d4.i) this.f5377c, fVar, interfaceC0807j, c0837c, gVar2, aVar, (j) this.f5382i, (c) this.f5383j, list);
    }

    public void d(String str) {
        AbstractC0213D.c(str);
        this.f5377c = str;
    }

    public G4(d4.i iVar, f fVar, InterfaceC0807j interfaceC0807j, C0837c c0837c, g gVar, a aVar, j jVar, c cVar, List list) {
        String strA;
        i.e("components", iVar);
        i.e("nameResolver", fVar);
        i.e("containingDeclaration", interfaceC0807j);
        i.e("typeTable", c0837c);
        i.e("versionRequirementTable", gVar);
        i.e("metadataVersion", aVar);
        this.f5377c = iVar;
        this.f5378d = fVar;
        this.f5379e = interfaceC0807j;
        this.f = c0837c;
        this.f5380g = gVar;
        this.f5381h = aVar;
        this.f5382i = jVar;
        this.f5383j = new c(this, cVar, list, "Deserializer for \"" + interfaceC0807j.getName() + '\"', (jVar == null || (strA = jVar.a()) == null) ? "[container not found]" : strA);
        this.f5384k = new r(this);
    }
}
