package androidx.appcompat.view.menu;

import J.Q;
import J.r0;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.AbsListView;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.widget.SeslDropDownItemTextView;
import c.AbstractC0206a;
import com.samsung.android.knox.net.nap.NetworkAnalyticsConstants;
import com.wssyncmldm.R;
import j.C0510k;
import j.InterfaceC0521v;
import j.MenuC0508i;
import java.text.NumberFormat;
import java.util.Locale;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public class ListMenuItemView extends LinearLayout implements InterfaceC0521v, AbsListView.SelectionBoundsAdjuster {

    /* renamed from: c, reason: collision with root package name */
    public C0510k f3247c;

    /* renamed from: d, reason: collision with root package name */
    public ImageView f3248d;

    /* renamed from: e, reason: collision with root package name */
    public RadioButton f3249e;
    public TextView f;

    /* renamed from: g, reason: collision with root package name */
    public CheckBox f3250g;

    /* renamed from: h, reason: collision with root package name */
    public TextView f3251h;

    /* renamed from: i, reason: collision with root package name */
    public ImageView f3252i;

    /* renamed from: j, reason: collision with root package name */
    public ImageView f3253j;

    /* renamed from: k, reason: collision with root package name */
    public LinearLayout f3254k;

    /* renamed from: l, reason: collision with root package name */
    public final Drawable f3255l;

    /* renamed from: m, reason: collision with root package name */
    public final int f3256m;
    public final Context n;

    /* renamed from: o, reason: collision with root package name */
    public boolean f3257o;

    /* renamed from: p, reason: collision with root package name */
    public final Drawable f3258p;

    /* renamed from: q, reason: collision with root package name */
    public final boolean f3259q;

    /* renamed from: r, reason: collision with root package name */
    public LayoutInflater f3260r;

    /* renamed from: s, reason: collision with root package name */
    public boolean f3261s;

    /* renamed from: t, reason: collision with root package name */
    public final NumberFormat f3262t;

    /* renamed from: u, reason: collision with root package name */
    public TextView f3263u;

    /* renamed from: v, reason: collision with root package name */
    public boolean f3264v;

    /* renamed from: w, reason: collision with root package name */
    public SeslDropDownItemTextView f3265w;

    /* renamed from: x, reason: collision with root package name */
    public LinearLayout f3266x;

    public ListMenuItemView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f3264v = false;
        r0 r0VarM = r0.m(getContext(), attributeSet, AbstractC0206a.f5176r, R.attr.listMenuViewStyle, 0);
        this.f3255l = r0VarM.g(5);
        TypedArray typedArray = (TypedArray) r0VarM.f1007d;
        this.f3256m = typedArray.getResourceId(1, -1);
        this.f3257o = typedArray.getBoolean(7, false);
        this.n = context;
        this.f3258p = r0VarM.g(8);
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(null, new int[]{android.R.attr.divider}, R.attr.dropDownListViewStyle, 0);
        this.f3259q = typedArrayObtainStyledAttributes.hasValue(0);
        r0VarM.n();
        typedArrayObtainStyledAttributes.recycle();
        this.f3262t = NumberFormat.getInstance(Locale.getDefault());
    }

    private LayoutInflater getInflater() {
        if (this.f3260r == null) {
            this.f3260r = LayoutInflater.from(getContext());
        }
        return this.f3260r;
    }

    private void setBadgeText(String str) throws Resources.NotFoundException, NumberFormatException {
        if (this.f3263u == null) {
            this.f3263u = (TextView) findViewById(R.id.menu_badge);
        }
        if (this.f3263u == null) {
            Log.i("ListMenuItemView", "SUB_MENU_ITEM_LAYOUT case, mBadgeView is null");
            return;
        }
        if (this.f3266x == null) {
            Log.i("ListMenuItemView", "mTitleParent is null");
            return;
        }
        Resources resources = getResources();
        float dimension = resources.getDimension(R.dimen.sesl_badge_additional_width);
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.f3263u.getLayoutParams();
        RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) this.f3266x.getLayoutParams();
        if (str == null) {
            layoutParams.topMargin = (int) resources.getDimension(R.dimen.sesl_list_menu_item_dot_badge_top_margin);
            layoutParams2.width = -2;
            this.f3266x.setLayoutParams(layoutParams2);
            this.f3263u.setLayoutParams(layoutParams);
        } else {
            try {
                Integer.parseInt(str);
                String str2 = this.f3262t.format(Math.min(Integer.parseInt(str), 99));
                int dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.sesl_menu_item_badge_text_size);
                TextView textView = this.f3263u;
                float f = getResources().getConfiguration().fontScale;
                if (f > 1.2f) {
                    textView.setTextSize(0, (dimensionPixelSize / f) * 1.2f);
                }
                this.f3263u.setText(str2);
                int length = (int) ((str2.length() * dimension) + resources.getDimension(R.dimen.sesl_badge_default_width));
                int dimension2 = (int) (resources.getDimension(R.dimen.sesl_badge_default_width) + dimension);
                layoutParams.width = length;
                layoutParams.height = dimension2;
                layoutParams.addRule(15, -1);
                this.f3263u.setLayoutParams(layoutParams);
            } catch (NumberFormatException unused) {
            }
        }
        int i5 = layoutParams.width;
        if (str != null) {
            this.f3266x.setPaddingRelative(0, 0, getResources().getDimensionPixelSize(R.dimen.sesl_list_menu_item_dot_badge_end_margin) + i5, 0);
        }
        this.f3263u.setVisibility(str == null ? 8 : 0);
    }

    private void setSubMenuArrowVisible(boolean z4) {
        ImageView imageView = this.f3252i;
        if (imageView == null || this.f3264v) {
            return;
        }
        imageView.setVisibility(z4 ? 0 : 8);
    }

    @Override // android.widget.AbsListView.SelectionBoundsAdjuster
    public final void adjustListItemSelectionBounds(Rect rect) {
        ImageView imageView = this.f3253j;
        if (imageView == null || imageView.getVisibility() != 0) {
            return;
        }
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.f3253j.getLayoutParams();
        rect.top = this.f3253j.getHeight() + layoutParams.topMargin + layoutParams.bottomMargin + rect.top;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0064  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x012b  */
    @Override // j.InterfaceC0521v
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void d(C0510k c0510k) throws Resources.NotFoundException, NumberFormatException {
        boolean z4;
        int i5;
        String string;
        boolean z5;
        this.f3247c = c0510k;
        setVisibility(c0510k.isVisible() ? 0 : 8);
        setTitle(c0510k.f7261e);
        setCheckable(c0510k.isCheckable());
        if (c0510k.n.o()) {
            if ((c0510k.n.n() ? c0510k.f7265j : c0510k.f7263h) != 0) {
                z4 = true;
            }
        } else {
            z4 = false;
        }
        c0510k.n.n();
        if (!this.f3264v) {
            if (z4) {
                C0510k c0510k2 = this.f3247c;
                if (c0510k2.n.o()) {
                    if ((c0510k2.n.n() ? c0510k2.f7265j : c0510k2.f7263h) != 0) {
                        z5 = true;
                    }
                    if (z5) {
                    }
                    if (i5 == 0) {
                    }
                    if (this.f3251h.getVisibility() != i5) {
                    }
                } else {
                    z5 = false;
                    i5 = z5 ? 0 : 8;
                    if (i5 == 0) {
                        TextView textView = this.f3251h;
                        C0510k c0510k3 = this.f3247c;
                        char c2 = c0510k3.n.n() ? c0510k3.f7265j : c0510k3.f7263h;
                        if (c2 == 0) {
                            string = "";
                        } else {
                            MenuC0508i menuC0508i = c0510k3.n;
                            Resources resources = menuC0508i.f7229a.getResources();
                            StringBuilder sb = new StringBuilder();
                            if (ViewConfiguration.get(menuC0508i.f7229a).hasPermanentMenuKey()) {
                                sb.append(resources.getString(R.string.abc_prepend_shortcut_label));
                            }
                            int i6 = menuC0508i.n() ? c0510k3.f7266k : c0510k3.f7264i;
                            C0510k.d(sb, i6, NetworkAnalyticsConstants.DataPoints.FLAG_DNS_UID, resources.getString(R.string.abc_menu_meta_shortcut_label));
                            C0510k.d(sb, i6, 4096, resources.getString(R.string.abc_menu_ctrl_shortcut_label));
                            C0510k.d(sb, i6, 2, resources.getString(R.string.abc_menu_alt_shortcut_label));
                            C0510k.d(sb, i6, 1, resources.getString(R.string.abc_menu_shift_shortcut_label));
                            C0510k.d(sb, i6, 4, resources.getString(R.string.abc_menu_sym_shortcut_label));
                            C0510k.d(sb, i6, 8, resources.getString(R.string.abc_menu_function_shortcut_label));
                            if (c2 == '\b') {
                                sb.append(resources.getString(R.string.abc_menu_delete_shortcut_label));
                            } else if (c2 == '\n') {
                                sb.append(resources.getString(R.string.abc_menu_enter_shortcut_label));
                            } else if (c2 != ' ') {
                                sb.append(c2);
                            } else {
                                sb.append(resources.getString(R.string.abc_menu_space_shortcut_label));
                            }
                            string = sb.toString();
                        }
                        textView.setText(string);
                    }
                    if (this.f3251h.getVisibility() != i5) {
                        this.f3251h.setVisibility(i5);
                    }
                }
            }
        }
        setIcon(c0510k.getIcon());
        setEnabled(c0510k.isEnabled());
        setSubMenuArrowVisible(c0510k.hasSubMenu());
        setContentDescription(c0510k.f7271q);
        setBadgeText(null);
    }

    @Override // j.InterfaceC0521v
    public C0510k getItemData() {
        return this.f3247c;
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        WeakHashMap weakHashMap = Q.f940a;
        setBackground(this.f3255l);
        SeslDropDownItemTextView seslDropDownItemTextView = (SeslDropDownItemTextView) findViewById(R.id.sub_menu_title);
        this.f3265w = seslDropDownItemTextView;
        boolean z4 = seslDropDownItemTextView != null;
        this.f3264v = z4;
        if (z4) {
            return;
        }
        TextView textView = (TextView) findViewById(R.id.title);
        this.f = textView;
        int i5 = this.f3256m;
        if (i5 != -1) {
            textView.setTextAppearance(this.n, i5);
        }
        TextView textView2 = this.f;
        if (textView2 != null) {
            textView2.setSingleLine(false);
            this.f.setMaxLines(2);
        }
        this.f3251h = (TextView) findViewById(R.id.shortcut);
        ImageView imageView = (ImageView) findViewById(R.id.submenuarrow);
        this.f3252i = imageView;
        if (imageView != null) {
            imageView.setImageDrawable(this.f3258p);
        }
        this.f3253j = (ImageView) findViewById(R.id.group_divider);
        this.f3254k = (LinearLayout) findViewById(R.id.content);
        this.f3266x = (LinearLayout) findViewById(R.id.title_parent);
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        TextView textView = this.f3263u;
        if (textView == null || textView.getVisibility() != 0 || this.f3263u.getWidth() <= 0) {
            return;
        }
        CharSequence charSequence = this.f3247c.f7261e;
        if (!TextUtils.isEmpty(getContentDescription())) {
            accessibilityNodeInfo.setContentDescription(getContentDescription());
            return;
        }
        accessibilityNodeInfo.setContentDescription(((Object) charSequence) + " , " + getResources().getString(R.string.sesl_action_menu_overflow_badge_description));
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onMeasure(int i5, int i6) {
        if (this.f3248d != null && this.f3257o && !this.f3264v) {
            ViewGroup.LayoutParams layoutParams = getLayoutParams();
            LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) this.f3248d.getLayoutParams();
            int i7 = layoutParams.height;
            if (i7 > 0 && layoutParams2.width <= 0) {
                layoutParams2.width = i7;
            }
        }
        super.onMeasure(i5, i6);
    }

    public void setCheckable(boolean z4) {
        CompoundButton compoundButton;
        View view;
        if (!z4 && this.f3249e == null && this.f3250g == null) {
            return;
        }
        if (this.f3264v) {
            if (z4) {
                this.f3265w.setChecked(this.f3247c.isChecked());
                return;
            }
            return;
        }
        if (this.f3247c.h()) {
            if (this.f3249e == null) {
                RadioButton radioButton = (RadioButton) getInflater().inflate(R.layout.sesl_list_menu_item_radio, (ViewGroup) this, false);
                this.f3249e = radioButton;
                LinearLayout linearLayout = this.f3254k;
                if (linearLayout != null) {
                    linearLayout.addView(radioButton, -1);
                } else {
                    addView(radioButton, -1);
                }
            }
            compoundButton = this.f3249e;
            view = this.f3250g;
        } else {
            if (this.f3250g == null) {
                CheckBox checkBox = (CheckBox) getInflater().inflate(R.layout.sesl_list_menu_item_checkbox, (ViewGroup) this, false);
                this.f3250g = checkBox;
                LinearLayout linearLayout2 = this.f3254k;
                if (linearLayout2 != null) {
                    linearLayout2.addView(checkBox, -1);
                } else {
                    addView(checkBox, -1);
                }
            }
            compoundButton = this.f3250g;
            view = this.f3249e;
        }
        if (z4) {
            compoundButton.setChecked(this.f3247c.isChecked());
            if (compoundButton.getVisibility() != 0) {
                compoundButton.setVisibility(0);
            }
            if (view == null || view.getVisibility() == 8) {
                return;
            }
            view.setVisibility(8);
            return;
        }
        CheckBox checkBox2 = this.f3250g;
        if (checkBox2 != null) {
            checkBox2.setVisibility(8);
        }
        RadioButton radioButton2 = this.f3249e;
        if (radioButton2 != null) {
            radioButton2.setVisibility(8);
        }
    }

    public void setChecked(boolean z4) {
        CompoundButton compoundButton;
        if (this.f3264v) {
            this.f3265w.setChecked(z4);
            return;
        }
        if (this.f3247c.h()) {
            if (this.f3249e == null) {
                RadioButton radioButton = (RadioButton) getInflater().inflate(R.layout.sesl_list_menu_item_radio, (ViewGroup) this, false);
                this.f3249e = radioButton;
                LinearLayout linearLayout = this.f3254k;
                if (linearLayout != null) {
                    linearLayout.addView(radioButton, -1);
                } else {
                    addView(radioButton, -1);
                }
            }
            compoundButton = this.f3249e;
        } else {
            if (this.f3250g == null) {
                CheckBox checkBox = (CheckBox) getInflater().inflate(R.layout.sesl_list_menu_item_checkbox, (ViewGroup) this, false);
                this.f3250g = checkBox;
                LinearLayout linearLayout2 = this.f3254k;
                if (linearLayout2 != null) {
                    linearLayout2.addView(checkBox, -1);
                } else {
                    addView(checkBox, -1);
                }
            }
            compoundButton = this.f3250g;
        }
        compoundButton.setChecked(z4);
    }

    public void setForceShowIcon(boolean z4) {
        this.f3261s = z4;
        this.f3257o = z4;
    }

    public void setGroupDividerEnabled(boolean z4) {
        ImageView imageView = this.f3253j;
        if (imageView != null) {
            imageView.setVisibility((this.f3259q || !z4) ? 8 : 0);
        }
    }

    public void setIcon(Drawable drawable) {
        if (this.f3264v) {
            return;
        }
        this.f3247c.n.getClass();
        boolean z4 = this.f3261s;
        if (z4 || this.f3257o) {
            ImageView imageView = this.f3248d;
            if (imageView == null && drawable == null && !this.f3257o) {
                return;
            }
            if (imageView == null && !this.f3264v) {
                ImageView imageView2 = (ImageView) getInflater().inflate(R.layout.abc_list_menu_item_icon, (ViewGroup) this, false);
                this.f3248d = imageView2;
                LinearLayout linearLayout = this.f3254k;
                if (linearLayout != null) {
                    linearLayout.addView(imageView2, 0);
                } else {
                    addView(imageView2, 0);
                }
            }
            if (drawable == null && !this.f3257o) {
                this.f3248d.setVisibility(8);
                return;
            }
            ImageView imageView3 = this.f3248d;
            if (!z4) {
                drawable = null;
            }
            imageView3.setImageDrawable(drawable);
            if (this.f3248d.getVisibility() != 0) {
                this.f3248d.setVisibility(0);
            }
        }
    }

    public void setTitle(CharSequence charSequence) {
        if (this.f3264v) {
            if (charSequence == null) {
                if (this.f3265w.getVisibility() != 8) {
                    this.f3265w.setVisibility(8);
                    return;
                }
                return;
            } else {
                this.f3265w.setText(charSequence);
                if (this.f3265w.getVisibility() != 0) {
                    this.f3265w.setVisibility(0);
                    return;
                }
                return;
            }
        }
        if (charSequence == null) {
            if (this.f.getVisibility() != 8) {
                this.f.setVisibility(8);
            }
        } else {
            this.f.setText(charSequence);
            if (this.f.getVisibility() != 0) {
                this.f.setVisibility(0);
            }
        }
    }
}
