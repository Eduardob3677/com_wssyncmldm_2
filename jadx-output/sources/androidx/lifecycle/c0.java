package androidx.lifecycle;

import java.util.Iterator;
import java.util.LinkedHashMap;

/* loaded from: classes.dex */
public final class c0 {

    /* renamed from: a, reason: collision with root package name */
    public final LinkedHashMap f4054a = new LinkedHashMap();

    public final void a() {
        LinkedHashMap linkedHashMap = this.f4054a;
        Iterator it = linkedHashMap.values().iterator();
        while (it.hasNext()) {
            ((Y) it.next()).clear();
        }
        linkedHashMap.clear();
    }
}
