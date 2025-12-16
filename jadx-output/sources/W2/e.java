package W2;

/* loaded from: classes.dex */
public abstract class e extends a {
    public e(U2.a aVar) {
        super(aVar);
        if (aVar != null && aVar.a() != U2.e.f2746c) {
            throw new IllegalArgumentException("Coroutines with restricted suspension must have EmptyCoroutineContext".toString());
        }
    }

    @Override // U2.a
    public final U2.d a() {
        return U2.e.f2746c;
    }
}
