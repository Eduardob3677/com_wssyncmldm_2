package androidx.appcompat.widget;

import J.I;
import J.N;
import J.Q;
import J.r0;
import android.app.PendingIntent;
import android.app.SearchableInfo;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.Cursor;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.Editable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputMethodManager;
import android.widget.ImageView;
import android.widget.TextView;
import c.AbstractC0206a;
import com.idm.core.wbxml.IDMWbxmlConstants;
import com.samsung.android.knox.container.KnoxContainerManager;
import com.samsung.android.knox.net.nap.NetworkAnalyticsConstants;
import com.wssyncmldm.R;
import i.InterfaceC0475c;
import i3.x;
import java.lang.reflect.Method;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.WeakHashMap;
import k.AbstractC0619q0;
import k.C0565K;
import k.C0614o;
import k.C0621r0;
import k.H0;
import k.I0;
import k.J0;
import k.J1;
import k.K0;
import k.L0;
import k.M0;
import k.N0;
import k.O0;
import k.P0;
import k.Q0;
import k.R0;
import k.s1;
import o3.AbstractC0729f;

/* loaded from: classes.dex */
public class SearchView extends AbstractC0619q0 implements InterfaceC0475c {
    public static final /* synthetic */ int o0 = 0;

    /* renamed from: A, reason: collision with root package name */
    public R0 f3371A;

    /* renamed from: B, reason: collision with root package name */
    public final Rect f3372B;

    /* renamed from: C, reason: collision with root package name */
    public final Rect f3373C;

    /* renamed from: D, reason: collision with root package name */
    public final int[] f3374D;
    public final int[] E;

    /* renamed from: F, reason: collision with root package name */
    public final ImageView f3375F;

    /* renamed from: G, reason: collision with root package name */
    public final Drawable f3376G;

    /* renamed from: H, reason: collision with root package name */
    public final int f3377H;

    /* renamed from: I, reason: collision with root package name */
    public final int f3378I;

    /* renamed from: J, reason: collision with root package name */
    public final Intent f3379J;

    /* renamed from: K, reason: collision with root package name */
    public final Intent f3380K;

    /* renamed from: L, reason: collision with root package name */
    public final CharSequence f3381L;

    /* renamed from: M, reason: collision with root package name */
    public View.OnFocusChangeListener f3382M;

    /* renamed from: N, reason: collision with root package name */
    public View.OnClickListener f3383N;

    /* renamed from: O, reason: collision with root package name */
    public boolean f3384O;

    /* renamed from: Q, reason: collision with root package name */
    public boolean f3385Q;

    /* renamed from: R, reason: collision with root package name */
    public P.b f3386R;

    /* renamed from: T, reason: collision with root package name */
    public boolean f3387T;

    /* renamed from: U, reason: collision with root package name */
    public CharSequence f3388U;

    /* renamed from: V, reason: collision with root package name */
    public boolean f3389V;

    /* renamed from: W, reason: collision with root package name */
    public boolean f3390W;

    /* renamed from: a0, reason: collision with root package name */
    public int f3391a0;

    /* renamed from: b0, reason: collision with root package name */
    public boolean f3392b0;

    /* renamed from: c0, reason: collision with root package name */
    public String f3393c0;

    /* renamed from: d0, reason: collision with root package name */
    public CharSequence f3394d0;

    /* renamed from: e0, reason: collision with root package name */
    public boolean f3395e0;

    /* renamed from: f0, reason: collision with root package name */
    public int f3396f0;
    public final Typeface g0;

    /* renamed from: h0, reason: collision with root package name */
    public SearchableInfo f3397h0;

    /* renamed from: i0, reason: collision with root package name */
    public Bundle f3398i0;

    /* renamed from: j0, reason: collision with root package name */
    public final InputMethodManager f3399j0;
    public final Context k0;
    public final I0 l0;
    public final I0 m0;
    public final WeakHashMap n0;

    /* renamed from: r, reason: collision with root package name */
    public final SearchAutoComplete f3400r;

    /* renamed from: s, reason: collision with root package name */
    public final View f3401s;

    /* renamed from: t, reason: collision with root package name */
    public final View f3402t;

    /* renamed from: u, reason: collision with root package name */
    public final View f3403u;

    /* renamed from: v, reason: collision with root package name */
    public final ImageView f3404v;

    /* renamed from: w, reason: collision with root package name */
    public final ImageView f3405w;

    /* renamed from: x, reason: collision with root package name */
    public final ImageView f3406x;

    /* renamed from: y, reason: collision with root package name */
    public final ImageView f3407y;

    /* renamed from: z, reason: collision with root package name */
    public final View f3408z;

    public static class SearchAutoComplete extends C0614o {
        public int f;

