package androidx.picker.widget;

import android.view.ViewTreeObserver;

/* loaded from: classes.dex */
public final class B implements ViewTreeObserver.OnPreDrawListener {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f4086c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f4087d;

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public final boolean onPreDraw() {
        switch (this.f4086c) {
            case 0:
                this.f4087d = false;
                break;
            default:
                this.f4087d = false;
                break;
        }
        return true;
    }
}
