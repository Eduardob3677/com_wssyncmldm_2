package k;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import c.AbstractC0206a;
import com.wssyncmldm.R;
import z.AbstractC0933a;

/* renamed from: k.h, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0593h extends C0632x {

    /* renamed from: g, reason: collision with root package name */
    public Configuration f7857g;

    /* renamed from: h, reason: collision with root package name */
    public final /* synthetic */ C0602k f7858h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0593h(C0602k c0602k, Context context) throws Resources.NotFoundException {
        super(context, null, R.attr.actionOverflowButtonStyle);
        this.f7858h = c0602k;
        setClickable(true);
        setFocusable(true);
        setLongClickable(true);
        String string = getResources().getString(R.string.sesl_action_menu_overflow_description);
        c0602k.getClass();
        J1.a(this, string);
        this.f7857g = c0602k.f7880d.getResources().getConfiguration();
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) throws Resources.NotFoundException {
        super.onConfigurationChanged(configuration);
        Configuration configuration2 = this.f7857g;
        int iDiff = configuration2 != null ? configuration2.diff(configuration) : 4096;
        this.f7857g = configuration;
        Context context = getContext();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(null, AbstractC0206a.f5159C, R.attr.actionOverflowButtonStyle, 0);
        setMinimumHeight(typedArrayObtainStyledAttributes.getDimensionPixelSize(4, 0));
        typedArrayObtainStyledAttributes.recycle();
        context.getResources().getString(R.string.sesl_action_menu_overflow_description);
        this.f7858h.getClass();
        if ((iDiff & 4096) != 0) {
            TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(null, AbstractC0206a.f, R.attr.actionOverflowButtonStyle, 0);
            Drawable drawableB = AbstractC0933a.b(context, typedArrayObtainStyledAttributes2.getResourceId(0, -1));
            if (drawableB != null) {
                setImageDrawable(drawableB);
            }
            typedArrayObtainStyledAttributes2.recycle();
        }
    }

    @Override // android.widget.ImageView, android.view.View
    public final void onMeasure(int i5, int i6) {
        super.onMeasure(i5, i6);
    }

    @Override // android.view.View
    public final boolean performClick() {
        if (super.performClick()) {
            return true;
        }
        playSoundEffect(0);
        if (this.f7858h.l()) {
            isHovered();
        }
        return true;
    }

    @Override // android.view.View
    public final boolean performLongClick() {
        return super.performLongClick();
    }

    @Override // android.widget.ImageView
    public final boolean setFrame(int i5, int i6, int i7, int i8) {
        boolean frame = super.setFrame(i5, i6, i7, i8);
        Drawable drawable = getDrawable();
        Drawable background = getBackground();
        if (drawable != null && background != null) {
            int width = getWidth();
            int height = getHeight();
            int paddingLeft = (getPaddingLeft() - getPaddingRight()) / 2;
            C.a.f(background, paddingLeft, 0, width + paddingLeft, height);
        }
        return frame;
    }
}
