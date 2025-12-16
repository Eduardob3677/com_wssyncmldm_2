package K3;

import J3.m;
import J3.n;

/* loaded from: classes.dex */
public final class e implements m {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f1296c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ g f1297d;

    public /* synthetic */ e(g gVar, int i5) {
        this.f1296c = i5;
        this.f1297d = gVar;
    }

    private final void a(Q3.f fVar, Object obj) {
    }

    private final void b(Q3.f fVar, V3.f fVar2) {
    }

    private final void c(Q3.f fVar, V3.f fVar2) {
    }

    private final void e(Q3.f fVar, V3.f fVar2) {
    }

    private final void f() {
    }

    private final void k() {
    }

    private final void l() {
    }

    private final void n(Q3.f fVar, Q3.b bVar, Q3.f fVar2) {
    }

    private final void o(Q3.f fVar, Q3.b bVar, Q3.f fVar2) {
    }

    private final void p(Q3.f fVar, Q3.b bVar, Q3.f fVar2) {
    }

    @Override // J3.m
    public final void d() {
        int i5 = this.f1296c;
    }

    @Override // J3.m
    public final void g(Q3.f fVar, Object obj) {
        switch (this.f1296c) {
            case 0:
                String strB = fVar.b();
                boolean zEquals = "k".equals(strB);
                g gVar = this.f1297d;
                if (!zEquals) {
                    if (!"mv".equals(strB)) {
                        if (!"xs".equals(strB)) {
                            if (!"xi".equals(strB)) {
                                if ("pn".equals(strB) && (obj instanceof String) && !((String) obj).isEmpty()) {
                                    gVar.getClass();
                                    break;
                                }
                            } else if (obj instanceof Integer) {
                                gVar.f1304e = ((Integer) obj).intValue();
                                break;
                            }
                        } else if (obj instanceof String) {
                            String str = (String) obj;
                            if (!str.isEmpty()) {
                                gVar.f1303d = str;
                                break;
                            }
                        }
                    } else if (obj instanceof int[]) {
                        gVar.f1302c = (int[]) obj;
                        break;
                    }
                } else if (obj instanceof Integer) {
                    a aVar = (a) a.f1278d.get((Integer) obj);
                    if (aVar == null) {
                        aVar = a.UNKNOWN;
                    }
                    gVar.f1307i = aVar;
                    break;
                }
                break;
            case 1:
                break;
            default:
                String strB2 = fVar.b();
                boolean zEquals2 = "version".equals(strB2);
                g gVar2 = this.f1297d;
                if (!zEquals2) {
                    if ("multifileClassName".equals(strB2)) {
                        gVar2.f1303d = obj instanceof String ? (String) obj : null;
                        break;
                    }
                } else if (obj instanceof int[]) {
                    gVar2.f1302c = (int[]) obj;
                    break;
                }
                break;
        }
    }

    @Override // J3.m
    public final void h(Q3.f fVar, Q3.b bVar, Q3.f fVar2) {
        int i5 = this.f1296c;
    }

    @Override // J3.m
    public final void i(Q3.f fVar, V3.f fVar2) {
        int i5 = this.f1296c;
    }

    @Override // J3.m
    public final m j(Q3.b bVar, Q3.f fVar) {
        switch (this.f1296c) {
        }
        return null;
    }

    @Override // J3.m
    public final n m(Q3.f fVar) {
        switch (this.f1296c) {
            case 0:
                String strB = fVar.b();
                if ("d1".equals(strB)) {
                    return new d(this, 0);
                }
                if ("d2".equals(strB)) {
                    return new d(this, 1);
                }
                return null;
            case 1:
                if ("b".equals(fVar.b())) {
                    return new d(this, 2);
                }
                return null;
            default:
                String strB2 = fVar.b();
                if ("data".equals(strB2) || "filePartClassNames".equals(strB2)) {
                    return new f(this, 0);
                }
                if ("strings".equals(strB2)) {
                    return new f(this, 1);
                }
                return null;
        }
    }
}
