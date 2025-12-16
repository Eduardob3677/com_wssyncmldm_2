package Y1;

import android.net.Uri;
import c1.AbstractC0213D;
import java.util.Set;

/* loaded from: classes.dex */
public final class b {

    /* renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ int f2923c = 0;

    /* renamed from: a, reason: collision with root package name */
    public final String f2924a;

    /* renamed from: b, reason: collision with root package name */
    public final String f2925b;

    static {
        q qVar = new q();
        qVar.put("recoverEmail", 2);
        qVar.put("resetPassword", 0);
        qVar.put("signIn", 4);
        qVar.put("verifyEmail", 1);
        qVar.put("verifyBeforeChangeEmail", 5);
        qVar.put("revertSecondFactorAddition", 6);
    }

    public b(String str) {
        String strA = a(str, "apiKey");
        String strA2 = a(str, "oobCode");
        String strA3 = a(str, "mode");
        if (strA == null || strA2 == null || strA3 == null) {
            throw new IllegalArgumentException("apiKey, oobCode and mode are required in a valid action code URL");
        }
        AbstractC0213D.c(strA);
        AbstractC0213D.c(strA2);
        this.f2924a = strA2;
        AbstractC0213D.c(strA3);
        a(str, "continueUrl");
        a(str, "languageCode");
        this.f2925b = a(str, "tenantId");
    }

    public static String a(String str, String str2) {
        Uri uri = Uri.parse(str);
        try {
            Set<String> queryParameterNames = uri.getQueryParameterNames();
            if (queryParameterNames.contains(str2)) {
                return uri.getQueryParameter(str2);
            }
            if (!queryParameterNames.contains("link")) {
                return null;
            }
            String queryParameter = uri.getQueryParameter("link");
            AbstractC0213D.c(queryParameter);
            return Uri.parse(queryParameter).getQueryParameter(str2);
        } catch (NullPointerException | UnsupportedOperationException unused) {
            return null;
        }
    }
}
