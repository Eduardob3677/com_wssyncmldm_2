package g2;

import e2.f;
import e2.g;
import f2.InterfaceC0421a;
import java.util.Date;
import java.util.HashMap;

/* loaded from: classes.dex */
public final class d implements InterfaceC0421a {
    public static final C0428b f;

    /* renamed from: g, reason: collision with root package name */
    public static final C0428b f6921g;

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f6923a;

    /* renamed from: b, reason: collision with root package name */
    public final HashMap f6924b;

    /* renamed from: c, reason: collision with root package name */
    public final C0427a f6925c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f6926d;

    /* renamed from: e, reason: collision with root package name */
    public static final C0427a f6920e = new C0427a();

    /* renamed from: h, reason: collision with root package name */
    public static final c f6922h = new c();

    /* JADX WARN: Type inference failed for: r0v1, types: [g2.b] */
    /* JADX WARN: Type inference failed for: r0v2, types: [g2.b] */
    static {
        final int i5 = 0;
        f = new f() { // from class: g2.b
            @Override // e2.InterfaceC0415a
            public final void a(Object obj, Object obj2) {
                switch (i5) {
                    case 0:
                        ((g) obj2).a((String) obj);
                        break;
                    default:
                        ((g) obj2).b(((Boolean) obj).booleanValue());
                        break;
                }
            }
        };
        final int i6 = 1;
        f6921g = new f() { // from class: g2.b
            @Override // e2.InterfaceC0415a
            public final void a(Object obj, Object obj2) {
                switch (i6) {
                    case 0:
                        ((g) obj2).a((String) obj);
                        break;
                    default:
                        ((g) obj2).b(((Boolean) obj).booleanValue());
                        break;
                }
            }
        };
    }

    public d() {
        HashMap map = new HashMap();
        this.f6923a = map;
        HashMap map2 = new HashMap();
        this.f6924b = map2;
        this.f6925c = f6920e;
        this.f6926d = false;
        map2.put(String.class, f);
        map.remove(String.class);
        map2.put(Boolean.class, f6921g);
        map.remove(Boolean.class);
        map2.put(Date.class, f6922h);
        map.remove(Date.class);
    }

    public final InterfaceC0421a a(Class cls, e2.d dVar) {
        this.f6923a.put(cls, dVar);
        this.f6924b.remove(cls);
        return this;
    }
}
