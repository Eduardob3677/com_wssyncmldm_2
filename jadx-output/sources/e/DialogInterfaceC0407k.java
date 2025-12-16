package e;

import J.C0045t;
import android.content.ContentResolver;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.appcompat.app.AlertController$RecycleListView;
import androidx.core.widget.NestedScrollView;
import com.samsung.android.knox.custom.CustomDeviceManager;
import com.samsung.android.knox.net.nap.NetworkAnalyticsConstants;
import com.wssyncmldm.R;
import i.AbstractC0474b;
import i.InterfaceC0473a;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.WeakHashMap;
import k.C0617p0;
import p.AbstractC0735a;

/* renamed from: e.k, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class DialogInterfaceC0407k extends androidx.activity.l implements DialogInterface, InterfaceC0411o {
    public C f;

    /* renamed from: g, reason: collision with root package name */
    public final D f6775g;

    /* renamed from: h, reason: collision with root package name */
    public final C0405i f6776h;

    public DialogInterfaceC0407k(Context context, int i5) {
        int i6;
        int iG = g(context, i5);
        if (iG == 0) {
            TypedValue typedValue = new TypedValue();
            context.getTheme().resolveAttribute(R.attr.dialogTheme, typedValue, true);
            i6 = typedValue.resourceId;
        } else {
            i6 = iG;
        }
        super(context, i6);
        this.f6775g = new D(this);
        r rVarE = e();
        if (iG == 0) {
            TypedValue typedValue2 = new TypedValue();
            context.getTheme().resolveAttribute(R.attr.dialogTheme, typedValue2, true);
            iG = typedValue2.resourceId;
        }
        ((C) rVarE).f6618V = iG;
        rVarE.f();
        this.f6776h = new C0405i(getContext(), this, getWindow());
    }

    public static int g(Context context, int i5) {
        if (((i5 >>> 24) & CustomDeviceManager.CALL_SCREEN_ALL) >= 1) {
            return i5;
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(R.attr.alertDialogTheme, typedValue, true);
        return typedValue.resourceId;
    }

    @Override // androidx.activity.l, android.app.Dialog
    public final void addContentView(View view, ViewGroup.LayoutParams layoutParams) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        C c2 = (C) e();
        c2.x();
        ((ViewGroup) c2.f6600A.findViewById(android.R.id.content)).addView(view, layoutParams);
        c2.f6635m.a(c2.f6634l.getCallback());
    }

    public final Button d(int i5) {
        C0405i c0405i = this.f6776h;
        if (i5 == -3) {
            return c0405i.f6765s;
        }
        if (i5 == -2) {
            return c0405i.f6761o;
        }
        if (i5 == -1) {
            return c0405i.f6758k;
        }
        c0405i.getClass();
        return null;
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        super.dismiss();
        e().g();
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        getWindow().getDecorView();
        D d2 = this.f6775g;
        if (d2 == null) {
            return false;
        }
        return d2.superDispatchKeyEvent(keyEvent);
    }

    public final r e() {
        if (this.f == null) {
            I i5 = r.f6780c;
            this.f = new C(getContext(), getWindow(), this, this);
        }
        return this.f;
    }

    public final void f(Bundle bundle) {
        e().a();
        super.onCreate(bundle);
        e().f();
    }

    @Override // android.app.Dialog
    public final View findViewById(int i5) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        C c2 = (C) e();
        c2.x();
        return c2.f6634l.findViewById(i5);
    }

    public final void h(CharSequence charSequence) {
        super.setTitle(charSequence);
        e().n(charSequence);
    }

    public final boolean i(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.app.Dialog
    public final void invalidateOptionsMenu() {
        e().b();
    }

    /* JADX WARN: Removed duplicated region for block: B:108:0x02bc  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x02c9  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x02cb  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x02d4  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x02d6  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x02df  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x02e1  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x02fb  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x0327  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x033f  */
    /* JADX WARN: Removed duplicated region for block: B:160:0x03ca  */
    /* JADX WARN: Removed duplicated region for block: B:161:0x03cc  */
    /* JADX WARN: Removed duplicated region for block: B:166:0x03d7  */
    /* JADX WARN: Removed duplicated region for block: B:169:0x03de  */
    /* JADX WARN: Removed duplicated region for block: B:170:0x03e0  */
    /* JADX WARN: Removed duplicated region for block: B:175:0x03eb  */
    /* JADX WARN: Removed duplicated region for block: B:180:0x03f6  */
    /* JADX WARN: Removed duplicated region for block: B:186:0x0403  */
    /* JADX WARN: Removed duplicated region for block: B:202:0x0446  */
    /* JADX WARN: Removed duplicated region for block: B:203:0x0453  */
    /* JADX WARN: Removed duplicated region for block: B:206:0x045c  */
    /* JADX WARN: Removed duplicated region for block: B:209:0x046f  */
    /* JADX WARN: Removed duplicated region for block: B:212:0x0480  */
    /* JADX WARN: Removed duplicated region for block: B:236:0x04ce  */
    /* JADX WARN: Removed duplicated region for block: B:249:0x04f4  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x015a  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0165  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x017a  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0180  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x01a0  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x01ad  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x01bc  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x01d7  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x01dd  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x01f8  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0203  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0212  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x022e  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0234  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x024d  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0259  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x027f  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0292  */
    @Override // androidx.activity.l, android.app.Dialog
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onCreate(Bundle bundle) {
        boolean z4;
        TypedValue typedValue;
        boolean zIsEmpty;
        ViewGroup viewGroup;
        Drawable drawable;
        View view;
        int i5;
        Drawable drawable2;
        View view2;
        Drawable drawable3;
        TypedValue typedValue2;
        int i6;
        View viewFindViewById;
        int i7;
        View viewFindViewById2;
        int i8;
        boolean z5;
        int i9;
        View view3;
        int i10;
        int i11;
        AlertController$RecycleListView alertController$RecycleListView;
        AlertController$RecycleListView alertController$RecycleListView2;
        ListAdapter listAdapter;
        NestedScrollView nestedScrollView;
        ViewGroup viewGroup2;
        f(bundle);
        C0405i c0405i = this.f6776h;
        c0405i.f6750b.setContentView(c0405i.f6739F);
        Window window = c0405i.f6751c;
        View viewFindViewById3 = window.findViewById(R.id.parentPanel);
        viewFindViewById3.addOnLayoutChangeListener(new ViewOnLayoutChangeListenerC0399c(c0405i, viewFindViewById3));
        View viewFindViewById4 = viewFindViewById3.findViewById(R.id.topPanel);
        View viewFindViewById5 = viewFindViewById3.findViewById(R.id.contentPanel);
        View viewFindViewById6 = viewFindViewById3.findViewById(R.id.buttonPanel);
        ViewGroup viewGroup3 = (ViewGroup) viewFindViewById3.findViewById(R.id.customPanel);
        View viewInflate = c0405i.f6755h;
        Context context = c0405i.f6749a;
        if (viewInflate == null) {
            viewInflate = c0405i.f6756i != 0 ? LayoutInflater.from(context).inflate(c0405i.f6756i, viewGroup3, false) : null;
        }
        boolean z6 = viewInflate != null;
        if (!z6 || !C0405i.a(viewInflate)) {
            window.setFlags(NetworkAnalyticsConstants.DataPoints.FLAG_PPID, NetworkAnalyticsConstants.DataPoints.FLAG_PPID);
        }
        if (z6) {
            FrameLayout frameLayout = (FrameLayout) window.findViewById(R.id.custom);
            frameLayout.addView(viewInflate, new ViewGroup.LayoutParams(-1, -1));
            if (c0405i.f6757j) {
                frameLayout.setPadding(0, 0, 0, 0);
            }
            if (c0405i.f6754g != null) {
                if (viewGroup3.getLayoutParams() instanceof LinearLayout.LayoutParams) {
                    ((LinearLayout.LayoutParams) viewGroup3.getLayoutParams()).weight = 0.0f;
                } else {
                    ((LinearLayout.LayoutParams) ((C0617p0) viewGroup3.getLayoutParams())).weight = 0.0f;
                }
            }
        } else {
            viewGroup3.setVisibility(8);
        }
        View viewFindViewById7 = viewGroup3.findViewById(R.id.topPanel);
        View viewFindViewById8 = viewGroup3.findViewById(R.id.contentPanel);
        View viewFindViewById9 = viewGroup3.findViewById(R.id.buttonPanel);
        ViewGroup viewGroupC = C0405i.c(viewFindViewById7, viewFindViewById4);
        ViewGroup viewGroupC2 = C0405i.c(viewFindViewById8, viewFindViewById5);
        ViewGroup viewGroupC3 = C0405i.c(viewFindViewById9, viewFindViewById6);
        c0405i.f6745L = viewGroupC3 == viewFindViewById6 ? new C0045t(1, c0405i) : null;
        NestedScrollView nestedScrollView2 = (NestedScrollView) window.findViewById(R.id.scrollView);
        c0405i.f6769w = nestedScrollView2;
        nestedScrollView2.setFocusable(false);
        c0405i.f6769w.setNestedScrollingEnabled(false);
        TextView textView = (TextView) viewGroupC2.findViewById(android.R.id.message);
        c0405i.f6736B = textView;
        if (textView != null) {
            CharSequence charSequence = c0405i.f;
            if (charSequence != null) {
                textView.setText(charSequence);
                c0405i.b(c0405i.f6736B, context.getResources().getDimensionPixelSize(R.dimen.sesl_dialog_body_text_size));
            } else {
                textView.setVisibility(8);
                c0405i.f6769w.removeView(c0405i.f6736B);
                if (c0405i.f6754g != null) {
                    ViewGroup viewGroup4 = (ViewGroup) c0405i.f6769w.getParent();
                    int iIndexOfChild = viewGroup4.indexOfChild(c0405i.f6769w);
                    viewGroup4.removeViewAt(iIndexOfChild);
                    viewGroup4.addView(c0405i.f6754g, iIndexOfChild, new ViewGroup.LayoutParams(-1, -1));
                } else {
                    viewGroupC2.setVisibility(8);
                }
            }
        }
        ContentResolver contentResolver = context.getContentResolver();
        if (contentResolver != null) {
            z4 = true;
            boolean z7 = Settings.System.getInt(contentResolver, "show_button_background", 0) == 1;
            typedValue = new TypedValue();
            context.getTheme().resolveAttribute(android.R.attr.colorBackground, typedValue, z4);
            int color = typedValue.resourceId <= 0 ? context.getResources().getColor(typedValue.resourceId) : -1;
            Button button = (Button) viewGroupC3.findViewById(android.R.id.button1);
            c0405i.f6758k = button;
            com.google.android.material.datepicker.k kVar = c0405i.f6748O;
            button.setOnClickListener(kVar);
            if (typedValue.resourceId <= 0) {
                AbstractC0735a.p(c0405i.f6758k, z7, color);
            } else {
                AbstractC0735a.q(c0405i.f6758k, z7);
            }
            zIsEmpty = TextUtils.isEmpty(c0405i.f6759l);
            int i12 = c0405i.f6752d;
            if (zIsEmpty || c0405i.n != null) {
                viewGroup = viewGroupC2;
                c0405i.f6758k.setText(c0405i.f6759l);
                drawable = c0405i.n;
                if (drawable == null) {
                    drawable.setBounds(0, 0, i12, i12);
                    view = viewFindViewById3;
                    c0405i.f6758k.setCompoundDrawables(c0405i.n, null, null, null);
                } else {
                    view = viewFindViewById3;
                }
                c0405i.f6758k.setVisibility(0);
                i5 = 1;
            } else {
                viewGroup = viewGroupC2;
                c0405i.f6758k.setVisibility(8);
                view = viewFindViewById3;
                i5 = 0;
            }
            Button button2 = (Button) viewGroupC3.findViewById(android.R.id.button2);
            c0405i.f6761o = button2;
            button2.setOnClickListener(kVar);
            if (typedValue.resourceId <= 0) {
                AbstractC0735a.p(c0405i.f6761o, z7, color);
            } else {
                AbstractC0735a.q(c0405i.f6761o, z7);
            }
            if (TextUtils.isEmpty(c0405i.f6762p) || c0405i.f6764r != null) {
                c0405i.f6761o.setText(c0405i.f6762p);
                drawable2 = c0405i.f6764r;
                if (drawable2 == null) {
                    drawable2.setBounds(0, 0, i12, i12);
                    view2 = viewFindViewById5;
                    c0405i.f6761o.setCompoundDrawables(c0405i.f6764r, null, null, null);
                } else {
                    view2 = viewFindViewById5;
                }
                c0405i.f6761o.setVisibility(0);
                i5 |= 2;
            } else {
                c0405i.f6761o.setVisibility(8);
                view2 = viewFindViewById5;
            }
            Button button3 = (Button) viewGroupC3.findViewById(android.R.id.button3);
            c0405i.f6765s = button3;
            button3.setOnClickListener(kVar);
            if (typedValue.resourceId <= 0) {
                AbstractC0735a.p(c0405i.f6765s, z7, color);
            } else {
                AbstractC0735a.q(c0405i.f6765s, z7);
            }
            if (TextUtils.isEmpty(c0405i.f6766t) || c0405i.f6768v != null) {
                c0405i.f6765s.setText(c0405i.f6766t);
                drawable3 = c0405i.f6768v;
                if (drawable3 != null) {
                    drawable3.setBounds(0, 0, i12, i12);
                    c0405i.f6765s.setCompoundDrawables(c0405i.f6768v, null, null, null);
                }
                c0405i.f6765s.setVisibility(0);
                i5 |= 4;
            } else {
                c0405i.f6765s.setVisibility(8);
            }
            typedValue2 = new TypedValue();
            context.getTheme().resolveAttribute(R.attr.alertDialogCenterButtons, typedValue2, true);
            if (typedValue2.data == 0) {
                i6 = 2;
            } else if (i5 == 1) {
                Button button4 = c0405i.f6758k;
                LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) button4.getLayoutParams();
                layoutParams.gravity = 1;
                layoutParams.weight = 0.5f;
                button4.setLayoutParams(layoutParams);
                i6 = 2;
            } else {
                i6 = 2;
                if (i5 == 2) {
                    Button button5 = c0405i.f6761o;
                    LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) button5.getLayoutParams();
                    layoutParams2.gravity = 1;
                    layoutParams2.weight = 0.5f;
                    button5.setLayoutParams(layoutParams2);
                } else if (i5 == 4) {
                    Button button6 = c0405i.f6765s;
                    LinearLayout.LayoutParams layoutParams3 = (LinearLayout.LayoutParams) button6.getLayoutParams();
                    layoutParams3.gravity = 1;
                    layoutParams3.weight = 0.5f;
                    button6.setLayoutParams(layoutParams3);
                }
            }
            if (i5 == 0) {
                viewGroupC3.setVisibility(8);
            }
            boolean z8 = c0405i.f6765s.getVisibility() != 0;
            boolean z9 = c0405i.f6758k.getVisibility() != 0;
            boolean z10 = c0405i.f6761o.getVisibility() != 0;
            viewFindViewById = window.findViewById(R.id.sem_divider2);
            if (viewFindViewById == null && ((z8 && z9) || (z8 && z10))) {
                i7 = 0;
                viewFindViewById.setVisibility(0);
            } else {
                i7 = 0;
            }
            viewFindViewById2 = window.findViewById(R.id.sem_divider1);
            if (viewFindViewById2 != null && z9 && z10) {
                viewFindViewById2.setVisibility(i7);
            }
            if (c0405i.f6745L != null && (viewGroup2 = (ViewGroup) viewGroupC3.findViewById(R.id.buttonBarLayout)) != null) {
                c0405i.f6745L.accept(viewGroup2);
            }
            if (c0405i.f6737C == null) {
                viewGroupC.addView(c0405i.f6737C, 0, new ViewGroup.LayoutParams(-1, -2));
                i8 = 8;
                window.findViewById(R.id.title_template).setVisibility(8);
            } else {
                c0405i.f6772z = (ImageView) window.findViewById(android.R.id.icon);
                if ((!TextUtils.isEmpty(c0405i.f6753e)) && c0405i.f6746M) {
                    TextView textView2 = (TextView) window.findViewById(R.id.alertTitle);
                    c0405i.f6735A = textView2;
                    textView2.setText(c0405i.f6753e);
                    c0405i.b(c0405i.f6735A, context.getResources().getDimensionPixelSize(R.dimen.sesl_dialog_title_text_size));
                    int i13 = c0405i.f6770x;
                    if (i13 != 0) {
                        c0405i.f6772z.setImageResource(i13);
                    } else {
                        Drawable drawable4 = c0405i.f6771y;
                        if (drawable4 != null) {
                            c0405i.f6772z.setImageDrawable(drawable4);
                        } else {
                            c0405i.f6735A.setPadding(c0405i.f6772z.getPaddingLeft(), c0405i.f6772z.getPaddingTop(), c0405i.f6772z.getPaddingRight(), c0405i.f6772z.getPaddingBottom());
                            i8 = 8;
                            c0405i.f6772z.setVisibility(8);
                        }
                    }
                    i8 = 8;
                } else {
                    i8 = 8;
                    window.findViewById(R.id.title_template).setVisibility(8);
                    c0405i.f6772z.setVisibility(8);
                    viewGroupC.setVisibility(8);
                }
            }
            z5 = viewGroup3.getVisibility() == i8;
            i9 = (viewGroupC != null || viewGroupC.getVisibility() == i8) ? 0 : 1;
            boolean z11 = viewGroupC3.getVisibility() == i8;
            boolean z12 = viewFindViewById4 == null && viewFindViewById4.getVisibility() != i8;
            boolean z13 = view2 == null && view2.getVisibility() != i8;
            View view4 = c0405i.f6737C;
            boolean z14 = view4 == null && view4.getVisibility() != i8;
            if ((z5 || z12 || z13) && !z14) {
                view3 = view;
                i10 = 0;
            } else {
                view3 = view;
                i10 = 0;
                view3.setPadding(0, 0, 0, 0);
            }
            if (z5 && z12 && !z13) {
                View viewFindViewById10 = view3.findViewById(R.id.title_template);
                int dimensionPixelSize = context.getResources().getDimensionPixelSize(R.dimen.sesl_dialog_padding_horizontal);
                viewFindViewById10.setPadding(dimensionPixelSize, i10, dimensionPixelSize, i10);
            }
            int dimensionPixelSize2 = context.getResources().getDimensionPixelSize(R.dimen.sesl_dialog_button_text_size);
            if (c0405i.f6758k.getVisibility() == 8) {
                i11 = 0;
                c0405i.f6758k.setTextSize(0, dimensionPixelSize2);
                c0405i.b(c0405i.f6758k, dimensionPixelSize2);
            } else {
                i11 = 0;
            }
            if (c0405i.f6761o.getVisibility() != 8) {
                c0405i.f6761o.setTextSize(i11, dimensionPixelSize2);
                c0405i.b(c0405i.f6761o, dimensionPixelSize2);
            }
            if (c0405i.f6765s.getVisibility() != 8) {
                c0405i.f6765s.setTextSize(i11, dimensionPixelSize2);
                c0405i.b(c0405i.f6765s, dimensionPixelSize2);
            }
            if (!view3.isInTouchMode()) {
                if (!z5) {
                    viewGroup3 = viewGroup;
                }
                if (!viewGroup3.requestFocus()) {
                    AlertController$RecycleListView alertController$RecycleListView3 = c0405i.f6754g;
                    if (alertController$RecycleListView3 != null) {
                        alertController$RecycleListView3.setSelection(0);
                    } else if (c0405i.f6758k.getVisibility() == 0) {
                        c0405i.f6758k.requestFocus();
                    } else if (c0405i.f6761o.getVisibility() == 0) {
                        c0405i.f6761o.requestFocus();
                    } else if (c0405i.f6765s.getVisibility() == 0) {
                        c0405i.f6765s.requestFocus();
                    }
                }
            }
            if (i9 != 0 && (nestedScrollView = c0405i.f6769w) != null) {
                nestedScrollView.setClipToPadding(true);
            }
            alertController$RecycleListView = c0405i.f6754g;
            if (alertController$RecycleListView instanceof AlertController$RecycleListView) {
                alertController$RecycleListView.getClass();
                if (!z11 || i9 == 0) {
                    alertController$RecycleListView.setPadding(alertController$RecycleListView.getPaddingLeft(), i9 != 0 ? alertController$RecycleListView.getPaddingTop() : alertController$RecycleListView.f3213c, alertController$RecycleListView.getPaddingRight(), z11 ? alertController$RecycleListView.getPaddingBottom() : alertController$RecycleListView.f3214d);
                }
            }
            if (!z5) {
                View view5 = c0405i.f6754g;
                if (view5 == null) {
                    view5 = c0405i.f6769w;
                }
                if (view5 != null) {
                    if (!z11) {
                        i6 = 0;
                    }
                    int i14 = i9 | i6;
                    View viewFindViewById11 = window.findViewById(R.id.scrollIndicatorUp);
                    View viewFindViewById12 = window.findViewById(R.id.scrollIndicatorDown);
                    WeakHashMap weakHashMap = J.Q.f940a;
                    J.J.d(view5, i14, 3);
                    ViewGroup viewGroup5 = viewGroup;
                    if (viewFindViewById11 != null) {
                        viewGroup5.removeView(viewFindViewById11);
                    }
                    if (viewFindViewById12 != null) {
                        viewGroup5.removeView(viewFindViewById12);
                    }
                }
            }
            alertController$RecycleListView2 = c0405i.f6754g;
            if (alertController$RecycleListView2 != null || (listAdapter = c0405i.f6738D) == null) {
            }
            alertController$RecycleListView2.setAdapter(listAdapter);
            Method methodJ = i3.x.J(AdapterView.class, "hidden_semSetBottomColor", Integer.TYPE);
            if (methodJ != null) {
                i3.x.j0(alertController$RecycleListView2, methodJ, 0);
            }
            int i15 = c0405i.E;
            if (i15 > -1) {
                alertController$RecycleListView2.setItemChecked(i15, true);
                alertController$RecycleListView2.setSelectionFromTop(i15, context.getResources().getDimensionPixelSize(R.dimen.sesl_select_dialog_padding_top));
                return;
            }
            return;
        }
        z4 = true;
        typedValue = new TypedValue();
        context.getTheme().resolveAttribute(android.R.attr.colorBackground, typedValue, z4);
        if (typedValue.resourceId <= 0) {
        }
        Button button7 = (Button) viewGroupC3.findViewById(android.R.id.button1);
        c0405i.f6758k = button7;
        com.google.android.material.datepicker.k kVar2 = c0405i.f6748O;
        button7.setOnClickListener(kVar2);
        if (typedValue.resourceId <= 0) {
        }
        zIsEmpty = TextUtils.isEmpty(c0405i.f6759l);
        int i122 = c0405i.f6752d;
        if (zIsEmpty) {
            viewGroup = viewGroupC2;
            c0405i.f6758k.setText(c0405i.f6759l);
            drawable = c0405i.n;
            if (drawable == null) {
            }
            c0405i.f6758k.setVisibility(0);
            i5 = 1;
        }
        Button button22 = (Button) viewGroupC3.findViewById(android.R.id.button2);
        c0405i.f6761o = button22;
        button22.setOnClickListener(kVar2);
        if (typedValue.resourceId <= 0) {
        }
        if (TextUtils.isEmpty(c0405i.f6762p)) {
            c0405i.f6761o.setText(c0405i.f6762p);
            drawable2 = c0405i.f6764r;
            if (drawable2 == null) {
            }
            c0405i.f6761o.setVisibility(0);
            i5 |= 2;
        }
        Button button32 = (Button) viewGroupC3.findViewById(android.R.id.button3);
        c0405i.f6765s = button32;
        button32.setOnClickListener(kVar2);
        if (typedValue.resourceId <= 0) {
        }
        if (TextUtils.isEmpty(c0405i.f6766t)) {
            c0405i.f6765s.setText(c0405i.f6766t);
            drawable3 = c0405i.f6768v;
            if (drawable3 != null) {
            }
            c0405i.f6765s.setVisibility(0);
            i5 |= 4;
        }
        typedValue2 = new TypedValue();
        context.getTheme().resolveAttribute(R.attr.alertDialogCenterButtons, typedValue2, true);
        if (typedValue2.data == 0) {
        }
        if (i5 == 0) {
        }
        if (c0405i.f6765s.getVisibility() != 0) {
        }
        if (c0405i.f6758k.getVisibility() != 0) {
        }
        if (c0405i.f6761o.getVisibility() != 0) {
        }
        viewFindViewById = window.findViewById(R.id.sem_divider2);
        if (viewFindViewById == null) {
            i7 = 0;
        }
        viewFindViewById2 = window.findViewById(R.id.sem_divider1);
        if (viewFindViewById2 != null) {
            viewFindViewById2.setVisibility(i7);
        }
        if (c0405i.f6745L != null) {
            c0405i.f6745L.accept(viewGroup2);
        }
        if (c0405i.f6737C == null) {
        }
        if (viewGroup3.getVisibility() == i8) {
        }
        if (viewGroupC != null) {
        }
        if (viewGroupC3.getVisibility() == i8) {
        }
        if (viewFindViewById4 == null) {
        }
        if (view2 == null) {
        }
        View view42 = c0405i.f6737C;
        if (view42 == null) {
        }
        if (z5) {
            view3 = view;
            i10 = 0;
        } else {
            view3 = view;
            i10 = 0;
        }
        if (z5) {
            View viewFindViewById102 = view3.findViewById(R.id.title_template);
            int dimensionPixelSize3 = context.getResources().getDimensionPixelSize(R.dimen.sesl_dialog_padding_horizontal);
            viewFindViewById102.setPadding(dimensionPixelSize3, i10, dimensionPixelSize3, i10);
        }
        int dimensionPixelSize22 = context.getResources().getDimensionPixelSize(R.dimen.sesl_dialog_button_text_size);
        if (c0405i.f6758k.getVisibility() == 8) {
        }
        if (c0405i.f6761o.getVisibility() != 8) {
        }
        if (c0405i.f6765s.getVisibility() != 8) {
        }
        if (!view3.isInTouchMode()) {
        }
        if (i9 != 0) {
            nestedScrollView.setClipToPadding(true);
        }
        alertController$RecycleListView = c0405i.f6754g;
        if (alertController$RecycleListView instanceof AlertController$RecycleListView) {
        }
        if (!z5) {
        }
        alertController$RecycleListView2 = c0405i.f6754g;
        if (alertController$RecycleListView2 != null) {
        }
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public final boolean onKeyDown(int i5, KeyEvent keyEvent) {
        NestedScrollView nestedScrollView = this.f6776h.f6769w;
        if (nestedScrollView == null || !nestedScrollView.l(keyEvent)) {
            return super.onKeyDown(i5, keyEvent);
        }
        return true;
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public final boolean onKeyUp(int i5, KeyEvent keyEvent) {
        NestedScrollView nestedScrollView = this.f6776h.f6769w;
        if (nestedScrollView == null || !nestedScrollView.l(keyEvent)) {
            return super.onKeyUp(i5, keyEvent);
        }
        return true;
    }

    @Override // androidx.activity.l, android.app.Dialog
    public final void onStop() {
        super.onStop();
        e().h();
    }

    @Override // e.InterfaceC0411o
    public final void onSupportActionModeFinished(AbstractC0474b abstractC0474b) {
    }

    @Override // e.InterfaceC0411o
    public final void onSupportActionModeStarted(AbstractC0474b abstractC0474b) {
    }

    @Override // e.InterfaceC0411o
    public final AbstractC0474b onWindowStartingSupportActionMode(InterfaceC0473a interfaceC0473a) {
        return null;
    }

    @Override // androidx.activity.l, android.app.Dialog
    public final void setContentView(int i5) {
        e().k(i5);
    }

    @Override // android.app.Dialog
    public final void setTitle(int i5) {
        super.setTitle(i5);
        e().n(getContext().getString(i5));
    }

    @Override // androidx.activity.l, android.app.Dialog
    public final void setContentView(View view) {
        e().l(view);
    }

    @Override // androidx.activity.l, android.app.Dialog
    public final void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        e().m(view, layoutParams);
    }

    @Override // android.app.Dialog
    public final void setTitle(CharSequence charSequence) {
        h(charSequence);
        C0405i c0405i = this.f6776h;
        c0405i.f6753e = charSequence;
        TextView textView = c0405i.f6735A;
        if (textView != null) {
            textView.setText(charSequence);
        }
    }
}
