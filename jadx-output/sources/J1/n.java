package J1;

import J.G;
import J.Q;
import android.view.View;
import androidx.databinding.v;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public final class n implements View.OnAttachStateChangeListener {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f1128c;

    public /* synthetic */ n(int i5) {
        this.f1128c = i5;
    }

    private final void a(View view) {
    }

    private final void b(View view) {
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        switch (this.f1128c) {
            case 0:
                view.removeOnAttachStateChangeListener(this);
                WeakHashMap weakHashMap = Q.f940a;
                G.c(view);
                break;
            default:
                v.getBinding(view).mRebindRunnable.run();
                view.removeOnAttachStateChangeListener(this);
                break;
        }
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        int i5 = this.f1128c;
    }
}
