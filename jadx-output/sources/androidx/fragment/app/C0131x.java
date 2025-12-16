package androidx.fragment.app;

/* renamed from: androidx.fragment.app.x, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0131x {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3963a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f3964b;

    public /* synthetic */ C0131x(int i5, Object obj) {
        this.f3963a = i5;
        this.f3964b = obj;
    }

    public final androidx.activity.result.h a() {
        switch (this.f3963a) {
            case 0:
                Fragment fragment = (Fragment) this.f3964b;
                Object obj = fragment.mHost;
                return obj instanceof androidx.activity.result.i ? ((androidx.activity.result.i) obj).getActivityResultRegistry() : fragment.requireActivity().getActivityResultRegistry();
            default:
                return (androidx.activity.result.h) this.f3964b;
        }
    }
}
