package k;

import android.os.Handler;
import android.widget.AbsListView;

/* renamed from: k.v0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0629v0 implements AbsListView.OnScrollListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ C0633x0 f8017a;

    public C0629v0(C0633x0 c0633x0) {
        this.f8017a = c0633x0;
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public final void onScroll(AbsListView absListView, int i5, int i6, int i7) {
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public final void onScrollStateChanged(AbsListView absListView, int i5) {
        if (i5 == 1) {
            C0633x0 c0633x0 = this.f8017a;
            if (c0633x0.f8050z.getInputMethodMode() == 2 || c0633x0.f8050z.getContentView() == null) {
                return;
            }
            Handler handler = c0633x0.f8046v;
            RunnableC0627u0 runnableC0627u0 = c0633x0.f8042r;
            handler.removeCallbacks(runnableC0627u0);
            runnableC0627u0.run();
        }
    }
}
