package androidx.preference;

import J.Q;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.appcompat.widget.SwitchCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.idm.fotaagent.utils.storage.StorageConstants;
import com.wssyncmldm.R;
import f1.AbstractC0420a;
import j0.AbstractC0526A;
import j0.b0;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.WeakHashMap;
import o3.AbstractC0729f;

/* loaded from: classes.dex */
public final class D extends AbstractC0526A {

    /* renamed from: d, reason: collision with root package name */
    public final PreferenceGroup f4558d;

    /* renamed from: e, reason: collision with root package name */
    public ArrayList f4559e;
    public ArrayList f;

    /* renamed from: g, reason: collision with root package name */
    public ArrayList f4560g;

    /* renamed from: h, reason: collision with root package name */
    public final ArrayList f4561h;
    public ViewGroup n;

    /* renamed from: j, reason: collision with root package name */
    public final t f4563j = new t(2, this);

    /* renamed from: k, reason: collision with root package name */
    public final int f4564k = R.layout.sesl_preference_category;

    /* renamed from: l, reason: collision with root package name */
    public Preference f4565l = null;

    /* renamed from: m, reason: collision with root package name */
    public Preference f4566m = null;

    /* renamed from: o, reason: collision with root package name */
    public int f4567o = 0;

    /* renamed from: i, reason: collision with root package name */
    public final Handler f4562i = new Handler(Looper.getMainLooper());

    public D(PreferenceGroup preferenceGroup) {
        this.f4558d = preferenceGroup;
        preferenceGroup.f4636J = this;
        this.f4559e = new ArrayList();
        this.f = new ArrayList();
        this.f4561h = new ArrayList();
        this.f4560g = new ArrayList();
        if (preferenceGroup instanceof PreferenceScreen) {
            h(((PreferenceScreen) preferenceGroup).f4676d0);
        } else {
            h(true);
        }
        p();
    }

    public static boolean n(PreferenceGroup preferenceGroup) {
        return preferenceGroup.f4675c0 != Integer.MAX_VALUE;
    }

    public static boolean o(Preference preference) {
        int i5 = preference.f4633G;
        if (i5 == R.layout.sesl_preference_switch && preference.f4634H == R.layout.sesl_preference_widget_switch) {
            return true;
        }
        return i5 == R.layout.sesl_preference_switch_screen && preference.f4634H == R.layout.sesl_switch_preference_screen_widget_divider;
    }

    @Override // j0.AbstractC0526A
    public final int a() {
        return this.f.size();
    }

    @Override // j0.AbstractC0526A
    public final long b(int i5) {
        if (!this.f7328b || k(i5) == null) {
            return -1L;
        }
        return k(i5).e();
    }

    @Override // j0.AbstractC0526A
    public final int c(int i5) {
        C c2 = new C(k(i5));
        ArrayList arrayList = this.f4561h;
        int iIndexOf = arrayList.indexOf(c2);
        if (iIndexOf != -1) {
            return iIndexOf;
        }
        int size = arrayList.size();
        arrayList.add(c2);
        return size;
    }

