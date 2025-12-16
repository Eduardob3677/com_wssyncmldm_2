package androidx.fragment.app;

/* renamed from: androidx.fragment.app.m, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class RunnableC0121m implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f3919c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f3920d;

    public /* synthetic */ RunnableC0121m(int i5, Object obj) {
        this.f3919c = i5;
        this.f3920d = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f3919c) {
            case 0:
                r rVar = (r) this.f3920d;
                rVar.mOnDismissListener.onDismiss(rVar.mDialog);
                break;
            case 1:
                ((C0120l) this.f3920d).h();
                break;
            default:
                ((Z) this.f3920d).x(true);
                break;
        }
    }
}
