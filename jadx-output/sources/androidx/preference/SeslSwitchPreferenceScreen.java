package androidx.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.widget.TextView;
import com.wssyncmldm.R;
import p0.AbstractC0739a;

/* loaded from: classes.dex */
public class SeslSwitchPreferenceScreen extends SwitchPreferenceCompat {

    /* renamed from: i0, reason: collision with root package name */
    public final K f4686i0;

    public SeslSwitchPreferenceScreen(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.switchPreferenceStyle);
        this.f4686i0 = new K(this, 1);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, I.f, R.attr.switchPreferenceStyle, 0);
        String string = typedArrayObtainStyledAttributes.getString(13);
        if (string == null || string.equals("")) {
            Log.w("SwitchPreferenceScreen", "SwitchPreferenceScreen should getfragment property. Fragment property does not exsit in SwitchPreferenceScreen");
        }
        this.f4633G = R.layout.sesl_preference_switch_screen;
        this.f4634H = R.layout.sesl_switch_preference_screen_widget_divider;
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override // androidx.preference.Preference
    public final void b() {
    }

    @Override // androidx.preference.SwitchPreferenceCompat, androidx.preference.Preference
    public final void n(H h5) {
        super.n(h5);
        h5.f7406a.setOnKeyListener(this.f4686i0);
        TextView textView = (TextView) h5.s(android.R.id.title);
        View viewS = h5.s(android.R.id.switch_widget);
        View viewS2 = h5.s(R.id.switch_widget);
        if (textView == null || viewS == null || viewS2 == null) {
            return;
        }
        AbstractC0739a.p(o4.a.m(), viewS);
        viewS.setContentDescription(textView.getText().toString());
        viewS2.setContentDescription(textView.getText().toString());
    }

    @Override // androidx.preference.TwoStatePreference, androidx.preference.Preference
    public final void o() {
    }
}
