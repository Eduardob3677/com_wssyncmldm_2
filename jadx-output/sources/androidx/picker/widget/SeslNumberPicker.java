package androidx.picker.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.provider.Settings;
import android.text.Editable;
import android.text.InputFilter;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.NumberPicker;
import android.widget.OverScroller;
import android.widget.Scroller;
import com.wssyncmldm.R;
import java.lang.reflect.Method;
import java.util.List;
import p0.AbstractC0739a;

/* loaded from: classes.dex */
public class SeslNumberPicker extends LinearLayout {

    /* renamed from: d, reason: collision with root package name */
    public static final C0180w f4452d = new C0180w();

    /* renamed from: c, reason: collision with root package name */
    public final D f4453c;

    public static class CustomEditText extends EditText {

        /* renamed from: c, reason: collision with root package name */
        public String f4454c;

        /* renamed from: d, reason: collision with root package name */
        public int f4455d;

        public CustomEditText(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f4454c = "";
        }

        @Override // android.widget.TextView, android.view.View
        public final void onDraw(Canvas canvas) {
            canvas.translate(0.0f, this.f4455d);
            super.onDraw(canvas);
        }

        @Override // android.widget.TextView
        public final void onEditorAction(int i5) {
            super.onEditorAction(i5);
            if (i5 == 6) {
                clearFocus();
            }
        }

        @Override // android.view.View
        public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
            Object objJ0;
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            AccessibilityManager accessibilityManager = (AccessibilityManager) getContext().getSystemService("accessibility");
            Method methodK = i3.x.K("android.view.accessibility.AccessibilityManager", "semIsScreenReaderEnabled", new Class[0]);
            if ((methodK == null || (objJ0 = i3.x.j0(accessibilityManager, methodK, new Object[0])) == null) ? true : ((Boolean) objJ0).booleanValue()) {
                accessibilityNodeInfo.setText(getText());
                accessibilityNodeInfo.setTooltipText(this.f4454c);
                return;
            }
            CharSequence text = getText();
            if (!this.f4454c.equals("")) {
                if (TextUtils.isEmpty(text)) {
                    text = ", " + this.f4454c;
                } else {
                    text = text.toString() + ", " + this.f4454c;
                }
            }
            accessibilityNodeInfo.setText(text);
        }

