package k;

import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import com.wssyncmldm.R;

/* renamed from: k.e1, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0586e1 extends View.AccessibilityDelegate {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ C0589f1 f7848a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ C0583d1 f7849b;

    public C0586e1(C0589f1 c0589f1, C0583d1 c0583d1) {
        this.f7848a = c0589f1;
        this.f7849b = c0583d1;
    }

    @Override // android.view.View.AccessibilityDelegate
    public final void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfo accessibilityNodeInfo) {
        d3.i.e("host", view);
        d3.i.e("info", accessibilityNodeInfo);
        super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
        C0589f1 c0589f1 = this.f7848a;
        accessibilityNodeInfo.setContentDescription(c0589f1.getResources().getString(R.string.sesl_appbar_suggest_pagination, Integer.valueOf(c0589f1.f7851c.indexOf(this.f7849b) + 1), Integer.valueOf(c0589f1.getSize())));
    }
}
