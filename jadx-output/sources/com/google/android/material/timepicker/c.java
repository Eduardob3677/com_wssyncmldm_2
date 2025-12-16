package com.google.android.material.timepicker;

import J.C0028b;
import android.os.Bundle;
import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import com.wssyncmldm.R;

/* loaded from: classes.dex */
public final class c extends C0028b {

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ ClockFaceView f6174d;

    public c(ClockFaceView clockFaceView) {
        this.f6174d = clockFaceView;
    }

    @Override // J.C0028b
    public final void d(View view, K.h hVar) {
        View.AccessibilityDelegate accessibilityDelegate = this.f956a;
        AccessibilityNodeInfo accessibilityNodeInfo = hVar.f1201a;
        accessibilityDelegate.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
        int iIntValue = ((Integer) view.getTag(R.id.material_value_index)).intValue();
        if (iIntValue > 0) {
            accessibilityNodeInfo.setTraversalAfter((View) this.f6174d.f6145A.get(iIntValue - 1));
        }
        hVar.h(K.g.a(view.isSelected(), 0, 1, iIntValue, 1));
        accessibilityNodeInfo.setClickable(true);
        hVar.b(K.c.f1189e);
    }

    @Override // J.C0028b
    public final boolean g(View view, int i5, Bundle bundle) {
        if (i5 != 16) {
            return super.g(view, i5, bundle);
        }
        long jUptimeMillis = SystemClock.uptimeMillis();
        ClockFaceView clockFaceView = this.f6174d;
        view.getHitRect(clockFaceView.f6156x);
        float fCenterX = clockFaceView.f6156x.centerX();
        float fCenterY = clockFaceView.f6156x.centerY();
        clockFaceView.f6155w.onTouchEvent(MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 0, fCenterX, fCenterY, 0));
        clockFaceView.f6155w.onTouchEvent(MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 1, fCenterX, fCenterY, 0));
        return true;
    }
}
