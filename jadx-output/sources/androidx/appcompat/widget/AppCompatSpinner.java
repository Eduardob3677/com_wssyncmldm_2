package androidx.appcompat.widget;

import D3.e;
import J.r0;
import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.ArrayAdapter;
import android.widget.ListAdapter;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import android.widget.ThemedSpinnerAdapter;
import androidx.appcompat.graphics.drawable.SeslRecoilDrawable;
import c.AbstractC0206a;
import f1.AbstractC0420a;
import k.AbstractC0561G;
import k.AbstractC0562H;
import k.C0558D;
import k.C0564J;
import k.C0567M;
import k.C0568N;
import k.DialogInterfaceOnClickListenerC0563I;
import k.InterfaceC0569O;
import k.ViewTreeObserverOnGlobalLayoutListenerC0559E;
import k.v1;

/* loaded from: classes.dex */
public class AppCompatSpinner extends Spinner {

    /* renamed from: m, reason: collision with root package name */
    public static final int[] f3344m = {R.attr.spinnerMode};

    /* renamed from: c, reason: collision with root package name */
    public final e f3345c;

    /* renamed from: d, reason: collision with root package name */
    public final Context f3346d;

    /* renamed from: e, reason: collision with root package name */
    public final C0558D f3347e;
    public SpinnerAdapter f;

    /* renamed from: g, reason: collision with root package name */
    public final boolean f3348g;

    /* renamed from: h, reason: collision with root package name */
    public final InterfaceC0569O f3349h;

    /* renamed from: i, reason: collision with root package name */
    public int f3350i;

    /* renamed from: j, reason: collision with root package name */
    public final int f3351j;

    /* renamed from: k, reason: collision with root package name */
    public final Rect f3352k;

    /* renamed from: l, reason: collision with root package name */
    public boolean f3353l;