    @Override // j0.AbstractC0526A
    public final void d(b0 b0Var, int i5) throws Resources.NotFoundException {
        int dimensionPixelSize;
        int paddingEnd;
        ColorStateList colorStateList;
        H h5 = (H) b0Var;
        Preference preferenceK = k(i5);
        View view = h5.f7406a;
        Drawable background = view.getBackground();
        Drawable drawable = h5.f4597v;
        if (background != drawable) {
            WeakHashMap weakHashMap = Q.f940a;
            view.setBackground(drawable);
        }
        TextView textView = (TextView) h5.s(android.R.id.title);
        if (textView != null && (colorStateList = h5.f4598w) != null && !textView.getTextColors().equals(colorStateList)) {
            textView.setTextColor(colorStateList);
        }
        if (!o(preferenceK)) {
            if ((preferenceK instanceof SeekBarPreference) && h5.f7423t) {
                h5.f7423t = false;
            }
            preferenceK.n(h5);
            return;
        }
        int width = this.n.getWidth();
        this.f4567o = width;
        if (preferenceK instanceof SwitchPreference) {
            SwitchPreference switchPreference = (SwitchPreference) preferenceK;
            switchPreference.g0 = width;
            switchPreference.n(h5);
            View viewFindViewById = view.findViewById(R.id.widget_frame);
            View viewFindViewById2 = view.findViewById(android.R.id.widget_frame);
            View viewFindViewById3 = view.findViewById(R.id.switch_widget);
            View viewFindViewById4 = view.findViewById(android.R.id.switch_widget);
            Context context = switchPreference.f4648c;
            Configuration configuration = context.getResources().getConfiguration();
            int i6 = configuration.screenWidthDp;
            int i7 = ((i6 > 320 || configuration.fontScale < 1.1f) && (i6 >= 411 || configuration.fontScale < 1.3f)) ? 2 : 1;
            if (i7 != 1) {
                if (switchPreference.f4690f0 != i7) {
                    switchPreference.f4690f0 = i7;
                    TextView textView2 = (TextView) view.findViewById(android.R.id.title);
                    viewFindViewById2.setVisibility(0);
                    viewFindViewById.setVisibility(8);
                    textView2.requestLayout();
                }
                switchPreference.G(viewFindViewById4);
                return;
            }
            switchPreference.f4690f0 = i7;
            TextView textView3 = (TextView) view.findViewById(android.R.id.title);
            float fMeasureText = textView3.getPaint().measureText(textView3.getText().toString());
            TextView textView4 = (TextView) view.findViewById(android.R.id.summary);
            float fMeasureText2 = textView4.getPaint().measureText(textView4.getText().toString());
            if (textView4.getVisibility() == 8) {
                fMeasureText2 = 0.0f;
            }
            float paddingEnd2 = ((switchPreference.g0 - view.getPaddingEnd()) - view.getPaddingStart()) - context.getResources().getDimensionPixelSize(R.dimen.sesl_preference_item_switch_size);
            if (fMeasureText >= paddingEnd2 || fMeasureText2 >= paddingEnd2) {
                viewFindViewById.setVisibility(0);
                viewFindViewById2.setVisibility(8);
                textView3.requestLayout();
                SwitchCompat switchCompat = (SwitchCompat) viewFindViewById3;
                if (!switchCompat.c(switchPreference.f4697X) && SwitchPreference.F(switchPreference.f4697X, view, switchCompat)) {
                    switchCompat.performHapticFeedback(AbstractC0729f.s(27));
                }
                switchPreference.G(viewFindViewById3);
                SwitchCompat switchCompat2 = (SwitchCompat) viewFindViewById4;
                switchCompat2.setOnCheckedChangeListener(null);
                switchCompat2.setCheckedWithoutAnimation(switchPreference.f4697X);
                return;
            }
            viewFindViewById2.setVisibility(0);
            viewFindViewById.setVisibility(8);
            textView3.requestLayout();
            SwitchCompat switchCompat3 = (SwitchCompat) viewFindViewById4;
            if (!switchCompat3.c(switchPreference.f4697X) && SwitchPreference.F(switchPreference.f4697X, view, switchCompat3)) {
                switchCompat3.performHapticFeedback(AbstractC0729f.s(27));
            }
            switchPreference.G(viewFindViewById4);
            SwitchCompat switchCompat4 = (SwitchCompat) viewFindViewById3;
            switchCompat4.setOnCheckedChangeListener(null);
            switchCompat4.setCheckedWithoutAnimation(switchPreference.f4697X);
            return;
        }
        if (!(preferenceK instanceof SwitchPreferenceCompat)) {
            preferenceK.n(h5);
            return;
        }
        SwitchPreferenceCompat switchPreferenceCompat = (SwitchPreferenceCompat) preferenceK;
        switchPreferenceCompat.g0 = width;
        switchPreferenceCompat.n(h5);
        View viewFindViewById5 = view.findViewById(R.id.widget_frame);
        View viewFindViewById6 = view.findViewById(android.R.id.widget_frame);
        View viewFindViewById7 = view.findViewById(R.id.switch_widget);
        View viewFindViewById8 = view.findViewById(android.R.id.switch_widget);
        Context context2 = switchPreferenceCompat.f4648c;
        Configuration configuration2 = context2.getResources().getConfiguration();
        int i8 = configuration2.screenWidthDp;
        int i9 = ((i8 > 320 || configuration2.fontScale < 1.1f) && (i8 >= 411 || configuration2.fontScale < 1.3f)) ? 2 : 1;
        if (i9 != 1) {
            if (switchPreferenceCompat.f4695f0 != i9) {
                switchPreferenceCompat.f4695f0 = i9;
                TextView textView5 = (TextView) view.findViewById(android.R.id.title);
                viewFindViewById6.setVisibility(0);
                viewFindViewById5.setVisibility(8);
                textView5.requestLayout();
            }
            switchPreferenceCompat.G(viewFindViewById8);
            return;
        }
        switchPreferenceCompat.f4695f0 = i9;
        TextView textView6 = (TextView) view.findViewById(android.R.id.title);
        float fMeasureText3 = textView6.getPaint().measureText(textView6.getText().toString());
        TextView textView7 = (TextView) view.findViewById(android.R.id.summary);
        float fMeasureText4 = textView7.getPaint().measureText(textView7.getText().toString());
        if (textView7.getVisibility() == 8) {
            fMeasureText4 = 0.0f;
        }
        if (switchPreferenceCompat instanceof SeslSwitchPreferenceScreen) {
            dimensionPixelSize = context2.getResources().getDimensionPixelSize(R.dimen.sesl_preference_screen_item_switch_size);
            paddingEnd = viewFindViewById6.getPaddingEnd();
        } else {
            dimensionPixelSize = context2.getResources().getDimensionPixelSize(R.dimen.sesl_preference_item_switch_size);
            paddingEnd = viewFindViewById6.getPaddingEnd();
        }
        float paddingEnd3 = ((switchPreferenceCompat.g0 - view.getPaddingEnd()) - view.getPaddingStart()) - (paddingEnd + dimensionPixelSize);
        if (fMeasureText3 >= paddingEnd3 || fMeasureText4 >= paddingEnd3) {
            viewFindViewById5.setVisibility(0);
            viewFindViewById6.setVisibility(8);
            textView6.requestLayout();
            SwitchCompat switchCompat5 = (SwitchCompat) viewFindViewById7;
            if (!switchCompat5.c(switchPreferenceCompat.f4697X) && SwitchPreferenceCompat.F(switchPreferenceCompat.f4697X, view, switchCompat5)) {
                switchCompat5.performHapticFeedback(AbstractC0729f.s(27));
            }
            switchPreferenceCompat.G(viewFindViewById7);
            SwitchCompat switchCompat6 = (SwitchCompat) viewFindViewById8;
            switchCompat6.setOnCheckedChangeListener(null);
            switchCompat6.setCheckedWithoutAnimation(switchPreferenceCompat.f4697X);
            return;
        }
        viewFindViewById6.setVisibility(0);
        viewFindViewById5.setVisibility(8);
        textView6.requestLayout();
        SwitchCompat switchCompat7 = (SwitchCompat) viewFindViewById8;
        if (!switchCompat7.c(switchPreferenceCompat.f4697X) && SwitchPreferenceCompat.F(switchPreferenceCompat.f4697X, view, switchCompat7)) {
            switchCompat7.performHapticFeedback(AbstractC0729f.s(27));
        }
        switchPreferenceCompat.G(viewFindViewById8);
        SwitchCompat switchCompat8 = (SwitchCompat) viewFindViewById7;
        switchCompat8.setOnCheckedChangeListener(null);
        switchCompat8.setCheckedWithoutAnimation(switchPreferenceCompat.f4697X);
    }

