package D0;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;

/* loaded from: classes.dex */
public final class n extends Drawable.ConstantState {

    /* renamed from: a, reason: collision with root package name */
    public int f434a;

    /* renamed from: b, reason: collision with root package name */
    public m f435b;

    /* renamed from: c, reason: collision with root package name */
    public ColorStateList f436c;

    /* renamed from: d, reason: collision with root package name */
    public PorterDuff.Mode f437d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f438e;
    public Bitmap f;

    /* renamed from: g, reason: collision with root package name */
    public ColorStateList f439g;

    /* renamed from: h, reason: collision with root package name */
    public PorterDuff.Mode f440h;

    /* renamed from: i, reason: collision with root package name */
    public int f441i;

    /* renamed from: j, reason: collision with root package name */
    public boolean f442j;

    /* renamed from: k, reason: collision with root package name */
    public boolean f443k;

    /* renamed from: l, reason: collision with root package name */
    public Paint f444l;

    @Override // android.graphics.drawable.Drawable.ConstantState
    public int getChangingConfigurations() {
        return this.f434a;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final Drawable newDrawable() {
        return new p(this);
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final Drawable newDrawable(Resources resources) {
        return new p(this);
    }
}
