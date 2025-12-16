package E3;

import c3.InterfaceC0222b;
import d3.AbstractC0395g;
import i3.InterfaceC0484e;

/* loaded from: classes.dex */
public final /* synthetic */ class l extends AbstractC0395g implements InterfaceC0222b {

    /* renamed from: l, reason: collision with root package name */
    public final /* synthetic */ int f614l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ l(int i5, Object obj, int i6) {
        super(i5, obj);
        this.f614l = i6;
    }

    @Override // c3.InterfaceC0222b
    public final Object e(Object obj) {
        switch (this.f614l) {
            case 0:
                Q3.f fVar = (Q3.f) obj;
                d3.i.e("p0", fVar);
                return q.v((q) this.f6502d, fVar);
            case 1:
                Q3.f fVar2 = (Q3.f) obj;
                d3.i.e("p0", fVar2);
                return q.w((q) this.f6502d, fVar2);
            default:
                i4.f fVar3 = (i4.f) obj;
                d3.i.e("p0", fVar3);
                return new f4.g((f4.i) this.f6502d, fVar3);
        }
    }

    @Override // d3.AbstractC0390b, i3.InterfaceC0481b
    public final String getName() {
        switch (this.f614l) {
            case 0:
                return "searchMethodsByNameWithoutBuiltinMagic";
            case 1:
                return "searchMethodsInSupertypesWithoutBuiltinMagic";
            default:
                return "<init>";
        }
    }

    @Override // d3.AbstractC0390b
    public final InterfaceC0484e j() {
        switch (this.f614l) {
            case 0:
                return d3.q.f6516a.b(q.class);
            case 1:
                return d3.q.f6516a.b(q.class);
            default:
                return d3.q.f6516a.b(f4.g.class);
        }
    }

    @Override // d3.AbstractC0390b
    public final String l() {
        switch (this.f614l) {
            case 0:
                return "searchMethodsByNameWithoutBuiltinMagic(Lorg/jetbrains/kotlin/name/Name;)Ljava/util/Collection;";
            case 1:
                return "searchMethodsInSupertypesWithoutBuiltinMagic(Lorg/jetbrains/kotlin/name/Name;)Ljava/util/Collection;";
            default:
                return "<init>(Lorg/jetbrains/kotlin/serialization/deserialization/descriptors/DeserializedClassDescriptor;Lorg/jetbrains/kotlin/types/checker/KotlinTypeRefiner;)V";
        }
    }
}
