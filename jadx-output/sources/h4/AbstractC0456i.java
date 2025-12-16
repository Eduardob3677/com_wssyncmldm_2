package h4;

import com.google.android.gms.internal.p000firebaseauthapi.Z3;
import com.idm.fotaagent.database.room.data.entity.Property;
import i3.InterfaceC0482c;
import i3.InterfaceC0494o;
import s3.C0844g;
import s3.InterfaceC0845h;

/* renamed from: h4.i, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0456i {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ InterfaceC0494o[] f7058a;

    /* renamed from: b, reason: collision with root package name */
    public static final Z3 f7059b;

    static {
        d3.r rVar = d3.q.f6516a;
        f7058a = new InterfaceC0494o[]{rVar.e(new d3.n(rVar.c(AbstractC0456i.class, "descriptors"), "annotationsAttribute", "getAnnotationsAttribute(Lorg/jetbrains/kotlin/types/TypeAttributes;)Lorg/jetbrains/kotlin/types/AnnotationsTypeAttribute;"))};
        e.v vVar = G.f7019d;
        InterfaceC0482c interfaceC0482cB = rVar.b(C0455h.class);
        vVar.getClass();
        f7059b = new Z3(interfaceC0482cB, vVar.p(interfaceC0482cB));
    }

    public static final InterfaceC0845h a(G g5) {
        InterfaceC0845h interfaceC0845h;
        d3.i.e("<this>", g5);
        InterfaceC0494o interfaceC0494o = f7058a[0];
        Z3 z32 = f7059b;
        z32.getClass();
        d3.i.e(Property.TABLE_NAME, interfaceC0494o);
        C0455h c0455h = (C0455h) g5.f8341c.get(z32.f5498a);
        return (c0455h == null || (interfaceC0845h = c0455h.f7057a) == null) ? C0844g.f9041a : interfaceC0845h;
    }
}
