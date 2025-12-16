package S1;

import J.Q;
import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.TextView;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public final class t extends ArrayAdapter {

    /* renamed from: c, reason: collision with root package name */
    public ColorStateList f2557c;

    /* renamed from: d, reason: collision with root package name */
    public ColorStateList f2558d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ u f2559e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public t(u uVar, Context context, int i5, String[] strArr) {
        super(context, i5, strArr);
        this.f2559e = uVar;
        a();
    }

    public final void a() {
        ColorStateList colorStateList;
        u uVar = this.f2559e;
        ColorStateList colorStateList2 = uVar.f2566m;
        ColorStateList colorStateList3 = null;
        if (colorStateList2 != null) {
            int[] iArr = {R.attr.state_pressed};
            colorStateList = new ColorStateList(new int[][]{iArr, new int[0]}, new int[]{colorStateList2.getColorForState(iArr, 0), 0});
        } else {
            colorStateList = null;
        }
        this.f2558d = colorStateList;
        if (uVar.f2565l != 0 && uVar.f2566m != null) {
            int[] iArr2 = {R.attr.state_hovered, -16842919};
            int[] iArr3 = {R.attr.state_selected, -16842919};
            colorStateList3 = new ColorStateList(new int[][]{iArr3, iArr2, new int[0]}, new int[]{W1.a.X(uVar.f2565l, uVar.f2566m.getColorForState(iArr3, 0)), W1.a.X(uVar.f2565l, uVar.f2566m.getColorForState(iArr2, 0)), uVar.f2565l});
        }
        this.f2557c = colorStateList3;
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public final View getView(int i5, View view, ViewGroup viewGroup) {
        View view2 = super.getView(i5, view, viewGroup);
        if (view2 instanceof TextView) {
            TextView textView = (TextView) view2;
            u uVar = this.f2559e;
            Drawable rippleDrawable = null;
            if (uVar.getText().toString().contentEquals(textView.getText()) && uVar.f2565l != 0) {
                ColorDrawable colorDrawable = new ColorDrawable(uVar.f2565l);
                if (this.f2558d != null) {
                    C.a.h(colorDrawable, this.f2557c);
                    rippleDrawable = new RippleDrawable(this.f2558d, colorDrawable, null);
                } else {
                    rippleDrawable = colorDrawable;
                }
            }
            WeakHashMap weakHashMap = Q.f940a;
            textView.setBackground(rippleDrawable);
        }
        return view2;
    }
}
