package m;

import java.util.Map;

/* loaded from: classes.dex */
public final class c implements Map.Entry {

    /* renamed from: c, reason: collision with root package name */
    public final Object f8251c;

    /* renamed from: d, reason: collision with root package name */
    public final Object f8252d;

    /* renamed from: e, reason: collision with root package name */
    public c f8253e;
    public c f;

    public c(Object obj, Object obj2) {
        this.f8251c = obj;
        this.f8252d = obj2;
    }

    @Override // java.util.Map.Entry
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        return this.f8251c.equals(cVar.f8251c) && this.f8252d.equals(cVar.f8252d);
    }

    @Override // java.util.Map.Entry
    public final Object getKey() {
        return this.f8251c;
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        return this.f8252d;
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        return this.f8252d.hashCode() ^ this.f8251c.hashCode();
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        throw new UnsupportedOperationException("An entry modification is not supported");
    }

    public final String toString() {
        return this.f8251c + "=" + this.f8252d;
    }
}
