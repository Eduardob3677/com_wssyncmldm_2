package R3;

import java.io.Serializable;
import java.util.Collections;

/* renamed from: R3.q, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0095q extends AbstractC0080b implements Serializable {
    public static C0094p g(AbstractC0092n abstractC0092n, AbstractC0095q abstractC0095q, int i5, Q q2, Class cls) {
        return new C0094p(abstractC0092n, Collections.emptyList(), abstractC0095q, new C0093o(i5, q2, true), cls);
    }

    public static C0094p h(AbstractC0092n abstractC0092n, Serializable serializable, AbstractC0095q abstractC0095q, int i5, T t2, Class cls) {
        return new C0094p(abstractC0092n, serializable, abstractC0095q, new C0093o(i5, t2, false), cls);
    }
}
