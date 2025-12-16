package g4;

import c1.w;
import c3.InterfaceC0221a;
import c3.InterfaceC0222b;
import com.idm.providers.mo.IDMMoInterface;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.locks.ReentrantLock;

/* loaded from: classes.dex */
public class l implements o {

    /* renamed from: d, reason: collision with root package name */
    public static final String f6947d;

    /* renamed from: e, reason: collision with root package name */
    public static final b f6948e;

    /* renamed from: a, reason: collision with root package name */
    public final n f6949a;

    /* renamed from: b, reason: collision with root package name */
    public final a f6950b;

    /* renamed from: c, reason: collision with root package name */
    public final String f6951c;

    static {
        String strSubstring;
        String canonicalName = l.class.getCanonicalName();
        d3.i.e("<this>", canonicalName);
        int iN = s4.h.n(canonicalName, IDMMoInterface.IDM_MO_ROOT_PATH);
        if (iN == -1) {
            strSubstring = "";
        } else {
            strSubstring = canonicalName.substring(0, iN);
            d3.i.d("this as java.lang.String…ing(startIndex, endIndex)", strSubstring);
        }
        f6947d = strSubstring;
        f6948e = new b("NO_LOCKS", a.f6932c);
    }

    public l(String str) {
        ReentrantLock reentrantLock = new ReentrantLock();
        d3.i.e("lock", reentrantLock);
        w wVar = new w();
        wVar.f5265c = reentrantLock;
        this(str, wVar);
    }

    public static void f(AssertionError assertionError) {
        StackTraceElement[] stackTrace = assertionError.getStackTrace();
        int length = stackTrace.length;
        int i5 = 0;
        while (true) {
            if (i5 >= length) {
                i5 = -1;
                break;
            } else if (!stackTrace[i5].getClassName().startsWith(f6947d)) {
                break;
            } else {
                i5++;
            }
        }
        List listSubList = Arrays.asList(stackTrace).subList(i5, length);
        assertionError.setStackTrace((StackTraceElement[]) listSubList.toArray(new StackTraceElement[listSubList.size()]));
    }

    public final i a(InterfaceC0221a interfaceC0221a) {
        return new i(this, interfaceC0221a);
    }

    public final e b(InterfaceC0222b interfaceC0222b) {
        return new e(this, new ConcurrentHashMap(3, 1.0f, 2), interfaceC0222b);
    }

    public final j c(InterfaceC0222b interfaceC0222b) {
        return new j(this, new ConcurrentHashMap(3, 1.0f, 2), interfaceC0222b);
    }

    public final h d(InterfaceC0221a interfaceC0221a) {
        return new h(this, interfaceC0221a);
    }

    public B1.c e(String str, Object obj) {
        String str2;
        StringBuilder sb = new StringBuilder("Recursion detected ");
        sb.append(str);
        if (obj == null) {
            str2 = "";
        } else {
            str2 = "on input: " + obj;
        }
        sb.append(str2);
        sb.append(" under ");
        sb.append(this);
        AssertionError assertionError = new AssertionError(sb.toString());
        f(assertionError);
        throw assertionError;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append("@");
        sb.append(Integer.toHexString(hashCode()));
        sb.append(" (");
        return B.f.w(sb, this.f6951c, ")");
    }

    public l(String str, n nVar) {
        a aVar = a.f6933d;
        this.f6949a = nVar;
        this.f6950b = aVar;
        this.f6951c = str;
    }
}
