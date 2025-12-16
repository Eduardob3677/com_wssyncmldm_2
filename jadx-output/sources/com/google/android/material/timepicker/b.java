package com.google.android.material.timepicker;

import android.view.ViewTreeObserver;

/* loaded from: classes.dex */
public final class b implements ViewTreeObserver.OnPreDrawListener {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ClockFaceView f6173c;

    public b(ClockFaceView clockFaceView) {
        this.f6173c = clockFaceView;
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public final boolean onPreDraw() {
        ClockFaceView clockFaceView = this.f6173c;
        if (!clockFaceView.isShown()) {
            return true;
        }
        clockFaceView.getViewTreeObserver().removeOnPreDrawListener(this);
        int height = ((clockFaceView.getHeight() / 2) - clockFaceView.f6155w.f) - clockFaceView.E;
        if (height != clockFaceView.f6176u) {
            clockFaceView.f6176u = height;
            clockFaceView.g();
            int i5 = clockFaceView.f6176u;
            ClockHandView clockHandView = clockFaceView.f6155w;
            clockHandView.n = i5;
            clockHandView.invalidate();
        }
        return true;
    }
}