    @Override // j0.AbstractC0526A
    public final b0 e(RecyclerView recyclerView, int i5) {
        C c2 = (C) this.f4561h.get(i5);
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(recyclerView.getContext());
        this.n = recyclerView;
        View viewInflate = layoutInflaterFrom.inflate(c2.f4553a, (ViewGroup) recyclerView, false);
        ViewGroup viewGroup = (ViewGroup) viewInflate.findViewById(android.R.id.widget_frame);
        if (viewGroup != null) {
            int i6 = c2.f4554b;
            if (i6 != 0) {
                layoutInflaterFrom.inflate(i6, viewGroup);
            } else {
                viewGroup.setVisibility(8);
            }
        }
        View viewFindViewById = viewInflate.findViewById(R.id.badge_frame);
        if (viewFindViewById != null) {
            if (c2.f4555c) {
                viewFindViewById.setVisibility(0);
            } else {
                viewFindViewById.setVisibility(8);
            }
        }
        return new H(viewInflate);
    }

    @Override // j0.AbstractC0526A
    public final int f() {
        ArrayList arrayList = this.f4560g;
        if (arrayList != null && arrayList.size() > 0) {
            return ((Integer) this.f4560g.get(r4.size() - 1)).intValue() + 1;
        }
        Iterator it = this.f.iterator();
        int i5 = 0;
        while (it.hasNext()) {
            if (((Preference) it.next()).f4633G == R.layout.sesl_preference_category_empty) {
                i5++;
            }
        }
        return this.f.size() - i5;
    }

