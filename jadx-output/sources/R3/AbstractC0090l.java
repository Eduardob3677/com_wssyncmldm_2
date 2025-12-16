package R3;

import java.util.Iterator;
import java.util.Map;

/* renamed from: R3.l, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0090l extends AbstractC0089k implements A {

    /* renamed from: d, reason: collision with root package name */
    public C0088j f2401d = C0088j.f2396d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f2402e;

    public final void f(AbstractC0092n abstractC0092n) {
        F f;
        if (!this.f2402e) {
            this.f2401d = this.f2401d.clone();
            this.f2402e = true;
        }
        C0088j c0088j = this.f2401d;
        C0088j c0088j2 = abstractC0092n.f2406c;
        c0088j.getClass();
        int i5 = 0;
        while (true) {
            int size = c0088j2.f2397a.f2346d.size();
            f = c0088j2.f2397a;
            if (i5 >= size) {
                break;
            }
            c0088j.g((Map.Entry) f.f2346d.get(i5));
            i5++;
        }
        Iterator it = f.c().iterator();
        while (it.hasNext()) {
            c0088j.g((Map.Entry) it.next());
        }
    }
}
