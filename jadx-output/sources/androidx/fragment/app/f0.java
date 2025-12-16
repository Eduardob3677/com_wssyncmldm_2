package androidx.fragment.app;

import android.view.View;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public final class f0 implements View.OnAttachStateChangeListener {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ View f3861c;

    public f0(View view) {
        this.f3861c = view;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        View view2 = this.f3861c;
        view2.removeOnAttachStateChangeListener(this);
        WeakHashMap weakHashMap = J.Q.f940a;
        J.G.c(view2);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
    }
}
