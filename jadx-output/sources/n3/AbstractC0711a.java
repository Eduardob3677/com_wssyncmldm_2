package n3;

import A3.z;
import Q3.b;
import Q3.c;
import R2.n;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;

/* renamed from: n3.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0711a {

    /* renamed from: a, reason: collision with root package name */
    public static final LinkedHashSet f8334a;

    /* renamed from: b, reason: collision with root package name */
    public static final b f8335b;

    static {
        List listY0 = n.y0(z.f165a, z.f171h, z.f172i, z.f167c, z.f168d, z.f);
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator it = listY0.iterator();
        while (it.hasNext()) {
            linkedHashSet.add(b.k((c) it.next()));
        }
        f8334a = linkedHashSet;
        f8335b = b.k(z.f170g);
    }
}
