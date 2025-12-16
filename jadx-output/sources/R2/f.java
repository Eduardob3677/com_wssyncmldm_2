package R2;

import e3.InterfaceC0417b;
import java.util.AbstractSet;
import java.util.Set;

/* loaded from: classes.dex */
public abstract class f extends AbstractSet implements Set, InterfaceC0417b {
    public abstract int l();

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final /* bridge */ int size() {
        return l();
    }
}
