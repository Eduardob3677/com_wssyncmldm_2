package b1;

/* loaded from: classes.dex */
public final class n implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f5092c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ C0198d f5093d;

    public /* synthetic */ n(C0198d c0198d, int i5) {
        this.f5092c = i5;
        this.f5093d = c0198d;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f5092c) {
            case 0:
                this.f5093d.d();
                break;
            default:
                this.f5093d.e();
                break;
        }
    }
}
