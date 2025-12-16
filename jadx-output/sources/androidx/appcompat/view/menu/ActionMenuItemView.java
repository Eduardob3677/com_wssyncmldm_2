package androidx.appcompat.view.menu;

import J.Q;
import W1.a;
import android.R;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Button;
import androidx.appcompat.widget.AppCompatTextView;
import c.AbstractC0206a;
import j.AbstractC0502c;
import j.C0501b;
import j.C0510k;
import j.InterfaceC0507h;
import j.InterfaceC0521v;
import j.MenuC0508i;
import java.util.WeakHashMap;
import k.InterfaceC0605l;
import k.J1;
import p.AbstractC0735a;

/* loaded from: classes.dex */
public class ActionMenuItemView extends AppCompatTextView implements InterfaceC0521v, View.OnClickListener, InterfaceC0605l, View.OnLongClickListener {

    /* renamed from: j, reason: collision with root package name */
    public C0510k f3232j;

    /* renamed from: k, reason: collision with root package name */
    public CharSequence f3233k;

    /* renamed from: l, reason: collision with root package name */
    public Drawable f3234l;

    /* renamed from: m, reason: collision with root package name */
    public InterfaceC0507h f3235m;
    public C0501b n;

    /* renamed from: o, reason: collision with root package name */
    public AbstractC0502c f3236o;

    /* renamed from: p, reason: collision with root package name */
    public boolean f3237p;

    /* renamed from: q, reason: collision with root package name */
    public boolean f3238q;

    /* renamed from: r, reason: collision with root package name */
    public final int f3239r;

    /* renamed from: s, reason: collision with root package name */
    public int f3240s;

    /* renamed from: t, reason: collision with root package name */
    public final int f3241t;

    /* renamed from: u, reason: collision with root package name */
    public boolean f3242u;

    /* renamed from: v, reason: collision with root package name */
    public final float f3243v;

    /* renamed from: w, reason: collision with root package name */
    public final Drawable f3244w;