    /* JADX WARN: Removed duplicated region for block: B:26:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x009a  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00ad  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00c7  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00d4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public AppCompatSpinner(Context context, AttributeSet attributeSet) throws Throwable {
        TypedArray typedArrayObtainStyledAttributes;
        CharSequence[] textArray;
        SpinnerAdapter spinnerAdapter;
        super(context, attributeSet, com.wssyncmldm.R.attr.spinnerStyle);
        this.f3352k = new Rect();
        v1.a(this, getContext());
        int[] iArr = AbstractC0206a.f5183y;
        r0 r0VarM = r0.m(context, attributeSet, iArr, com.wssyncmldm.R.attr.spinnerStyle, 0);
        this.f3345c = new e(this);
        TypedArray typedArray = (TypedArray) r0VarM.f1007d;
        int resourceId = typedArray.getResourceId(4, 0);
        if (resourceId != 0) {
            this.f3346d = new i.e(context, resourceId);
        } else {
            this.f3346d = context;
        }
        int i5 = -1;
        TypedArray typedArray2 = null;
        try {
            typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f3344m, com.wssyncmldm.R.attr.spinnerStyle, 0);
            try {
                try {
                    if (typedArrayObtainStyledAttributes.hasValue(0)) {
                        i5 = typedArrayObtainStyledAttributes.getInt(0, 0);
                    }
                } catch (Exception e5) {
                    e = e5;
                    Log.i("AppCompatSpinner", "Could not read android:spinnerMode", e);
                    if (typedArrayObtainStyledAttributes != null) {
                        typedArrayObtainStyledAttributes.recycle();
                    }
                    if (i5 != 0) {
                    }
                    textArray = typedArray.getTextArray(0);
                    if (textArray != null) {
                    }
                    r0VarM.n();
                    this.f3348g = true;
                    spinnerAdapter = this.f;
                    if (spinnerAdapter != null) {
                    }
                    this.f3345c.l(attributeSet, com.wssyncmldm.R.attr.spinnerStyle);
                }
            } catch (Throwable th) {
                th = th;
                typedArray2 = typedArrayObtainStyledAttributes;
                if (typedArray2 != null) {
                    typedArray2.recycle();
                }
                throw th;
            }
        } catch (Exception e6) {
            e = e6;
            typedArrayObtainStyledAttributes = null;
        } catch (Throwable th2) {
            th = th2;
            if (typedArray2 != null) {
            }
            throw th;
        }
        typedArrayObtainStyledAttributes.recycle();
        if (i5 != 0) {
            DialogInterfaceOnClickListenerC0563I dialogInterfaceOnClickListenerC0563I = new DialogInterfaceOnClickListenerC0563I(this);
            this.f3349h = dialogInterfaceOnClickListenerC0563I;
            dialogInterfaceOnClickListenerC0563I.f7691e = typedArray.getString(2);
        } else if (i5 == 1) {
            C0567M c0567m = new C0567M(this, this.f3346d, attributeSet);
            r0 r0VarM2 = r0.m(this.f3346d, attributeSet, iArr, com.wssyncmldm.R.attr.spinnerStyle, 0);
            this.f3350i = ((TypedArray) r0VarM2.f1007d).getLayoutDimension(3, -2);
            this.f3351j = c0567m.f8033h;
            c0567m.f7717D = typedArray.getString(2);
            r0VarM2.n();
            this.f3349h = c0567m;
            this.f3347e = new C0558D(this, this, c0567m);
        }
        textArray = typedArray.getTextArray(0);
        if (textArray != null) {
            ArrayAdapter arrayAdapter = new ArrayAdapter(context, R.layout.simple_spinner_item, textArray);
            arrayAdapter.setDropDownViewResource(com.wssyncmldm.R.layout.support_simple_spinner_dropdown_item);
            setAdapter((SpinnerAdapter) arrayAdapter);
        }
        r0VarM.n();
        this.f3348g = true;
        spinnerAdapter = this.f;
        if (spinnerAdapter != null) {
            setAdapter(spinnerAdapter);
            this.f = null;
        }
        this.f3345c.l(attributeSet, com.wssyncmldm.R.attr.spinnerStyle);
    }

    public final int a(SpinnerAdapter spinnerAdapter, Drawable drawable) {
        int i5 = 0;
        if (spinnerAdapter == null) {
            return 0;
        }
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 0);
        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 0);
        int iMax = Math.max(0, getSelectedItemPosition());
        int iMin = Math.min(spinnerAdapter.getCount(), iMax + 15);
        View view = null;
        int iMax2 = 0;
        for (int iMax3 = Math.max(0, iMax - (15 - (iMin - iMax))); iMax3 < iMin; iMax3++) {
            int itemViewType = spinnerAdapter.getItemViewType(iMax3);
            if (itemViewType != i5) {
                view = null;
                i5 = itemViewType;
            }
            view = spinnerAdapter.getView(iMax3, view, this);
            if (view.getLayoutParams() == null) {
                view.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
            }
            view.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
            iMax2 = Math.max(iMax2, view.getMeasuredWidth());
        }
        if (drawable == null) {
            return iMax2;
        }
        Rect rect = this.f3352k;
        drawable.getPadding(rect);
        return iMax2 + rect.left + rect.right;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        e eVar = this.f3345c;
        if (eVar != null) {
            eVar.a();
        }
    }

    @Override // android.widget.Spinner
    public int getDropDownHorizontalOffset() {
        InterfaceC0569O interfaceC0569O = this.f3349h;
        return interfaceC0569O != null ? interfaceC0569O.d() : super.getDropDownHorizontalOffset();
    }

    @Override // android.widget.Spinner
    public int getDropDownVerticalOffset() {
        InterfaceC0569O interfaceC0569O = this.f3349h;
        return interfaceC0569O != null ? interfaceC0569O.g() : super.getDropDownVerticalOffset();
    }

    @Override // android.widget.Spinner
    public int getDropDownWidth() {
        return this.f3349h != null ? this.f3350i : super.getDropDownWidth();
    }

    public final InterfaceC0569O getInternalPopup() {
        return this.f3349h;
    }

    @Override // android.widget.Spinner
    public Drawable getPopupBackground() {
        InterfaceC0569O interfaceC0569O = this.f3349h;
        return interfaceC0569O != null ? interfaceC0569O.h() : super.getPopupBackground();
    }

    @Override // android.widget.Spinner
    public Context getPopupContext() {
        return this.f3346d;
    }

    @Override // android.widget.Spinner
    public CharSequence getPrompt() {
        InterfaceC0569O interfaceC0569O = this.f3349h;
        return interfaceC0569O != null ? interfaceC0569O.i() : super.getPrompt();
    }

    public ColorStateList getSupportBackgroundTintList() {
        e eVar = this.f3345c;
        if (eVar != null) {
            return eVar.e();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        e eVar = this.f3345c;
        if (eVar != null) {
            return eVar.f();
        }
        return null;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (getBackground() instanceof SeslRecoilDrawable) {
            this.f3353l = true;
        }
    }

    @Override // android.widget.Spinner, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        InterfaceC0569O interfaceC0569O = this.f3349h;
        if (interfaceC0569O == null || !interfaceC0569O.b()) {
            return;
        }
        interfaceC0569O.dismiss();
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        View selectedView = getSelectedView();
        StringBuilder sb = new StringBuilder();
        if (selectedView instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) selectedView;
            for (int i5 = 0; i5 < viewGroup.getChildCount(); i5++) {
                View childAt = viewGroup.getChildAt(i5);
                if (childAt instanceof TextView) {
                    TextView textView = (TextView) childAt;
                    if (sb.length() == 0) {
                        sb = new StringBuilder(textView.getText());
                    } else {
                        sb.append(" ");
                        sb.append(textView.getText());
                    }
                }
            }
        } else if (selectedView instanceof TextView) {
            sb = new StringBuilder(((TextView) selectedView).getText());
        }
        accessibilityNodeInfo.setContentDescription(sb.toString());
        accessibilityNodeInfo.setClassName(Spinner.class.getName());
    }

    @Override // android.widget.Spinner, android.widget.AbsSpinner, android.view.View
    public final void onMeasure(int i5, int i6) {
        int iA;
        super.onMeasure(i5, i6);
        if (this.f3349h == null || View.MeasureSpec.getMode(i5) != Integer.MIN_VALUE) {
            return;
        }
        getMeasuredWidth();
        if (getSelectedItemPosition() <= -1 || getSelectedItemPosition() >= getAdapter().getCount()) {
            iA = a(getAdapter(), getBackground());
        } else {
            SpinnerAdapter adapter = getAdapter();
            Drawable background = getBackground();
            iA = 0;
            if (adapter != null) {
                int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
                int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(0, 0);
                View view = adapter.getView(getSelectedItemPosition(), null, this);
                if (view.getLayoutParams() == null) {
                    view.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
                }
                view.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
                int measuredWidth = view.getMeasuredWidth();
                if (background != null) {
                    Rect rect = this.f3352k;
                    background.getPadding(rect);
                    iA = rect.left + rect.right + measuredWidth;
                } else {
                    iA = measuredWidth;
                }
            }
        }
        setMeasuredDimension(Math.min(iA, View.MeasureSpec.getSize(i5)), getMeasuredHeight());
    }

    @Override // android.widget.Spinner, android.widget.AbsSpinner, android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        ViewTreeObserver viewTreeObserver;
        C0568N c0568n = (C0568N) parcelable;
        super.onRestoreInstanceState(c0568n.getSuperState());
        if (!c0568n.f7720c || (viewTreeObserver = getViewTreeObserver()) == null) {
            return;
        }
        viewTreeObserver.addOnGlobalLayoutListener(new ViewTreeObserverOnGlobalLayoutListenerC0559E(0, this));
    }

    @Override // android.widget.Spinner, android.widget.AbsSpinner, android.view.View
    public final Parcelable onSaveInstanceState() {
        C0568N c0568n = new C0568N(super.onSaveInstanceState());
        InterfaceC0569O interfaceC0569O = this.f3349h;
        c0568n.f7720c = interfaceC0569O != null && interfaceC0569O.b();
        return c0568n;
    }

    @Override // android.widget.Spinner, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        C0558D c0558d = this.f3347e;
        if (c0558d == null || !c0558d.onTouch(this, motionEvent)) {
            return super.onTouchEvent(motionEvent);
        }
        return true;
    }

    @Override // android.widget.Spinner, android.view.View
    public final boolean performClick() {
        InterfaceC0569O interfaceC0569O = this.f3349h;
        if (interfaceC0569O == null) {
            return super.performClick();
        }
        playSoundEffect(0);
        if (interfaceC0569O.b()) {
            return true;
        }
        this.f3349h.e(AbstractC0561G.b(this), AbstractC0561G.a(this));
        return true;
    }

    @Override // android.view.View
    public final void refreshDrawableState() {
        super.refreshDrawableState();
        if (!this.f3353l || getStateListAnimator() == null) {
            return;
        }
        getStateListAnimator().jumpToCurrentState();
        this.f3353l = false;
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        e eVar = this.f3345c;
        if (eVar != null) {
            eVar.n();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i5) {
        super.setBackgroundResource(i5);
        e eVar = this.f3345c;
        if (eVar != null) {
            eVar.o(i5);
        }
    }

    @Override // android.widget.Spinner
    public void setDropDownHorizontalOffset(int i5) {
        InterfaceC0569O interfaceC0569O = this.f3349h;
        if (interfaceC0569O == null) {
            super.setDropDownHorizontalOffset(i5);
        } else {
            interfaceC0569O.o(i5);
            interfaceC0569O.c(i5);
        }
    }

    @Override // android.widget.Spinner
    public void setDropDownVerticalOffset(int i5) {
        InterfaceC0569O interfaceC0569O = this.f3349h;
        if (interfaceC0569O != null) {
            interfaceC0569O.m(i5);
        } else {
            super.setDropDownVerticalOffset(i5);
        }
    }

    @Override // android.widget.Spinner
    public void setDropDownWidth(int i5) {
        if (this.f3349h != null) {
            this.f3350i = i5;
        } else {
            super.setDropDownWidth(i5);
        }
    }

    @Override // android.widget.Spinner
    public void setPopupBackgroundDrawable(Drawable drawable) {
        InterfaceC0569O interfaceC0569O = this.f3349h;
        if (interfaceC0569O != null) {
            interfaceC0569O.l(drawable);
        } else {
            super.setPopupBackgroundDrawable(drawable);
        }
    }

    @Override // android.widget.Spinner
    public void setPopupBackgroundResource(int i5) {
        setPopupBackgroundDrawable(AbstractC0420a.A(getPopupContext(), i5));
    }

    @Override // android.widget.Spinner
    public void setPrompt(CharSequence charSequence) {
        InterfaceC0569O interfaceC0569O = this.f3349h;
        if (interfaceC0569O != null) {
            interfaceC0569O.k(charSequence);
        } else {
            super.setPrompt(charSequence);
        }
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        e eVar = this.f3345c;
        if (eVar != null) {
            eVar.r(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        e eVar = this.f3345c;
        if (eVar != null) {
            eVar.s(mode);
        }
    }

    @Override // android.widget.AdapterView
    public void setAdapter(SpinnerAdapter spinnerAdapter) {
        if (!this.f3348g) {
            this.f = spinnerAdapter;
            return;
        }
        super.setAdapter(spinnerAdapter);
        InterfaceC0569O interfaceC0569O = this.f3349h;
        if (interfaceC0569O != null) {
            Context context = this.f3346d;
            if (context == null) {
                context = getContext();
            }
            Resources.Theme theme = context.getTheme();
            C0564J c0564j = new C0564J();
            c0564j.f7707c = spinnerAdapter;
            if (spinnerAdapter instanceof ListAdapter) {
                c0564j.f7708d = (ListAdapter) spinnerAdapter;
            }
            if (theme != null && (spinnerAdapter instanceof ThemedSpinnerAdapter)) {
                AbstractC0562H.a((ThemedSpinnerAdapter) spinnerAdapter, theme);
            }
            interfaceC0569O.n(c0564j);
        }
    }
}
