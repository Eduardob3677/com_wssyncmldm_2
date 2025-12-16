package a1;

/* loaded from: classes.dex */
public final class i extends UnsupportedOperationException {

    /* renamed from: c, reason: collision with root package name */
    public final Z0.c f3040c;

    public i(Z0.c cVar) {
        this.f3040c = cVar;
    }

    @Override // java.lang.Throwable
    public final String getMessage() {
        String strValueOf = String.valueOf(this.f3040c);
        StringBuilder sb = new StringBuilder(strValueOf.length() + 8);
        sb.append("Missing ");
        sb.append(strValueOf);
        return sb.toString();
    }
}
