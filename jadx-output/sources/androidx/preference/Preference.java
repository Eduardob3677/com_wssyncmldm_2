package androidx.preference;

import J.Q;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcelable;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.AbsSavedState;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityManager;
import android.widget.ImageView;
import android.widget.TextView;
import com.idm.fotaagent.IDMApplication;
import com.wssyncmldm.R;
import f1.AbstractC0420a;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public class Preference implements Comparable<Preference> {

    /* renamed from: A, reason: collision with root package name */
    public final boolean f4628A;

    /* renamed from: B, reason: collision with root package name */
    public final boolean f4629B;

    /* renamed from: C, reason: collision with root package name */
    public final boolean f4630C;

    /* renamed from: D, reason: collision with root package name */
    public final boolean f4631D;
    public final boolean E;

    /* renamed from: F, reason: collision with root package name */
    public final boolean f4632F;

    /* renamed from: G, reason: collision with root package name */
    public int f4633G;

    /* renamed from: H, reason: collision with root package name */
    public int f4634H;

    /* renamed from: I, reason: collision with root package name */
    public final boolean f4635I;

    /* renamed from: J, reason: collision with root package name */
    public D f4636J;

    /* renamed from: K, reason: collision with root package name */
    public ArrayList f4637K;

    /* renamed from: L, reason: collision with root package name */
    public PreferenceGroup f4638L;

    /* renamed from: M, reason: collision with root package name */
    public boolean f4639M;

    /* renamed from: N, reason: collision with root package name */
    public p f4640N;

    /* renamed from: O, reason: collision with root package name */
    public q f4641O;

    /* renamed from: Q, reason: collision with root package name */
    public final ViewOnClickListenerC0192l f4642Q;

    /* renamed from: R, reason: collision with root package name */
    public boolean f4643R;

    /* renamed from: T, reason: collision with root package name */
    public boolean f4644T;

    /* renamed from: U, reason: collision with root package name */
    public int f4645U;

    /* renamed from: V, reason: collision with root package name */
    public boolean f4646V;

    /* renamed from: W, reason: collision with root package name */
    public final ColorStateList f4647W;

    /* renamed from: c, reason: collision with root package name */
    public final Context f4648c;

    /* renamed from: d, reason: collision with root package name */
    public F f4649d;

    /* renamed from: e, reason: collision with root package name */
    public long f4650e;
    public boolean f;

    /* renamed from: g, reason: collision with root package name */
    public n f4651g;

    /* renamed from: h, reason: collision with root package name */
    public o f4652h;

    /* renamed from: i, reason: collision with root package name */
    public int f4653i;

    /* renamed from: j, reason: collision with root package name */
    public CharSequence f4654j;

    /* renamed from: k, reason: collision with root package name */
    public CharSequence f4655k;

    /* renamed from: l, reason: collision with root package name */
    public int f4656l;

    /* renamed from: m, reason: collision with root package name */
    public Drawable f4657m;
    public final String n;

    /* renamed from: o, reason: collision with root package name */
    public Intent f4658o;

    /* renamed from: p, reason: collision with root package name */
    public final String f4659p;

    /* renamed from: q, reason: collision with root package name */
    public Bundle f4660q;

    /* renamed from: r, reason: collision with root package name */
    public boolean f4661r;

    /* renamed from: s, reason: collision with root package name */
    public final boolean f4662s;

    /* renamed from: t, reason: collision with root package name */
    public final boolean f4663t;

    /* renamed from: u, reason: collision with root package name */
    public final String f4664u;

    /* renamed from: v, reason: collision with root package name */
    public final Object f4665v;

    /* renamed from: w, reason: collision with root package name */
    public boolean f4666w;

    /* renamed from: x, reason: collision with root package name */
    public boolean f4667x;

    /* renamed from: y, reason: collision with root package name */
    public final boolean f4668y;

    /* renamed from: z, reason: collision with root package name */
    public final boolean f4669z;

    public Preference(Context context, AttributeSet attributeSet, int i5, int i6) {
        this.f4653i = Integer.MAX_VALUE;
        this.f4661r = true;
        this.f4662s = true;
        this.f4663t = true;
        this.f4666w = true;
        this.f4667x = true;
        this.f4668y = true;
        this.f4669z = true;
        this.f4628A = true;
        this.f4630C = true;
        this.f4632F = true;
        this.f4633G = R.layout.sesl_preference;
        this.f4642Q = new ViewOnClickListenerC0192l(this, 0);
        this.f4643R = false;
        this.f4644T = false;
        this.f4645U = 0;
        this.f4646V = false;
        this.f4648c = context;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, I.f, i5, i6);
        this.f4656l = typedArrayObtainStyledAttributes.getResourceId(23, typedArrayObtainStyledAttributes.getResourceId(0, 0));
        String string = typedArrayObtainStyledAttributes.getString(27);
        this.n = string == null ? typedArrayObtainStyledAttributes.getString(6) : string;
        CharSequence text = typedArrayObtainStyledAttributes.getText(35);
        this.f4654j = text == null ? typedArrayObtainStyledAttributes.getText(4) : text;
        CharSequence text2 = typedArrayObtainStyledAttributes.getText(34);
        this.f4655k = text2 == null ? typedArrayObtainStyledAttributes.getText(7) : text2;
        this.f4653i = typedArrayObtainStyledAttributes.getInt(29, typedArrayObtainStyledAttributes.getInt(8, Integer.MAX_VALUE));
        String string2 = typedArrayObtainStyledAttributes.getString(22);
        this.f4659p = string2 == null ? typedArrayObtainStyledAttributes.getString(13) : string2;
        this.f4633G = typedArrayObtainStyledAttributes.getResourceId(28, typedArrayObtainStyledAttributes.getResourceId(3, R.layout.preference));
        this.f4634H = typedArrayObtainStyledAttributes.getResourceId(36, typedArrayObtainStyledAttributes.getResourceId(9, 0));
        this.f4635I = typedArrayObtainStyledAttributes.getBoolean(25, typedArrayObtainStyledAttributes.getBoolean(25, false));
        this.f4661r = typedArrayObtainStyledAttributes.getBoolean(21, typedArrayObtainStyledAttributes.getBoolean(2, true));
        boolean z4 = typedArrayObtainStyledAttributes.getBoolean(31, typedArrayObtainStyledAttributes.getBoolean(5, true));
        this.f4662s = z4;
        this.f4663t = typedArrayObtainStyledAttributes.getBoolean(30, typedArrayObtainStyledAttributes.getBoolean(1, true));
        String string3 = typedArrayObtainStyledAttributes.getString(19);
        this.f4664u = string3 == null ? typedArrayObtainStyledAttributes.getString(10) : string3;
        this.f4669z = typedArrayObtainStyledAttributes.getBoolean(16, typedArrayObtainStyledAttributes.getBoolean(16, z4));
        this.f4628A = typedArrayObtainStyledAttributes.getBoolean(17, typedArrayObtainStyledAttributes.getBoolean(17, z4));
        if (typedArrayObtainStyledAttributes.hasValue(18)) {
            this.f4665v = q(typedArrayObtainStyledAttributes, 18);
        } else if (typedArrayObtainStyledAttributes.hasValue(11)) {
            this.f4665v = q(typedArrayObtainStyledAttributes, 11);
        }
        this.f4632F = typedArrayObtainStyledAttributes.getBoolean(32, typedArrayObtainStyledAttributes.getBoolean(12, true));
        boolean zHasValue = typedArrayObtainStyledAttributes.hasValue(33);
        this.f4629B = zHasValue;
        if (zHasValue) {
            this.f4630C = typedArrayObtainStyledAttributes.getBoolean(33, typedArrayObtainStyledAttributes.getBoolean(14, true));
        }
        this.f4631D = typedArrayObtainStyledAttributes.getBoolean(24, typedArrayObtainStyledAttributes.getBoolean(15, false));
        this.f4668y = typedArrayObtainStyledAttributes.getBoolean(26, typedArrayObtainStyledAttributes.getBoolean(26, true));
        this.E = typedArrayObtainStyledAttributes.getBoolean(20, typedArrayObtainStyledAttributes.getBoolean(20, false));
        typedArrayObtainStyledAttributes.recycle();
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(android.R.attr.textColorSecondary, typedValue, true);
        if (typedValue.resourceId > 0) {
            this.f4647W = context.getResources().getColorStateList(typedValue.resourceId);
        }
    }

    public static void x(View view, boolean z4) {
        view.setEnabled(z4);
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                x(viewGroup.getChildAt(childCount), z4);
            }
        }
    }

    private void y(TextView textView) {
        textView.setLineBreakWordStyle(1);
    }

    public boolean A() {
        return !h();
    }

    public final boolean B() {
        return this.f4649d != null && this.f4663t && (TextUtils.isEmpty(this.n) ^ true);
    }

    public final void C(SharedPreferences.Editor editor) {
        if (!this.f4649d.f4586e) {
            editor.apply();
        }
    }

    public final void a(Serializable serializable) {
        if (this.f4651g != null) {
            IDMApplication.getEnablerFactory().getAdminCommandExecutor(this.f4648c).execute(serializable.toString().trim());
        }
    }

    public void b() {
        o oVar = this.f4652h;
        if (oVar != null) {
            oVar.a(this);
        }
    }

    public void c(Bundle bundle) {
        Parcelable parcelable;
        if (!(!TextUtils.isEmpty(this.n)) || (parcelable = bundle.getParcelable(this.n)) == null) {
            return;
        }
        this.f4639M = false;
        r(parcelable);
        if (!this.f4639M) {
            throw new IllegalStateException("Derived class did not call super.onRestoreInstanceState()");
        }
    }

    @Override // java.lang.Comparable
    public final int compareTo(Preference preference) {
        Preference preference2 = preference;
        int i5 = this.f4653i;
        int i6 = preference2.f4653i;
        if (i5 != i6) {
            return i5 - i6;
        }
        CharSequence charSequence = this.f4654j;
        CharSequence charSequence2 = preference2.f4654j;
        if (charSequence == charSequence2) {
            return 0;
        }
        if (charSequence == null) {
            return 1;
        }
        if (charSequence2 == null) {
            return -1;
        }
        return charSequence.toString().compareToIgnoreCase(preference2.f4654j.toString());
    }

    public void d(Bundle bundle) {
        if (!TextUtils.isEmpty(this.n)) {
            this.f4639M = false;
            Parcelable parcelableS = s();
            if (!this.f4639M) {
                throw new IllegalStateException("Derived class did not call super.onSaveInstanceState()");
            }
            if (parcelableS != null) {
                bundle.putParcelable(this.n, parcelableS);
            }
        }
    }

    public long e() {
        return this.f4650e;
    }

    public final String f(String str) {
        return !B() ? str : this.f4649d.b().getString(this.n, str);
    }

    public CharSequence g() {
        q qVar = this.f4641O;
        return qVar != null ? qVar.b(this) : this.f4655k;
    }

    public boolean h() {
        return this.f4661r && this.f4666w && this.f4667x;
    }

    public final boolean i() {
        String string;
        Context context = this.f4648c;
        AccessibilityManager accessibilityManager = (AccessibilityManager) context.getSystemService("accessibility");
        if (accessibilityManager == null || !accessibilityManager.isEnabled() || (string = Settings.Secure.getString(context.getContentResolver(), "enabled_accessibility_services")) == null) {
            return false;
        }
        return string.matches("(?i).*com.samsung.accessibility/com.samsung.android.app.talkback.TalkBackService.*") || string.matches("(?i).*com.samsung.android.accessibility.talkback/com.samsung.android.marvin.talkback.TalkBackService.*") || string.matches("(?i).*com.google.android.marvin.talkback.TalkBackService.*") || string.matches("(?i).*com.samsung.accessibility/com.samsung.accessibility.universalswitch.UniversalSwitchService.*");
    }

    public void j() {
        int iIndexOf;
        D d2 = this.f4636J;
        if (d2 == null || (iIndexOf = d2.f.indexOf(this)) == -1) {
            return;
        }
        d2.f7327a.c(iIndexOf, this, 1);
    }

    public void k(boolean z4) {
        ArrayList arrayList = this.f4637K;
        if (arrayList == null) {
            return;
        }
        int size = arrayList.size();
        for (int i5 = 0; i5 < size; i5++) {
            Preference preference = (Preference) arrayList.get(i5);
            if (preference.f4666w == z4) {
                preference.f4666w = !z4;
                preference.k(preference.A());
                preference.j();
            }
        }
    }

    public void l() {
        PreferenceScreen preferenceScreen;
        String str = this.f4664u;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        F f = this.f4649d;
        Preference preferenceE = null;
        if (f != null && (preferenceScreen = f.f4587g) != null) {
            preferenceE = preferenceScreen.E(str);
        }
        if (preferenceE == null) {
            throw new IllegalStateException("Dependency \"" + str + "\" not found for preference \"" + this.n + "\" (title: \"" + ((Object) this.f4654j) + "\"");
        }
        if (preferenceE.f4637K == null) {
            preferenceE.f4637K = new ArrayList();
        }
        preferenceE.f4637K.add(this);
        boolean zA = preferenceE.A();
        if (this.f4666w == zA) {
            this.f4666w = !zA;
            k(A());
            j();
        }
    }

    public void m(F f) {
        long j3;
        this.f4649d = f;
        if (!this.f) {
            synchronized (f) {
                j3 = f.f4583b;
                f.f4583b = 1 + j3;
            }
            this.f4650e = j3;
        }
        if (B()) {
            F f5 = this.f4649d;
            if ((f5 != null ? f5.b() : null).contains(this.n)) {
                u(null, true);
                return;
            }
        }
        Object obj = this.f4665v;
        if (obj != null) {
            u(obj, false);
        }
    }

    public void n(H h5) {
        Integer numValueOf;
        boolean z4 = this.f4630C;
        boolean z5 = this.f4629B;
        ViewOnClickListenerC0192l viewOnClickListenerC0192l = this.f4642Q;
        View view = h5.f7406a;
        view.setOnClickListener(viewOnClickListenerC0192l);
        view.setId(0);
        TextView textView = (TextView) h5.s(android.R.id.summary);
        if (textView != null) {
            CharSequence charSequenceG = g();
            if (TextUtils.isEmpty(charSequenceG)) {
                textView.setVisibility(8);
                numValueOf = null;
            } else {
                textView.setText(charSequenceG);
                y(textView);
                ColorStateList colorStateList = this.f4647W;
                if (colorStateList != null) {
                    textView.setTextColor(colorStateList);
                }
                textView.setVisibility(0);
                numValueOf = Integer.valueOf(textView.getCurrentTextColor());
            }
        } else {
            numValueOf = null;
        }
        h5.f4593A = 0;
        boolean z6 = this.f4643R;
        int i5 = this.f4645U;
        boolean z7 = this.f4644T;
        h5.f4595C = z6;
        h5.f4594B = i5;
        h5.f4596D = z7;
        TextView textView2 = (TextView) h5.s(android.R.id.title);
        boolean z8 = this.f4662s;
        if (textView2 != null) {
            CharSequence charSequence = this.f4654j;
            if (!TextUtils.isEmpty(charSequence)) {
                textView2.setText(charSequence);
                textView2.setVisibility(0);
                if (z5) {
                    textView2.setSingleLine(z4);
                }
                if (!z8 && h() && numValueOf != null) {
                    textView2.setTextColor(numValueOf.intValue());
                }
            } else if (TextUtils.isEmpty(charSequence) && (this instanceof PreferenceCategory)) {
                textView2.setVisibility(0);
                if (z5) {
                    textView2.setSingleLine(z4);
                }
            } else {
                textView2.setVisibility(8);
            }
        }
        ImageView imageView = (ImageView) h5.s(android.R.id.icon);
        boolean z9 = this.f4631D;
        if (imageView != null) {
            int i6 = this.f4656l;
            if (i6 != 0 || this.f4657m != null) {
                if (this.f4657m == null) {
                    this.f4657m = AbstractC0420a.A(this.f4648c, i6);
                }
                Drawable drawable = this.f4657m;
                if (drawable != null) {
                    imageView.setImageDrawable(drawable);
                }
            }
            if (this.f4657m != null) {
                imageView.setVisibility(0);
            } else {
                imageView.setVisibility(z9 ? 4 : 8);
            }
        }
        View viewS = h5.s(R.id.icon_frame);
        if (viewS == null) {
            viewS = h5.s(android.R.id.icon_frame);
        }
        if (viewS != null) {
            if (this.f4657m != null) {
                viewS.setVisibility(0);
            } else {
                viewS.setVisibility(z9 ? 4 : 8);
            }
        }
        if (this.f4632F) {
            x(view, h());
        } else {
            x(view, true);
        }
        view.setFocusable(z8);
        view.setClickable(z8);
        h5.f4600y = this.f4669z;
        h5.f4601z = this.f4628A;
        boolean z10 = this.E;
        if (z10 && this.f4640N == null) {
            this.f4640N = new p(this);
        }
        view.setOnCreateContextMenuListener(z10 ? this.f4640N : null);
        view.setLongClickable(z10);
        if (!z10 || z8) {
            return;
        }
        WeakHashMap weakHashMap = Q.f940a;
        view.setBackground(null);
    }

    public void o() {
    }

    public void p() {
        ArrayList arrayList;
        PreferenceScreen preferenceScreen;
        String str = this.f4664u;
        if (str != null) {
            F f = this.f4649d;
            Preference preferenceE = null;
            if (f != null && (preferenceScreen = f.f4587g) != null) {
                preferenceE = preferenceScreen.E(str);
            }
            if (preferenceE == null || (arrayList = preferenceE.f4637K) == null) {
                return;
            }
            arrayList.remove(this);
        }
    }

    public Object q(TypedArray typedArray, int i5) {
        return null;
    }

    public void r(Parcelable parcelable) {
        this.f4639M = true;
        if (parcelable != AbsSavedState.EMPTY_STATE && parcelable != null) {
            throw new IllegalArgumentException("Wrong state class -- expecting Preference State");
        }
    }

    public Parcelable s() {
        this.f4639M = true;
        return AbsSavedState.EMPTY_STATE;
    }

    public void t(Object obj) {
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        CharSequence charSequence = this.f4654j;
        if (!TextUtils.isEmpty(charSequence)) {
            sb.append(charSequence);
            sb.append(' ');
        }
        CharSequence charSequenceG = g();
        if (!TextUtils.isEmpty(charSequenceG)) {
            sb.append(charSequenceG);
            sb.append(' ');
        }
        if (sb.length() > 0) {
            sb.setLength(sb.length() - 1);
        }
        return sb.toString();
    }

    public void u(Object obj, boolean z4) {
        t(obj);
    }

    public void v(View view) {
        Intent intent;
        z zVar;
        if (h() && this.f4662s) {
            o();
            o oVar = this.f4652h;
            if (oVar == null || !oVar.a(this)) {
                F f = this.f4649d;
                if ((f == null || (zVar = f.f4588h) == null || !zVar.onPreferenceTreeClick(this)) && (intent = this.f4658o) != null) {
                    this.f4648c.startActivity(intent);
                }
            }
        }
    }

    public final void w(String str) {
        if (B() && !TextUtils.equals(str, f(null))) {
            SharedPreferences.Editor editorA = this.f4649d.a();
            editorA.putString(this.n, str);
            C(editorA);
        }
    }

    public void z(CharSequence charSequence) {
        if (this.f4641O != null) {
            throw new IllegalStateException("Preference already has a SummaryProvider set.");
        }
        if (TextUtils.equals(this.f4655k, charSequence)) {
            return;
        }
        this.f4655k = charSequence;
        j();
    }

    public Preference(Context context, AttributeSet attributeSet, int i5) {
        this(context, attributeSet, i5, 0);
    }

    public Preference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, A.b.b(context, R.attr.preferenceStyle, android.R.attr.preferenceStyle));
    }

    public Preference(Context context) {
        this(context, null);
    }
}
