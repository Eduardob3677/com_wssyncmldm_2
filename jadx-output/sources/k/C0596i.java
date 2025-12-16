package k;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.wssyncmldm.R;

/* renamed from: k.i, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0596i extends FrameLayout implements InterfaceC0605l {

    /* renamed from: c, reason: collision with root package name */
    public final ViewGroup f7861c;

    /* renamed from: d, reason: collision with root package name */
    public final TextView f7862d;

    /* renamed from: e, reason: collision with root package name */
    public final View f7863e;
    public CharSequence f;

    /* renamed from: g, reason: collision with root package name */
    public String f7864g;

    /* renamed from: h, reason: collision with root package name */
    public final /* synthetic */ C0602k f7865h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0596i(C0602k c0602k, Context context) throws Resources.NotFoundException {
        super(context);
        this.f7865h = c0602k;
        View c0599j = c0602k.f7900z ? new C0599j(c0602k, context) : new C0593h(c0602k, context);
        this.f7863e = c0599j;
        addView(c0599j, new FrameLayout.LayoutParams(-2, -2));
        Resources resources = getResources();
        if (c0599j instanceof C0593h) {
            this.f = c0599j.getContentDescription();
            this.f7864g = ((Object) this.f) + " , " + resources.getString(R.string.sesl_action_menu_overflow_badge_description);
        }
        if (TextUtils.isEmpty(this.f)) {
            CharSequence string = resources.getString(R.string.sesl_action_menu_overflow_description);
            this.f = string;
            c0599j.setContentDescription(string);
        }
        ViewGroup viewGroup = (ViewGroup) ((LayoutInflater) context.getSystemService("layout_inflater")).inflate(R.layout.sesl_action_menu_item_badge, (ViewGroup) this, false);
        this.f7861c = viewGroup;
        this.f7862d = (TextView) viewGroup.getChildAt(0);
        addView(viewGroup);
    }

    @Override // k.InterfaceC0605l
    public final boolean a() {
        return false;
    }

    @Override // k.InterfaceC0605l
    public final boolean b() {
        return false;
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) throws Resources.NotFoundException {
        float dimension;
        super.onConfigurationChanged(configuration);
        Resources resources = getResources();
        float dimension2 = (int) resources.getDimension(R.dimen.sesl_menu_item_badge_text_size);
        TextView textView = this.f7862d;
        textView.setTextSize(0, dimension2);
        ViewGroup viewGroup = this.f7861c;
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) viewGroup.getLayoutParams();
        CharSequence text = textView.getText();
        if (text == null || text.toString() == null) {
            float dimension3 = resources.getDimension(R.dimen.sesl_badge_default_width);
            if (text != null) {
                dimension = resources.getDimension(R.dimen.sesl_badge_additional_width) * text.length();
            } else {
                dimension = 0.0f;
            }
            marginLayoutParams.width = (int) (dimension3 + dimension);
            marginLayoutParams.height = (int) (resources.getDimension(R.dimen.sesl_badge_additional_width) + resources.getDimension(R.dimen.sesl_badge_default_width));
            marginLayoutParams.topMargin = (int) getResources().getDimension(R.dimen.sesl_menu_item_number_badge_top_margin);
            marginLayoutParams.setMarginEnd((int) resources.getDimension(R.dimen.sesl_menu_item_number_badge_end_margin));
        } else {
            marginLayoutParams.width = (int) resources.getDimension(R.dimen.sesl_menu_item_badge_size);
            marginLayoutParams.height = (int) resources.getDimension(R.dimen.sesl_menu_item_badge_size);
        }
        viewGroup.setLayoutParams(marginLayoutParams);
        View view = this.f7863e;
        boolean z4 = view instanceof C0593h;
        if (z4) {
            this.f = getContentDescription();
            this.f7864g = ((Object) this.f) + " , " + resources.getString(R.string.sesl_action_menu_overflow_badge_description);
        }
        if (TextUtils.isEmpty(this.f)) {
            this.f = resources.getString(R.string.sesl_action_menu_overflow_description);
            this.f7864g = ((Object) this.f) + " , " + resources.getString(R.string.sesl_action_menu_overflow_badge_description);
        }
        if (viewGroup.getVisibility() == 0) {
            if (z4) {
                view.setContentDescription(this.f7864g);
            }
        } else if (z4) {
            view.setContentDescription(this.f);
        }
    }
}