        /* renamed from: g, reason: collision with root package name */
        public SearchView f3409g;

        /* renamed from: h, reason: collision with root package name */
        public boolean f3410h;

        /* renamed from: i, reason: collision with root package name */
        public final d f3411i;

        /* renamed from: j, reason: collision with root package name */
        public boolean f3412j;

        public SearchAutoComplete(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f3411i = new d(this);
            this.f = getThreshold();
        }

        private int getSearchViewTextMinWidthDp() {
            Configuration configuration = getResources().getConfiguration();
            int i5 = configuration.screenWidthDp;
            int i6 = configuration.screenHeightDp;
            if (i5 >= 960 && i6 >= 720 && configuration.orientation == 2) {
                return 256;
            }
            if (i5 >= 600) {
                return IDMWbxmlConstants.WBXML_EXT_0;
            }
            if (i5 < 640 || i6 < 480) {
                return 160;
            }
            return IDMWbxmlConstants.WBXML_EXT_0;
        }

        public final void a() {
            c.b(this, 1);
            if (getFilter() == null || !enoughToFilter()) {
                return;
            }
            showDropDown();
        }

        @Override // android.widget.AutoCompleteTextView
        public final boolean enoughToFilter() {
            return this.f <= 0 || super.enoughToFilter();
        }

        @Override // k.C0614o, android.widget.TextView, android.view.View
        public final InputConnection onCreateInputConnection(EditorInfo editorInfo) {
            InputConnection inputConnectionOnCreateInputConnection = super.onCreateInputConnection(editorInfo);
            if (this.f3410h) {
                d dVar = this.f3411i;
                removeCallbacks(dVar);
                post(dVar);
            }
            return inputConnectionOnCreateInputConnection;
        }

        @Override // android.view.View
        public final void onFinishInflate() {
            super.onFinishInflate();
            setMinWidth((int) TypedValue.applyDimension(1, getSearchViewTextMinWidthDp(), getResources().getDisplayMetrics()));
        }

        @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
        public final void onFocusChanged(boolean z4, int i5, Rect rect) {
            super.onFocusChanged(z4, i5, rect);
            SearchView searchView = this.f3409g;
            searchView.z(searchView.f3385Q);
            searchView.post(searchView.l0);
            SearchAutoComplete searchAutoComplete = searchView.f3400r;
            if (searchAutoComplete.hasFocus()) {
                c.a(searchAutoComplete);
            }
        }

        @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
        public final boolean onKeyPreIme(int i5, KeyEvent keyEvent) {
            return super.onKeyPreIme(i5, keyEvent);
        }

        @Override // android.widget.TextView
        public final boolean onPrivateIMECommand(String str, Bundle bundle) {
            return super.onPrivateIMECommand(str, bundle);
        }

        @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
        public final void onWindowFocusChanged(boolean z4) {
            super.onWindowFocusChanged(z4);
            if (z4 && this.f3409g.hasFocus() && getVisibility() == 0) {
                this.f3410h = true;
                Context context = getContext();
                int i5 = SearchView.o0;
                if (context.getResources().getConfiguration().orientation == 2) {
                    a();
                }
            }
        }

        @Override // android.widget.AutoCompleteTextView
        public final void performCompletion() {
        }

        @Override // android.widget.AutoCompleteTextView
        public final void replaceText(CharSequence charSequence) {
        }

        public void setImeVisibility(boolean z4) {
            InputMethodManager inputMethodManager = (InputMethodManager) getContext().getSystemService("input_method");
            d dVar = this.f3411i;
            if (!z4) {
                this.f3410h = false;
                removeCallbacks(dVar);
                inputMethodManager.hideSoftInputFromWindow(getWindowToken(), 0);
            } else {
                if (!inputMethodManager.isActive(this)) {
                    this.f3410h = true;
                    return;
                }
                this.f3410h = false;
                removeCallbacks(dVar);
                inputMethodManager.showSoftInput(this, 0);
            }
        }

        public void setNotCallShowSoftInput(boolean z4) {
            this.f3412j = z4;
        }

        public void setSearchView(SearchView searchView) {
            this.f3409g = searchView;
        }

        @Override // android.widget.AutoCompleteTextView
        public void setThreshold(int i5) {
            super.setThreshold(i5);
            this.f = i5;
        }
    }

    public SearchView(Context context) {
        this(context, null);
    }

    private int getPreferredHeight() {
        return getContext().getResources().getDimensionPixelSize(R.dimen.sesl_search_view_preferred_height);
    }

    private int getPreferredWidth() {
        return getContext().getResources().getDimensionPixelSize(R.dimen.sesl_search_view_preferred_width);
    }

