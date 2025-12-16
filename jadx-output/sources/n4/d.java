package n4;

import e3.InterfaceC0416a;
import java.util.Iterator;

/* loaded from: classes.dex */
public abstract class d implements Iterable, InterfaceC0416a {

    /* renamed from: c, reason: collision with root package name */
    public a f8341c;

    public final boolean isEmpty() {
        return this.f8341c.l() == 0;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return this.f8341c.iterator();
    }
}
