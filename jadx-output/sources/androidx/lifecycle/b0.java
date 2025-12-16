package androidx.lifecycle;

/* loaded from: classes.dex */
public interface b0 {
    default Y a(Class cls) {
        throw new UnsupportedOperationException("Factory.create(String) is unsupported.  This Factory requires `CreationExtras` to be passed into `create` method.");
    }

    default Y e(Class cls, b0.c cVar) {
        return a(cls);
    }
}
