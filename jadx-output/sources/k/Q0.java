package k;

import com.wssyncmldm.R;

/* loaded from: classes.dex */
public abstract /* synthetic */ class Q0 {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int[] f7726a = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};

    public static /* synthetic */ int a(int i5, int i6) {
        if (i5 == 0 || i6 == 0) {
            throw null;
        }
        return i5 - i6;
    }

    public static /* synthetic */ boolean b(int i5, int i6) {
        if (i5 != 0) {
            return i5 == i6;
        }
        throw null;
    }

    public static /* synthetic */ int c(int i5) {
        if (i5 == 1) {
            return R.color.sesl_search_view_background_hint_text_color_light;
        }
        if (i5 == 2) {
            return R.color.sesl_search_view_hint_text_color;
        }
        if (i5 == 3) {
            return R.color.sesl_search_view_background_hint_text_color_dark;
        }
        if (i5 == 4) {
            return R.color.sesl_search_view_hint_text_color_dark;
        }
        throw null;
    }

    public static /* synthetic */ int d(int i5) {
        if (i5 == 1) {
            return R.color.sesl_search_view_background_icon_color_light;
        }
        if (i5 == 2) {
            return R.color.sesl_search_view_icon_color;
        }
        if (i5 == 3) {
            return R.color.sesl_search_view_background_icon_color_dark;
        }
        if (i5 == 4) {
            return R.color.sesl_search_view_icon_color_dark;
        }
        throw null;
    }

    public static /* synthetic */ int e(int i5) {
        if (i5 == 1) {
            return R.color.sesl_search_view_background_text_color_light;
        }
        if (i5 == 2) {
            return R.color.sesl_search_view_text_color;
        }
        if (i5 == 3) {
            return R.color.sesl_search_view_background_text_color_dark;
        }
        if (i5 == 4) {
            return R.color.sesl_search_view_text_color_dark;
        }
        throw null;
    }

    public static /* synthetic */ int f(int i5) {
        if (i5 != 0) {
            return i5 - 1;
        }
        throw null;
    }

    public static /* synthetic */ String g(int i5) {
        return i5 != 1 ? i5 != 2 ? i5 != 3 ? i5 != 4 ? "null" : "DARK_WITHOUT_BACKGROUND" : "DARK_WITH_BACKGROUND" : "LIGHT_WITHOUT_BACKGROUND" : "LIGHT_WITH_BACKGROUND";
    }

    public static /* synthetic */ int[] h(int i5) {
        int[] iArr = new int[i5];
        System.arraycopy(f7726a, 0, iArr, 0, i5);
        return iArr;
    }
}
