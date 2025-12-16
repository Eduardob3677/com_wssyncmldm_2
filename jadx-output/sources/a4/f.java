package a4;

import R2.u;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final class f {

    /* renamed from: c, reason: collision with root package name */
    public static final m f3097c = new m();

    /* renamed from: d, reason: collision with root package name */
    public static final int f3098d;

    /* renamed from: e, reason: collision with root package name */
    public static final int f3099e;
    public static final int f;

    /* renamed from: g, reason: collision with root package name */
    public static final int f3100g;

    /* renamed from: h, reason: collision with root package name */
    public static final int f3101h;

    /* renamed from: i, reason: collision with root package name */
    public static final int f3102i;

    /* renamed from: j, reason: collision with root package name */
    public static final int f3103j;

    /* renamed from: k, reason: collision with root package name */
    public static final int f3104k;

    /* renamed from: l, reason: collision with root package name */
    public static final int f3105l;

    /* renamed from: m, reason: collision with root package name */
    public static final f f3106m;
    public static final f n;

    /* renamed from: o, reason: collision with root package name */
    public static final f f3107o;

    /* renamed from: p, reason: collision with root package name */
    public static final f f3108p;

    /* renamed from: q, reason: collision with root package name */
    public static final f f3109q;

    /* renamed from: r, reason: collision with root package name */
    public static final ArrayList f3110r;

    /* renamed from: s, reason: collision with root package name */
    public static final ArrayList f3111s;

    /* renamed from: a, reason: collision with root package name */
    public final List f3112a;

    /* renamed from: b, reason: collision with root package name */
    public final int f3113b;

    static {
        e eVar;
        int i5 = f3098d;
        int i6 = i5 << 1;
        f3099e = i5;
        int i7 = i5 << 2;
        f = i6;
        int i8 = i5 << 3;
        f3100g = i7;
        int i9 = i5 << 4;
        f3101h = i8;
        int i10 = i5 << 5;
        f3102i = i9;
        f3103j = i10;
        f3098d = i5 << 7;
        int i11 = (i5 << 6) - 1;
        f3104k = i11;
        int i12 = i5 | i6 | i7;
        f3105l = i12;
        f3106m = new f(i11);
        n = new f(i9 | i10);
        new f(i5);
        new f(i6);
        new f(i7);
        f3107o = new f(i12);
        new f(i8);
        f3108p = new f(i9);
        f3109q = new f(i10);
        new f(i6 | i9 | i10);
        Field[] fields = f.class.getFields();
        d3.i.d("T::class.java.fields", fields);
        ArrayList arrayList = new ArrayList();
        for (Field field : fields) {
            if (Modifier.isStatic(field.getModifiers())) {
                arrayList.add(field);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        Iterator it = arrayList.iterator();
        while (true) {
            e eVar2 = null;
            if (!it.hasNext()) {
                break;
            }
            Field field2 = (Field) it.next();
            Object obj = field2.get(null);
            f fVar = obj instanceof f ? (f) obj : null;
            if (fVar != null) {
                String name = field2.getName();
                d3.i.d("field.name", name);
                eVar2 = new e(fVar.f3113b, name);
            }
            if (eVar2 != null) {
                arrayList2.add(eVar2);
            }
        }
        f3110r = arrayList2;
        Field[] fields2 = f.class.getFields();
        d3.i.d("T::class.java.fields", fields2);
        ArrayList arrayList3 = new ArrayList();
        for (Field field3 : fields2) {
            if (Modifier.isStatic(field3.getModifiers())) {
                arrayList3.add(field3);
            }
        }
        ArrayList arrayList4 = new ArrayList();
        Iterator it2 = arrayList3.iterator();
        while (it2.hasNext()) {
            Object next = it2.next();
            if (d3.i.a(((Field) next).getType(), Integer.TYPE)) {
                arrayList4.add(next);
            }
        }
        ArrayList arrayList5 = new ArrayList();
        Iterator it3 = arrayList4.iterator();
        while (it3.hasNext()) {
            Field field4 = (Field) it3.next();
            Object obj2 = field4.get(null);
            d3.i.c("null cannot be cast to non-null type kotlin.Int", obj2);
            int iIntValue = ((Integer) obj2).intValue();
            if (iIntValue == ((-iIntValue) & iIntValue)) {
                String name2 = field4.getName();
                d3.i.d("field.name", name2);
                eVar = new e(iIntValue, name2);
            } else {
                eVar = null;
            }
            if (eVar != null) {
                arrayList5.add(eVar);
            }
        }
        f3111s = arrayList5;
    }

    public f(int i5, List list) {
        d3.i.e("excludes", list);
        this.f3112a = list;
        Iterator it = list.iterator();
        while (it.hasNext()) {
            i5 &= ~((d) it.next()).a();
        }
        this.f3113b = i5;
    }

    public final boolean a(int i5) {
        return (this.f3113b & i5) != 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!d3.i.a(f.class, obj != null ? obj.getClass() : null)) {
            return false;
        }
        d3.i.c("null cannot be cast to non-null type org.jetbrains.kotlin.resolve.scopes.DescriptorKindFilter", obj);
        f fVar = (f) obj;
        return d3.i.a(this.f3112a, fVar.f3112a) && this.f3113b == fVar.f3113b;
    }

    public final int hashCode() {
        return (this.f3112a.hashCode() * 31) + this.f3113b;
    }

    public final String toString() {
        Object next;
        Iterator it = f3110r.iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            if (((e) next).f3095a == this.f3113b) {
                break;
            }
        }
        e eVar = (e) next;
        String strS0 = eVar != null ? eVar.f3096b : null;
        if (strS0 == null) {
            ArrayList arrayList = f3111s;
            ArrayList arrayList2 = new ArrayList();
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                e eVar2 = (e) it2.next();
                String str = a(eVar2.f3095a) ? eVar2.f3096b : null;
                if (str != null) {
                    arrayList2.add(str);
                }
            }
            strS0 = R2.m.S0(arrayList2, " | ", null, null, null, 62);
        }
        return "DescriptorKindFilter(" + strS0 + ", " + this.f3112a + ')';
    }

    public /* synthetic */ f(int i5) {
        this(i5, u.f2325c);
    }
}
