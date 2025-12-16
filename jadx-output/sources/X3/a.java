package X3;

import R2.o;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import u3.V;

/* loaded from: classes.dex */
public final class a implements q4.a {

    /* renamed from: c, reason: collision with root package name */
    public static final a f2867c = new a();

    @Override // q4.a
    public final Iterable r(Object obj) {
        int i5 = f.f2874a;
        Collection collectionP = ((V) obj).p();
        ArrayList arrayList = new ArrayList(o.C0(collectionP));
        Iterator it = ((ArrayList) collectionP).iterator();
        while (it.hasNext()) {
            arrayList.add(((V) it.next()).a());
        }
        return arrayList;
    }
}