    @Override // j0.AbstractC0526A
    public final int g(int i5) {
        ArrayList arrayList = this.f4560g;
        if (arrayList == null || i5 >= arrayList.size()) {
            return -1;
        }
        return ((Integer) this.f4560g.get(i5)).intValue();
    }

    public final ArrayList i(PreferenceGroup preferenceGroup) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        int size = preferenceGroup.f4671Y.size();
        int i5 = 0;
        for (int i6 = 0; i6 < size; i6++) {
            Preference preferenceF = preferenceGroup.F(i6);
            if (preferenceF.f4668y) {
                if (!n(preferenceGroup) || i5 < preferenceGroup.f4675c0) {
                    arrayList.add(preferenceF);
                } else {
                    arrayList2.add(preferenceF);
                }
                if (preferenceF instanceof PreferenceGroup) {
                    PreferenceGroup preferenceGroup2 = (PreferenceGroup) preferenceF;
                    if (!(!(preferenceGroup2 instanceof PreferenceScreen))) {
                        continue;
                    } else {
                        if (n(preferenceGroup) && n(preferenceGroup2)) {
                            throw new IllegalStateException("Nesting an expandable group inside of another expandable group is not supported!");
                        }
                        Iterator it = i(preferenceGroup2).iterator();
                        while (it.hasNext()) {
                            Preference preference = (Preference) it.next();
                            if (!n(preferenceGroup) || i5 < preferenceGroup.f4675c0) {
                                arrayList.add(preference);
                            } else {
                                arrayList2.add(preference);
                            }
                            i5++;
                        }
                    }
                } else {
                    i5++;
                }
            }
        }
        if (n(preferenceGroup) && i5 > preferenceGroup.f4675c0) {
            long j3 = preferenceGroup.f4650e;
            C0185e c0185e = new C0185e(preferenceGroup.f4648c);
            c0185e.f4633G = R.layout.expand_button;
            Context context = c0185e.f4648c;
            Drawable drawableA = AbstractC0420a.A(context, R.drawable.ic_arrow_down_24dp);
            if (c0185e.f4657m != drawableA) {
                c0185e.f4657m = drawableA;
                c0185e.f4656l = 0;
                c0185e.j();
            }
            c0185e.f4656l = R.drawable.ic_arrow_down_24dp;
            String string = context.getString(R.string.expand_button_title);
            if (!TextUtils.equals(string, c0185e.f4654j)) {
                c0185e.f4654j = string;
                c0185e.j();
            }
            if (999 != c0185e.f4653i) {
                c0185e.f4653i = androidx.room.j.MAX_BIND_PARAMETER_CNT;
                D d2 = c0185e.f4636J;
                if (d2 != null) {
                    Handler handler = d2.f4562i;
                    t tVar = d2.f4563j;
                    handler.removeCallbacks(tVar);
                    handler.post(tVar);
                }
            }
            ArrayList arrayList3 = new ArrayList();
            Iterator it2 = arrayList2.iterator();
            CharSequence string2 = null;
            while (it2.hasNext()) {
                Preference preference2 = (Preference) it2.next();
                CharSequence charSequence = preference2.f4654j;
                boolean z4 = preference2 instanceof PreferenceGroup;
                if (z4 && !TextUtils.isEmpty(charSequence)) {
                    arrayList3.add((PreferenceGroup) preference2);
                }
                if (arrayList3.contains(preference2.f4638L)) {
                    if (z4) {
                        arrayList3.add((PreferenceGroup) preference2);
                    }
                } else if (!TextUtils.isEmpty(charSequence)) {
                    string2 = string2 == null ? charSequence : context.getString(R.string.summary_collapsed_preference_list, string2, charSequence);
                }
            }
            c0185e.z(string2);
            c0185e.f4709X = j3 + StorageConstants.MEGA_BYTES;
            c0185e.f4652h = new B(this, preferenceGroup);
            arrayList.add(c0185e);
        }
        return arrayList;
    }

    public final void j(ArrayList arrayList, PreferenceGroup preferenceGroup) {
        synchronized (preferenceGroup) {
            Collections.sort(preferenceGroup.f4671Y);
        }
        int size = preferenceGroup.f4671Y.size();
        for (int i5 = 0; i5 < size; i5++) {
            Preference preferenceF = preferenceGroup.F(i5);
            if (i5 == size - 1) {
                this.f4565l = null;
            } else {
                this.f4565l = preferenceGroup.F(i5 + 1);
                if (preferenceF == this.f4566m) {
                    this.f4566m = null;
                }
            }
            boolean z4 = preferenceF instanceof PreferenceCategory;
            if (z4 && !preferenceF.f4646V) {
                preferenceF.f4643R = true;
                preferenceF.f4645U = 15;
                preferenceF.f4644T = true;
                preferenceF.f4646V = true;
            }
            arrayList.add(preferenceF);
            if (z4 && TextUtils.isEmpty(preferenceF.f4654j) && this.f4564k == preferenceF.f4633G) {
                preferenceF.f4633G = R.layout.sesl_preference_category_empty;
            }
            C c2 = new C(preferenceF);
            if (!this.f4561h.contains(c2)) {
                this.f4561h.add(c2);
            }
            if (preferenceF instanceof PreferenceGroup) {
                PreferenceGroup preferenceGroup2 = (PreferenceGroup) preferenceF;
                if (true ^ (preferenceGroup2 instanceof PreferenceScreen)) {
                    this.f4566m = this.f4565l;
                    j(arrayList, preferenceGroup2);
                }
            }
            preferenceF.f4636J = this;
        }
    }

    public final Preference k(int i5) {
        if (i5 < 0 || i5 >= this.f.size()) {
            return null;
        }
        return (Preference) this.f.get(i5);
    }

    public final int l(Preference preference) {
        int size = this.f.size();
        for (int i5 = 0; i5 < size; i5++) {
            Preference preference2 = (Preference) this.f.get(i5);
            if (preference2 != null && preference2.equals(preference)) {
                return i5;
            }
        }
        return -1;
    }

    public final int m(String str) {
        int size = this.f.size();
        for (int i5 = 0; i5 < size; i5++) {
            if (TextUtils.equals(str, ((Preference) this.f.get(i5)).n)) {
                return i5;
            }
        }
        return -1;
    }

    public final void p() {
        int i5;
        Iterator it = this.f4559e.iterator();
        while (it.hasNext()) {
            ((Preference) it.next()).f4636J = null;
        }
        ArrayList arrayList = new ArrayList(this.f4559e.size());
        this.f4559e = arrayList;
        PreferenceGroup preferenceGroup = this.f4558d;
        j(arrayList, preferenceGroup);
        this.f = i(preferenceGroup);
        ArrayList arrayList2 = new ArrayList();
        Iterator it2 = this.f.iterator();
        int i6 = -1;
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            if (((Preference) it2.next()).f4633G != R.layout.sesl_preference_category_empty) {
                i6++;
            }
            arrayList2.add(Integer.valueOf(Math.max(i6, 0)));
        }
        if (arrayList2.size() > 0 && ((Integer) arrayList2.get(arrayList2.size() - 1)).intValue() >= this.f.size()) {
            Log.w("PreferenceGroupAdapter", "accessibilityPosition over visible size | last " + arrayList2.get(arrayList2.size() - 1) + " vsize " + this.f.size());
            for (i5 = 0; i5 < arrayList2.size(); i5++) {
                arrayList2.set(i5, Integer.valueOf(i5));
            }
        }
        this.f4560g = arrayList2;
        this.f7327a.b();
        Iterator it3 = this.f4559e.iterator();
        while (it3.hasNext()) {
            ((Preference) it3.next()).getClass();
        }
    }
}