    private void setQuery(CharSequence charSequence) {
        SearchAutoComplete searchAutoComplete = this.f3400r;
        searchAutoComplete.setText(charSequence);
        searchAutoComplete.setSelection(TextUtils.isEmpty(charSequence) ? 0 : charSequence.length());
    }

    public final void A(boolean z4) {
        int i5 = 8;
        if (this.f3392b0 && !this.f3385Q && z4) {
            this.f3405w.setVisibility(8);
            i5 = 0;
        }
        Drawable drawable = this.f3376G;
        ImageView imageView = this.f3407y;
        imageView.setImageDrawable(drawable);
        imageView.setVisibility(i5);
    }

    @Override // i.InterfaceC0475c
    public final void c() {
        if (this.f3395e0) {
            return;
        }
        this.f3395e0 = true;
        SearchAutoComplete searchAutoComplete = this.f3400r;
        int imeOptions = searchAutoComplete.getImeOptions();
        this.f3396f0 = imeOptions;
        searchAutoComplete.setImeOptions(imeOptions | 33554432);
        searchAutoComplete.setText("");
        setIconified(false);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void clearFocus() {
        this.f3390W = true;
        super.clearFocus();
        SearchAutoComplete searchAutoComplete = this.f3400r;
        searchAutoComplete.clearFocus();
        searchAutoComplete.setImeVisibility(false);
        this.f3390W = false;
    }

    @Override // i.InterfaceC0475c
    public final void e() {
        SearchAutoComplete searchAutoComplete = this.f3400r;
        searchAutoComplete.setText("");
        searchAutoComplete.setSelection(searchAutoComplete.length());
        this.f3394d0 = "";
        clearFocus();
        z(true);
        searchAutoComplete.setImeOptions(this.f3396f0);
        this.f3395e0 = false;
    }

    public int getImeOptions() {
        return this.f3400r.getImeOptions();
    }

    public int getInputType() {
        return this.f3400r.getInputType();
    }

    public int getMaxWidth() {
        return this.f3391a0;
    }

    public CharSequence getQuery() {
        return this.f3400r.getText();
    }

    public CharSequence getQueryHint() {
        CharSequence charSequence = this.f3388U;
        if (charSequence != null) {
            return charSequence;
        }
        SearchableInfo searchableInfo = this.f3397h0;
        return (searchableInfo == null || searchableInfo.getHintId() == 0) ? this.f3381L : getContext().getText(this.f3397h0.getHintId());
    }

    public int getSuggestionCommitIconResId() {
        return this.f3378I;
    }

    public int getSuggestionRowLayout() {
        return this.f3377H;
    }

    public P.b getSuggestionsAdapter() {
        return this.f3386R;
    }

    public final Intent l(String str, Uri uri, String str2, String str3) {
        Intent intent = new Intent(str);
        intent.addFlags(268435456);
        if (uri != null) {
            intent.setData(uri);
        }
        intent.putExtra("user_query", this.f3394d0);
        if (str3 != null) {
            intent.putExtra("query", str3);
        }
        if (str2 != null) {
            intent.putExtra("intent_extra_data_key", str2);
        }
        Bundle bundle = this.f3398i0;
        if (bundle != null) {
            intent.putExtra("app_data", bundle);
        }
        intent.setComponent(this.f3397h0.getSearchActivity());
        return intent;
    }

    public final Intent m(Intent intent, SearchableInfo searchableInfo) {
        ComponentName searchActivity = searchableInfo.getSearchActivity();
        Intent intent2 = new Intent("android.intent.action.SEARCH");
        intent2.setComponent(searchActivity);
        PendingIntent activity = PendingIntent.getActivity(getContext(), 0, intent2, 1107296256);
        Bundle bundle = new Bundle();
        Bundle bundle2 = this.f3398i0;
        if (bundle2 != null) {
            bundle.putParcelable("app_data", bundle2);
        }
        Intent intent3 = new Intent(intent);
        Resources resources = getResources();
        String string = searchableInfo.getVoiceLanguageModeId() != 0 ? resources.getString(searchableInfo.getVoiceLanguageModeId()) : "free_form";
        String string2 = searchableInfo.getVoicePromptTextId() != 0 ? resources.getString(searchableInfo.getVoicePromptTextId()) : null;
        String string3 = searchableInfo.getVoiceLanguageId() != 0 ? resources.getString(searchableInfo.getVoiceLanguageId()) : null;
        int voiceMaxResults = searchableInfo.getVoiceMaxResults() != 0 ? searchableInfo.getVoiceMaxResults() : 1;
        intent3.putExtra("android.speech.extra.LANGUAGE_MODEL", string);
        intent3.putExtra("android.speech.extra.PROMPT", string2);
        intent3.putExtra("android.speech.extra.LANGUAGE", string3);
        intent3.putExtra("android.speech.extra.MAX_RESULTS", voiceMaxResults);
        intent3.putExtra("calling_package", searchActivity != null ? searchActivity.flattenToShortString() : null);
        intent3.putExtra("android.speech.extra.RESULTS_PENDINGINTENT", activity);
        intent3.putExtra("android.speech.extra.RESULTS_PENDINGINTENT_BUNDLE", bundle);
        return intent3;
    }

    public final void n() {
        SearchAutoComplete searchAutoComplete = this.f3400r;
        if (TextUtils.isEmpty(searchAutoComplete.getText())) {
            if (this.f3384O) {
                clearFocus();
                z(true);
                return;
            }
            return;
        }
        searchAutoComplete.setText("");
        searchAutoComplete.requestFocus();
        searchAutoComplete.announceForAccessibility(getResources().getString(R.string.sesl_searchview_description_clear_field));
        if (AbstractC0729f.m(this.f3399j0) != 0) {
            searchAutoComplete.setImeVisibility(false);
        } else {
            searchAutoComplete.setImeVisibility(true);
        }
    }

    public final void o(int i5) {
        int position;
        String strH;
        Cursor cursor = this.f3386R.f2031e;
        if (cursor != null && cursor.moveToPosition(i5)) {
            Intent intentL = null;
            try {
                int i6 = s1.f7987A;
                String strH2 = s1.h(cursor, cursor.getColumnIndex("suggest_intent_action"));
                if (strH2 == null) {
                    strH2 = this.f3397h0.getSuggestIntentAction();
                }
                if (strH2 == null) {
                    strH2 = "android.intent.action.SEARCH";
                }
                String strH3 = s1.h(cursor, cursor.getColumnIndex("suggest_intent_data"));
                if (strH3 == null) {
                    strH3 = this.f3397h0.getSuggestIntentData();
                }
                if (strH3 != null && (strH = s1.h(cursor, cursor.getColumnIndex("suggest_intent_data_id"))) != null) {
                    strH3 = strH3 + "/" + Uri.encode(strH);
                }
                intentL = l(strH2, strH3 == null ? null : Uri.parse(strH3), s1.h(cursor, cursor.getColumnIndex("suggest_intent_extra_data")), s1.h(cursor, cursor.getColumnIndex("suggest_intent_query")));
            } catch (RuntimeException e5) {
                try {
                    position = cursor.getPosition();
                } catch (RuntimeException unused) {
                    position = -1;
                }
                Log.w("SearchView", "Search suggestions cursor at row " + position + " returned exception.", e5);
            }
            if (intentL != null) {
                try {
                    getContext().startActivity(intentL);
                } catch (RuntimeException e6) {
                    Log.e("SearchView", "Failed launch activity: " + intentL, e6);
                }
            }
        }
        SearchAutoComplete searchAutoComplete = this.f3400r;
        searchAutoComplete.setImeVisibility(false);
        searchAutoComplete.dismissDropDown();
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) throws Resources.NotFoundException {
        super.onConfigurationChanged(configuration);
        t();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        removeCallbacks(this.l0);
        post(this.m0);
        super.onDetachedFromWindow();
    }

    @Override // k.AbstractC0619q0, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z4, int i5, int i6, int i7, int i8) {
        super.onLayout(z4, i5, i6, i7, i8);
        if (z4) {
            int[] iArr = this.f3374D;
            SearchAutoComplete searchAutoComplete = this.f3400r;
            searchAutoComplete.getLocationInWindow(iArr);
            int[] iArr2 = this.E;
            getLocationInWindow(iArr2);
            int i9 = iArr[1] - iArr2[1];
            int i10 = iArr[0] - iArr2[0];
            int width = searchAutoComplete.getWidth() + i10;
            int height = searchAutoComplete.getHeight() + i9;
            Rect rect = this.f3372B;
            rect.set(i10, i9, width, height);
            int i11 = rect.left;
            int i12 = rect.right;
            int i13 = i8 - i6;
            Rect rect2 = this.f3373C;
            rect2.set(i11, 0, i12, i13);
            R0 r0 = this.f3371A;
            if (r0 == null) {
                R0 r02 = new R0(rect2, rect, searchAutoComplete);
                this.f3371A = r02;
                setTouchDelegate(r02);
            } else {
                r0.f7728b.set(rect2);
                Rect rect3 = r0.f7730d;
                rect3.set(rect2);
                int i14 = -r0.f7731e;
                rect3.inset(i14, i14);
                r0.f7729c.set(rect);
            }
        }
    }