    public ActionMenuItemView(Context context, AttributeSet attributeSet) throws Resources.NotFoundException {
        super(context, attributeSet, 0);
        this.f3242u = false;
        this.f3243v = 0.0f;
        Resources resources = context.getResources();
        this.f3237p = r();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, AbstractC0206a.f5163c, 0, 0);
        this.f3239r = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, 0);
        typedArrayObtainStyledAttributes.recycle();
        this.f3241t = (int) ((resources.getDisplayMetrics().density * 32.0f) + 0.5f);
        setOnClickListener(this);
        setOnLongClickListener(this);
        this.f3240s = -1;
        setSaveEnabled(false);
        Resources.Theme theme = context.getTheme();
        int[] iArr = AbstractC0206a.f5169j;
        TypedArray typedArrayObtainStyledAttributes2 = theme.obtainStyledAttributes(null, iArr, 0, 0);
        int resourceId = typedArrayObtainStyledAttributes2.getResourceId(26, 0);
        typedArrayObtainStyledAttributes2.recycle();
        TypedArray typedArrayObtainStyledAttributes3 = context.obtainStyledAttributes(resourceId, AbstractC0206a.f5157A);
        TypedValue typedValuePeekValue = typedArrayObtainStyledAttributes3.peekValue(0);
        typedArrayObtainStyledAttributes3.recycle();
        if (typedValuePeekValue != null) {
            this.f3243v = TypedValue.complexToFloat(typedValuePeekValue.data);
        }
        AbstractC0735a.q(this, true);
        TypedArray typedArrayObtainStyledAttributes4 = context.getTheme().obtainStyledAttributes(null, iArr, 0, 0);
        int resourceId2 = typedArrayObtainStyledAttributes4.getResourceId(24, 0);
        typedArrayObtainStyledAttributes4.recycle();
        TypedArray typedArrayObtainStyledAttributes5 = context.getTheme().obtainStyledAttributes(resourceId2, new int[]{R.attr.background});
        this.f3244w = typedArrayObtainStyledAttributes5.getDrawable(0);
        typedArrayObtainStyledAttributes5.recycle();
    }

    @Override // k.InterfaceC0605l
    public final boolean a() {
        return q();
    }

    @Override // k.InterfaceC0605l
    public final boolean b() {
        return q() && this.f3232j.getIcon() == null;
    }

    @Override // j.InterfaceC0521v
    public final void d(C0510k c0510k) {
        this.f3232j = c0510k;
        setIcon(c0510k.getIcon());
        setTitle(c0510k.getTitleCondensed());
        setId(c0510k.f7257a);
        setVisibility(c0510k.isVisible() ? 0 : 8);
        setEnabled(c0510k.isEnabled());
        if (c0510k.hasSubMenu() && this.n == null) {
            this.n = new C0501b(this);
        }
    }

    @Override // android.view.View
    public final boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        onPopulateAccessibilityEvent(accessibilityEvent);
        return true;
    }

    @Override // android.widget.TextView, android.view.View
    public CharSequence getAccessibilityClassName() {
        return Button.class.getName();
    }

    @Override // j.InterfaceC0521v
    public C0510k getItemData() {
        return this.f3232j;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        InterfaceC0507h interfaceC0507h = this.f3235m;
        if (interfaceC0507h != null) {
            interfaceC0507h.b(this.f3232j);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.f3237p = r();
        s();
    }

    @Override // android.view.View
    public final void onHoverChanged(boolean z4) {
        super.onHoverChanged(z4);
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(Button.class.getName());
    }

    @Override // android.view.View.OnLongClickListener
    public final boolean onLongClick(View view) {
        return false;
    }

    @Override // androidx.appcompat.widget.AppCompatTextView, android.widget.TextView, android.view.View
    public final void onMeasure(int i5, int i6) {
        int i7;
        boolean zQ = q();
        if (zQ && (i7 = this.f3240s) >= 0) {
            super.setPadding(i7, getPaddingTop(), getPaddingRight(), getPaddingBottom());
        }
        super.onMeasure(i5, i6);
        int mode = View.MeasureSpec.getMode(i5);
        int size = View.MeasureSpec.getSize(i5);
        int measuredWidth = getMeasuredWidth();
        int i8 = this.f3239r;
        int iMin = mode == Integer.MIN_VALUE ? Math.min(size, i8) : i8;
        if (mode != 1073741824 && i8 > 0 && measuredWidth < iMin) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(iMin, 1073741824), i6);
        }
        if (zQ || this.f3234l == null) {
            return;
        }
        int measuredWidth2 = getMeasuredWidth();
        int iWidth = this.f3234l.getBounds().width();
        if (this.f3242u) {
            return;
        }
        super.setPadding((measuredWidth2 - iWidth) / 2, getPaddingTop(), getPaddingRight(), getPaddingBottom());
    }

    @Override // android.view.View
    public final void onPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onPopulateAccessibilityEvent(accessibilityEvent);
        CharSequence contentDescription = getContentDescription();
        if (TextUtils.isEmpty(contentDescription)) {
            return;
        }
        accessibilityEvent.getText().add(contentDescription);
    }

    @Override // android.widget.TextView, android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        super.onRestoreInstanceState(null);
    }

    @Override // android.widget.TextView, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        C0501b c0501b;
        if (this.f3232j.hasSubMenu() && (c0501b = this.n) != null && c0501b.onTouch(this, motionEvent)) {
            return true;
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.widget.TextView, android.view.View
    public final boolean performLongClick() {
        if (this.f3234l == null) {
            return true;
        }
        return super.performLongClick();
    }

    public final boolean q() {
        return !TextUtils.isEmpty(getText());
    }

    public final boolean r() {
        Configuration configuration = getContext().getResources().getConfiguration();
        int i5 = configuration.screenWidthDp;
        return i5 >= 480 || (i5 >= 640 && configuration.screenHeightDp >= 480) || configuration.orientation == 2;
    }

    public final void s() {
        boolean z4 = (!TextUtils.isEmpty(this.f3233k)) & (this.f3234l == null || ((this.f3232j.f7279y & 4) == 4 && (this.f3237p || this.f3238q)));
        setText(z4 ? this.f3233k : null);
        if (z4) {
            setBackgroundResource(a.S(getContext()) ? com.wssyncmldm.R.drawable.sesl_action_bar_item_text_background_light : com.wssyncmldm.R.drawable.sesl_action_bar_item_text_background_dark);
        } else {
            setBackground(this.f3244w);
        }
        CharSequence charSequence = this.f3232j.f7271q;
        if (TextUtils.isEmpty(charSequence)) {
            setContentDescription(z4 ? null : this.f3232j.f7261e);
        } else {
            setContentDescription(charSequence);
        }
        CharSequence charSequence2 = this.f3232j.f7272r;
        if (TextUtils.isEmpty(charSequence2)) {
            J1.a(this, z4 ? null : this.f3232j.f7261e);
        } else {
            J1.a(this, charSequence2);
        }
        float f = this.f3243v;
        if (f > 0.0f) {
            setTextSize(1, f * Math.min(getResources().getConfiguration().fontScale, 1.2f));
        }
        setText(z4 ? this.f3233k : null);
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        super.setBackground(drawable);
    }

    public void setCheckable(boolean z4) {
    }

    public void setChecked(boolean z4) {
    }

    public void setExpandedFormat(boolean z4) {
        if (this.f3238q != z4) {
            this.f3238q = z4;
            C0510k c0510k = this.f3232j;
            if (c0510k != null) {
                MenuC0508i menuC0508i = c0510k.n;
                menuC0508i.f7238k = true;
                menuC0508i.p(true);
            }
        }
    }

    @Override // android.widget.TextView
    public final boolean setFrame(int i5, int i6, int i7, int i8) {
        boolean frame = super.setFrame(i5, i6, i7, i8);
        if (!this.f3242u) {
            return frame;
        }
        Drawable background = getBackground();
        if (this.f3234l != null && background != null) {
            int width = getWidth();
            int height = getHeight();
            int paddingLeft = (getPaddingLeft() - getPaddingRight()) / 2;
            C.a.f(background, paddingLeft, 0, width + paddingLeft, height);
        } else if (background != null) {
            C.a.f(background, 0, 0, getWidth(), getHeight());
        }
        return frame;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x003c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void setIcon(Drawable drawable) {
        this.f3234l = drawable;
        if (drawable != null) {
            int intrinsicWidth = drawable.getIntrinsicWidth();
            int intrinsicHeight = drawable.getIntrinsicHeight();
            int i5 = this.f3241t;
            if (intrinsicWidth > i5) {
                intrinsicHeight = (int) (intrinsicHeight * (i5 / intrinsicWidth));
                intrinsicWidth = i5;
            }
            if (intrinsicHeight > i5) {
                intrinsicWidth = (int) (intrinsicWidth * (i5 / intrinsicHeight));
            } else {
                i5 = intrinsicHeight;
            }
            drawable.setBounds(0, 0, intrinsicWidth, i5);
        }
        setCompoundDrawables(drawable, null, null, null);
        if (q()) {
            WeakHashMap weakHashMap = Q.f940a;
            if (getLayoutDirection() == 1) {
                setCompoundDrawables(null, null, drawable, null);
            } else {
                setCompoundDrawables(drawable, null, null, null);
            }
        }
        s();
    }

    public void setIsLastItem(boolean z4) {
    }

    public void setItemInvoker(InterfaceC0507h interfaceC0507h) {
        this.f3235m = interfaceC0507h;
    }

    @Override // android.widget.TextView, android.view.View
    public final void setPadding(int i5, int i6, int i7, int i8) {
        this.f3240s = i5;
        super.setPadding(i5, i6, i7, i8);
    }

    @Override // android.widget.TextView, android.view.View
    public final void setPaddingRelative(int i5, int i6, int i7, int i8) {
        this.f3240s = i5;
        this.f3242u = true;
        super.setPaddingRelative(i5, i6, i7, i8);
    }

    public void setPopupCallback(AbstractC0502c abstractC0502c) {
        this.f3236o = abstractC0502c;
    }

    public void setTitle(CharSequence charSequence) {
        this.f3233k = charSequence;
        setContentDescription(charSequence);
        s();
    }
}
