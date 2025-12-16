package androidx.picker.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.icu.text.DateFormatSymbols;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeProvider;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.OverScroller;
import android.widget.Scroller;
import java.util.Calendar;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.TimeUnit;
import p0.AbstractC0739a;

/* loaded from: classes.dex */
class SeslSpinningDatePickerSpinner extends LinearLayout {

    /* renamed from: d, reason: collision with root package name */
    public static final C0164f f4456d = new C0164f();

    /* renamed from: c, reason: collision with root package name */
    public final P f4457c;

    public static class CustomEditText extends EditText {

        /* renamed from: c, reason: collision with root package name */
        public int f4458c;

        public CustomEditText(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        @Override // android.widget.TextView, android.view.View
        public final void onDraw(Canvas canvas) {
            canvas.translate(0.0f, this.f4458c);
            super.onDraw(canvas);
        }
    }

    public SeslSpinningDatePickerSpinner(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0, 0);
        this.f4457c = new P(this, context, attributeSet);
    }

    public static int[] a() {
        return LinearLayout.ENABLED_STATE_SET;
    }

    @Override // android.view.View
    public final void computeScroll() {
        P p4 = this.f4457c;
        if (p4.f4260G0) {
            return;
        }
        Scroller scroller = p4.f4315w;
        if (scroller.isFinished()) {
            scroller = p4.f4319y;
            if (scroller.isFinished()) {
                return;
            }
        }
        scroller.computeScrollOffset();
        int currY = scroller.getCurrY();
        if (p4.f4321z == 0) {
            p4.f4321z = scroller.getStartY();
        }
        p4.o(currY - p4.f4321z);
        p4.f4321z = currY;
        if (!scroller.isFinished()) {
            ((SeslSpinningDatePickerSpinner) p4.f4233b).invalidate();
        } else if (scroller == p4.f4315w) {
            p4.l(0);
        }
    }

    @Override // android.view.View
    public final int computeVerticalScrollExtent() {
        return ((SeslSpinningDatePickerSpinner) this.f4457c.f4233b).getHeight();
    }

    @Override // android.view.View
    public final int computeVerticalScrollOffset() {
        return this.f4457c.f4313v;
    }