    @Override // k.AbstractC0619q0, android.view.View
    public final void onMeasure(int i5, int i6) {
        int i7;
        if (this.f3385Q) {
            super.onMeasure(i5, i6);
            return;
        }
        int mode = View.MeasureSpec.getMode(i5);
        int size = View.MeasureSpec.getSize(i5);
        if (mode == Integer.MIN_VALUE) {
            int i8 = this.f3391a0;
            if (i8 > 0) {
                size = Math.min(i8, size);
            }
        } else if (mode == 0) {
            size = this.f3391a0;
            if (size <= 0) {
                size = getPreferredWidth();
            }
        } else if (mode == 1073741824 && (i7 = this.f3391a0) > 0) {
            size = Math.min(i7, size);
        }
        int mode2 = View.MeasureSpec.getMode(i6);
        int size2 = View.MeasureSpec.getSize(i6);
        if (mode2 == Integer.MIN_VALUE) {
            size2 = Math.min(getPreferredHeight(), size2);
        } else if (mode2 == 0) {
            size2 = getPreferredHeight();
        }
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec(size2, 1073741824));
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof P0)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        P0 p02 = (P0) parcelable;
        super.onRestoreInstanceState(p02.f2270c);
        z(p02.f7725e);
        requestLayout();
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        P0 p02 = new P0(super.onSaveInstanceState());
        p02.f7725e = this.f3385Q;
        return p02;
    }

    @Override // android.view.View
    public final void onWindowFocusChanged(boolean z4) {
        super.onWindowFocusChanged(z4);
        if (AbstractC0729f.m(this.f3399j0) != 0) {
            return;
        }
        post(this.l0);
    }

    public final void p(int i5) {
        Editable text = this.f3400r.getText();
        Cursor cursor = this.f3386R.f2031e;
        if (cursor == null) {
            return;
        }
        if (!cursor.moveToPosition(i5)) {
            setQuery(text);
            return;
        }
        String strC = this.f3386R.c(cursor);
        if (strC != null) {
            setQuery(strC);
        } else {
            setQuery(text);
        }
    }

    @Override // android.view.View
    public final boolean performLongClick() {
        return super.performLongClick();
    }

    public final void q(CharSequence charSequence) {
        setQuery(charSequence);
    }

    public final void r() {
        z(false);
        SearchAutoComplete searchAutoComplete = this.f3400r;
        searchAutoComplete.requestFocus();
        if (AbstractC0729f.m(this.f3399j0) != 0) {
            searchAutoComplete.setImeVisibility(false);
        } else {
            searchAutoComplete.setImeVisibility(true);
        }
        View.OnClickListener onClickListener = this.f3383N;
        if (onClickListener != null) {
            onClickListener.onClick(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean requestFocus(int i5, Rect rect) {
        if (this.f3390W || !isFocusable()) {
            return false;
        }
        if (this.f3385Q) {
            return super.requestFocus(i5, rect);
        }
        boolean zRequestFocus = this.f3400r.requestFocus(i5, rect);
        if (zRequestFocus) {
            z(false);
        }
        return zRequestFocus;
    }

    public final void s() {
        SearchAutoComplete searchAutoComplete = this.f3400r;
        Editable text = searchAutoComplete.getText();
        if (text == null || TextUtils.getTrimmedLength(text) <= 0) {
            return;
        }
        if (this.f3397h0 != null) {
            getContext().startActivity(l("android.intent.action.SEARCH", null, null, text.toString()));
        }
        searchAutoComplete.setImeVisibility(false);
        searchAutoComplete.dismissDropDown();
    }

    public void setAppSearchData(Bundle bundle) {
        this.f3398i0 = bundle;
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        View view = this.f3402t;
        if (view != null) {
            WeakHashMap weakHashMap = Q.f940a;
            view.setBackground(drawable);
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i5) throws Resources.NotFoundException {
        View view = this.f3402t;
        if (view != null) {
            Drawable drawable = getContext().getResources().getDrawable(i5);
            WeakHashMap weakHashMap = Q.f940a;
            view.setBackground(drawable);
        }
    }

    @Override // android.view.View
    public void setElevation(float f) {
        View view = this.f3402t;
        if (view != null) {
            WeakHashMap weakHashMap = Q.f940a;
            I.s(view, f);
        }
    }

    public void setIconified(boolean z4) {
        if (z4) {
            n();
        } else {
            r();
        }
    }

    public void setIconifiedByDefault(boolean z4) {
        if (this.f3384O == z4) {
            return;
        }
        this.f3384O = z4;
        z(z4);
        w();
    }

    public void setImeOptions(int i5) {
        this.f3400r.setImeOptions(i5);
    }

    public void setInputType(int i5) {
        this.f3400r.setInputType(i5);
    }

    public void setMaxWidth(int i5) {
        this.f3391a0 = i5;
        requestLayout();
    }

    public void setOnCloseListener(M0 m0) {
    }

    public void setOnQueryTextFocusChangeListener(View.OnFocusChangeListener onFocusChangeListener) {
        this.f3382M = onFocusChangeListener;
    }

    public void setOnQueryTextListener(N0 n0) {
    }

    public void setOnSearchClickListener(View.OnClickListener onClickListener) {
        this.f3383N = onClickListener;
    }

    public void setOnSuggestionListener(O0 o02) {
    }

    public void setQueryHint(CharSequence charSequence) {
        this.f3388U = charSequence;
        w();
    }

    public void setQueryRefinementEnabled(boolean z4) {
        this.f3389V = z4;
        P.b bVar = this.f3386R;
        if (bVar instanceof s1) {
            ((s1) bVar).f7995r = z4 ? 2 : 1;
        }
    }

    public void setSearchableInfo(SearchableInfo searchableInfo) {
        this.f3397h0 = searchableInfo;
        Intent intent = null;
        if (searchableInfo != null) {
            int suggestThreshold = searchableInfo.getSuggestThreshold();
            SearchAutoComplete searchAutoComplete = this.f3400r;
            searchAutoComplete.setThreshold(suggestThreshold);
            searchAutoComplete.setImeOptions(this.f3397h0.getImeOptions());
            int inputType = this.f3397h0.getInputType();
            if ((inputType & 15) == 1) {
                inputType &= KnoxContainerManager.TZ_COMMON_COMMUNICATION_ERROR;
                if (this.f3397h0.getSuggestAuthority() != null) {
                    inputType |= NetworkAnalyticsConstants.DataPoints.FLAG_DNS_UID;
                }
            }
            searchAutoComplete.setInputType(inputType);
            P.b bVar = this.f3386R;
            if (bVar != null) {
                bVar.b(null);
            }
            if (this.f3397h0.getSuggestAuthority() != null) {
                s1 s1Var = new s1(getContext(), this, this.f3397h0, this.n0);
                this.f3386R = s1Var;
                searchAutoComplete.setAdapter(s1Var);
                ((s1) this.f3386R).f7995r = this.f3389V ? 2 : 1;
            }
            w();
        }
        SearchableInfo searchableInfo2 = this.f3397h0;
        boolean z4 = false;
        if (searchableInfo2 != null && searchableInfo2.getVoiceSearchEnabled()) {
            if (this.f3397h0.getVoiceSearchLaunchWebSearch()) {
                intent = this.f3379J;
            } else if (this.f3397h0.getVoiceSearchLaunchRecognizer()) {
                intent = this.f3380K;
            }
            if (intent != null) {
                z4 = getContext().getPackageManager().resolveActivity(intent, NetworkAnalyticsConstants.DataPoints.FLAG_DNS_UID) != null;
            }
        }
        this.f3392b0 = z4;
        z(this.f3385Q);
    }

    public void setSubmitButtonEnabled(boolean z4) {
        this.f3387T = z4;
        z(this.f3385Q);
    }

    public void setSuggestionsAdapter(P.b bVar) {
        this.f3386R = bVar;
        this.f3400r.setAdapter(bVar);
    }

    public final void t() throws Resources.NotFoundException {
        float f = getContext().getResources().getConfiguration().fontScale;
        int dimensionPixelSize = getContext().getResources().getDimensionPixelSize(R.dimen.sesl_search_view_search_text_size);
        SearchAutoComplete searchAutoComplete = this.f3400r;
        if (f > 1.3f) {
            searchAutoComplete.setTextSize(0, (dimensionPixelSize / f) * 1.3f);
        } else {
            searchAutoComplete.setTextSize(0, dimensionPixelSize);
        }
    }

    public final void u() {
        boolean z4 = !TextUtils.isEmpty(this.f3400r.getText());
        int i5 = z4 ? 0 : 8;
        ImageView imageView = this.f3406x;
        imageView.setVisibility(i5);
        Drawable drawable = imageView.getDrawable();
        if (drawable != null) {
            drawable.setState(z4 ? ViewGroup.ENABLED_STATE_SET : ViewGroup.EMPTY_STATE_SET);
        }
    }

    public final void v() {
        int[] iArr = this.f3400r.hasFocus() ? ViewGroup.FOCUSED_STATE_SET : ViewGroup.EMPTY_STATE_SET;
        Drawable background = this.f3402t.getBackground();
        if (background != null) {
            background.setState(iArr);
        }
        Drawable background2 = this.f3403u.getBackground();
        if (background2 != null) {
            background2.setState(iArr);
        }
        invalidate();
    }

    public final void w() {
        CharSequence queryHint = getQueryHint();
        if (queryHint == null) {
            queryHint = "";
        }
        this.f3400r.setHint(queryHint);
    }

    public final void x() {
        this.f3403u.setVisibility(((this.f3387T || this.f3392b0) && !this.f3385Q && (this.f3405w.getVisibility() == 0 || this.f3407y.getVisibility() == 0)) ? 0 : 8);
    }

    public final void y(boolean z4) {
        boolean z5 = this.f3387T;
        this.f3405w.setVisibility((!z5 || !(z5 || this.f3392b0) || this.f3385Q || !hasFocus() || (!z4 && this.f3392b0)) ? 8 : 0);
    }

    public final void z(boolean z4) {
        this.f3385Q = z4;
        int i5 = z4 ? 0 : 8;
        boolean zIsEmpty = TextUtils.isEmpty(this.f3400r.getText());
        this.f3404v.setVisibility(i5);
        y(!zIsEmpty);
        this.f3401s.setVisibility(z4 ? 8 : 0);
        this.f3375F.setVisibility(8);
        u();
        A(zIsEmpty);
        x();
    }

    public SearchView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.searchViewStyle);
    }

    public SearchView(Context context, AttributeSet attributeSet, int i5) throws Resources.NotFoundException {
        int[] iArr;
        super(context, attributeSet, i5);
        this.f3372B = new Rect();
        this.f3373C = new Rect();
        this.f3374D = new int[2];
        this.E = new int[2];
        this.l0 = new I0(this, 0);
        int i6 = 1;
        this.m0 = new I0(this, i6);
        this.n0 = new WeakHashMap();
        a aVar = new a(this);
        b bVar = new b(this);
        L0 l0 = new L0(this);
        C0565K c0565k = new C0565K(i6, this);
        C0621r0 c0621r0 = new C0621r0(1, this);
        H0 h02 = new H0(this);
        int[] iArr2 = AbstractC0206a.f5180v;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr2, i5, 0);
        r0 r0Var = new r0(context, typedArrayObtainStyledAttributes);
        WeakHashMap weakHashMap = Q.f940a;
        N.d(this, context, iArr2, attributeSet, typedArrayObtainStyledAttributes, i5, 0);
        LayoutInflater.from(context).inflate(typedArrayObtainStyledAttributes.getResourceId(19, R.layout.sesl_search_view), (ViewGroup) this, true);
        this.k0 = context;
        SearchAutoComplete searchAutoComplete = (SearchAutoComplete) findViewById(R.id.search_src_text);
        this.f3400r = searchAutoComplete;
        searchAutoComplete.setSearchView(this);
        this.f3401s = findViewById(R.id.search_edit_frame);
        View viewFindViewById = findViewById(R.id.search_plate);
        this.f3402t = viewFindViewById;
        View viewFindViewById2 = findViewById(R.id.submit_area);
        this.f3403u = viewFindViewById2;
        ImageView imageView = (ImageView) findViewById(R.id.search_button);
        this.f3404v = imageView;
        ImageView imageView2 = (ImageView) findViewById(R.id.search_go_btn);
        this.f3405w = imageView2;
        ImageView imageView3 = (ImageView) findViewById(R.id.search_close_btn);
        this.f3406x = imageView3;
        ImageView imageView4 = (ImageView) findViewById(R.id.search_voice_btn);
        this.f3407y = imageView4;
        ImageView imageView5 = (ImageView) findViewById(R.id.search_more_btn);
        ImageView imageView6 = (ImageView) findViewById(R.id.search_back_btn);
        ImageView imageView7 = (ImageView) findViewById(R.id.search_mag_icon);
        this.f3375F = imageView7;
        viewFindViewById.setBackground(r0Var.g(20));
        viewFindViewById2.setBackground(r0Var.g(25));
        typedArrayObtainStyledAttributes.getResourceId(23, 0);
        imageView.setImageDrawable(r0Var.g(23));
        imageView2.setImageDrawable(r0Var.g(15));
        imageView3.setImageDrawable(r0Var.g(12));
        imageView7.setImageDrawable(r0Var.g(23));
        Drawable drawableG = r0Var.g(28);
        this.f3376G = drawableG;
        r0Var.g(29);
        imageView4.setImageDrawable(drawableG);
        r0Var.g(22);
        J1.a(imageView, imageView.getContentDescription());
        J1.a(imageView3, imageView3.getContentDescription());
        J1.a(imageView2, imageView2.getContentDescription());
        J1.a(imageView4, imageView4.getContentDescription());
        J1.a(imageView5, imageView5.getContentDescription());
        J1.a(imageView6, imageView6.getContentDescription());
        this.f3377H = typedArrayObtainStyledAttributes.getResourceId(26, R.layout.sesl_search_dropdown_item_icons_2line);
        this.f3378I = typedArrayObtainStyledAttributes.getResourceId(13, 0);
        imageView.setOnClickListener(aVar);
        imageView3.setOnClickListener(aVar);
        imageView2.setOnClickListener(aVar);
        imageView4.setOnClickListener(aVar);
        searchAutoComplete.setOnClickListener(aVar);
        searchAutoComplete.addTextChangedListener(h02);
        searchAutoComplete.setOnEditorActionListener(l0);
        searchAutoComplete.setOnItemClickListener(c0565k);
        searchAutoComplete.setOnItemSelectedListener(c0621r0);
        searchAutoComplete.setOnKeyListener(bVar);
        searchAutoComplete.setOnFocusChangeListener(new J0(this));
        setIconifiedByDefault(typedArrayObtainStyledAttributes.getBoolean(18, true));
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(2, -1);
        if (dimensionPixelSize != -1) {
            setMaxWidth(dimensionPixelSize);
        }
        this.f3381L = typedArrayObtainStyledAttributes.getText(14);
        this.f3388U = typedArrayObtainStyledAttributes.getText(21);
        int i7 = typedArrayObtainStyledAttributes.getInt(6, -1);
        if (i7 != -1) {
            setImeOptions(i7);
        }
        int i8 = typedArrayObtainStyledAttributes.getInt(5, -1);
        if (i8 != -1) {
            setInputType(i8);
        }
        setFocusable(typedArrayObtainStyledAttributes.getBoolean(1, true));
        imageView7.setImageDrawable(r0Var.g(23));
        imageView.setImageDrawable(r0Var.g(23));
        Resources resources = context.getResources();
        if (Build.VERSION.SDK_INT >= 34) {
            this.g0 = Typeface.create(Typeface.create("sec", 0), 600, false);
        } else {
            this.g0 = Typeface.create(resources.getString(R.string.sesl_font_family_regular), 1);
        }
        searchAutoComplete.setTypeface(this.g0);
        char c2 = viewFindViewById.getBackground() != null ? (char) 1 : (char) 0;
        if (W1.a.S(context)) {
            iArr = new int[]{1, 2};
        } else {
            iArr = new int[]{3, 4};
        }
        int i9 = iArr[c2 ^ 1];
        List listAsList = Arrays.asList(imageView2, imageView3, imageView4, imageView5, imageView);
        if (i9 != 0) {
            Log.d("SearchView", "[SeslSearchViewStyle] apply ".concat(Q0.g(i9)));
            searchAutoComplete.setTextColor(resources.getColor(Q0.e(i9)));
            searchAutoComplete.setHintTextColor(resources.getColor(Q0.c(i9)));
            Iterator it = listAsList.iterator();
            while (it.hasNext()) {
                ((ImageView) it.next()).setColorFilter(resources.getColor(Q0.d(i9)));
            }
            r0Var.n();
            Intent intent = new Intent("android.speech.action.WEB_SEARCH");
            this.f3379J = intent;
            intent.addFlags(268435456);
            intent.putExtra("android.speech.extra.LANGUAGE_MODEL", "web_search");
            Intent intent2 = new Intent("android.speech.action.RECOGNIZE_SPEECH");
            this.f3380K = intent2;
            intent2.addFlags(268435456);
            new Intent("samsung.honeyboard.honeyvoice.action.RECOGNIZE_SPEECH").addFlags(268435456);
            View viewFindViewById3 = findViewById(this.f3400r.getDropDownAnchor());
            this.f3408z = viewFindViewById3;
            if (viewFindViewById3 != null) {
                viewFindViewById3.addOnLayoutChangeListener(new K0(this));
            }
            z(this.f3384O);
            w();
            this.f3399j0 = (InputMethodManager) getContext().getSystemService("input_method");
            Method methodJ = x.J(TextView.class, "hidden_SEM_AUTOFILL_ID", new Class[0]);
            Object objJ0 = methodJ != null ? x.j0(null, methodJ, new Object[0]) : null;
            int iIntValue = objJ0 instanceof Integer ? ((Integer) objJ0).intValue() : 0;
            if (iIntValue != 0) {
                SearchAutoComplete searchAutoComplete2 = this.f3400r;
                Method methodJ2 = x.J(TextView.class, "hidden_semSetActionModeMenuItemEnabled", Integer.TYPE, Boolean.TYPE);
                if (methodJ2 != null) {
                    x.j0(searchAutoComplete2, methodJ2, Integer.valueOf(iIntValue), Boolean.FALSE);
                }
            }
            t();
            return;
        }
        throw null;
    }
}
