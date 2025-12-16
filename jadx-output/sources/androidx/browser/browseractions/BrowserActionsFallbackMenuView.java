package androidx.browser.browseractions;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import com.wssyncmldm.R;

/* loaded from: classes.dex */
public class BrowserActionsFallbackMenuView extends LinearLayout {

    /* renamed from: c, reason: collision with root package name */
    public final int f3567c;

    /* renamed from: d, reason: collision with root package name */
    public final int f3568d;

    public BrowserActionsFallbackMenuView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f3567c = getResources().getDimensionPixelOffset(R.dimen.browser_actions_context_menu_min_padding);
        this.f3568d = getResources().getDimensionPixelOffset(R.dimen.browser_actions_context_menu_max_width);
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onMeasure(int i5, int i6) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(Math.min(getResources().getDisplayMetrics().widthPixels - (this.f3567c * 2), this.f3568d), 1073741824), i6);
    }
}
