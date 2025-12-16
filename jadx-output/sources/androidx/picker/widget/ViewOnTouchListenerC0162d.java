package androidx.picker.widget;

import android.view.MotionEvent;
import android.view.View;
import android.widget.EditText;

/* renamed from: androidx.picker.widget.d, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class ViewOnTouchListenerC0162d implements View.OnTouchListener {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f4511c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f4512d;

    public /* synthetic */ ViewOnTouchListenerC0162d(int i5, Object obj) {
        this.f4511c = i5;
        this.f4512d = obj;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        switch (this.f4511c) {
            case 0:
                if (motionEvent.getAction() != 1 && motionEvent.getAction() != 3) {
                    return false;
                }
                ((SeslDatePicker) this.f4512d).l();
                return false;
            default:
                if (!(view instanceof EditText) || motionEvent.getActionMasked() != 0) {
                    return false;
                }
                ((EditText) view).selectAll();
                ((D) this.f4512d).x();
                return true;
        }
    }
}
