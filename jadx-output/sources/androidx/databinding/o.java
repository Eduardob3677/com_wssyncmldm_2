package androidx.databinding;

/* loaded from: classes.dex */
public final class o extends b {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3673a;

    public /* synthetic */ o(int i5) {
        this.f3673a = i5;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.databinding.b
    public final void a(Object obj, int i5, Object obj2) {
        switch (this.f3673a) {
            case 0:
                j jVar = (j) obj2;
                w wVar = ((u) ((i) obj)).f3679a;
                v vVar = (v) wVar.get();
                if (vVar == null) {
                    wVar.a();
                }
                if (vVar != null && ((j) wVar.f3682c) == jVar) {
                    vVar.handleFieldChange(wVar.f3681b, jVar, i5);
                    return;
                }
                return;
            default:
                B.f.F(obj);
                if (i5 == 1 || i5 == 2 || i5 == 3) {
                    throw null;
                }
                return;
        }
    }
}
