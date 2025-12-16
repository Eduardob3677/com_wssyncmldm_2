package k;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import androidx.appcompat.widget.AppCompatTextView;
import c.AbstractC0206a;
import com.wssyncmldm.R;
import p.AbstractC0735a;

/* renamed from: k.j, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0599j extends AppCompatTextView {

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ C0602k f7867j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0599j(C0602k c0602k, Context context) {
        super(context, null, R.attr.actionOverflowButtonStyle);
        this.f7867j = c0602k;
        setClickable(true);
        setFocusable(true);
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(null, AbstractC0206a.f5169j, 0, 0);
        setTextAppearance(typedArrayObtainStyledAttributes.getResourceId(26, 0));
        typedArrayObtainStyledAttributes.recycle();
        setText(getResources().getString(R.string.sesl_more_item_label));
        boolean zS = W1.a.S(context);
        c0602k.getClass();
        if (zS) {
            setBackgroundResource(R.drawable.sesl_action_bar_item_text_background_light);
        } else {
            setBackgroundResource(R.drawable.sesl_action_bar_item_text_background_dark);
        }
        AbstractC0735a.q(this, true);
    }

    @Override // android.widget.TextView, android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
    }

    @Override // androidx.appcompat.widget.AppCompatTextView, android.widget.TextView, android.view.View
    public final void onMeasure(int i5, int i6) {
        super.onMeasure(i5, i6);
    }

    @Override // android.view.View
    public final boolean performClick() {
        if (super.performClick()) {
            return true;
        }
        playSoundEffect(0);
        this.f7867j.l();
        return true;
    }
}
