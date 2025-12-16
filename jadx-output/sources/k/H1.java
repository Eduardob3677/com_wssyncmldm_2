package k;

import android.view.View;
import android.view.Window;
import j.C0500a;

/* loaded from: classes.dex */
public final class H1 implements View.OnClickListener {

    /* renamed from: c, reason: collision with root package name */
    public final C0500a f7687c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ I1 f7688d;

    public H1(I1 i12) {
        this.f7688d = i12;
        this.f7687c = new C0500a(i12.f7694a.getContext(), i12.f7700h);
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        I1 i12 = this.f7688d;
        Window.Callback callback = i12.f7703k;
        if (callback == null || !i12.f7704l) {
            return;
        }
        callback.onMenuItemSelected(0, this.f7687c);
    }
}
