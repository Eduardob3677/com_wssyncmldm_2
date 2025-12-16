package K3;

import A3.z;
import J3.m;
import J3.o;
import java.util.HashMap;
import w3.C0902a;

/* loaded from: classes.dex */
public final class g implements o {

    /* renamed from: k, reason: collision with root package name */
    public static final boolean f1300k = "true".equals(System.getProperty("kotlin.ignore.old.metadata"));

    /* renamed from: l, reason: collision with root package name */
    public static final HashMap f1301l;

    /* renamed from: c, reason: collision with root package name */
    public int[] f1302c;

    /* renamed from: d, reason: collision with root package name */
    public String f1303d;

    /* renamed from: e, reason: collision with root package name */
    public int f1304e;
    public String[] f;

    /* renamed from: g, reason: collision with root package name */
    public String[] f1305g;

    /* renamed from: h, reason: collision with root package name */
    public String[] f1306h;

    /* renamed from: i, reason: collision with root package name */
    public a f1307i;

    /* renamed from: j, reason: collision with root package name */
    public String[] f1308j;

    static {
        HashMap map = new HashMap();
        f1301l = map;
        map.put(Q3.b.k(new Q3.c("kotlin.jvm.internal.KotlinClass")), a.CLASS);
        map.put(Q3.b.k(new Q3.c("kotlin.jvm.internal.KotlinFileFacade")), a.FILE_FACADE);
        map.put(Q3.b.k(new Q3.c("kotlin.jvm.internal.KotlinMultifileClass")), a.MULTIFILE_CLASS);
        map.put(Q3.b.k(new Q3.c("kotlin.jvm.internal.KotlinMultifileClassPart")), a.MULTIFILE_CLASS_PART);
        map.put(Q3.b.k(new Q3.c("kotlin.jvm.internal.KotlinSyntheticClass")), a.SYNTHETIC_CLASS);
    }

    @Override // J3.o
    public final void d() {
    }

    @Override // J3.o
    public final m e(Q3.b bVar, C0902a c0902a) {
        a aVar;
        Q3.c cVarB = bVar.b();
        if (cVarB.equals(z.f165a)) {
            return new e(this, 0);
        }
        if (cVarB.equals(z.f177o)) {
            return new e(this, 1);
        }
        if (f1300k || this.f1307i != null || (aVar = (a) f1301l.get(bVar)) == null) {
            return null;
        }
        this.f1307i = aVar;
        return new e(this, 2);
    }
}