    @Override // android.view.View
    public final int computeVerticalScrollRange() {
        P p4 = this.f4457c;
        p4.getClass();
        return (((int) TimeUnit.MILLISECONDS.toDays(p4.f4303l.getTimeInMillis() - p4.f4302k.getTimeInMillis())) + 1) * p4.f4311t;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchHoverEvent(MotionEvent motionEvent) {
        int i5;
        P p4 = this.f4457c;
        if (!p4.f4264I0.isEnabled()) {
            return false;
        }
        int y3 = (int) motionEvent.getY();
        int i6 = y3 <= p4.f4273N ? 1 : p4.f4274O <= y3 ? 3 : 2;
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 7 || actionMasked == 9) {
            int i7 = p4.f4275P;
            if (i7 != i6) {
                p4.f4275P = i6;
                A aE = p4.e();
                aE.j(i6, 128);
                aE.j(i7, 256);
            }
            if (i6 == Integer.MIN_VALUE) {
                return false;
            }
        } else {
            if (actionMasked != 10 || (i5 = p4.f4275P) == Integer.MIN_VALUE) {
                return false;
            }
            if (i5 != Integer.MIN_VALUE) {
                p4.f4275P = Integer.MIN_VALUE;
                A aE2 = p4.e();
                aE2.j(Integer.MIN_VALUE, 128);
                aE2.j(i5, 256);
            }
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:51:0x00a5  */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        P p4 = this.f4457c;
        p4.getClass();
        int action = keyEvent.getAction();
        int keyCode = keyEvent.getKeyCode();
        Calendar calendar = p4.f4302k;
        Calendar calendar2 = p4.f4303l;
        Calendar calendar3 = p4.f4304m;
        if (keyCode != 66 && keyCode != 160) {
            SeslSpinningDatePickerSpinner seslSpinningDatePickerSpinner = (SeslSpinningDatePickerSpinner) p4.f4233b;
            switch (keyCode) {
                case 19:
                case 20:
                    if (action == 0) {
                        if (keyCode == 20) {
                            int i5 = p4.f4279T;
                            if (i5 == 1) {
                                p4.f4279T = 2;
                                seslSpinningDatePickerSpinner.invalidate();
                            } else if (i5 == 2 && !calendar3.equals(calendar2)) {
                                p4.f4279T = 3;
                                seslSpinningDatePickerSpinner.invalidate();
                            }
                            return true;
                        }
                        if (keyCode == 19) {
                            int i6 = p4.f4279T;
                            if (i6 != 2) {
                                if (i6 == 3) {
                                    p4.f4279T = 2;
                                    seslSpinningDatePickerSpinner.invalidate();
                                    return true;
                                }
                            } else if (!calendar3.equals(calendar)) {
                                p4.f4279T = 1;
                                seslSpinningDatePickerSpinner.invalidate();
                                return true;
                            }
                        }
                    } else if (action == 1 && p4.f4264I0.isEnabled()) {
                        A aE = p4.e();
                        if (aE != null) {
                            aE.performAction(p4.f4279T, 64, null);
                        }
                        return true;
                    }
                    break;
                case 21:
                case 22:
                    if (action == 0) {
                        if (keyCode == 21) {
                            View viewFocusSearch = seslSpinningDatePickerSpinner.focusSearch(17);
                            if (viewFocusSearch != null) {
                                viewFocusSearch.requestFocus(17);
                            }
                        } else if (keyCode == 22) {
                            View viewFocusSearch2 = seslSpinningDatePickerSpinner.focusSearch(66);
                            if (viewFocusSearch2 != null) {
                                viewFocusSearch2.requestFocus(66);
                            }
                        }
                        return true;
                    }
                    break;
            }
        } else if (action == 0) {
            if (p4.f4279T == 2) {
                p4.s();
                p4.n();
            } else if (p4.f4315w.isFinished()) {
                int i7 = p4.f4279T;
                if (i7 == 1) {
                    p4.r(false);
                    p4.a(false);
                    Calendar calendar4 = (Calendar) calendar.clone();
                    calendar4.add(5, 1);
                    if (calendar3.equals(calendar4)) {
                        p4.f4279T = 2;
                    }
                    p4.r(true);
                } else if (i7 == 3) {
                    p4.r(false);
                    p4.a(true);
                    Calendar calendar5 = (Calendar) calendar2.clone();
                    calendar5.add(5, -1);
                    if (calendar3.equals(calendar5)) {
                        p4.f4279T = 2;
                    }
                    p4.r(true);
                }
            }
        }
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchKeyEventPreIme(KeyEvent keyEvent) {
        this.f4457c.getClass();
        return super.dispatchKeyEventPreIme(keyEvent);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        P p4 = this.f4457c;
        p4.getClass();
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 1 || actionMasked == 3) {
            p4.n();
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchTrackballEvent(MotionEvent motionEvent) {
        P p4 = this.f4457c;
        p4.getClass();
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 1 || actionMasked == 3) {
            p4.n();
        }
        return super.dispatchTrackballEvent(motionEvent);
    }

    @Override // android.view.View
    public final AccessibilityNodeProvider getAccessibilityNodeProvider() {
        return this.f4457c.e();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        P p4 = this.f4457c;
        ((SeslSpinningDatePickerSpinner) p4.f4233b).getViewTreeObserver().addOnPreDrawListener(p4.f4287b0);
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        Paint paint;
        super.onConfigurationChanged(configuration);
        P p4 = this.f4457c;
        p4.getClass();
        boolean zI = P.i();
        EditText editText = p4.f4290d;
        if (zI) {
            editText.setIncludeFontPadding(true);
            Typeface typeface = p4.q0;
            p4.n0 = typeface;
            p4.o0 = Typeface.create(typeface, 0);
            p4.f4307p0 = Typeface.create(p4.n0, 1);
            p4.p();
            return;
        }
        editText.setIncludeFontPadding(false);
        p4.p();
        if (p4.f4298i) {
            float f = 0.0f;
            float f5 = 0.0f;
            int i5 = 0;
            while (true) {
                paint = p4.f4309r;
                if (i5 > 9) {
                    break;
                }
                float fMeasureText = paint.measureText(String.format(Locale.getDefault(), "%d", Integer.valueOf(i5)));
                if (fMeasureText > f5) {
                    f5 = fMeasureText;
                }
                i5++;
            }
            float f6 = (int) (2 * f5);
            float f7 = 0.0f;
            for (String str : new DateFormatSymbols(Locale.getDefault()).getShortWeekdays()) {
                float fMeasureText2 = paint.measureText(str);
                if (fMeasureText2 > f7) {
                    f7 = fMeasureText2;
                }
            }
            for (String str2 : new DateFormatSymbols(Locale.getDefault()).getShortMonths()) {
                float fMeasureText3 = paint.measureText(str2);
                if (fMeasureText3 > f) {
                    f = fMeasureText3;
                }
            }
            int paddingRight = editText.getPaddingRight() + editText.getPaddingLeft() + ((int) (f6 + f7 + f + (paint.measureText(" ") * 2.0f) + paint.measureText(",")));
            if (AbstractC0739a.l(editText)) {
                paddingRight += ((int) Math.ceil(L2.b.p(paint) / 2.0f)) * 13;
            }
            if (p4.f4296h != paddingRight) {
                int i6 = p4.f4295g;
                if (paddingRight > i6) {
                    p4.f4296h = paddingRight;
                } else {
                    p4.f4296h = i6;
                }
                ((SeslSpinningDatePickerSpinner) p4.f4233b).invalidate();
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        P p4 = this.f4457c;
        p4.f4317x.abortAnimation();
        p4.f4258F0.b();
        p4.f4260G0 = false;
        p4.n();
        ((SeslSpinningDatePickerSpinner) p4.f4233b).getViewTreeObserver().removeOnPreDrawListener(p4.f4287b0);
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0125  */
    @Override // android.widget.LinearLayout, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void onDraw(Canvas canvas) {
        boolean z4;
        P p4 = this.f4457c;
        SeslSpinningDatePickerSpinner seslSpinningDatePickerSpinner = (SeslSpinningDatePickerSpinner) p4.f4233b;
        int right = seslSpinningDatePickerSpinner.getRight();
        int left = seslSpinningDatePickerSpinner.getLeft();
        int bottom = seslSpinningDatePickerSpinner.getBottom();
        float f = 2.0f;
        float f5 = (right - left) / 2.0f;
        float f6 = p4.f4313v - p4.f4311t;
        ColorDrawable colorDrawable = p4.f4310s;
        if (colorDrawable != null && p4.f4267K == 0) {
            int i5 = p4.f4279T;
            if (i5 == 1) {
                colorDrawable.setState(seslSpinningDatePickerSpinner.getDrawableState());
                colorDrawable.setBounds(0, 0, right, p4.f4273N);
                colorDrawable.draw(canvas);
            } else if (i5 == 2) {
                colorDrawable.setState(seslSpinningDatePickerSpinner.getDrawableState());
                colorDrawable.setBounds(0, p4.f4273N, right, p4.f4274O);
                colorDrawable.draw(canvas);
            } else if (i5 == 3) {
                colorDrawable.setState(seslSpinningDatePickerSpinner.getDrawableState());
                colorDrawable.setBounds(0, p4.f4274O, right, bottom);
                colorDrawable.draw(canvas);
            }
        }
        Calendar[] calendarArr = p4.f4308q;
        int length = calendarArr.length;
        int i6 = 0;
        while (i6 < length) {
            String str = (String) p4.f4306p.get(calendarArr[i6]);
            float f7 = p4.f4322z0;
            float f8 = p4.f4320y0;
            if (f7 < f8) {
                f7 = f8;
            }
            Paint paint = p4.f4309r;
            int iDescent = (int) ((((paint.descent() - paint.ascent()) / f) + f6) - paint.descent());
            float f9 = p4.f4273N - p4.f4312u;
            Calendar[] calendarArr2 = calendarArr;
            float f10 = p4.f4250A0;
            if (f6 >= f9) {
                int i7 = p4.f4274O;
                if (f6 > r9 + i7) {
                    z4 = false;
                    canvas.save();
                    paint.setAlpha((int) (f7 * 255.0f * f10));
                    paint.setTypeface(p4.o0);
                    canvas.drawText(str, f5, iDescent, paint);
                    canvas.restore();
                } else if (f6 <= (r15 + i7) / 2.0f) {
                    canvas.save();
                    canvas.clipRect(0, p4.f4273N, right, p4.f4274O);
                    paint.setColor(p4.f4301j0);
                    paint.setTypeface(p4.n0);
                    float f11 = iDescent;
                    canvas.drawText(str, f5, f11, paint);
                    canvas.restore();
                    canvas.save();
                    canvas.clipRect(0, 0, right, p4.f4273N);
                    paint.setTypeface(p4.o0);
                    paint.setAlpha((int) (f7 * 255.0f * f10));
                    canvas.drawText(str, f5, f11, paint);
                    canvas.restore();
                    z4 = false;
                } else {
                    canvas.save();
                    z4 = false;
                    canvas.clipRect(0, p4.f4273N, right, p4.f4274O);
                    paint.setTypeface(p4.n0);
                    paint.setColor(p4.f4301j0);
                    float f12 = iDescent;
                    canvas.drawText(str, f5, f12, paint);
                    canvas.restore();
                    canvas.save();
                    canvas.clipRect(0, p4.f4274O, right, bottom);
                    paint.setAlpha((int) (f7 * 255.0f * f10));
                    paint.setTypeface(p4.o0);
                    canvas.drawText(str, f5, f12, paint);
                    canvas.restore();
                }
            }
            f6 += p4.f4311t;
            i6++;
            calendarArr = calendarArr2;
            f = 2.0f;
        }
    }

    @Override // android.view.View
    public final void onFocusChanged(boolean z4, int i5, Rect rect) {
        A aE;
        A aE2;
        P p4 = this.f4457c;
        SeslSpinningDatePickerSpinner seslSpinningDatePickerSpinner = (SeslSpinningDatePickerSpinner) p4.f4233b;
        AccessibilityManager accessibilityManager = p4.f4264I0;
        if (z4) {
            InputMethodManager inputMethodManager = (InputMethodManager) p4.f4232a.getSystemService("input_method");
            if (inputMethodManager != null) {
                inputMethodManager.hideSoftInputFromWindow(seslSpinningDatePickerSpinner.getWindowToken(), 0);
            }
            p4.f4279T = 1;
            if (p4.f4304m.equals(p4.f4302k)) {
                p4.f4279T = 2;
            }
            if (accessibilityManager.isEnabled() && (aE = p4.e()) != null) {
                aE.performAction(p4.f4279T, 64, null);
            }
        } else {
            if (accessibilityManager.isEnabled() && (aE2 = p4.e()) != null) {
                aE2.performAction(p4.f4279T, 128, null);
            }
            p4.f4279T = -1;
            p4.f4275P = Integer.MIN_VALUE;
        }
        seslSpinningDatePickerSpinner.invalidate();
        super.onFocusChanged(z4, i5, rect);
    }

    @Override // android.view.View
    public final boolean onGenericMotionEvent(MotionEvent motionEvent) {
        P p4 = this.f4457c;
        if (((SeslSpinningDatePickerSpinner) p4.f4233b).isEnabled() && !p4.f4294f0 && (motionEvent.getSource() & 2) != 0 && motionEvent.getAction() == 8) {
            float axisValue = motionEvent.getAxisValue(9);
            if (axisValue != 0.0f) {
                p4.r(false);
                p4.a(axisValue < 0.0f);
                p4.r(true);
                return true;
            }
        }
        return super.onGenericMotionEvent(motionEvent);
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        P p4 = this.f4457c;
        p4.getClass();
        accessibilityEvent.setClassName(SeslSpinningDatePickerSpinner.class.getName());
        accessibilityEvent.setScrollable(true);
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        long timeInMillis = p4.f4304m.getTimeInMillis();
        Calendar calendar = p4.f4302k;
        accessibilityEvent.setScrollY(((int) timeUnit.toDays(timeInMillis - calendar.getTimeInMillis())) * p4.f4311t);
        accessibilityEvent.setMaxScrollY(((int) timeUnit.toDays(p4.f4303l.getTimeInMillis() - calendar.getTimeInMillis())) * p4.f4311t);
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        P p4 = this.f4457c;
        SeslSpinningDatePickerSpinner seslSpinningDatePickerSpinner = (SeslSpinningDatePickerSpinner) p4.f4233b;
        if (!seslSpinningDatePickerSpinner.isEnabled() || p4.f4294f0 || motionEvent.getActionMasked() != 0) {
            return false;
        }
        p4.n();
        float y3 = motionEvent.getY();
        p4.f4252C = y3;
        p4.E = y3;
        p4.f4254D = motionEvent.getEventTime();
        p4.f4269L = false;
        p4.f4271M = false;
        p4.u0 = false;
        float f = p4.f4252C;
        float f5 = p4.f4273N;
        O o2 = p4.f4285Z;
        if (f < f5) {
            p4.r(false);
            if (p4.f4267K == 0) {
                o2.a();
                o2.f4248e = 1;
                o2.f4247d = 2;
                ((SeslSpinningDatePickerSpinner) ((P) o2.f).f4233b).postDelayed(o2, ViewConfiguration.getTapTimeout());
            }
        } else if (f > p4.f4274O) {
            p4.r(false);
            if (p4.f4267K == 0) {
                o2.a();
                o2.f4248e = 1;
                o2.f4247d = 1;
                ((SeslSpinningDatePickerSpinner) ((P) o2.f).f4233b).postDelayed(o2, ViewConfiguration.getTapTimeout());
            }
        }
        seslSpinningDatePickerSpinner.getParent().requestDisallowInterceptTouchEvent(true);
        boolean zIsFinished = p4.f4315w.isFinished();
        Scroller scroller = p4.f4319y;
        if (zIsFinished) {
            V.e eVar = p4.f4258F0;
            if (eVar.f2768e) {
                OverScroller overScroller = p4.f4317x;
                overScroller.forceFinished(true);
                scroller.forceFinished(true);
                eVar.b();
                p4.f4260G0 = false;
                if (p4.f4267K == 2) {
                    overScroller.abortAnimation();
                    scroller.abortAnimation();
                }
                p4.l(0);
            } else if (scroller.isFinished()) {
                float f6 = p4.f4252C;
                if (f6 < p4.f4273N) {
                    p4.m(ViewConfiguration.getLongPressTimeout(), false);
                } else if (f6 > p4.f4274O) {
                    p4.m(ViewConfiguration.getLongPressTimeout(), true);
                } else {
                    p4.f4271M = true;
                }
            } else {
                p4.f4315w.forceFinished(true);
                scroller.forceFinished(true);
            }
        } else {
            p4.f4315w.forceFinished(true);
            scroller.forceFinished(true);
            if (p4.f4267K == 2) {
                p4.f4315w.abortAnimation();
                scroller.abortAnimation();
            }
            p4.l(0);
        }
        return true;
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z4, int i5, int i6, int i7, int i8) {
        P p4 = this.f4457c;
        SeslSpinningDatePickerSpinner seslSpinningDatePickerSpinner = (SeslSpinningDatePickerSpinner) p4.f4233b;
        int measuredWidth = seslSpinningDatePickerSpinner.getMeasuredWidth();
        int measuredHeight = seslSpinningDatePickerSpinner.getMeasuredHeight();
        EditText editText = p4.f4290d;
        int measuredWidth2 = editText.getMeasuredWidth();
        int iMax = Math.max(editText.getMeasuredHeight(), (int) Math.floor(measuredHeight * p4.r0));
        p4.s0 = iMax;
        int i9 = (measuredWidth - measuredWidth2) / 2;
        int i10 = (measuredHeight - iMax) / 2;
        int i11 = iMax + i10;
        editText.layout(i9, i10, measuredWidth2 + i9, i11);
        if (z4) {
            if (p4.f4294f0) {
                if (!p4.k(p4.f4315w)) {
                    p4.k(p4.f4319y);
                }
                p4.s();
            }
            if (!p4.f4294f0) {
                p4.h();
            }
            int bottom = p4.f4300j + ((int) ((((seslSpinningDatePickerSpinner.getBottom() - seslSpinningDatePickerSpinner.getTop()) - (r5 * 3)) / 3.0f) + 0.5f));
            p4.f4311t = bottom;
            int height = p4.s0;
            if (height > bottom) {
                height = seslSpinningDatePickerSpinner.getHeight() / 3;
            }
            p4.t0 = height;
            int top = ((p4.s0 / 2) + editText.getTop()) - p4.f4311t;
            p4.f4312u = top;
            p4.f4313v = top;
            Paint paint = p4.f4309r;
            ((CustomEditText) editText).f4458c = ((int) (((paint.descent() - paint.ascent()) / 2.0f) - paint.descent())) - (editText.getBaseline() - (p4.s0 / 2));
            if (p4.g0) {
                p4.f4262H0 = p4.f4262H0;
                p4.f4322z0 = p4.f4318x0;
                seslSpinningDatePickerSpinner.post(new K(p4));
                p4.g0 = false;
            }
            if (p4.s0 <= p4.f4311t) {
                p4.f4273N = i10;
                p4.f4274O = i11;
            } else {
                int i12 = p4.t0;
                p4.f4273N = i12;
                p4.f4274O = i12 * 2;
            }
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onMeasure(int i5, int i6) {
        P p4 = this.f4457c;
        int iJ = P.j(i5, p4.f4296h);
        int iJ2 = P.j(i6, p4.f);
        SeslSpinningDatePickerSpinner seslSpinningDatePickerSpinner = (SeslSpinningDatePickerSpinner) p4.f4233b;
        super.onMeasure(iJ, iJ2);
        int measuredWidth = seslSpinningDatePickerSpinner.getMeasuredWidth();
        int i7 = p4.f4295g;
        if (i7 != -1) {
            measuredWidth = View.resolveSizeAndState(Math.max(i7, measuredWidth), i5, 0);
        }
        int measuredHeight = seslSpinningDatePickerSpinner.getMeasuredHeight();
        int i8 = p4.f4292e;
        if (i8 != -1) {
            measuredHeight = View.resolveSizeAndState(Math.max(i8, measuredHeight), i6, 0);
        }
        seslSpinningDatePickerSpinner.setMeasuredDimension(measuredWidth, measuredHeight);
    }

    @Override // android.view.View
    public final void onPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onPopulateAccessibilityEvent(accessibilityEvent);
        P p4 = this.f4457c;
        p4.getClass();
        List<CharSequence> text = accessibilityEvent.getText();
        A aE = p4.e();
        int i5 = A.f4080g;
        text.add(aE.c());
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        P p4 = this.f4457c;
        SeslSpinningDatePickerSpinner seslSpinningDatePickerSpinner = (SeslSpinningDatePickerSpinner) p4.f4233b;
        if (!seslSpinningDatePickerSpinner.isEnabled() || p4.f4294f0) {
            return false;
        }
        if (p4.f4257F == null) {
            p4.f4257F = VelocityTracker.obtain();
        }
        p4.f4257F.addMovement(motionEvent);
        int actionMasked = motionEvent.getActionMasked();
        int i5 = p4.f4259G;
        if (actionMasked == 1) {
            if (p4.l0) {
                p4.l0 = false;
                p4.f4313v = p4.f4312u;
            }
            p4.f4280U = false;
            p4.f4281V = false;
            p4.f4282W = false;
            p4.f4276Q = 1;
            p4.f4305o = 300L;
            N n = p4.f4251B;
            if (n != null) {
                seslSpinningDatePickerSpinner.removeCallbacks(n);
            }
            O o2 = p4.f4285Z;
            o2.a();
            VelocityTracker velocityTracker = p4.f4257F;
            velocityTracker.computeCurrentVelocity(1000, p4.f4263I);
            int yVelocity = (int) velocityTracker.getYVelocity();
            int y3 = (int) motionEvent.getY();
            int iAbs = (int) Math.abs(y3 - p4.f4252C);
            if (Math.abs(yVelocity) <= p4.f4261H) {
                long eventTime = motionEvent.getEventTime() - p4.f4254D;
                if (iAbs > i5 || eventTime >= ViewConfiguration.getLongPressTimeout()) {
                    if (p4.f4293e0) {
                        p4.f4293e0 = false;
                    }
                    p4.c(iAbs);
                    p4.r(true);
                } else if (p4.f4271M) {
                    p4.f4271M = false;
                    p4.s();
                } else {
                    int i6 = p4.f4274O;
                    P p5 = (P) o2.f;
                    if (y3 > i6) {
                        p4.a(true);
                        o2.a();
                        o2.f4248e = 2;
                        o2.f4247d = 1;
                        ((SeslSpinningDatePickerSpinner) p5.f4233b).post(o2);
                    } else if (y3 < p4.f4273N) {
                        p4.a(false);
                        o2.a();
                        o2.f4248e = 2;
                        o2.f4247d = 2;
                        ((SeslSpinningDatePickerSpinner) p5.f4233b).post(o2);
                    } else {
                        p4.c(iAbs);
                    }
                    p4.r(true);
                }
                p4.u0 = false;
                p4.l(0);
            } else if (iAbs > i5 || !p4.f4271M) {
                Calendar calendar = p4.f4304m;
                if (yVelocity > 0 && calendar.equals(p4.f4302k)) {
                    p4.r(true);
                } else if (yVelocity >= 0 || !calendar.equals(p4.f4303l)) {
                    p4.f4321z = 0;
                    Math.abs(yVelocity);
                    p4.f4249A = p4.f4313v;
                    V.e eVar = p4.f4258F0;
                    eVar.f2764a = yVelocity;
                    OverScroller overScroller = p4.f4317x;
                    overScroller.forceFinished(true);
                    overScroller.fling(0, p4.f4313v, 0, yVelocity, 0, 0, Integer.MIN_VALUE, Integer.MAX_VALUE);
                    int iRound = Math.round((overScroller.getFinalY() + p4.f4313v) / p4.f4311t);
                    int i7 = p4.f4311t;
                    int i8 = p4.f4312u;
                    int i9 = (iRound * i7) + i8;
                    float fMax = yVelocity > 0 ? Math.max(i9, i7 + i8) : Math.min(i9, (-i7) + i8);
                    eVar.f2765b = p4.f4313v;
                    eVar.f2766c = true;
                    p4.f4260G0 = true;
                    eVar.a(fMax);
                    seslSpinningDatePickerSpinner.invalidate();
                } else {
                    p4.r(true);
                }
                p4.l(2);
            } else {
                p4.f4271M = false;
                p4.s();
                p4.l(0);
            }
            p4.f4257F.recycle();
            p4.f4257F = null;
        } else if (actionMasked != 2) {
            if (actionMasked == 3) {
                p4.c(0);
                p4.r(true);
                p4.l(0);
            }
        } else if (!p4.f4269L) {
            float y4 = motionEvent.getY();
            if (p4.f4267K == 1) {
                p4.o((int) (y4 - p4.E));
                seslSpinningDatePickerSpinner.invalidate();
            } else if (((int) Math.abs(y4 - p4.f4252C)) > i5) {
                p4.n();
                p4.r(false);
                p4.l(1);
            }
            p4.E = y4;
        }
        return true;
    }

    @Override // android.view.View
    public final void onWindowFocusChanged(boolean z4) {
        super.onWindowFocusChanged(z4);
        P p4 = this.f4457c;
        if (!p4.f4294f0) {
            if (!p4.f4315w.isFinished()) {
                p4.f4315w.forceFinished(true);
            }
            Scroller scroller = p4.f4319y;
            if (!scroller.isFinished()) {
                scroller.forceFinished(true);
            }
            OverScroller overScroller = p4.f4317x;
            if (!overScroller.isFinished()) {
                overScroller.forceFinished(true);
            }
            V.e eVar = p4.f4258F0;
            if (eVar.f2768e) {
                eVar.b();
                p4.f4260G0 = false;
            }
            p4.c(0);
        }
        p4.m0 = AbstractC0739a.l(p4.f4290d);
        Paint paint = p4.f4309r;
        paint.setTextSize(p4.f4300j);
        paint.setTypeface(p4.n0);
        p4.p();
    }

    @Override // android.view.View
    public final void onWindowVisibilityChanged(int i5) {
        this.f4457c.getClass();
        super.onWindowVisibilityChanged(i5);
    }

    @Override // android.view.View
    public final boolean performClick() {
        if (super.performClick()) {
            return true;
        }
        this.f4457c.s();
        return true;
    }

    @Override // android.view.View
    public final boolean performLongClick() {
        if (!super.performLongClick()) {
            P p4 = this.f4457c;
            p4.f4269L = true;
            p4.f4293e0 = true;
        }
        return true;
    }

    @Override // android.view.View
    public final void scrollBy(int i5, int i6) {
        this.f4457c.o(i6);
    }

    @Override // android.view.View
    public final void setEnabled(boolean z4) {
        super.setEnabled(z4);
        P p4 = this.f4457c;
        if (z4) {
            p4.getClass();
        } else if (p4.f4267K != 0) {
            p4.s();
            p4.l(0);
        }
    }
}
