package b2;

import java.util.Collections;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import k2.InterfaceC0638a;

/* loaded from: classes.dex */
public final class q implements InterfaceC0638a {

    /* renamed from: a, reason: collision with root package name */
    public volatile Set f5143a;

    /* renamed from: b, reason: collision with root package name */
    public volatile Set f5144b;

    /* JADX WARN: Code restructure failed: missing block: B:20:0x003a, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x003f, code lost:
    
        throw r0;
     */
    @Override // k2.InterfaceC0638a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object get() {
        if (this.f5144b == null) {
            synchronized (this) {
                try {
                    if (this.f5144b == null) {
                        this.f5144b = Collections.newSetFromMap(new ConcurrentHashMap());
                        synchronized (this) {
                            Iterator it = this.f5143a.iterator();
                            while (it.hasNext()) {
                                this.f5144b.add(((InterfaceC0638a) it.next()).get());
                            }
                            this.f5143a = null;
                        }
                    }
                } finally {
                }
            }
        }
        return Collections.unmodifiableSet(this.f5144b);
    }
}
