package b2;

import i3.x;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* loaded from: classes.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    public final Set f5116a;

    /* renamed from: b, reason: collision with root package name */
    public final Set f5117b;

    /* renamed from: c, reason: collision with root package name */
    public final int f5118c;

    /* renamed from: d, reason: collision with root package name */
    public final int f5119d;

    /* renamed from: e, reason: collision with root package name */
    public final f f5120e;
    public final Set f;

    public c(HashSet hashSet, HashSet hashSet2, int i5, int i6, f fVar, HashSet hashSet3) {
        this.f5116a = Collections.unmodifiableSet(hashSet);
        this.f5117b = Collections.unmodifiableSet(hashSet2);
        this.f5118c = i5;
        this.f5119d = i6;
        this.f5120e = fVar;
        this.f = Collections.unmodifiableSet(hashSet3);
    }

    public static b a(Class cls) {
        return new b(cls, new Class[0]);
    }

    public static c b(Object obj, Class cls, Class... clsArr) {
        HashSet hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        HashSet hashSet3 = new HashSet();
        hashSet.add(cls);
        for (Class cls2 : clsArr) {
            x.q("Null interface", cls2);
        }
        Collections.addAll(hashSet, clsArr);
        return new c(new HashSet(hashSet), new HashSet(hashSet2), 0, 0, new C0205a(1, obj), hashSet3);
    }

    public final String toString() {
        return "Component<" + Arrays.toString(this.f5116a.toArray()) + ">{" + this.f5118c + ", type=" + this.f5119d + ", deps=" + Arrays.toString(this.f5117b.toArray()) + "}";
    }
}
