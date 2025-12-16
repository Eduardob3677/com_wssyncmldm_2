package s2;

import com.idm.core.tnds.IDMTndsXmlWbxmlDefine;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

/* renamed from: s2.b, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0836b {

    /* renamed from: a, reason: collision with root package name */
    public final String f9019a;

    /* renamed from: b, reason: collision with root package name */
    public final C0837c f9020b;

    public C0836b(Set set, C0837c c0837c) {
        this.f9019a = b(set);
        this.f9020b = c0837c;
    }

    public static String b(Set set) {
        StringBuilder sb = new StringBuilder();
        Iterator it = set.iterator();
        while (it.hasNext()) {
            C0835a c0835a = (C0835a) it.next();
            sb.append(c0835a.f9017a);
            sb.append(IDMTndsXmlWbxmlDefine.XML_SLASH);
            sb.append(c0835a.f9018b);
            if (it.hasNext()) {
                sb.append(' ');
            }
        }
        return sb.toString();
    }

    public final String a() {
        Set setUnmodifiableSet;
        Set setUnmodifiableSet2;
        C0837c c0837c = this.f9020b;
        synchronized (((HashSet) c0837c.f9022c)) {
            setUnmodifiableSet = Collections.unmodifiableSet((HashSet) c0837c.f9022c);
        }
        boolean zIsEmpty = setUnmodifiableSet.isEmpty();
        String str = this.f9019a;
        if (zIsEmpty) {
            return str;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(' ');
        synchronized (((HashSet) c0837c.f9022c)) {
            setUnmodifiableSet2 = Collections.unmodifiableSet((HashSet) c0837c.f9022c);
        }
        sb.append(b(setUnmodifiableSet2));
        return sb.toString();
    }
}
