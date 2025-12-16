package m;

import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public class f implements Iterable {

    /* renamed from: c, reason: collision with root package name */
    public c f8257c;

    /* renamed from: d, reason: collision with root package name */
    public c f8258d;

    /* renamed from: e, reason: collision with root package name */
    public final WeakHashMap f8259e = new WeakHashMap();
    public int f = 0;

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0048, code lost:
    
        if (r1.hasNext() != false) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0050, code lost:
    
        if (((m.b) r6).hasNext() != false) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0054, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:?, code lost:
    
        return true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        if (this.f != fVar.f) {
            return false;
        }
        Iterator it = iterator();
        Iterator it2 = fVar.iterator();
        while (true) {
            b bVar = (b) it;
            if (!bVar.hasNext()) {
                break;
            }
            b bVar2 = (b) it2;
            if (!bVar2.hasNext()) {
                break;
            }
            Map.Entry entry = (Map.Entry) bVar.next();
            Object next = bVar2.next();
            if ((entry == null && next != null) || (entry != null && !entry.equals(next))) {
                break;
            }
        }
        return false;
    }

    public final int hashCode() {
        Iterator it = iterator();
        int iHashCode = 0;
        while (true) {
            b bVar = (b) it;
            if (!bVar.hasNext()) {
                return iHashCode;
            }
            iHashCode += ((Map.Entry) bVar.next()).hashCode();
        }
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        b bVar = new b(this.f8257c, this.f8258d, 0);
        this.f8259e.put(bVar, Boolean.FALSE);
        return bVar;
    }

    public c l(Object obj) {
        c cVar = this.f8257c;
        while (cVar != null && !cVar.f8251c.equals(obj)) {
            cVar = cVar.f8253e;
        }
        return cVar;
    }

    public Object m(Object obj, Object obj2) {
        c cVarL = l(obj);
        if (cVarL != null) {
            return cVarL.f8252d;
        }
        c cVar = new c(obj, obj2);
        this.f++;
        c cVar2 = this.f8258d;
        if (cVar2 == null) {
            this.f8257c = cVar;
            this.f8258d = cVar;
            return null;
        }
        cVar2.f8253e = cVar;
        cVar.f = cVar2;
        this.f8258d = cVar;
        return null;
    }

    public Object n(Object obj) {
        c cVarL = l(obj);
        if (cVarL == null) {
            return null;
        }
        this.f--;
        WeakHashMap weakHashMap = this.f8259e;
        if (!weakHashMap.isEmpty()) {
            Iterator it = weakHashMap.keySet().iterator();
            while (it.hasNext()) {
                ((e) it.next()).a(cVarL);
            }
        }
        c cVar = cVarL.f;
        if (cVar != null) {
            cVar.f8253e = cVarL.f8253e;
        } else {
            this.f8257c = cVarL.f8253e;
        }
        c cVar2 = cVarL.f8253e;
        if (cVar2 != null) {
            cVar2.f = cVar;
        } else {
            this.f8258d = cVar;
        }
        cVarL.f8253e = null;
        cVarL.f = null;
        return cVarL.f8252d;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("[");
        Iterator it = iterator();
        while (true) {
            b bVar = (b) it;
            if (!bVar.hasNext()) {
                sb.append("]");
                return sb.toString();
            }
            sb.append(((Map.Entry) bVar.next()).toString());
            if (bVar.hasNext()) {
                sb.append(", ");
            }
        }
    }
}
