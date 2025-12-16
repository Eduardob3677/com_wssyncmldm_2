package R3;

import java.io.UnsupportedEncodingException;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;

/* loaded from: classes.dex */
public final class w extends AbstractList implements RandomAccess, x {

    /* renamed from: d, reason: collision with root package name */
    public static final N f2419d = new N(new w());

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f2420c;

    public w() {
        this.f2420c = new ArrayList();
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i5, Object obj) {
        this.f2420c.add(i5, (String) obj);
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        return addAll(this.f2420c.size(), collection);
    }

    @Override // R3.x
    public final N c() {
        return new N(this);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        this.f2420c.clear();
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i5) {
        String str;
        ArrayList arrayList = this.f2420c;
        Object obj = arrayList.get(i5);
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof AbstractC0083e) {
            AbstractC0083e abstractC0083e = (AbstractC0083e) obj;
            str = abstractC0083e.x();
            if (abstractC0083e.r()) {
                arrayList.set(i5, str);
            }
        } else {
            byte[] bArr = (byte[]) obj;
            byte[] bArr2 = AbstractC0097t.f2415a;
            try {
                str = new String(bArr, "UTF-8");
                if (I.c(bArr, 0, bArr.length) == 0) {
                    arrayList.set(i5, str);
                }
            } catch (UnsupportedEncodingException e5) {
                throw new RuntimeException("UTF-8 not supported?", e5);
            }
        }
        return str;
    }

    @Override // R3.x
    public final List h() {
        return Collections.unmodifiableList(this.f2420c);
    }

    @Override // R3.x
    public final void i(z zVar) {
        this.f2420c.add(zVar);
        ((AbstractList) this).modCount++;
    }

    @Override // R3.x
    public final AbstractC0083e j(int i5) {
        AbstractC0083e zVar;
        ArrayList arrayList = this.f2420c;
        Object obj = arrayList.get(i5);
        if (obj instanceof AbstractC0083e) {
            zVar = (AbstractC0083e) obj;
        } else if (obj instanceof String) {
            try {
                zVar = new z(((String) obj).getBytes("UTF-8"));
            } catch (UnsupportedEncodingException e5) {
                throw new RuntimeException("UTF-8 not supported?", e5);
            }
        } else {
            byte[] bArr = (byte[]) obj;
            int length = bArr.length;
            byte[] bArr2 = new byte[length];
            System.arraycopy(bArr, 0, bArr2, 0, length);
            zVar = new z(bArr2);
        }
        if (zVar != obj) {
            arrayList.set(i5, zVar);
        }
        return zVar;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object remove(int i5) {
        Object objRemove = this.f2420c.remove(i5);
        ((AbstractList) this).modCount++;
        if (objRemove instanceof String) {
            return (String) objRemove;
        }
        if (objRemove instanceof AbstractC0083e) {
            return ((AbstractC0083e) objRemove).x();
        }
        byte[] bArr = (byte[]) objRemove;
        byte[] bArr2 = AbstractC0097t.f2415a;
        try {
            return new String(bArr, "UTF-8");
        } catch (UnsupportedEncodingException e5) {
            throw new RuntimeException("UTF-8 not supported?", e5);
        }
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int i5, Object obj) {
        Object obj2 = this.f2420c.set(i5, (String) obj);
        if (obj2 instanceof String) {
            return (String) obj2;
        }
        if (obj2 instanceof AbstractC0083e) {
            return ((AbstractC0083e) obj2).x();
        }
        byte[] bArr = (byte[]) obj2;
        byte[] bArr2 = AbstractC0097t.f2415a;
        try {
            return new String(bArr, "UTF-8");
        } catch (UnsupportedEncodingException e5) {
            throw new RuntimeException("UTF-8 not supported?", e5);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f2420c.size();
    }

    public w(x xVar) {
        this.f2420c = new ArrayList(xVar.size());
        addAll(xVar);
    }

    @Override // java.util.AbstractList, java.util.List
    public final boolean addAll(int i5, Collection collection) {
        if (collection instanceof x) {
            collection = ((x) collection).h();
        }
        boolean zAddAll = this.f2420c.addAll(i5, collection);
        ((AbstractList) this).modCount++;
        return zAddAll;
    }
}
