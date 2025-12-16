package k;

import android.R;
import android.app.SearchableInfo;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.ForegroundColorSpan;
import android.text.style.TextAppearanceSpan;
import android.util.Log;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.widget.SearchView;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.WeakHashMap;
import p0.AbstractC0740b;
import z.AbstractC0933a;

/* loaded from: classes.dex */
public final class s1 extends P.b implements View.OnClickListener {

    /* renamed from: A, reason: collision with root package name */
    public static final /* synthetic */ int f7987A = 0;

    /* renamed from: j, reason: collision with root package name */
    public final int f7988j;

    /* renamed from: k, reason: collision with root package name */
    public final int f7989k;

    /* renamed from: l, reason: collision with root package name */
    public final LayoutInflater f7990l;

    /* renamed from: m, reason: collision with root package name */
    public final SearchView f7991m;
    public final SearchableInfo n;

    /* renamed from: o, reason: collision with root package name */
    public final Context f7992o;

    /* renamed from: p, reason: collision with root package name */
    public final WeakHashMap f7993p;

    /* renamed from: q, reason: collision with root package name */
    public final int f7994q;

    /* renamed from: r, reason: collision with root package name */
    public int f7995r;

    /* renamed from: s, reason: collision with root package name */
    public ColorStateList f7996s;

    /* renamed from: t, reason: collision with root package name */
    public int f7997t;

    /* renamed from: u, reason: collision with root package name */
    public int f7998u;

    /* renamed from: v, reason: collision with root package name */
    public int f7999v;

    /* renamed from: w, reason: collision with root package name */
    public int f8000w;

    /* renamed from: x, reason: collision with root package name */
    public int f8001x;

    /* renamed from: y, reason: collision with root package name */
    public int f8002y;

    /* renamed from: z, reason: collision with root package name */
    public final int f8003z;

    public s1(Context context, SearchView searchView, SearchableInfo searchableInfo, WeakHashMap weakHashMap) throws Resources.NotFoundException {
        int suggestionRowLayout = searchView.getSuggestionRowLayout();
        this.f2030d = true;
        this.f2031e = null;
        this.f2029c = false;
        this.f = -1;
        this.f2032g = new P.a(this);
        this.f2033h = new F0.h(1, this);
        this.f7989k = suggestionRowLayout;
        this.f7988j = suggestionRowLayout;
        this.f7990l = (LayoutInflater) context.getSystemService("layout_inflater");
        this.f7995r = 1;
        this.f7997t = -1;
        this.f7998u = -1;
        this.f7999v = -1;
        this.f8000w = -1;
        this.f8001x = -1;
        this.f8002y = -1;
        this.f8003z = -16736050;
        this.f7991m = searchView;
        this.n = searchableInfo;
        this.f7994q = searchView.getSuggestionCommitIconResId();
        this.f7992o = context;
        this.f7993p = weakHashMap;
        TypedValue typedValue = new TypedValue();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(typedValue.data, new int[]{R.attr.colorPrimaryDark});
        this.f8003z = typedArrayObtainStyledAttributes.getColor(0, -16736050);
        typedArrayObtainStyledAttributes.recycle();
    }

    public static String h(Cursor cursor, int i5) {
        if (i5 == -1) {
            return null;
        }
        try {
            return cursor.getString(i5);
        } catch (Exception e5) {
            Log.e("SuggestionsAdapter", "unexpected error retrieving valid column from cursor, did the remote process die?", e5);
            return null;
        }
    }

