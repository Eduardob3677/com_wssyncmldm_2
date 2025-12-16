package X;

import J.r0;
import android.text.Editable;
import android.text.method.KeyListener;
import android.text.method.MetaKeyKeyListener;
import android.view.KeyEvent;
import android.view.View;

/* loaded from: classes.dex */
public final class e implements KeyListener {

    /* renamed from: a, reason: collision with root package name */
    public final KeyListener f2851a;

    /* renamed from: b, reason: collision with root package name */
    public final Z0.h f2852b;

    public e(KeyListener keyListener) {
        Z0.h hVar = new Z0.h(7);
        this.f2851a = keyListener;
        this.f2852b = hVar;
    }

    @Override // android.text.method.KeyListener
    public final void clearMetaKeyState(View view, Editable editable, int i5) {
        this.f2851a.clearMetaKeyState(view, editable, i5);
    }

    @Override // android.text.method.KeyListener
    public final int getInputType() {
        return this.f2851a.getInputType();
    }

    @Override // android.text.method.KeyListener
    public final boolean onKeyDown(View view, Editable editable, int i5, KeyEvent keyEvent) {
        boolean z4;
        this.f2852b.getClass();
        if (i5 != 67 ? i5 != 112 ? false : r0.c(editable, keyEvent, true) : r0.c(editable, keyEvent, false)) {
            MetaKeyKeyListener.adjustMetaAfterKeypress(editable);
            z4 = true;
        } else {
            z4 = false;
        }
        return z4 || this.f2851a.onKeyDown(view, editable, i5, keyEvent);
    }

    @Override // android.text.method.KeyListener
    public final boolean onKeyOther(View view, Editable editable, KeyEvent keyEvent) {
        return this.f2851a.onKeyOther(view, editable, keyEvent);
    }

    @Override // android.text.method.KeyListener
    public final boolean onKeyUp(View view, Editable editable, int i5, KeyEvent keyEvent) {
        return this.f2851a.onKeyUp(view, editable, i5, keyEvent);
    }
}
