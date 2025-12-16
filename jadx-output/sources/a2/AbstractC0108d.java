package a2;

import com.google.android.gms.internal.p000firebaseauthapi.F2;
import java.util.HashMap;
import s2.C0837c;

/* renamed from: a2.d, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0108d {

    /* renamed from: a, reason: collision with root package name */
    public static final A.d f3047a = new A.d("GetTokenResultFactory", new String[0]);

    public static C0837c a(String str) {
        Object map;
        try {
            map = e.b(str);
        } catch (F2 e5) {
            f3047a.d("Error parsing token claims", e5, new Object[0]);
            map = new HashMap();
        }
        C0837c c0837c = new C0837c();
        c0837c.f9022c = map;
        return c0837c;
    }
}
