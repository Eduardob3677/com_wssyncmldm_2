package o;

import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;

/* renamed from: o.f, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0717f {

    /* renamed from: a, reason: collision with root package name */
    public final LinkedHashMap f8420a;

    /* renamed from: b, reason: collision with root package name */
    public int f8421b;

    /* renamed from: c, reason: collision with root package name */
    public final int f8422c;

    /* renamed from: d, reason: collision with root package name */
    public int f8423d;

    /* renamed from: e, reason: collision with root package name */
    public int f8424e;

    public C0717f(int i5) {
        if (i5 <= 0) {
            throw new IllegalArgumentException("maxSize <= 0");
        }
        this.f8422c = i5;
        this.f8420a = new LinkedHashMap(0, 0.75f, true);
    }

    public final Object a(Object obj) {
        if (obj == null) {
            throw new NullPointerException("key == null");
        }
        synchronized (this) {
            try {
                Object obj2 = this.f8420a.get(obj);
                if (obj2 != null) {
                    this.f8423d++;
                    return obj2;
                }
                this.f8424e++;
                return null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x0082, code lost:
    
        throw new java.lang.IllegalStateException(getClass().getName() + ".sizeOf() is reporting inconsistent results!");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object b(Object obj, Object obj2) {
        Object objPut;
        if (obj == null) {
            throw new NullPointerException("key == null || value == null");
        }
        synchronized (this) {
            try {
                this.f8421b++;
                objPut = this.f8420a.put(obj, obj2);
                if (objPut != null) {
                    this.f8421b--;
                }
            } finally {
            }
        }
        int i5 = this.f8422c;
        while (true) {
            synchronized (this) {
                try {
                    if (this.f8421b < 0 || (this.f8420a.isEmpty() && this.f8421b != 0)) {
                        break;
                    }
                    if (this.f8421b <= i5 || this.f8420a.isEmpty()) {
                        break;
                    }
                    Map.Entry entry = (Map.Entry) this.f8420a.entrySet().iterator().next();
                    Object key = entry.getKey();
                    entry.getValue();
                    this.f8420a.remove(key);
                    this.f8421b--;
                } finally {
                }
            }
        }
        return objPut;
    }

    public final synchronized String toString() {
        int i5;
        try {
            int i6 = this.f8423d;
            int i7 = this.f8424e + i6;
            i5 = i7 != 0 ? (i6 * 100) / i7 : 0;
            Locale locale = Locale.US;
        } catch (Throwable th) {
            throw th;
        }
        return "LruCache[maxSize=" + this.f8422c + ",hits=" + this.f8423d + ",misses=" + this.f8424e + ",hitRate=" + i5 + "%]";
    }
}
