package R1;

import B1.h;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.Button;
import com.google.android.material.snackbar.SnackbarContentLayout;
import j.ViewOnKeyListenerC0525z;

/* loaded from: classes.dex */
public final class e implements ViewTreeObserver.OnGlobalLayoutListener {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f2303c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f2304d;

    public /* synthetic */ e(int i5, Object obj) {
        this.f2303c = i5;
        this.f2304d = obj;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        Button button;
        switch (this.f2303c) {
            case 0:
                SnackbarContentLayout snackbarContentLayout = (SnackbarContentLayout) this.f2304d;
                snackbarContentLayout.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                if (snackbarContentLayout.f6073g != null && (button = snackbarContentLayout.f6071d) != null && button.getVisibility() == 0) {
                    snackbarContentLayout.f6073g.post(new h(4, this));
                    break;
                }
                break;
            default:
                ViewOnKeyListenerC0525z viewOnKeyListenerC0525z = (ViewOnKeyListenerC0525z) this.f2304d;
                if (viewOnKeyListenerC0525z.b()) {
                    View view = viewOnKeyListenerC0525z.f7319s;
                    if (view != null && view.isShown()) {
                        viewOnKeyListenerC0525z.f7312k.r();
                        break;
                    } else {
                        viewOnKeyListenerC0525z.dismiss();
                        break;
                    }
                }
                break;
        }
    }
}
