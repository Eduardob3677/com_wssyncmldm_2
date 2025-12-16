package q1;

/* loaded from: classes.dex */
public final class i implements m {

    /* renamed from: a, reason: collision with root package name */
    public final int f8622a;

    public i(int i5) {
        this.f8622a = i5;
    }

    @Override // java.lang.annotation.Annotation
    public final Class annotationType() {
        return m.class;
    }

    @Override // java.lang.annotation.Annotation
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof m)) {
            return false;
        }
        i iVar = (i) ((m) obj);
        if (this.f8622a == iVar.f8622a) {
            Object obj2 = l.f8624c;
            iVar.getClass();
            if (obj2.equals(obj2)) {
                return true;
            }
        }
        return false;
    }

    @Override // java.lang.annotation.Annotation
    public final int hashCode() {
        return (this.f8622a ^ 14552422) + (l.f8624c.hashCode() ^ 2041407134);
    }

    @Override // java.lang.annotation.Annotation
    public final String toString() {
        return "@com.google.firebase.encoders.proto.Protobuf(tag=" + this.f8622a + "intEncoding=" + l.f8624c + ')';
    }
}
