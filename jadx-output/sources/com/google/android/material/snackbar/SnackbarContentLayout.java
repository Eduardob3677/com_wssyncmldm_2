package com.google.android.material.snackbar;

import J.Q;
import R1.e;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.text.Layout;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.wssyncmldm.R;
import i3.x;
import java.lang.reflect.Method;
import java.util.WeakHashMap;
import v1.a;
import w1.AbstractC0899a;

/* loaded from: classes.dex */
public class SnackbarContentLayout extends LinearLayout {

    /* renamed from: c, reason: collision with root package name */
    public TextView f6070c;

    /* renamed from: d, reason: collision with root package name */
    public Button f6071d;

    /* renamed from: e, reason: collision with root package name */
    public int f6072e;
    public int f;

    /* renamed from: g, reason: collision with root package name */
    public final SnackbarContentLayout f6073g;

    /* renamed from: h, reason: collision with root package name */
    public int f6074h;

    /* renamed from: i, reason: collision with root package name */
    public final InputMethodManager f6075i;

    /* renamed from: j, reason: collision with root package name */
    public final WindowManager f6076j;

    /* renamed from: k, reason: collision with root package name */
    public boolean f6077k;

    /* renamed from: l, reason: collision with root package name */
    public boolean f6078l;

    public SnackbarContentLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f6077k = false;
        this.f6078l = false;
        x.V0(context, R.attr.motionEasingEmphasizedInterpolator, AbstractC0899a.f9597b);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.f9550z);
        this.f = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, -1);
        this.f6072e = typedArrayObtainStyledAttributes.getDimensionPixelSize(7, -1);
        typedArrayObtainStyledAttributes.recycle();
        Resources resources = context.getResources();
        int fraction = (int) resources.getFraction(R.dimen.sesl_config_prefSnackWidth, resources.getDisplayMetrics().widthPixels, resources.getDisplayMetrics().widthPixels);
        this.f6074h = fraction;
        this.f = fraction;
        this.f6073g = (SnackbarContentLayout) findViewById(R.id.snackbar_content_layout);
        this.f6075i = (InputMethodManager) context.getSystemService(InputMethodManager.class);
        this.f6076j = (WindowManager) context.getSystemService("window");
        ViewTreeObserver viewTreeObserver = getViewTreeObserver();
        if (viewTreeObserver != null) {
            viewTreeObserver.addOnGlobalLayoutListener(new e(0, this));
        }
    }

    public final boolean a(int i5, int i6, int i7) {
        boolean z4;
        if (i5 != getOrientation()) {
            setOrientation(i5);
            z4 = true;
        } else {
            z4 = false;
        }
        if (this.f6070c.getPaddingTop() == i6 && this.f6070c.getPaddingBottom() == i7) {
            return z4;
        }
        TextView textView = this.f6070c;
        WeakHashMap weakHashMap = Q.f940a;
        if (textView.isPaddingRelative()) {
            textView.setPaddingRelative(textView.getPaddingStart(), i6, textView.getPaddingEnd(), i7);
            return true;
        }
        textView.setPadding(textView.getPaddingLeft(), i6, textView.getPaddingRight(), i7);
        return true;
    }

    public Button getActionView() {
        return this.f6071d;
    }

    public TextView getMessageView() {
        return this.f6070c;
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        Resources resources = getContext().getResources();
        int fraction = (int) resources.getFraction(R.dimen.sesl_config_prefSnackWidth, resources.getDisplayMetrics().widthPixels, resources.getDisplayMetrics().widthPixels);
        this.f6074h = fraction;
        this.f = fraction;
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        this.f6070c = (TextView) findViewById(R.id.snackbar_text);
        this.f6071d = (Button) findViewById(R.id.snackbar_action);
    }

    /* JADX WARN: Removed duplicated region for block: B:55:0x0161  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0227  */
    @Override // android.widget.LinearLayout, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void onMeasure(int i5, int i6) throws Resources.NotFoundException {
        boolean z4;
        int dimensionPixelOffset;
        int measuredWidth = getMeasuredWidth();
        super.onMeasure(i5, i6);
        if (this.f6071d.getVisibility() == 0 && this.f6078l) {
            i5 = View.MeasureSpec.makeMeasureSpec(this.f6074h, 1073741824);
            super.onMeasure(i5, i6);
        } else if (getMeasuredWidth() == 0) {
            i5 = View.MeasureSpec.makeMeasureSpec(measuredWidth, 1073741824);
            super.onMeasure(i5, i6);
        } else if (this.f > 0) {
            int measuredWidth2 = getMeasuredWidth();
            int i7 = this.f;
            if (measuredWidth2 > i7) {
                i5 = View.MeasureSpec.makeMeasureSpec(i7, 1073741824);
                super.onMeasure(i5, i6);
            }
        }
        int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.design_snackbar_padding_vertical_2lines);
        int dimensionPixelSize2 = getResources().getDimensionPixelSize(R.dimen.design_snackbar_padding_vertical);
        Layout layout = this.f6070c.getLayout();
        boolean z5 = false;
        boolean z6 = layout != null && layout.getLineCount() > 1;
        if (z6) {
            this.f6078l = true;
        }
        SnackbarContentLayout snackbarContentLayout = this.f6073g;
        if (snackbarContentLayout != null) {
            float measuredWidth3 = this.f6071d.getMeasuredWidth() + this.f6070c.getMeasuredWidth() + snackbarContentLayout.getPaddingRight() + snackbarContentLayout.getPaddingLeft();
            if (this.f6072e == -1 && this.f6071d.getVisibility() == 0) {
                if (measuredWidth3 > this.f6074h || z6 || this.f6078l) {
                    snackbarContentLayout.setOrientation(1);
                    this.f6070c.setPadding(getResources().getDimensionPixelSize(R.dimen.sesl_design_snackbar_text_padding_left), getResources().getDimensionPixelSize(R.dimen.sesl_design_snackbar_text_padding_top), getResources().getDimensionPixelSize(R.dimen.sesl_design_snackbar_text_padding_right), getResources().getDimensionPixelSize(R.dimen.sesl_design_snackbar_text_padding_bottom));
                    LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.f6071d.getLayoutParams();
                    layoutParams.setMargins(0, 0, 0, getResources().getDimensionPixelSize(R.dimen.sesl_design_snackbar_action_margin_bottom));
                    layoutParams.setMarginEnd(getResources().getDimensionPixelSize(R.dimen.sesl_design_snackbar_action_margin_end));
                    this.f6071d.setLayoutParams(layoutParams);
                } else {
                    snackbarContentLayout.setOrientation(0);
                    this.f6071d.setPadding(getResources().getDimensionPixelSize(R.dimen.sesl_design_snackbar_action_padding_left), 0, getResources().getDimensionPixelSize(R.dimen.sesl_design_snackbar_action_padding_right), 0);
                }
                z4 = true;
            } else {
                z4 = false;
            }
            WindowManager windowManager = this.f6076j;
            int rotation = windowManager.getDefaultDisplay().getRotation();
            boolean z7 = rotation == 1 || rotation == 3;
            InputMethodManager inputMethodManager = this.f6075i;
            if (inputMethodManager == null || !z7) {
                int i8 = (int) measuredWidth3;
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) snackbarContentLayout.getLayoutParams();
                ViewParent parent = snackbarContentLayout.getParent();
                if (this.f6077k && (parent instanceof ViewGroup)) {
                    ViewGroup viewGroup = (ViewGroup) parent;
                    int measuredWidth4 = ((viewGroup.getMeasuredWidth() - Math.min(this.f6074h, i8)) - viewGroup.getPaddingLeft()) - viewGroup.getPaddingRight();
                    if (measuredWidth4 > 0) {
                        int i9 = measuredWidth4 / 2;
                        marginLayoutParams.rightMargin = i9;
                        marginLayoutParams.leftMargin = i9;
                    } else {
                        marginLayoutParams.rightMargin = 0;
                        marginLayoutParams.leftMargin = 0;
                    }
                    snackbarContentLayout.setLayoutParams(marginLayoutParams);
                    z5 = true;
                }
                z5 = z4 | z5;
            } else {
                int i10 = (int) measuredWidth3;
                ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) snackbarContentLayout.getLayoutParams();
                Method methodP = x.P(InputMethodManager.class, "semIsInputMethodShown", new Class[0]);
                if (methodP != null) {
                    Object objJ0 = x.j0(inputMethodManager, methodP, new Object[0]);
                    boolean zBooleanValue = objJ0 instanceof Boolean ? ((Boolean) objJ0).booleanValue() : false;
                    if (zBooleanValue) {
                        try {
                            dimensionPixelOffset = windowManager.getCurrentWindowMetrics().getWindowInsets().getInsets(WindowInsets.Type.navigationBars()).bottom;
                            if (dimensionPixelOffset == 0) {
                                dimensionPixelOffset = getResources().getDimensionPixelOffset(R.dimen.sesl_design_snackbar_layout_sip_padding_bottom);
                            }
                        } catch (Exception unused) {
                            dimensionPixelOffset = getResources().getDimensionPixelOffset(R.dimen.sesl_design_snackbar_layout_sip_padding_bottom);
                        }
                        marginLayoutParams2.bottomMargin = dimensionPixelOffset;
                    } else {
                        marginLayoutParams2.bottomMargin = getResources().getDimensionPixelOffset(R.dimen.sesl_design_snackbar_layout_padding_bottom);
                    }
                    ViewParent parent2 = snackbarContentLayout.getParent();
                    if (this.f6077k && (parent2 instanceof ViewGroup)) {
                        ViewGroup viewGroup2 = (ViewGroup) parent2;
                        int measuredWidth5 = ((viewGroup2.getMeasuredWidth() - Math.min(this.f6074h, i10)) - viewGroup2.getPaddingLeft()) - viewGroup2.getPaddingRight();
                        if (measuredWidth5 > 0) {
                            int i11 = measuredWidth5 / 2;
                            marginLayoutParams2.rightMargin = i11;
                            marginLayoutParams2.leftMargin = i11;
                        } else {
                            marginLayoutParams2.rightMargin = 0;
                            marginLayoutParams2.leftMargin = 0;
                        }
                    }
                    snackbarContentLayout.setLayoutParams(marginLayoutParams2);
                    z5 = true;
                }
            }
        } else if (!z6 || this.f6072e <= 0 || this.f6071d.getMeasuredWidth() <= this.f6072e) {
            if (!z6) {
                dimensionPixelSize = dimensionPixelSize2;
            }
            if (a(0, dimensionPixelSize, dimensionPixelSize)) {
                z5 = true;
            }
        } else if (a(1, dimensionPixelSize, dimensionPixelSize - dimensionPixelSize2)) {
        }
        if (z5) {
            super.onMeasure(i5, i6);
        }
    }

    public void setIsCoordinatorLayoutParent(boolean z4) {
        this.f6077k = z4;
    }

    public void setMaxInlineActionWidth(int i5) {
        this.f6072e = i5;
    }
}
