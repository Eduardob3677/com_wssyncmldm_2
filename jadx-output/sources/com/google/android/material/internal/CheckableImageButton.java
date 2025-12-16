package com.google.android.material.internal;

import C1.e;
import J.Q;
import J1.a;
import android.R;
import android.content.Context;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Checkable;
import k.C0630w;

/* loaded from: classes.dex */
public class CheckableImageButton extends C0630w implements Checkable {

    /* renamed from: j, reason: collision with root package name */
    public static final int[] f6033j = {R.attr.state_checked};

    /* renamed from: g, reason: collision with root package name */
    public boolean f6034g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f6035h;

    /* renamed from: i, reason: collision with root package name */
    public boolean f6036i;

    public CheckableImageButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, com.wssyncmldm.R.attr.imageButtonStyle);
        this.f6035h = true;
        this.f6036i = true;
        Q.h(this, new e(2, this));
    }

    @Override // android.widget.Checkable
    public final boolean isChecked() {
        return this.f6034g;
    }

    @Override // android.widget.ImageView, android.view.View
    public final int[] onCreateDrawableState(int i5) {
        return this.f6034g ? View.mergeDrawableStates(super.onCreateDrawableState(i5 + 1), f6033j) : super.onCreateDrawableState(i5);
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof a)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        a aVar = (a) parcelable;
        super.onRestoreInstanceState(aVar.f2270c);
        setChecked(aVar.f1042e);
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        a aVar = new a(super.onSaveInstanceState());
        aVar.f1042e = this.f6034g;
        return aVar;
    }

    public void setCheckable(boolean z4) {
        if (this.f6035h != z4) {
            this.f6035h = z4;
            sendAccessibilityEvent(0);
        }
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z4) {
        if (!this.f6035h || this.f6034g == z4) {
            return;
        }
        this.f6034g = z4;
        refreshDrawableState();
        sendAccessibilityEvent(2048);
    }

    public void setPressable(boolean z4) {
        this.f6036i = z4;
    }

    @Override // android.view.View
    public void setPressed(boolean z4) {
        if (this.f6036i) {
            super.setPressed(z4);
        }
    }

    @Override // android.widget.Checkable
    public final void toggle() {
        setChecked(!this.f6034g);
    }
}
