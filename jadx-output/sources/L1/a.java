package L1;

import O.b;
import android.R;
import android.content.res.ColorStateList;
import k.C0556B;

/* loaded from: classes.dex */
public final class a extends C0556B {

    /* renamed from: i, reason: collision with root package name */
    public static final int[][] f1342i = {new int[]{R.attr.state_enabled, R.attr.state_checked}, new int[]{R.attr.state_enabled, -16842912}, new int[]{-16842910, R.attr.state_checked}, new int[]{-16842910, -16842912}};

    /* renamed from: g, reason: collision with root package name */
    public ColorStateList f1343g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f1344h;

    private ColorStateList getMaterialThemeColorsTintList() {
        if (this.f1343g == null) {
            int iY = W1.a.y(com.wssyncmldm.R.attr.colorControlActivated, this);
            int iY2 = W1.a.y(com.wssyncmldm.R.attr.colorOnSurface, this);
            int iY3 = W1.a.y(com.wssyncmldm.R.attr.colorSurface, this);
            this.f1343g = new ColorStateList(f1342i, new int[]{W1.a.W(iY3, 1.0f, iY), W1.a.W(iY3, 0.54f, iY2), W1.a.W(iY3, 0.38f, iY2), W1.a.W(iY3, 0.38f, iY2)});
        }
        return this.f1343g;
    }

    @Override // android.widget.TextView, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f1344h && b.a(this) == null) {
            setUseMaterialThemeColors(true);
        }
    }

    public void setUseMaterialThemeColors(boolean z4) {
        this.f1344h = z4;
        if (z4) {
            b.c(this, getMaterialThemeColorsTintList());
        } else {
            b.c(this, null);
        }
    }
}
