package R3;

import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Stack;

/* loaded from: classes.dex */
public final class C implements Iterator {

    /* renamed from: c, reason: collision with root package name */
    public final Stack f2333c = new Stack();

    /* renamed from: d, reason: collision with root package name */
    public z f2334d;

    public C(AbstractC0083e abstractC0083e) {
        while (abstractC0083e instanceof E) {
            E e5 = (E) abstractC0083e;
            this.f2333c.push(e5);
            abstractC0083e = e5.f2340e;
        }
        this.f2334d = (z) abstractC0083e;
    }

    @Override // java.util.Iterator
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public final z next() {
        z zVar;
        z zVar2 = this.f2334d;
        if (zVar2 == null) {
            throw new NoSuchElementException();
        }
        while (true) {
            Stack stack = this.f2333c;
            if (!stack.isEmpty()) {
                Object obj = ((E) stack.pop()).f;
                while (obj instanceof E) {
                    E e5 = (E) obj;
                    stack.push(e5);
                    obj = e5.f2340e;
                }
                zVar = (z) obj;
                if (zVar.f2424d.length != 0) {
                    break;
                }
            } else {
                zVar = null;
                break;
            }
        }
        this.f2334d = zVar;
        return zVar2;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f2334d != null;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