    public static void i(TextView textView, CharSequence charSequence) {
        textView.setText(charSequence);
        if (TextUtils.isEmpty(charSequence)) {
            textView.setVisibility(8);
        } else {
            textView.setVisibility(0);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0185  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0188  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x018c  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0222  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0224  */
    @Override // P.b
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a(View view, Cursor cursor) throws PackageManager.NameNotFoundException, NumberFormatException, IOException {
        int i5;
        Drawable drawableF;
        ActivityInfo activityInfo;
        int iconResource;
        boolean z4;
        boolean z5;
        String strH;
        int iIndexOf;
        int i6;
        SpannableStringBuilder spannableStringBuilder;
        int iIndexOf2;
        String str;
        r1 r1Var = (r1) view.getTag();
        String string = this.f7991m.getQuery().toString();
        int length = string.length();
        int i7 = this.f8002y;
        int i8 = i7 != -1 ? cursor.getInt(i7) : 0;
        TextView textView = r1Var.f7980a;
        int i9 = this.f8003z;
        if (textView != null) {
            String strH2 = h(cursor, this.f7997t);
            if (strH2 != null) {
                if (length == 0) {
                    iIndexOf2 = -1;
                } else {
                    char[] cArrE = AbstractC0740b.e(textView.getPaint(), strH2, string.toCharArray());
                    if (cArrE != null) {
                        String str2 = new String(cArrE);
                        iIndexOf2 = strH2.toLowerCase().indexOf(str2.toLowerCase());
                        length = str2.length();
                    } else {
                        iIndexOf2 = strH2.toLowerCase().indexOf(string.toLowerCase());
                    }
                }
                Log.d("SuggestionsAdapter", " queryIndex = " + iIndexOf2 + "\nqueryLength = " + length);
                if (iIndexOf2 == -1 || length <= 0) {
                    str = null;
                } else {
                    SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder(strH2);
                    spannableStringBuilder2.setSpan(new ForegroundColorSpan(i9), iIndexOf2, iIndexOf2 + length, 33);
                    str = spannableStringBuilder2;
                }
                Log.d("SuggestionsAdapter", " matchText1 = " + ((Object) str));
                if (str != null) {
                    strH2 = str;
                }
                i(textView, strH2);
            } else {
                i(textView, strH2);
            }
        }
        Context context = this.f7992o;
        TextView textView2 = r1Var.f7981b;
        if (textView2 != null) {
            String strH3 = h(cursor, this.f7999v);
            if (strH3 != null) {
                if (this.f7996s == null) {
                    TypedValue typedValue = new TypedValue();
                    context.getTheme().resolveAttribute(com.wssyncmldm.R.attr.textColorSearchUrl, typedValue, true);
                    this.f7996s = context.getResources().getColorStateList(typedValue.resourceId);
                }
                SpannableString spannableString = new SpannableString(strH3);
                z4 = false;
                spannableString.setSpan(new TextAppearanceSpan(null, 0, 0, this.f7996s, null), 0, strH3.length(), 33);
                z5 = true;
                strH = spannableString;
            } else {
                z4 = false;
                z5 = false;
                strH = h(cursor, this.f7998u);
            }
            if (TextUtils.isEmpty(strH)) {
                if (textView != null) {
                    textView.setSingleLine(z4);
                    textView.setMaxLines(2);
                }
            } else if (textView != null) {
                textView.setSingleLine(true);
                textView.setMaxLines(1);
            }
            if (z5) {
                i(textView2, strH);
            } else {
                String strH4 = h(cursor, this.f7998u);
                if (length == 0 || textView == null || strH4 == null) {
                    iIndexOf = -1;
                } else {
                    char[] cArrE2 = AbstractC0740b.e(textView.getPaint(), strH4, string.toCharArray());
                    if (cArrE2 != null) {
                        String str3 = new String(cArrE2);
                        int iIndexOf3 = strH4.toLowerCase().indexOf(str3.toLowerCase());
                        i6 = -1;
                        length = str3.length();
                        iIndexOf = iIndexOf3;
                        if (iIndexOf != i6 || length <= 0 || strH4 == null) {
                            spannableStringBuilder = null;
                        } else {
                            spannableStringBuilder = new SpannableStringBuilder(strH4);
                            spannableStringBuilder.setSpan(new ForegroundColorSpan(i9), iIndexOf, length + iIndexOf, 33);
                        }
                        if (spannableStringBuilder == null) {
                            i(textView2, spannableStringBuilder);
                        } else if (strH4 != null) {
                            i(textView2, strH4);
                        } else {
                            textView2.setVisibility(8);
                        }
                    } else {
                        iIndexOf = strH4.toLowerCase().indexOf(string.toLowerCase());
                    }
                }
                i6 = -1;
                if (iIndexOf != i6) {
                    spannableStringBuilder = null;
                    if (spannableStringBuilder == null) {
                    }
                }
            }
        }
        ImageView imageView = r1Var.f7982c;
        if (imageView != null) {
            int i10 = this.f8000w;
            if (i10 == -1) {
                drawableF = null;
            } else {
                drawableF = f(cursor.getString(i10));
                if (drawableF == null) {
                    ComponentName searchActivity = this.n.getSearchActivity();
                    String strFlattenToShortString = searchActivity.flattenToShortString();
                    WeakHashMap weakHashMap = this.f7993p;
                    if (weakHashMap.containsKey(strFlattenToShortString)) {
                        Drawable.ConstantState constantState = (Drawable.ConstantState) weakHashMap.get(strFlattenToShortString);
                        drawableF = constantState == null ? null : constantState.newDrawable(context.getResources());
                    } else {
                        PackageManager packageManager = context.getPackageManager();
                        try {
                            activityInfo = packageManager.getActivityInfo(searchActivity, 128);
                            iconResource = activityInfo.getIconResource();
                        } catch (PackageManager.NameNotFoundException e5) {
                            Log.w("SuggestionsAdapter", e5.toString());
                        }
                        if (iconResource != 0) {
                            Drawable drawable = packageManager.getDrawable(searchActivity.getPackageName(), iconResource, activityInfo.applicationInfo);
                            if (drawable == null) {
                                Log.w("SuggestionsAdapter", "Invalid icon resource " + iconResource + " for " + searchActivity.flattenToShortString());
                                drawableF = null;
                                weakHashMap.put(strFlattenToShortString, drawableF == null ? null : drawableF.getConstantState());
                            } else {
                                drawableF = drawable;
                                weakHashMap.put(strFlattenToShortString, drawableF == null ? null : drawableF.getConstantState());
                            }
                        } else {
                            drawableF = null;
                            weakHashMap.put(strFlattenToShortString, drawableF == null ? null : drawableF.getConstantState());
                        }
                    }
                    if (drawableF == null) {
                        drawableF = context.getPackageManager().getDefaultActivityIcon();
                    }
                }
            }
            imageView.setImageDrawable(drawableF);
            if (drawableF == null) {
                imageView.setVisibility(8);
            } else {
                imageView.setVisibility(0);
                drawableF.setVisible(false, false);
                drawableF.setVisible(true, false);
            }
        }
        ImageView imageView2 = r1Var.f7983d;
        if (imageView2 == null) {
            i5 = 1;
        } else {
            int i11 = this.f8001x;
            Drawable drawableF2 = i11 == -1 ? null : f(cursor.getString(i11));
            imageView2.setImageDrawable(drawableF2);
            if (drawableF2 == null) {
                imageView2.setVisibility(8);
                i5 = 1;
            } else {
                imageView2.setVisibility(0);
                drawableF2.setVisible(false, false);
                i5 = 1;
                drawableF2.setVisible(true, false);
            }
        }
        int i12 = this.f7995r;
        ImageView imageView3 = r1Var.f7984e;
        if (i12 != 2 && (i12 != i5 || (i8 & 1) == 0)) {
            imageView3.setVisibility(8);
            return;
        }
        imageView3.setVisibility(0);
        if (textView != null) {
            imageView3.setTag(textView.getText());
        }
        imageView3.setOnClickListener(this);
    }

    @Override // P.b
    public final void b(Cursor cursor) {
        try {
            super.b(cursor);
            if (cursor != null) {
                this.f7997t = cursor.getColumnIndex("suggest_text_1");
                this.f7998u = cursor.getColumnIndex("suggest_text_2");
                this.f7999v = cursor.getColumnIndex("suggest_text_2_url");
                this.f8000w = cursor.getColumnIndex("suggest_icon_1");
                this.f8001x = cursor.getColumnIndex("suggest_icon_2");
                this.f8002y = cursor.getColumnIndex("suggest_flags");
            }
        } catch (Exception e5) {
            Log.e("SuggestionsAdapter", "error changing cursor and caching columns", e5);
        }
    }

    @Override // P.b
    public final String c(Cursor cursor) {
        String strH;
        String strH2;
        if (cursor == null) {
            return null;
        }
        String strH3 = h(cursor, cursor.getColumnIndex("suggest_intent_query"));
        if (strH3 != null) {
            return strH3;
        }
        SearchableInfo searchableInfo = this.n;
        if (searchableInfo.shouldRewriteQueryFromData() && (strH2 = h(cursor, cursor.getColumnIndex("suggest_intent_data"))) != null) {
            return strH2;
        }
        if (!searchableInfo.shouldRewriteQueryFromText() || (strH = h(cursor, cursor.getColumnIndex("suggest_text_1"))) == null) {
            return null;
        }
        return strH;
    }

    @Override // P.b
    public final View d(ViewGroup viewGroup) {
        View viewInflate = this.f7990l.inflate(this.f7988j, viewGroup, false);
        viewInflate.setTag(new r1(viewInflate));
        ((ImageView) viewInflate.findViewById(com.wssyncmldm.R.id.edit_query)).setImageResource(this.f7994q);
        return viewInflate;
    }

    public final Drawable e(Uri uri) throws PackageManager.NameNotFoundException, NumberFormatException, FileNotFoundException {
        int identifier;
        String authority = uri.getAuthority();
        if (TextUtils.isEmpty(authority)) {
            throw new FileNotFoundException("No authority: " + uri);
        }
        try {
            Resources resourcesForApplication = this.f7992o.getPackageManager().getResourcesForApplication(authority);
            List<String> pathSegments = uri.getPathSegments();
            if (pathSegments == null) {
                throw new FileNotFoundException("No path: " + uri);
            }
            int size = pathSegments.size();
            if (size == 1) {
                try {
                    identifier = Integer.parseInt(pathSegments.get(0));
                } catch (NumberFormatException unused) {
                    throw new FileNotFoundException("Single path segment is not a resource ID: " + uri);
                }
            } else {
                if (size != 2) {
                    throw new FileNotFoundException("More than two path segments: " + uri);
                }
                identifier = resourcesForApplication.getIdentifier(pathSegments.get(1), pathSegments.get(0), authority);
            }
            if (identifier != 0) {
                return resourcesForApplication.getDrawable(identifier);
            }
            throw new FileNotFoundException("No resource found for: " + uri);
        } catch (PackageManager.NameNotFoundException unused2) {
            throw new FileNotFoundException("No package found for authority: " + uri);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:54:0x010c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Drawable f(String str) throws PackageManager.NameNotFoundException, NumberFormatException, IOException {
        WeakHashMap weakHashMap = this.f7993p;
        Context context = this.f7992o;
        Drawable drawableE = null;
        if (str != null && !str.isEmpty() && !"0".equals(str)) {
            try {
                int i5 = Integer.parseInt(str);
                String str2 = "android.resource://" + context.getPackageName() + "/" + i5;
                Drawable.ConstantState constantState = (Drawable.ConstantState) weakHashMap.get(str2);
                Drawable drawableNewDrawable = constantState == null ? null : constantState.newDrawable();
                if (drawableNewDrawable != null) {
                    return drawableNewDrawable;
                }
                Drawable drawableB = AbstractC0933a.b(context, i5);
                if (drawableB != null) {
                    weakHashMap.put(str2, drawableB.getConstantState());
                }
                return drawableB;
            } catch (Resources.NotFoundException unused) {
                Log.w("SuggestionsAdapter", "Icon resource not found: ".concat(str));
                return null;
            } catch (NumberFormatException unused2) {
                Drawable.ConstantState constantState2 = (Drawable.ConstantState) weakHashMap.get(str);
                Drawable drawableNewDrawable2 = constantState2 == null ? null : constantState2.newDrawable();
                if (drawableNewDrawable2 != null) {
                    return drawableNewDrawable2;
                }
                Uri uri = Uri.parse(str);
                try {
                    if ("android.resource".equals(uri.getScheme())) {
                        try {
                            drawableE = e(uri);
                        } catch (Resources.NotFoundException unused3) {
                            throw new FileNotFoundException("Resource does not exist: " + uri);
                        }
                    } else {
                        InputStream inputStreamOpenInputStream = context.getContentResolver().openInputStream(uri);
                        if (inputStreamOpenInputStream == null) {
                            throw new FileNotFoundException("Failed to open " + uri);
                        }
                        try {
                            Drawable drawableCreateFromStream = Drawable.createFromStream(inputStreamOpenInputStream, null);
                            try {
                                inputStreamOpenInputStream.close();
                            } catch (IOException e5) {
                                Log.e("SuggestionsAdapter", "Error closing icon stream for " + uri, e5);
                            }
                            drawableE = drawableCreateFromStream;
                        } finally {
                        }
                    }
                } catch (FileNotFoundException e6) {
                    Log.w("SuggestionsAdapter", "Icon not found: " + uri + ", " + e6.getMessage());
                    if (drawableE != null) {
                        weakHashMap.put(str, drawableE.getConstantState());
                    }
                    return drawableE;
                }
                if (drawableE != null) {
                }
            }
        }
        return drawableE;
    }

    public final Cursor g(SearchableInfo searchableInfo, String str) {
        String suggestAuthority;
        String[] strArr = null;
        if (searchableInfo == null || (suggestAuthority = searchableInfo.getSuggestAuthority()) == null) {
            return null;
        }
        Uri.Builder builderFragment = new Uri.Builder().scheme("content").authority(suggestAuthority).query("").fragment("");
        String suggestPath = searchableInfo.getSuggestPath();
        if (suggestPath != null) {
            builderFragment.appendEncodedPath(suggestPath);
        }
        builderFragment.appendPath("search_suggest_query");
        String suggestSelection = searchableInfo.getSuggestSelection();
        if (suggestSelection != null) {
            strArr = new String[]{str};
        } else {
            builderFragment.appendPath(str);
        }
        String[] strArr2 = strArr;
        builderFragment.appendQueryParameter("limit", String.valueOf(50));
        return this.f7992o.getContentResolver().query(builderFragment.build(), null, suggestSelection, strArr2, null);
    }

    @Override // P.b, android.widget.BaseAdapter, android.widget.SpinnerAdapter
    public final View getDropDownView(int i5, View view, ViewGroup viewGroup) {
        try {
            return super.getDropDownView(i5, view, viewGroup);
        } catch (RuntimeException e5) {
            Log.w("SuggestionsAdapter", "Search suggestions cursor threw exception.", e5);
            View viewInflate = this.f7990l.inflate(this.f7989k, viewGroup, false);
            if (viewInflate != null) {
                ((r1) viewInflate.getTag()).f7980a.setText(e5.toString());
            }
            return viewInflate;
        }
    }

    @Override // P.b, android.widget.Adapter
    public final View getView(int i5, View view, ViewGroup viewGroup) {
        try {
            return super.getView(i5, view, viewGroup);
        } catch (RuntimeException e5) {
            Log.w("SuggestionsAdapter", "Search suggestions cursor threw exception.", e5);
            View viewD = this.d(viewGroup);
            ((r1) viewD.getTag()).f7980a.setText(e5.toString());
            return viewD;
        }
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public final boolean hasStableIds() {
        return false;
    }

    @Override // android.widget.BaseAdapter
    public final void notifyDataSetChanged() {
        super.notifyDataSetChanged();
        Cursor cursor = this.f2031e;
        Bundle extras = cursor != null ? cursor.getExtras() : null;
        if (extras != null) {
            extras.getBoolean("in_progress");
        }
    }

    @Override // android.widget.BaseAdapter
    public final void notifyDataSetInvalidated() {
        super.notifyDataSetInvalidated();
        Cursor cursor = this.f2031e;
        Bundle extras = cursor != null ? cursor.getExtras() : null;
        if (extras != null) {
            extras.getBoolean("in_progress");
        }
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        Object tag = view.getTag();
        if (tag instanceof CharSequence) {
            this.f7991m.q((CharSequence) tag);
        }
    }
}
