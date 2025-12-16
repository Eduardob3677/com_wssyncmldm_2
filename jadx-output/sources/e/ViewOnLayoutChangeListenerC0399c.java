package e;

import android.view.View;

/* renamed from: e.c, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class ViewOnLayoutChangeListenerC0399c implements View.OnLayoutChangeListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ View f6706a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ C0405i f6707b;

    public ViewOnLayoutChangeListenerC0399c(C0405i c0405i, View view) {
        this.f6707b = c0405i;
        this.f6706a = view;
    }

    @Override // android.view.View.OnLayoutChangeListener
    public final void onLayoutChange(View view, int i5, int i6, int i7, int i8, int i9, int i10, int i11, int i12) {
        view.post(new B1.h(13, this));
    }
}
