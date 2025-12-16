package com.google.android.material.datepicker;

import J.I;
import J.Q;
import J.c0;
import J.r0;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.ColorStateListDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowInsetsController;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.material.internal.CheckableImageButton;
import com.wssyncmldm.R;
import f1.AbstractC0420a;
import java.util.Calendar;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.WeakHashMap;
import s2.C0837c;

/* loaded from: classes.dex */
public final class m<S> extends androidx.fragment.app.r {

    /* renamed from: c, reason: collision with root package name */
    public final LinkedHashSet f5988c;

    /* renamed from: d, reason: collision with root package name */
    public final LinkedHashSet f5989d;

    /* renamed from: e, reason: collision with root package name */
    public int f5990e;
    public t f;

    /* renamed from: g, reason: collision with root package name */
    public b f5991g;

    /* renamed from: h, reason: collision with root package name */
    public l f5992h;

    /* renamed from: i, reason: collision with root package name */
    public int f5993i;

    /* renamed from: j, reason: collision with root package name */
    public CharSequence f5994j;

    /* renamed from: k, reason: collision with root package name */
    public boolean f5995k;

    /* renamed from: l, reason: collision with root package name */
    public int f5996l;

    /* renamed from: m, reason: collision with root package name */
    public int f5997m;
    public CharSequence n;

    /* renamed from: o, reason: collision with root package name */
    public int f5998o;

    /* renamed from: p, reason: collision with root package name */
    public CharSequence f5999p;

    /* renamed from: q, reason: collision with root package name */
    public int f6000q;

    /* renamed from: r, reason: collision with root package name */
    public CharSequence f6001r;

    /* renamed from: s, reason: collision with root package name */
    public int f6002s;

    /* renamed from: t, reason: collision with root package name */
    public CharSequence f6003t;

    /* renamed from: u, reason: collision with root package name */
    public TextView f6004u;

    /* renamed from: v, reason: collision with root package name */
    public CheckableImageButton f6005v;

    /* renamed from: w, reason: collision with root package name */
    public P1.g f6006w;

    /* renamed from: x, reason: collision with root package name */
    public boolean f6007x;

    /* renamed from: y, reason: collision with root package name */
    public CharSequence f6008y;

    /* renamed from: z, reason: collision with root package name */
    public CharSequence f6009z;

    public m() {
        new LinkedHashSet();
        new LinkedHashSet();
        this.f5988c = new LinkedHashSet();
        this.f5989d = new LinkedHashSet();
    }

