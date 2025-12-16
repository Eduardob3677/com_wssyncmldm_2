package I3;

import c3.InterfaceC0222b;

/* loaded from: classes.dex */
public final class k extends d3.k implements InterfaceC0222b {

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f903d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ String f904e;
    public final /* synthetic */ String f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ k(int i5, String str, String str2) {
        super(1);
        this.f903d = i5;
        this.f904e = str;
        this.f = str2;
    }

    @Override // c3.InterfaceC0222b
    public final Object e(Object obj) {
        switch (this.f903d) {
            case 0:
                o oVar = (o) obj;
                d3.i.e("$this$function", oVar);
                e eVar = l.f906b;
                String str = this.f904e;
                oVar.a(str, eVar);
                e eVar2 = l.f905a;
                oVar.a(this.f, eVar, eVar, eVar2, eVar2);
                oVar.c(str, eVar2);
                break;
            case 1:
                o oVar2 = (o) obj;
                d3.i.e("$this$function", oVar2);
                e eVar3 = l.f906b;
                String str2 = this.f904e;
                oVar2.a(str2, eVar3);
                oVar2.a(this.f, eVar3, eVar3, eVar3);
                oVar2.c(str2, eVar3);
                break;
            case 2:
                o oVar3 = (o) obj;
                d3.i.e("$this$function", oVar3);
                e eVar4 = l.f906b;
                String str3 = this.f904e;
                oVar3.a(str3, eVar4);
                e eVar5 = l.f907c;
                e eVar6 = l.f905a;
                oVar3.a(this.f, eVar4, eVar4, eVar5, eVar6);
                oVar3.c(str3, eVar6);
                break;
            case 3:
                o oVar4 = (o) obj;
                d3.i.e("$this$function", oVar4);
                e eVar7 = l.f906b;
                String str4 = this.f904e;
                oVar4.a(str4, eVar7);
                e eVar8 = l.f907c;
                oVar4.a(str4, eVar8);
                e eVar9 = l.f905a;
                oVar4.a(this.f, eVar7, eVar8, eVar8, eVar9);
                oVar4.c(str4, eVar9);
                break;
            case 4:
                o oVar5 = (o) obj;
                d3.i.e("$this$function", oVar5);
                e eVar10 = l.f907c;
                oVar5.a(this.f904e, eVar10);
                oVar5.c(this.f, l.f906b, eVar10);
                break;
            default:
                o oVar6 = (o) obj;
                d3.i.e("$this$function", oVar6);
                oVar6.a(this.f904e, l.f905a);
                oVar6.c(this.f, l.f906b, l.f907c);
                break;
        }
        return Q2.k.f2225a;
    }
}
