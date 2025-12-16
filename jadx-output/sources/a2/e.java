package a2;

import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import c1.AbstractC0213D;
import com.google.android.gms.internal.p000firebaseauthapi.C0303n;
import com.google.android.gms.internal.p000firebaseauthapi.F2;
import com.google.android.gms.internal.p000firebaseauthapi.M;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import o.C0713b;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public abstract class e {

    /* renamed from: a, reason: collision with root package name */
    public static final A.d f3048a = new A.d("JSONParser", new String[0]);

    public static ArrayList a(JSONArray jSONArray) throws JSONException {
        ArrayList arrayList = new ArrayList();
        for (int i5 = 0; i5 < jSONArray.length(); i5++) {
            Object objD = jSONArray.get(i5);
            if (objD instanceof JSONArray) {
                objD = a((JSONArray) objD);
            } else if (objD instanceof JSONObject) {
                objD = d((JSONObject) objD);
            }
            arrayList.add(objD);
        }
        return arrayList;
    }

    public static Map b(String str) {
        AbstractC0213D.c(str);
        List listQ = new C0303n(2, new M(10)).q(str);
        int size = listQ.size();
        A.d dVar = f3048a;
        if (size < 2) {
            dVar.e(str.length() != 0 ? "Invalid idToken ".concat(str) : new String("Invalid idToken "), new Object[0]);
            return new HashMap();
        }
        String str2 = (String) listQ.get(1);
        try {
            C0713b c0713bC = c(new String(str2 == null ? null : Base64.decode(str2, 11), "UTF-8"));
            return c0713bC == null ? new HashMap() : c0713bC;
        } catch (UnsupportedEncodingException e5) {
            dVar.d("Unable to decode token", e5, new Object[0]);
            return new HashMap();
        }
    }

    public static C0713b c(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (jSONObject != JSONObject.NULL) {
                return d(jSONObject);
            }
            return null;
        } catch (Exception e5) {
            Log.d("JSONParser", "Failed to parse JSONObject into Map.");
            throw new F2(e5);
        }
    }

    public static C0713b d(JSONObject jSONObject) throws JSONException {
        C0713b c0713b = new C0713b();
        Iterator<String> itKeys = jSONObject.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            Object objD = jSONObject.get(next);
            if (objD instanceof JSONArray) {
                objD = a((JSONArray) objD);
            } else if (objD instanceof JSONObject) {
                objD = d((JSONObject) objD);
            }
            c0713b.put(next, objD);
        }
        return c0713b;
    }
}
