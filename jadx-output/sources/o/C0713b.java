package o;

import java.util.Collection;
import java.util.Map;
import java.util.Set;

/* renamed from: o.b, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0713b extends C0722k implements Map {

    /* renamed from: j, reason: collision with root package name */
    public C0712a f8404j;

    public C0713b(C0713b c0713b) {
        if (c0713b != null) {
            int i5 = c0713b.f8440e;
            b(i5);
            if (this.f8440e != 0) {
                for (int i6 = 0; i6 < i5; i6++) {
                    put(c0713b.h(i6), c0713b.j(i6));
                }
            } else if (i5 > 0) {
                System.arraycopy(c0713b.f8438c, 0, this.f8438c, 0, i5);
                System.arraycopy(c0713b.f8439d, 0, this.f8439d, 0, i5 << 1);
                this.f8440e = i5;
            }
        }
    }

    @Override // java.util.Map
    public final Set entrySet() {
        if (this.f8404j == null) {
            this.f8404j = new C0712a(0, this);
        }
        C0712a c0712a = this.f8404j;
        if (((C0719h) c0712a.f5487b) == null) {
            c0712a.f5487b = new C0719h(c0712a, 0);
        }
        return (C0719h) c0712a.f5487b;
    }

    @Override // java.util.Map
    public final Set keySet() {
        if (this.f8404j == null) {
            this.f8404j = new C0712a(0, this);
        }
        C0712a c0712a = this.f8404j;
        if (((C0719h) c0712a.f5488c) == null) {
            c0712a.f5488c = new C0719h(c0712a, 1);
        }
        return (C0719h) c0712a.f5488c;
    }

    @Override // java.util.Map
    public final void putAll(Map map) {
        b(map.size() + this.f8440e);
        for (Map.Entry entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    @Override // java.util.Map
    public final Collection values() {
        if (this.f8404j == null) {
            this.f8404j = new C0712a(0, this);
        }
        C0712a c0712a = this.f8404j;
        if (((C0721j) c0712a.f5489d) == null) {
            c0712a.f5489d = new C0721j(c0712a);
        }
        return (C0721j) c0712a.f5489d;
    }
}
