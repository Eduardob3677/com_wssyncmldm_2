package M0;

import android.content.Context;

/* loaded from: classes.dex */
public final class b extends c {

    /* renamed from: a, reason: collision with root package name */
    public final Context f1812a;

    /* renamed from: b, reason: collision with root package name */
    public final T0.b f1813b;

    /* renamed from: c, reason: collision with root package name */
    public final T0.b f1814c;

    /* renamed from: d, reason: collision with root package name */
    public final String f1815d;

    public b(Context context, T0.b bVar, T0.b bVar2, String str) {
        if (context == null) {
            throw new NullPointerException("Null applicationContext");
        }
        this.f1812a = context;
        if (bVar == null) {
            throw new NullPointerException("Null wallClock");
        }
        this.f1813b = bVar;
        if (bVar2 == null) {
            throw new NullPointerException("Null monotonicClock");
        }
        this.f1814c = bVar2;
        if (str == null) {
            throw new NullPointerException("Null backendName");
        }
        this.f1815d = str;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        if (this.f1812a.equals(((b) cVar).f1812a)) {
            b bVar = (b) cVar;
            if (this.f1813b.equals(bVar.f1813b) && this.f1814c.equals(bVar.f1814c) && this.f1815d.equals(bVar.f1815d)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.f1815d.hashCode() ^ ((((((this.f1812a.hashCode() ^ 1000003) * 1000003) ^ this.f1813b.hashCode()) * 1000003) ^ this.f1814c.hashCode()) * 1000003);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("CreationContext{applicationContext=");
        sb.append(this.f1812a);
        sb.append(", wallClock=");
        sb.append(this.f1813b);
        sb.append(", monotonicClock=");
        sb.append(this.f1814c);
        sb.append(", backendName=");
        return B.f.w(sb, this.f1815d, "}");
    }
}