    public static int h(Context context) throws Resources.NotFoundException {
        Resources resources = context.getResources();
        int dimensionPixelOffset = resources.getDimensionPixelOffset(R.dimen.mtrl_calendar_content_padding);
        Calendar calendarC = w.c();
        calendarC.set(5, 1);
        Calendar calendarB = w.b(calendarC);
        calendarB.get(2);
        calendarB.get(1);
        int maximum = calendarB.getMaximum(7);
        calendarB.getActualMaximum(5);
        calendarB.getTimeInMillis();
        int dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.mtrl_calendar_day_width) * maximum;
        return ((maximum - 1) * resources.getDimensionPixelOffset(R.dimen.mtrl_calendar_month_horizontal_padding)) + dimensionPixelSize + (dimensionPixelOffset * 2);
    }

    public static boolean i(Context context, int i5) throws Resources.NotFoundException {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(L2.b.G(context, R.attr.materialCalendarStyle, l.class.getCanonicalName()).data, new int[]{i5});
        boolean z4 = typedArrayObtainStyledAttributes.getBoolean(0, false);
        typedArrayObtainStyledAttributes.recycle();
        return z4;
    }

    public final void g() {
        B.f.z(getArguments().getParcelable("DATE_SELECTOR_KEY"));
    }

    @Override // androidx.fragment.app.r, android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        Iterator it = this.f5988c.iterator();
        while (it.hasNext()) {
            ((DialogInterface.OnCancelListener) it.next()).onCancel(dialogInterface);
        }
        super.onCancel(dialogInterface);
    }

    @Override // androidx.fragment.app.r, androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) throws Resources.NotFoundException {
        super.onCreate(bundle);
        if (bundle == null) {
            bundle = getArguments();
        }
        this.f5990e = bundle.getInt("OVERRIDE_THEME_RES_ID");
        B.f.z(bundle.getParcelable("DATE_SELECTOR_KEY"));
        this.f5991g = (b) bundle.getParcelable("CALENDAR_CONSTRAINTS_KEY");
        B.f.z(bundle.getParcelable("DAY_VIEW_DECORATOR_KEY"));
        this.f5993i = bundle.getInt("TITLE_TEXT_RES_ID_KEY");
        this.f5994j = bundle.getCharSequence("TITLE_TEXT_KEY");
        this.f5996l = bundle.getInt("INPUT_MODE_KEY");
        this.f5997m = bundle.getInt("POSITIVE_BUTTON_TEXT_RES_ID_KEY");
        this.n = bundle.getCharSequence("POSITIVE_BUTTON_TEXT_KEY");
        this.f5998o = bundle.getInt("POSITIVE_BUTTON_CONTENT_DESCRIPTION_RES_ID_KEY");
        this.f5999p = bundle.getCharSequence("POSITIVE_BUTTON_CONTENT_DESCRIPTION_KEY");
        this.f6000q = bundle.getInt("NEGATIVE_BUTTON_TEXT_RES_ID_KEY");
        this.f6001r = bundle.getCharSequence("NEGATIVE_BUTTON_TEXT_KEY");
        this.f6002s = bundle.getInt("NEGATIVE_BUTTON_CONTENT_DESCRIPTION_RES_ID_KEY");
        this.f6003t = bundle.getCharSequence("NEGATIVE_BUTTON_CONTENT_DESCRIPTION_KEY");
        CharSequence text = this.f5994j;
        if (text == null) {
            text = requireContext().getResources().getText(this.f5993i);
        }
        this.f6008y = text;
        if (text != null) {
            CharSequence[] charSequenceArrSplit = TextUtils.split(String.valueOf(text), "\n");
            if (charSequenceArrSplit.length > 1) {
                text = charSequenceArrSplit[0];
            }
        } else {
            text = null;
        }
        this.f6009z = text;
    }

    @Override // androidx.fragment.app.r
    public final Dialog onCreateDialog(Bundle bundle) {
        Context contextRequireContext = requireContext();
        requireContext();
        int i5 = this.f5990e;
        if (i5 == 0) {
            g();
            throw null;
        }
        Dialog dialog = new Dialog(contextRequireContext, i5);
        Context context = dialog.getContext();
        this.f5995k = i(context, android.R.attr.windowFullscreen);
        this.f6006w = new P1.g(context, null, R.attr.materialCalendarStyle, R.style.Widget_MaterialComponents_MaterialCalendar);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(null, v1.a.n, R.attr.materialCalendarStyle, R.style.Widget_MaterialComponents_MaterialCalendar);
        int color = typedArrayObtainStyledAttributes.getColor(1, 0);
        typedArrayObtainStyledAttributes.recycle();
        this.f6006w.i(context);
        this.f6006w.k(ColorStateList.valueOf(color));
        P1.g gVar = this.f6006w;
        View decorView = dialog.getWindow().getDecorView();
        WeakHashMap weakHashMap = Q.f940a;
        gVar.j(I.i(decorView));
        return dialog;
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(this.f5995k ? R.layout.mtrl_picker_fullscreen : R.layout.mtrl_picker_dialog, viewGroup);
        Context context = viewInflate.getContext();
        if (this.f5995k) {
            viewInflate.findViewById(R.id.mtrl_calendar_frame).setLayoutParams(new LinearLayout.LayoutParams(h(context), -2));
        } else {
            viewInflate.findViewById(R.id.mtrl_calendar_main_pane).setLayoutParams(new LinearLayout.LayoutParams(h(context), -1));
        }
        TextView textView = (TextView) viewInflate.findViewById(R.id.mtrl_picker_header_selection_text);
        WeakHashMap weakHashMap = Q.f940a;
        textView.setAccessibilityLiveRegion(1);
        this.f6005v = (CheckableImageButton) viewInflate.findViewById(R.id.mtrl_picker_header_toggle);
        this.f6004u = (TextView) viewInflate.findViewById(R.id.mtrl_picker_title_text);
        this.f6005v.setTag("TOGGLE_BUTTON_TAG");
        CheckableImageButton checkableImageButton = this.f6005v;
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{android.R.attr.state_checked}, AbstractC0420a.A(context, R.drawable.material_ic_calendar_black_24dp));
        stateListDrawable.addState(new int[0], AbstractC0420a.A(context, R.drawable.material_ic_edit_black_24dp));
        checkableImageButton.setImageDrawable(stateListDrawable);
        this.f6005v.setChecked(this.f5996l != 0);
        Q.h(this.f6005v, null);
        CheckableImageButton checkableImageButton2 = this.f6005v;
        this.f6005v.setContentDescription(this.f5996l == 1 ? checkableImageButton2.getContext().getString(R.string.mtrl_picker_toggle_to_calendar_input_mode) : checkableImageButton2.getContext().getString(R.string.mtrl_picker_toggle_to_text_input_mode));
        this.f6005v.setOnClickListener(new A2.d(5, this));
        g();
        throw null;
    }

    @Override // androidx.fragment.app.r, android.content.DialogInterface.OnDismissListener
    public final void onDismiss(DialogInterface dialogInterface) {
        Iterator it = this.f5989d.iterator();
        while (it.hasNext()) {
            ((DialogInterface.OnDismissListener) it.next()).onDismiss(dialogInterface);
        }
        ViewGroup viewGroup = (ViewGroup) getView();
        if (viewGroup != null) {
            viewGroup.removeAllViews();
        }
        super.onDismiss(dialogInterface);
    }

    @Override // androidx.fragment.app.r, androidx.fragment.app.Fragment
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("OVERRIDE_THEME_RES_ID", this.f5990e);
        bundle.putParcelable("DATE_SELECTOR_KEY", null);
        b bVar = this.f5991g;
        a aVar = new a();
        int i5 = a.f5954b;
        int i6 = a.f5954b;
        long j3 = bVar.f5956c.f6016h;
        long j5 = bVar.f5957d.f6016h;
        aVar.f5955a = Long.valueOf(bVar.f.f6016h);
        l lVar = this.f5992h;
        o oVar = lVar == null ? null : lVar.f;
        if (oVar != null) {
            aVar.f5955a = Long.valueOf(oVar.f6016h);
        }
        Bundle bundle2 = new Bundle();
        bundle2.putParcelable("DEEP_COPY_VALIDATOR_KEY", bVar.f5958e);
        o oVarB = o.b(j3);
        o oVarB2 = o.b(j5);
        e eVar = (e) bundle2.getParcelable("DEEP_COPY_VALIDATOR_KEY");
        Long l5 = aVar.f5955a;
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", new b(oVarB, oVarB2, eVar, l5 == null ? null : o.b(l5.longValue()), bVar.f5959g));
        bundle.putParcelable("DAY_VIEW_DECORATOR_KEY", null);
        bundle.putInt("TITLE_TEXT_RES_ID_KEY", this.f5993i);
        bundle.putCharSequence("TITLE_TEXT_KEY", this.f5994j);
        bundle.putInt("INPUT_MODE_KEY", this.f5996l);
        bundle.putInt("POSITIVE_BUTTON_TEXT_RES_ID_KEY", this.f5997m);
        bundle.putCharSequence("POSITIVE_BUTTON_TEXT_KEY", this.n);
        bundle.putInt("POSITIVE_BUTTON_CONTENT_DESCRIPTION_RES_ID_KEY", this.f5998o);
        bundle.putCharSequence("POSITIVE_BUTTON_CONTENT_DESCRIPTION_KEY", this.f5999p);
        bundle.putInt("NEGATIVE_BUTTON_TEXT_RES_ID_KEY", this.f6000q);
        bundle.putCharSequence("NEGATIVE_BUTTON_TEXT_KEY", this.f6001r);
        bundle.putInt("NEGATIVE_BUTTON_CONTENT_DESCRIPTION_RES_ID_KEY", this.f6002s);
        bundle.putCharSequence("NEGATIVE_BUTTON_CONTENT_DESCRIPTION_KEY", this.f6003t);
    }

    @Override // androidx.fragment.app.r, androidx.fragment.app.Fragment
    public final void onStart() throws Resources.NotFoundException {
        super.onStart();
        Window window = requireDialog().getWindow();
        if (this.f5995k) {
            window.setLayout(-1, -1);
            window.setBackgroundDrawable(this.f6006w);
            if (!this.f6007x) {
                View viewFindViewById = requireView().findViewById(R.id.fullscreen_header);
                Drawable background = viewFindViewById.getBackground();
                ColorStateList colorStateListValueOf = background instanceof ColorDrawable ? ColorStateList.valueOf(((ColorDrawable) background).getColor()) : background instanceof ColorStateListDrawable ? ((ColorStateListDrawable) background).getColorStateList() : null;
                Integer numValueOf = colorStateListValueOf != null ? Integer.valueOf(colorStateListValueOf.getDefaultColor()) : null;
                boolean z4 = numValueOf == null || numValueOf.intValue() == 0;
                int iZ = W1.a.z(window.getContext(), android.R.attr.colorBackground, -16777216);
                if (z4) {
                    numValueOf = Integer.valueOf(iZ);
                }
                c0.a(window, false);
                window.getContext();
                window.getContext();
                window.setStatusBarColor(0);
                window.setNavigationBarColor(0);
                boolean z5 = W1.a.P(0) || W1.a.P(numValueOf.intValue());
                r0 r0Var = new r0(window.getInsetsController(), new C0837c(window.getDecorView()));
                r0Var.f1008e = window;
                Window window2 = (Window) r0Var.f1008e;
                WindowInsetsController windowInsetsController = (WindowInsetsController) r0Var.f1006c;
                if (z5) {
                    if (window2 != null) {
                        View decorView = window2.getDecorView();
                        decorView.setSystemUiVisibility(decorView.getSystemUiVisibility() | 8192);
                    }
                    windowInsetsController.setSystemBarsAppearance(8, 8);
                } else {
                    if (window2 != null) {
                        View decorView2 = window2.getDecorView();
                        decorView2.setSystemUiVisibility(decorView2.getSystemUiVisibility() & (-8193));
                    }
                    windowInsetsController.setSystemBarsAppearance(0, 8);
                }
                boolean z6 = W1.a.P(0) || W1.a.P(iZ);
                r0 r0Var2 = new r0(window.getInsetsController(), new C0837c(window.getDecorView()));
                r0Var2.f1008e = window;
                Window window3 = (Window) r0Var2.f1008e;
                WindowInsetsController windowInsetsController2 = (WindowInsetsController) r0Var2.f1006c;
                if (z6) {
                    if (window3 != null) {
                        View decorView3 = window3.getDecorView();
                        decorView3.setSystemUiVisibility(decorView3.getSystemUiVisibility() | 16);
                    }
                    windowInsetsController2.setSystemBarsAppearance(16, 16);
                } else {
                    if (window3 != null) {
                        View decorView4 = window3.getDecorView();
                        decorView4.setSystemUiVisibility(decorView4.getSystemUiVisibility() & (-17));
                    }
                    windowInsetsController2.setSystemBarsAppearance(0, 16);
                }
                Y0.k kVar = new Y0.k(viewFindViewById, viewFindViewById.getLayoutParams().height, viewFindViewById.getPaddingTop());
                WeakHashMap weakHashMap = Q.f940a;
                I.u(viewFindViewById, kVar);
                this.f6007x = true;
            }
        } else {
            window.setLayout(-2, -2);
            int dimensionPixelOffset = getResources().getDimensionPixelOffset(R.dimen.mtrl_calendar_dialog_background_inset);
            Rect rect = new Rect(dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset);
            window.setBackgroundDrawable(new InsetDrawable((Drawable) this.f6006w, dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset));
            window.getDecorView().setOnTouchListener(new H1.a(requireDialog(), rect));
        }
        requireContext();
        int i5 = this.f5990e;
        if (i5 == 0) {
            g();
            throw null;
        }
        g();
        b bVar = this.f5991g;
        l lVar = new l();
        Bundle bundle = new Bundle();
        bundle.putInt("THEME_RES_ID_KEY", i5);
        bundle.putParcelable("GRID_SELECTOR_KEY", null);
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", bVar);
        bundle.putParcelable("DAY_VIEW_DECORATOR_KEY", null);
        bundle.putParcelable("CURRENT_MONTH_KEY", bVar.f);
        lVar.setArguments(bundle);
        this.f5992h = lVar;
        t tVar = lVar;
        if (this.f5996l == 1) {
            g();
            b bVar2 = this.f5991g;
            t nVar = new n();
            Bundle bundle2 = new Bundle();
            bundle2.putInt("THEME_RES_ID_KEY", i5);
            bundle2.putParcelable("DATE_SELECTOR_KEY", null);
            bundle2.putParcelable("CALENDAR_CONSTRAINTS_KEY", bVar2);
            nVar.setArguments(bundle2);
            tVar = nVar;
        }
        this.f = tVar;
        this.f6004u.setText((this.f5996l == 1 && getResources().getConfiguration().orientation == 2) ? this.f6009z : this.f6008y);
        g();
        getContext();
        throw null;
    }

    @Override // androidx.fragment.app.r, androidx.fragment.app.Fragment
    public final void onStop() {
        this.f.f6028c.clear();
        super.onStop();
    }
}
