package androidx.fragment.app;

/* renamed from: androidx.fragment.app.u, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class RunnableC0128u implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f3950c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Fragment f3951d;

    public /* synthetic */ RunnableC0128u(Fragment fragment, int i5) {
        this.f3950c = i5;
        this.f3951d = fragment;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f3950c) {
            case 0:
                this.f3951d.startPostponedEnterTransition();
                break;
            default:
                this.f3951d.callStartTransitionListener(false);
                break;
        }
    }
}
