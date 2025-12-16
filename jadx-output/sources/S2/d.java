package S2;

import d3.i;
import e3.InterfaceC0416a;
import java.util.Map;

/* loaded from: classes.dex */
public final class d implements Map.Entry, InterfaceC0416a {

    /* renamed from: c, reason: collision with root package name */
    public final e f2592c;

    /* renamed from: d, reason: collision with root package name */
    public final int f2593d;

    public d(e eVar, int i5) {
        i.e("map", eVar);
        this.f2592c = eVar;
        this.f2593d = i5;
    }

    @Override // java.util.Map.Entry
    public final boolean equals(Object obj) {
        if (obj instanceof Map.Entry) {
            Map.Entry entry = (Map.Entry) obj;
            if (i.a(entry.getKey(), getKey()) && i.a(entry.getValue(), getValue())) {
                return true;
            }
        }
        return false;
    }

    @Override // java.util.Map.Entry
    public final Object getKey() {
        return this.f2592c.f2594c[this.f2593d];
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        Object[] objArr = this.f2592c.f2595d;
        i.b(objArr);
        return objArr[this.f2593d];
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        Object key = getKey();
        int iHashCode = key != null ? key.hashCode() : 0;
        Object value = getValue();
        return iHashCode ^ (value != null ? value.hashCode() : 0);
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        e eVar = this.f2592c;
        eVar.c();
        Object[] objArr = eVar.f2595d;
        if (objArr == null) {
            int length = eVar.f2594c.length;
            if (length < 0) {
                throw new IllegalArgumentException("capacity must be non-negative.".toString());
            }
            objArr = new Object[length];
            eVar.f2595d = objArr;
        }
        int i5 = this.f2593d;
        Object obj2 = objArr[i5];
        objArr[i5] = obj;
        return obj2;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getKey());
        sb.append('=');
        sb.append(getValue());
        return sb.toString();
    }
}
