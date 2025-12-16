package androidx.room;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import y0.InterfaceC0927c;
import z0.C0945g;

/* loaded from: classes.dex */
public abstract class b extends m {
    public abstract void bind(InterfaceC0927c interfaceC0927c, Object obj);

    public final void insert(Object obj) {
        InterfaceC0927c interfaceC0927cAcquire = acquire();
        try {
            bind(interfaceC0927cAcquire, obj);
            C0945g c0945g = (C0945g) interfaceC0927cAcquire;
            c0945g.f9718d.executeInsert();
            release(c0945g);
        } catch (Throwable th) {
            release(interfaceC0927cAcquire);
            throw th;
        }
    }

    public final long insertAndReturnId(Object obj) {
        InterfaceC0927c interfaceC0927cAcquire = acquire();
        try {
            bind(interfaceC0927cAcquire, obj);
            return ((C0945g) interfaceC0927cAcquire).f9718d.executeInsert();
        } finally {
            release(interfaceC0927cAcquire);
        }
    }

    public final long[] insertAndReturnIdsArray(Collection<Object> collection) {
        InterfaceC0927c interfaceC0927cAcquire = acquire();
        try {
            long[] jArr = new long[collection.size()];
            Iterator<Object> it = collection.iterator();
            int i5 = 0;
            while (it.hasNext()) {
                bind(interfaceC0927cAcquire, it.next());
                jArr[i5] = ((C0945g) interfaceC0927cAcquire).f9718d.executeInsert();
                i5++;
            }
            return jArr;
        } finally {
            release(interfaceC0927cAcquire);
        }
    }

    public final Long[] insertAndReturnIdsArrayBox(Collection<Object> collection) {
        InterfaceC0927c interfaceC0927cAcquire = acquire();
        try {
            Long[] lArr = new Long[collection.size()];
            Iterator<Object> it = collection.iterator();
            int i5 = 0;
            while (it.hasNext()) {
                bind(interfaceC0927cAcquire, it.next());
                lArr[i5] = Long.valueOf(((C0945g) interfaceC0927cAcquire).f9718d.executeInsert());
                i5++;
            }
            return lArr;
        } finally {
            release(interfaceC0927cAcquire);
        }
    }

    public final List<Long> insertAndReturnIdsList(Object[] objArr) {
        InterfaceC0927c interfaceC0927cAcquire = acquire();
        try {
            ArrayList arrayList = new ArrayList(objArr.length);
            int i5 = 0;
            for (Object obj : objArr) {
                bind(interfaceC0927cAcquire, obj);
                arrayList.add(i5, Long.valueOf(((C0945g) interfaceC0927cAcquire).f9718d.executeInsert()));
                i5++;
            }
            return arrayList;
        } finally {
            release(interfaceC0927cAcquire);
        }
    }

    public final void insert(Object[] objArr) {
        InterfaceC0927c interfaceC0927cAcquire = acquire();
        try {
            for (Object obj : objArr) {
                bind(interfaceC0927cAcquire, obj);
                ((C0945g) interfaceC0927cAcquire).f9718d.executeInsert();
            }
        } finally {
            release(interfaceC0927cAcquire);
        }
    }

    public final long[] insertAndReturnIdsArray(Object[] objArr) {
        InterfaceC0927c interfaceC0927cAcquire = acquire();
        try {
            long[] jArr = new long[objArr.length];
            int i5 = 0;
            for (Object obj : objArr) {
                bind(interfaceC0927cAcquire, obj);
                jArr[i5] = ((C0945g) interfaceC0927cAcquire).f9718d.executeInsert();
                i5++;
            }
            return jArr;
        } finally {
            release(interfaceC0927cAcquire);
        }
    }

    public final Long[] insertAndReturnIdsArrayBox(Object[] objArr) {
        InterfaceC0927c interfaceC0927cAcquire = acquire();
        try {
            Long[] lArr = new Long[objArr.length];
            int i5 = 0;
            for (Object obj : objArr) {
                bind(interfaceC0927cAcquire, obj);
                lArr[i5] = Long.valueOf(((C0945g) interfaceC0927cAcquire).f9718d.executeInsert());
                i5++;
            }
            return lArr;
        } finally {
            release(interfaceC0927cAcquire);
        }
    }

    public final List<Long> insertAndReturnIdsList(Collection<Object> collection) {
        InterfaceC0927c interfaceC0927cAcquire = acquire();
        try {
            ArrayList arrayList = new ArrayList(collection.size());
            Iterator<Object> it = collection.iterator();
            int i5 = 0;
            while (it.hasNext()) {
                bind(interfaceC0927cAcquire, it.next());
                arrayList.add(i5, Long.valueOf(((C0945g) interfaceC0927cAcquire).f9718d.executeInsert()));
                i5++;
            }
            return arrayList;
        } finally {
            release(interfaceC0927cAcquire);
        }
    }

    public final void insert(Iterable<Object> iterable) {
        InterfaceC0927c interfaceC0927cAcquire = acquire();
        try {
            Iterator<Object> it = iterable.iterator();
            while (it.hasNext()) {
                bind(interfaceC0927cAcquire, it.next());
                ((C0945g) interfaceC0927cAcquire).f9718d.executeInsert();
            }
        } finally {
            release(interfaceC0927cAcquire);
        }
    }
}