        @Override // android.view.View
        public final void onPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
            int size = accessibilityEvent.getText().size();
            super.onPopulateAccessibilityEvent(accessibilityEvent);
            int size2 = accessibilityEvent.getText().size();
            if (size2 > size) {
                accessibilityEvent.getText().remove(size2 - 1);
            }
            Editable text = getText();
            if (!TextUtils.isEmpty(text)) {
                accessibilityEvent.getText().add(text);
            }
            accessibilityEvent.setContentDescription(this.f4454c);
        }
    }

    public SeslNumberPicker(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0, 0);
        this.f4453c = new D(this, context, attributeSet);
    }

    public static InterfaceC0176s getTwoDigitFormatter() {
        return f4452d;
    }

    public final void a() {
        EditText editText = this.f4453c.f4147e;
        editText.setImeOptions(33554432);
        editText.setPrivateImeOptions("inputType=YearDateTime_edittext");
        editText.setText("");
    }

    public final void b(int i5, c1.w wVar) {
        this.f4453c.y(i5, wVar);
    }

    @Override // android.view.View
    public final void computeScroll() {
        D d2 = this.f4453c;
        if (d2.f4125T0) {
            return;
        }
        Scroller scroller = d2.f4094D;
        if (scroller.isFinished()) {
            scroller = d2.f4097F;
            if (scroller.isFinished()) {
                return;
            }
        }
        scroller.computeScrollOffset();
        int currY = scroller.getCurrY();
        if (d2.f4099G == 0) {
            d2.f4099G = scroller.getStartY();
        }
        d2.t(currY - d2.f4099G);
        d2.f4099G = currY;
        if (!scroller.isFinished()) {
            ((SeslNumberPicker) d2.f4233b).invalidate();
            return;
        }
        if (scroller == d2.f4094D) {
            if (!d2.e(0)) {
                d2.C();
            }
            d2.p(0);
        } else if (d2.f4124T != 1) {
            d2.C();
        }
    }

    @Override // android.view.View
    public final int computeVerticalScrollExtent() {
        return ((SeslNumberPicker) this.f4453c.f4233b).getHeight();
    }

    @Override // android.view.View
    public final int computeVerticalScrollOffset() {
        return this.f4453c.f4092C;
    }

    @Override // android.view.View
    public final int computeVerticalScrollRange() {
        D d2 = this.f4453c;
        return ((d2.n - d2.f4159m) + 1) * d2.f4089A;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchHoverEvent(MotionEvent motionEvent) {
        int i5;
        D d2 = this.f4453c;
        if (d2.m()) {
            return super.dispatchHoverEvent(motionEvent);
        }
        if (!d2.f4136Z0.isEnabled()) {
            return false;
        }
        int y3 = (int) motionEvent.getY();
        int i6 = 2;
        if (!d2.f4152h0) {
            if (y3 <= d2.f4131X) {
                i6 = 1;
            } else if (d2.f4133Y <= y3) {
                i6 = 3;
            }
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 7 || actionMasked == 9) {
            int i7 = d2.f4135Z;
            if (i7 != i6) {
                d2.f4135Z = i6;
                A aG = d2.g();
                aG.j(i6, 128);
                aG.j(i7, 256);
            }
            if (i6 == Integer.MIN_VALUE) {
                return false;
            }
        } else {
            if (actionMasked != 10 || (i5 = d2.f4135Z) == Integer.MIN_VALUE) {
                return false;
            }
            if (i5 != Integer.MIN_VALUE) {
                d2.f4135Z = Integer.MIN_VALUE;
                A aG2 = d2.g();
                aG2.j(Integer.MIN_VALUE, 128);
                aG2.j(i5, 256);
            }
        }
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        D d2 = this.f4453c;
        d2.getClass();
        int action = keyEvent.getAction();
        int keyCode = keyEvent.getKeyCode();
        if (keyCode != 66 && keyCode != 160) {
            SeslNumberPicker seslNumberPicker = (SeslNumberPicker) d2.f4233b;
            switch (keyCode) {
                case 19:
                case 20:
                    if (!d2.f4152h0) {
                        if (action == 0) {
                            if (keyCode == 20) {
                                int i5 = d2.f4142c0;
                                if (i5 == 1) {
                                    d2.f4142c0 = 2;
                                    seslNumberPicker.invalidate();
                                } else if (i5 == 2 && (d2.f4118Q || d2.f4160o != d2.n)) {
                                    d2.f4142c0 = 3;
                                    seslNumberPicker.invalidate();
                                }
                                return true;
                            }
                            if (keyCode == 19) {
                                int i6 = d2.f4142c0;
                                if (i6 != 2) {
                                    if (i6 == 3) {
                                        d2.f4142c0 = 2;
                                        seslNumberPicker.invalidate();
                                        return true;
                                    }
                                } else if (d2.f4118Q || d2.f4160o != d2.f4159m) {
                                    d2.f4142c0 = 1;
                                    seslNumberPicker.invalidate();
                                    return true;
                                }
                            }
                        } else if (action == 1 && d2.f4136Z0.isEnabled()) {
                            A aG = d2.g();
                            if (aG != null) {
                                aG.performAction(d2.f4142c0, 64, null);
                            }
                            return true;
                        }
                    }
                    break;
                case 21:
                case 22:
                    if (action == 0) {
                        if (keyCode == 21) {
                            View viewFocusSearch = seslNumberPicker.focusSearch(17);
                            if (viewFocusSearch != null) {
                                viewFocusSearch.requestFocus(17);
                            }
                        } else if (keyCode == 22) {
                            View viewFocusSearch2 = seslNumberPicker.focusSearch(66);
                            if (viewFocusSearch2 != null) {
                                viewFocusSearch2.requestFocus(66);
                            }
                        }
                        return true;
                    }
                    break;
            }
            return super.dispatchKeyEvent(keyEvent);
        }
        if (!d2.f4152h0 && action == 1) {
            if (d2.f4142c0 == 2) {
                if (d2.g0) {
                    EditText editText = d2.f4147e;
                    editText.setVisibility(0);
                    editText.requestFocus();
                    d2.x();
                    d2.s();
                    return true;
                }
            } else if (d2.f4094D.isFinished()) {
                int i7 = d2.f4142c0;
                if (i7 == 1) {
                    d2.z(false);
                    d2.c(false);
                    if (!d2.f4118Q && d2.f4160o == d2.f4159m + 1) {
                        d2.f4142c0 = 2;
                    }
                    d2.z(true);
                } else if (i7 == 3) {
                    d2.z(false);
                    d2.c(true);
                    if (!d2.f4118Q && d2.f4160o == d2.n - 1) {
                        d2.f4142c0 = 2;
                    }
                    d2.z(true);
                }
            }
        }
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchKeyEventPreIme(KeyEvent keyEvent) {
        D d2 = this.f4453c;
        if (d2.g0) {
            EditText editText = d2.f4147e;
            boolean zHasFocus = editText.hasFocus();
            SeslNumberPicker seslNumberPicker = (SeslNumberPicker) d2.f4233b;
            if ((zHasFocus || (!d2.g0 && seslNumberPicker.hasFocus())) && keyEvent.getKeyCode() == 4 && keyEvent.getAction() == 0) {
                d2.f4164r = true;
                InputMethodManager inputMethodManager = (InputMethodManager) d2.f4232a.getSystemService("input_method");
                if (inputMethodManager != null && inputMethodManager.isActive(editText)) {
                    inputMethodManager.hideSoftInputFromWindow(seslNumberPicker.getWindowToken(), 0);
                    editText.setVisibility(4);
                }
                d2.u(false);
                return true;
            }
            d2.f4164r = false;
        }
        return super.dispatchKeyEventPreIme(keyEvent);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        D d2 = this.f4453c;
        d2.getClass();
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 1 || actionMasked == 3) {
            d2.s();
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchTrackballEvent(MotionEvent motionEvent) {
        D d2 = this.f4453c;
        d2.getClass();
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 1 || actionMasked == 3) {
            d2.s();
        }
        return super.dispatchTrackballEvent(motionEvent);
    }

    @Override // android.view.View
    public AccessibilityNodeProvider getAccessibilityNodeProvider() {
        D d2 = this.f4453c;
        return d2.m() ? super.getAccessibilityNodeProvider() : d2.g();
    }

    public String[] getDisplayedValues() {
        return this.f4453c.f4158l;
    }

    public EditText getEditText() {
        return this.f4453c.f4147e;
    }

    public int[] getEnableStateSet() {
        return LinearLayout.ENABLED_STATE_SET;
    }

    public int getMaxValue() {
        return this.f4453c.n;
    }

    public int getMinValue() {
        return this.f4453c.f4159m;
    }

    public int getPaintFlags() {
        return this.f4453c.f4174y.getFlags();
    }

    public int getValue() {
        return this.f4453c.f4160o;
    }

    public boolean getWrapSelectorWheel() {
        return this.f4453c.f4118Q;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        D d2 = this.f4453c;
        ((SeslNumberPicker) d2.f4233b).getViewTreeObserver().addOnPreDrawListener(d2.f4156j0);
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        D d2 = this.f4453c;
        boolean z4 = d2.f4177z0;
        boolean z5 = Settings.Global.getInt(d2.f4232a.getContentResolver(), "bold_text", 0) != 0;
        d2.f4177z0 = z5;
        if (z4 != z5) {
            d2.f4174y.setFakeBoldText(z5);
        }
        if (d2.f4171w0) {
            return;
        }
        boolean zL = D.l();
        EditText editText = d2.f4147e;
        if (!zL) {
            editText.setIncludeFontPadding(false);
            d2.v();
            d2.B();
        } else {
            editText.setIncludeFontPadding(true);
            Typeface typeface = d2.f4095D0;
            d2.f4090A0 = typeface;
            d2.B0 = Typeface.create(typeface, 0);
            d2.f4093C0 = Typeface.create(d2.f4090A0, 1);
            d2.v();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        D d2 = this.f4453c;
        d2.E.abortAnimation();
        d2.f4123S0.b();
        d2.f4125T0 = false;
        d2.s();
        ((SeslNumberPicker) d2.f4233b).getViewTreeObserver().removeOnPreDrawListener(d2.f4156j0);
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x014c  */
    @Override // android.widget.LinearLayout, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void onDraw(Canvas canvas) {
        boolean z4;
        D d2 = this.f4453c;
        if (d2.m()) {
            super.onDraw(canvas);
            return;
        }
        SeslNumberPicker seslNumberPicker = (SeslNumberPicker) d2.f4233b;
        int right = seslNumberPicker.getRight();
        int left = seslNumberPicker.getLeft();
        int bottom = seslNumberPicker.getBottom();
        float f = (right - left) / 2.0f;
        float f5 = d2.f4092C - d2.f4089A;
        ColorDrawable colorDrawable = d2.f4176z;
        if (colorDrawable != null && d2.f4124T == 0) {
            int i5 = d2.f4142c0;
            if (i5 == 1) {
                colorDrawable.setState(seslNumberPicker.getDrawableState());
                colorDrawable.setBounds(0, 0, right, d2.f4131X);
                colorDrawable.draw(canvas);
            } else if (i5 == 2) {
                colorDrawable.setState(seslNumberPicker.getDrawableState());
                colorDrawable.setBounds(0, d2.f4131X, right, d2.f4133Y);
                colorDrawable.draw(canvas);
            } else if (i5 == 3) {
                colorDrawable.setState(seslNumberPicker.getDrawableState());
                colorDrawable.setBounds(0, d2.f4133Y, right, bottom);
                colorDrawable.draw(canvas);
            }
        }
        int i6 = 0;
        while (true) {
            int[] iArr = d2.f4172x;
            if (i6 >= iArr.length) {
                return;
            }
            String str = (String) d2.f4170w.get(iArr[i6]);
            if (str != null && !str.isEmpty() && !d2.f4141c.isEmpty()) {
                str = str + d2.f4141c;
            }
            float f6 = d2.f4114N0;
            float f7 = d2.f4110L0;
            if (f6 < f7) {
                f6 = f7;
            }
            Paint paint = d2.f4174y;
            int iDescent = (int) ((((paint.descent() - paint.ascent()) / 2.0f) + f5) - paint.descent());
            float f8 = d2.f4131X - d2.f4091B;
            float f9 = d2.f4112M0;
            if (f5 >= f8) {
                int i7 = d2.f4133Y;
                if (f5 > r14 + i7) {
                    z4 = false;
                    canvas.save();
                    paint.setAlpha((int) (f6 * 255.0f * f9));
                    paint.setTypeface(d2.B0);
                    canvas.drawText(str, f, iDescent, paint);
                    canvas.restore();
                } else if (f5 <= (r13 + i7) / 2.0f) {
                    canvas.save();
                    canvas.clipRect(0, d2.f4131X, right, d2.f4133Y);
                    paint.setColor(d2.r0);
                    paint.setTypeface(d2.f4090A0);
                    float f10 = iDescent;
                    canvas.drawText(str, f, f10, paint);
                    canvas.restore();
                    canvas.save();
                    canvas.clipRect(0, 0, right, d2.f4131X);
                    paint.setTypeface(d2.B0);
                    paint.setAlpha((int) (f6 * 255.0f * f9));
                    canvas.drawText(str, f, f10, paint);
                    canvas.restore();
                    z4 = false;
                } else {
                    canvas.save();
                    z4 = false;
                    canvas.clipRect(0, d2.f4131X, right, d2.f4133Y);
                    paint.setTypeface(d2.f4090A0);
                    paint.setColor(d2.r0);
                    float f11 = iDescent;
                    canvas.drawText(str, f, f11, paint);
                    canvas.restore();
                    canvas.save();
                    canvas.clipRect(0, d2.f4133Y, right, bottom);
                    paint.setAlpha((int) (f6 * 255.0f * f9));
                    paint.setTypeface(d2.B0);
                    canvas.drawText(str, f, f11, paint);
                    canvas.restore();
                }
            }
            f5 += d2.f4089A;
            i6++;
        }
    }

    @Override // android.view.View
    public final void onFocusChanged(boolean z4, int i5, Rect rect) {
        A aG;
        A aG2;
        D d2 = this.f4453c;
        AccessibilityManager accessibilityManager = d2.f4136Z0;
        if (z4) {
            if (d2.f4152h0) {
                d2.f4142c0 = -1;
                EditText editText = d2.f4147e;
                if (editText.getVisibility() == 0) {
                    editText.requestFocus();
                }
            } else {
                d2.f4142c0 = 1;
                if (!d2.f4118Q && d2.f4160o == d2.f4159m) {
                    d2.f4142c0 = 2;
                }
            }
            if (accessibilityManager.isEnabled() && (aG = d2.g()) != null) {
                if (d2.f4152h0) {
                    d2.f4142c0 = 2;
                }
                aG.performAction(d2.f4142c0, 64, null);
            }
        } else {
            if (accessibilityManager.isEnabled() && (aG2 = d2.g()) != null) {
                if (d2.f4152h0) {
                    d2.f4142c0 = 2;
                }
                aG2.performAction(d2.f4142c0, 128, null);
            }
            d2.f4142c0 = -1;
            d2.f4135Z = Integer.MIN_VALUE;
        }
        ((SeslNumberPicker) d2.f4233b).invalidate();
        super.onFocusChanged(z4, i5, rect);
    }

    @Override // android.view.View
    public final boolean onGenericMotionEvent(MotionEvent motionEvent) {
        D d2 = this.f4453c;
        if (((SeslNumberPicker) d2.f4233b).isEnabled() && !d2.f4152h0 && !d2.n0 && (motionEvent.getSource() & 2) != 0 && motionEvent.getAction() == 8) {
            float axisValue = motionEvent.getAxisValue(9);
            if (axisValue != 0.0f) {
                d2.z(false);
                d2.c(axisValue < 0.0f);
                d2.z(true);
                return true;
            }
        }
        return super.onGenericMotionEvent(motionEvent);
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        D d2 = this.f4453c;
        d2.getClass();
        accessibilityEvent.setClassName(NumberPicker.class.getName());
        accessibilityEvent.setScrollable(true);
        accessibilityEvent.setScrollY((d2.f4159m + d2.f4160o) * d2.f4089A);
        accessibilityEvent.setMaxScrollY((d2.n - d2.f4159m) * d2.f4089A);
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        D d2 = this.f4453c;
        SeslNumberPicker seslNumberPicker = (SeslNumberPicker) d2.f4233b;
        if (!seslNumberPicker.isEnabled() || d2.f4152h0 || d2.n0 || motionEvent.getActionMasked() != 0) {
            return false;
        }
        d2.s();
        d2.f4147e.setVisibility(4);
        float y3 = motionEvent.getY();
        d2.f4107K = y3;
        d2.f4109L = y3;
        motionEvent.getEventTime();
        d2.f4126U = false;
        d2.f4128V = false;
        d2.f4130W = false;
        d2.f4102H0 = false;
        float f = d2.f4107K;
        float f5 = d2.f4131X;
        O o2 = d2.f4148e0;
        if (f < f5) {
            d2.z(false);
            if (d2.f4124T == 0) {
                o2.a();
                o2.f4248e = 1;
                o2.f4247d = 2;
                ((SeslNumberPicker) ((D) o2.f).f4233b).postDelayed(o2, ViewConfiguration.getTapTimeout());
            }
        } else if (f > d2.f4133Y) {
            d2.z(false);
            if (d2.f4124T == 0) {
                o2.a();
                o2.f4248e = 1;
                o2.f4247d = 1;
                ((SeslNumberPicker) ((D) o2.f).f4233b).postDelayed(o2, ViewConfiguration.getTapTimeout());
            }
        }
        seslNumberPicker.getParent().requestDisallowInterceptTouchEvent(true);
        boolean zIsFinished = d2.f4094D.isFinished();
        Scroller scroller = d2.f4097F;
        if (zIsFinished) {
            V.e eVar = d2.f4123S0;
            if (eVar.f2768e) {
                OverScroller overScroller = d2.E;
                overScroller.forceFinished(true);
                scroller.forceFinished(true);
                eVar.b();
                d2.f4125T0 = false;
                if (d2.f4124T == 2) {
                    overScroller.abortAnimation();
                    scroller.abortAnimation();
                }
                d2.p(0);
            } else if (scroller.isFinished()) {
                float f6 = d2.f4107K;
                if (f6 < d2.f4131X) {
                    if (d2.f4161p != 1) {
                        d2.r();
                    }
                } else if (f6 <= d2.f4133Y) {
                    d2.f4130W = true;
                    if (d2.f4161p != 1) {
                        d2.r();
                    } else {
                        x xVar = d2.f4105J;
                        if (xVar == null) {
                            d2.f4105J = new x(d2, 1);
                        } else {
                            seslNumberPicker.removeCallbacks(xVar);
                        }
                        seslNumberPicker.postDelayed(d2.f4105J, ViewConfiguration.getLongPressTimeout());
                    }
                } else if (d2.f4161p != 1) {
                    d2.r();
                }
            } else {
                d2.f4094D.forceFinished(true);
                scroller.forceFinished(true);
            }
        } else {
            d2.f4094D.forceFinished(true);
            scroller.forceFinished(true);
            if (d2.f4124T == 2) {
                d2.f4094D.abortAnimation();
                scroller.abortAnimation();
            }
            d2.p(0);
        }
        return true;
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z4, int i5, int i6, int i7, int i8) {
        D d2 = this.f4453c;
        SeslNumberPicker seslNumberPicker = (SeslNumberPicker) d2.f4233b;
        int measuredWidth = seslNumberPicker.getMeasuredWidth();
        int measuredHeight = seslNumberPicker.getMeasuredHeight();
        EditText editText = d2.f4147e;
        int measuredWidth2 = editText.getMeasuredWidth();
        int iMax = Math.max(editText.getMeasuredHeight(), (int) Math.floor(measuredHeight * d2.f4096E0));
        d2.f4098F0 = iMax;
        int i9 = (measuredWidth - measuredWidth2) / 2;
        int i10 = (measuredHeight - iMax) / 2;
        int i11 = iMax + i10;
        editText.layout(i9, i10, measuredWidth2 + i9, i11);
        if (z4) {
            if (d2.n0) {
                if (!d2.o(d2.f4094D)) {
                    d2.o(d2.f4097F);
                }
                d2.A();
            } else {
                d2.k();
            }
            int bottom = d2.f4157k + ((int) ((((seslNumberPicker.getBottom() - seslNumberPicker.getTop()) - (d2.f4157k * 3)) / 3) + 0.5f));
            d2.f4089A = bottom;
            int height = d2.f4098F0;
            if (height > bottom || d2.f4149f0) {
                height = seslNumberPicker.getHeight() / 3;
            }
            d2.f4100G0 = height;
            int top = ((d2.f4098F0 / 2) + editText.getTop()) - d2.f4089A;
            d2.f4091B = top;
            d2.f4092C = top;
            Paint paint = d2.f4174y;
            ((CustomEditText) editText).f4455d = ((int) (((paint.descent() - paint.ascent()) / 2.0f) - paint.descent())) - (editText.getBaseline() - (d2.f4098F0 / 2));
            if (d2.o0) {
                d2.y(0, d2.f4134Y0);
                d2.o0 = false;
            }
            if (d2.f4098F0 <= d2.f4089A) {
                d2.f4131X = i10;
                d2.f4133Y = i11;
            } else {
                int i12 = d2.f4100G0;
                d2.f4131X = i12;
                d2.f4133Y = i12 * 2;
            }
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onMeasure(int i5, int i6) {
        D d2 = this.f4453c;
        int iN = D.n(i5, d2.f4153i);
        int iN2 = D.n(i6, d2.f4150g);
        SeslNumberPicker seslNumberPicker = (SeslNumberPicker) d2.f4233b;
        super.onMeasure(iN, iN2);
        int measuredWidth = seslNumberPicker.getMeasuredWidth();
        int i7 = d2.f4151h;
        if (i7 != -1) {
            measuredWidth = View.resolveSizeAndState(Math.max(i7, measuredWidth), i5, 0);
        }
        int measuredHeight = seslNumberPicker.getMeasuredHeight();
        int i8 = d2.f;
        if (i8 != -1) {
            measuredHeight = View.resolveSizeAndState(Math.max(i8, measuredHeight), i6, 0);
        }
        seslNumberPicker.setMeasuredDimension(measuredWidth, measuredHeight);
    }

    @Override // android.view.View
    public final void onPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onPopulateAccessibilityEvent(accessibilityEvent);
        D d2 = this.f4453c;
        d2.getClass();
        List<CharSequence> text = accessibilityEvent.getText();
        A aG = d2.g();
        int i5 = A.f4080g;
        text.add(aG.d(true));
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        D d2 = this.f4453c;
        SeslNumberPicker seslNumberPicker = (SeslNumberPicker) d2.f4233b;
        if (!seslNumberPicker.isEnabled() || d2.f4152h0 || d2.n0) {
            return false;
        }
        if (d2.f4111M == null) {
            d2.f4111M = VelocityTracker.obtain();
        }
        d2.f4111M.addMovement(motionEvent);
        int actionMasked = motionEvent.getActionMasked();
        int i5 = d2.f4113N;
        if (actionMasked == 1) {
            x xVar = d2.f4105J;
            if (xVar != null) {
                seslNumberPicker.removeCallbacks(xVar);
            }
            x xVar2 = d2.f4103I;
            if (xVar2 != null) {
                seslNumberPicker.removeCallbacks(xVar2);
            }
            if (!d2.f4128V) {
                O o2 = d2.f4148e0;
                o2.a();
                VelocityTracker velocityTracker = d2.f4111M;
                velocityTracker.computeCurrentVelocity(1000, d2.f4116P);
                int yVelocity = (int) velocityTracker.getYVelocity();
                int y3 = (int) motionEvent.getY();
                int iAbs = (int) Math.abs(y3 - d2.f4107K);
                if (!d2.g0 && d2.f4126U) {
                    d2.e(0);
                    d2.z(true);
                    d2.p(0);
                } else if (Math.abs(yVelocity) <= d2.f4115O || Math.abs(yVelocity) <= d2.f4129V0) {
                    if (iAbs > i5) {
                        if (d2.m0) {
                            d2.x();
                            d2.m0 = false;
                        }
                        d2.e(iAbs);
                        d2.z(true);
                    } else if (d2.f4130W) {
                        d2.f4130W = false;
                        if (d2.g0) {
                            d2.x();
                        }
                    } else {
                        int i6 = d2.f4133Y;
                        D d5 = (D) o2.f;
                        if (y3 > i6) {
                            d2.c(true);
                            o2.a();
                            o2.f4248e = 2;
                            o2.f4247d = 1;
                            ((SeslNumberPicker) d5.f4233b).post(o2);
                        } else if (y3 < d2.f4131X) {
                            d2.c(false);
                            o2.a();
                            o2.f4248e = 2;
                            o2.f4247d = 2;
                            ((SeslNumberPicker) d5.f4233b).post(o2);
                        } else {
                            d2.e(iAbs);
                        }
                        d2.z(true);
                    }
                    d2.f4102H0 = false;
                    d2.p(0);
                } else if (iAbs > i5 || !d2.f4130W) {
                    boolean z4 = d2.f4118Q;
                    if (!z4 && yVelocity > 0 && d2.f4160o == d2.f4159m) {
                        d2.z(true);
                    } else if (z4 || yVelocity >= 0 || d2.f4160o != d2.n) {
                        d2.f4099G = 0;
                        Math.abs(yVelocity);
                        d2.f4101H = d2.f4092C;
                        V.e eVar = d2.f4123S0;
                        eVar.f2764a = yVelocity;
                        OverScroller overScroller = d2.E;
                        overScroller.forceFinished(true);
                        overScroller.fling(0, d2.f4092C, 0, yVelocity, 0, 0, Integer.MIN_VALUE, Integer.MAX_VALUE);
                        int iRound = Math.round((overScroller.getFinalY() + d2.f4092C) / d2.f4089A);
                        int i7 = d2.f4089A;
                        int i8 = d2.f4091B;
                        int i9 = (iRound * i7) + i8;
                        float fMax = yVelocity > 0 ? Math.max(i9, i7 + i8) : Math.min(i9, (-i7) + i8);
                        eVar.f2765b = d2.f4092C;
                        eVar.f2766c = true;
                        d2.f4125T0 = true;
                        eVar.a(fMax);
                        seslNumberPicker.invalidate();
                    } else {
                        d2.z(true);
                    }
                    d2.p(2);
                } else {
                    d2.f4130W = false;
                    if (d2.g0) {
                        d2.x();
                    }
                    d2.p(0);
                }
                d2.f4111M.recycle();
                d2.f4111M = null;
            }
        } else if (actionMasked != 2) {
            if (actionMasked == 3) {
                d2.e(0);
                d2.z(true);
                d2.p(0);
            }
        } else if (!d2.f4126U) {
            float y4 = motionEvent.getY();
            if (d2.f4124T == 1) {
                d2.t((int) (y4 - d2.f4109L));
                seslNumberPicker.invalidate();
            } else if (((int) Math.abs(y4 - d2.f4107K)) > i5) {
                d2.s();
                d2.z(false);
                d2.p(1);
            }
            d2.f4109L = y4;
        }
        return true;
    }

    @Override // android.view.View
    public final void onWindowFocusChanged(boolean z4) {
        InputMethodManager inputMethodManager;
        super.onWindowFocusChanged(z4);
        D d2 = this.f4453c;
        SeslNumberPicker seslNumberPicker = (SeslNumberPicker) d2.f4233b;
        EditText editText = d2.f4147e;
        if (z4 && d2.f4152h0 && editText.isFocused()) {
            seslNumberPicker.postDelayed(new x(d2, 0), 20L);
        } else if (z4 && d2.f4152h0 && !editText.isFocused() && (inputMethodManager = (InputMethodManager) d2.f4232a.getSystemService("input_method")) != null && inputMethodManager.isActive(editText)) {
            inputMethodManager.hideSoftInputFromWindow(seslNumberPicker.getWindowToken(), 0);
        }
        if (!d2.n0) {
            if (!d2.f4094D.isFinished()) {
                d2.f4094D.forceFinished(true);
            }
            Scroller scroller = d2.f4097F;
            if (!scroller.isFinished()) {
                scroller.forceFinished(true);
            }
            OverScroller overScroller = d2.E;
            if (!overScroller.isFinished()) {
                overScroller.forceFinished(true);
            }
            V.e eVar = d2.f4123S0;
            if (eVar.f2768e) {
                eVar.b();
                d2.f4125T0 = false;
            }
            d2.e(0);
        }
        d2.f4175y0 = AbstractC0739a.l(editText);
        Paint paint = d2.f4174y;
        paint.setTextSize(d2.f4157k);
        paint.setTypeface(d2.f4090A0);
        d2.v();
    }

    @Override // android.view.View
    public final void onWindowVisibilityChanged(int i5) {
        this.f4453c.getClass();
        super.onWindowVisibilityChanged(i5);
    }

    @Override // android.view.View
    public final boolean performClick() {
        D d2 = this.f4453c;
        if (d2.m()) {
            return super.performClick();
        }
        if (super.performClick() || !d2.g0) {
            return true;
        }
        d2.x();
        return true;
    }

    @Override // android.view.View
    public final boolean performLongClick() {
        if (!super.performLongClick()) {
            D d2 = this.f4453c;
            d2.f4126U = true;
            if (d2.g0) {
                d2.m0 = true;
            }
        }
        return true;
    }

    @Override // android.view.View
    public final void scrollBy(int i5, int i6) {
        this.f4453c.t(i6);
    }

    public void setCustomIntervalValue(int i5) {
        this.f4453c.f4161p = i5;
    }

    public void setCustomNumberPickerIdleColor(int i5) {
        D d2 = this.f4453c;
        d2.f4147e.setTextColor(i5);
        d2.j(d2.f4232a);
        d2.f4174y.setColor(d2.r0);
        d2.f4119Q0.setIntValues(d2.s0, d2.t0);
        d2.f4121R0.setIntValues(d2.t0, d2.s0);
        ((SeslNumberPicker) d2.f4233b).invalidate();
    }

    public void setCustomNumberPickerScrollColor(int i5) {
        D d2 = this.f4453c;
        d2.f4173x0 = true;
        d2.u0 = i5;
        d2.j(d2.f4232a);
        d2.f4119Q0.setIntValues(d2.s0, d2.t0);
        d2.f4121R0.setIntValues(d2.t0, d2.s0);
        ((SeslNumberPicker) d2.f4233b).invalidate();
    }

    public void setCustomTalkbackFormatter(r rVar) {
        this.f4453c.f4168v = rVar;
    }

    public void setDateUnit(int i5) {
        D d2 = this.f4453c;
        if (i5 == -1) {
            d2.f4141c = "";
        }
        Context context = d2.f4232a;
        switch (i5) {
            case 997:
                d2.f4141c = context.getResources().getString(R.string.sesl_date_picker_day);
                break;
            case 998:
                d2.f4141c = context.getResources().getString(R.string.sesl_date_picker_month);
                break;
            case androidx.room.j.MAX_BIND_PARAMETER_CNT /* 999 */:
                d2.f4141c = context.getResources().getString(R.string.sesl_date_picker_year);
                break;
        }
    }

    public void setDisplayedValues(String[] strArr) {
        D d2 = this.f4453c;
        if (d2.f4158l == strArr) {
            return;
        }
        d2.f4158l = strArr;
        EditText editText = d2.f4147e;
        if (strArr != null) {
            editText.setRawInputType(524289);
        } else {
            editText.setRawInputType(2);
        }
        d2.C();
        d2.k();
        d2.B();
    }

    public void setEditTextMode(boolean z4) {
        this.f4453c.u(z4);
    }

    public void setEditTextModeEnabled(boolean z4) {
        D d2 = this.f4453c;
        if (d2.g0 == z4 || z4) {
            return;
        }
        if (d2.f4152h0) {
            d2.u(false);
        }
        d2.f4147e.setAccessibilityDelegate(null);
        d2.g0 = z4;
    }

    @Override // android.view.View
    public void setEnabled(boolean z4) {
        super.setEnabled(z4);
        D d2 = this.f4453c;
        d2.f4147e.setEnabled(z4);
        if (z4 || d2.f4124T == 0) {
            return;
        }
        d2.A();
        d2.p(0);
    }

    public void setErrorToastMessage(String str) {
        D d2 = this.f4453c;
        d2.getClass();
        if (TextUtils.isEmpty(str)) {
            return;
        }
        d2.W0 = str;
    }

    public void setFormatter(InterfaceC0176s interfaceC0176s) {
        D d2 = this.f4453c;
        if (interfaceC0176s == d2.f4167u) {
            return;
        }
        d2.f4167u = interfaceC0176s;
        d2.k();
        d2.C();
    }

    public void setMaxInputLength(int i5) {
        EditText editText = this.f4453c.f4147e;
        editText.setFilters(new InputFilter[]{editText.getFilters()[0], new InputFilter.LengthFilter(i5)});
    }

    public void setMaxValue(int i5) {
        D d2 = this.f4453c;
        if (d2.n == i5) {
            return;
        }
        if (i5 < 0) {
            throw new IllegalArgumentException("maxValue must be >= 0");
        }
        boolean z4 = d2.f4118Q;
        int i6 = d2.f4161p;
        if (i6 == 1 || ((z4 ? 1 : 0) + i5) % i6 == 0) {
            d2.n = i5;
            if (i5 < d2.f4160o) {
                d2.f4160o = i5;
            }
            d2.D();
            d2.k();
            d2.C();
            d2.B();
            ((SeslNumberPicker) d2.f4233b).invalidate();
        }
    }

    public void setMinValue(int i5) {
        D d2 = this.f4453c;
        if (d2.f4159m == i5) {
            return;
        }
        if (i5 < 0) {
            throw new IllegalArgumentException("minValue must be >= 0");
        }
        int i6 = d2.f4161p;
        if (i6 == 1 || i5 % i6 == 0) {
            d2.f4159m = i5;
            if (i5 > d2.f4160o) {
                d2.f4160o = i5;
            }
            d2.D();
            d2.k();
            d2.C();
            d2.B();
            ((SeslNumberPicker) d2.f4233b).invalidate();
        }
    }

    public void setOnEditTextModeChangedListener(InterfaceC0177t interfaceC0177t) {
        this.f4453c.f4166t = interfaceC0177t;
    }

    public void setOnLongPressUpdateInterval(long j3) {
    }

    public void setOnScrollListener(InterfaceC0178u interfaceC0178u) {
        this.f4453c.getClass();
    }

    public void setOnValueChangedListener(InterfaceC0179v interfaceC0179v) {
        this.f4453c.f4165s = interfaceC0179v;
    }

    public void setPaintFlags(int i5) {
        D d2 = this.f4453c;
        Paint paint = d2.f4174y;
        if (paint.getFlags() != i5) {
            paint.setFlags(i5);
            d2.f4147e.setPaintFlags(i5);
            d2.B();
        }
    }

    public void setPickerContentDescription(String str) {
        D d2 = this.f4453c;
        d2.f4144d = str;
        ((CustomEditText) d2.f4147e).f4454c = str;
    }

    public void setSkipValuesOnLongPressEnabled(boolean z4) {
    }

    public void setSubTextSize(float f) {
        this.f4453c.getClass();
    }

    public void setSubTextTypeface(Typeface typeface) {
        D d2 = this.f4453c;
        d2.f4171w0 = true;
        d2.B0 = typeface;
        d2.f4174y.setTypeface(d2.f4090A0);
        d2.f4093C0 = Typeface.create(d2.f4090A0, 1);
        d2.v();
        d2.B();
    }

    public void setTextSize(float f) {
        D d2 = this.f4453c;
        int iApplyDimension = (int) TypedValue.applyDimension(1, f, d2.f4232a.getResources().getDisplayMetrics());
        d2.f4157k = iApplyDimension;
        d2.f4174y.setTextSize(iApplyDimension);
        d2.f4147e.setTextSize(0, d2.f4157k);
        d2.B();
    }

    public void setTextTypeface(Typeface typeface) {
        D d2 = this.f4453c;
        d2.f4171w0 = true;
        d2.f4090A0 = typeface;
        d2.B0 = Typeface.create(typeface, 0);
        d2.f4174y.setTypeface(d2.f4090A0);
        d2.f4093C0 = Typeface.create(d2.f4090A0, 1);
        d2.v();
        d2.B();
    }

    public void setValue(int i5) {
        D d2 = this.f4453c;
        if (!d2.f4094D.isFinished() || d2.f4123S0.f2768e) {
            d2.A();
        }
        d2.w(i5, false);
    }

    public void setWrapSelectorWheel(boolean z4) {
        D d2 = this.f4453c;
        d2.f4120R = z4;
        d2.D();
    }
}
