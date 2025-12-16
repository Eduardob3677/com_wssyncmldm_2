package i4;

import c3.InterfaceC0223c;
import d3.AbstractC0395g;
import h4.AbstractC0468v;
import i3.InterfaceC0484e;

/* loaded from: classes.dex */
public final /* synthetic */ class s extends AbstractC0395g implements InterfaceC0223c {

    /* renamed from: l, reason: collision with root package name */
    public final /* synthetic */ int f7195l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ s(int i5, Object obj, int i6) {
        super(i5, obj);
        this.f7195l = i6;
    }

    @Override // c3.InterfaceC0223c
    public final Object d(Object obj, Object obj2) {
        switch (this.f7195l) {
            case 0:
                AbstractC0468v abstractC0468v = (AbstractC0468v) obj;
                AbstractC0468v abstractC0468v2 = (AbstractC0468v) obj2;
                d3.i.e("p0", abstractC0468v);
                d3.i.e("p1", abstractC0468v2);
                ((t) this.f6502d).getClass();
                k.f7186b.getClass();
                l lVar = j.f7185b;
                return Boolean.valueOf(lVar.b(abstractC0468v, abstractC0468v2) && !lVar.b(abstractC0468v2, abstractC0468v));
            default:
                AbstractC0468v abstractC0468v3 = (AbstractC0468v) obj;
                AbstractC0468v abstractC0468v4 = (AbstractC0468v) obj2;
                d3.i.e("p0", abstractC0468v3);
                d3.i.e("p1", abstractC0468v4);
                return Boolean.valueOf(((l) this.f6502d).a(abstractC0468v3, abstractC0468v4));
        }
    }

    @Override // d3.AbstractC0390b, i3.InterfaceC0481b
    public final String getName() {
        switch (this.f7195l) {
            case 0:
                return "isStrictSupertype";
            default:
                return "equalTypes";
        }
    }

    @Override // d3.AbstractC0390b
    public final InterfaceC0484e j() {
        switch (this.f7195l) {
            case 0:
                return d3.q.f6516a.b(t.class);
            default:
                return d3.q.f6516a.b(l.class);
        }
    }

    @Override // d3.AbstractC0390b
    public final String l() {
        switch (this.f7195l) {
            case 0:
                return "isStrictSupertype(Lorg/jetbrains/kotlin/types/KotlinType;Lorg/jetbrains/kotlin/types/KotlinType;)Z";
            default:
                return "equalTypes(Lorg/jetbrains/kotlin/types/KotlinType;Lorg/jetbrains/kotlin/types/KotlinType;)Z";
        }
    }
}
