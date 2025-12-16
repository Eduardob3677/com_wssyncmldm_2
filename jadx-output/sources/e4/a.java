package e4;

import R3.C0087i;
import R3.C0094p;
import com.idm.core.tnds.IDMTndsXmlWbxmlDefine;
import d3.i;
import s4.h;

/* loaded from: classes.dex */
public final class a extends c4.a {

    /* renamed from: q, reason: collision with root package name */
    public static final a f6808q;

    static {
        C0087i c0087i = new C0087i();
        M3.b.a(c0087i);
        C0094p c0094p = M3.b.f1848a;
        i.d("packageFqName", c0094p);
        C0094p c0094p2 = M3.b.f1850c;
        i.d("constructorAnnotation", c0094p2);
        C0094p c0094p3 = M3.b.f1849b;
        i.d("classAnnotation", c0094p3);
        C0094p c0094p4 = M3.b.f1851d;
        i.d("functionAnnotation", c0094p4);
        C0094p c0094p5 = M3.b.f1852e;
        i.d("propertyAnnotation", c0094p5);
        C0094p c0094p6 = M3.b.f;
        i.d("propertyGetterAnnotation", c0094p6);
        C0094p c0094p7 = M3.b.f1853g;
        i.d("propertySetterAnnotation", c0094p7);
        C0094p c0094p8 = M3.b.f1855i;
        i.d("enumEntryAnnotation", c0094p8);
        C0094p c0094p9 = M3.b.f1854h;
        i.d("compileTimeValue", c0094p9);
        C0094p c0094p10 = M3.b.f1856j;
        i.d("parameterAnnotation", c0094p10);
        C0094p c0094p11 = M3.b.f1857k;
        i.d("typeAnnotation", c0094p11);
        C0094p c0094p12 = M3.b.f1858l;
        i.d("typeParameterAnnotation", c0094p12);
        f6808q = new a(c0087i, c0094p, c0094p2, c0094p3, c0094p4, c0094p5, c0094p6, c0094p7, c0094p8, c0094p9, c0094p10, c0094p11, c0094p12);
    }

    public static String a(Q3.c cVar) {
        String strB;
        i.e("fqName", cVar);
        StringBuilder sb = new StringBuilder();
        sb.append(h.q(cVar.b(), '.', IDMTndsXmlWbxmlDefine.XML_SLASH));
        sb.append(IDMTndsXmlWbxmlDefine.XML_SLASH);
        if (cVar.d()) {
            strB = "default-package";
        } else {
            strB = cVar.f().b();
            i.d("fqName.shortName().asString()", strB);
        }
        sb.append(strB.concat(".kotlin_builtins"));
        return sb.toString();
    }
}
