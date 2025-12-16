package D0;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import k.C0601j1;
import k.U0;

/* loaded from: classes.dex */
public final class e extends Drawable.ConstantState {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f389a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f390b;

    public /* synthetic */ e(Drawable drawable, int i5) {
        this.f389a = i5;
        this.f390b = drawable;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public boolean canApplyTheme() {
        switch (this.f389a) {
            case 0:
                return ((Drawable.ConstantState) this.f390b).canApplyTheme();
            default:
                return super.canApplyTheme();
        }
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final int getChangingConfigurations() {
        switch (this.f389a) {
            case 0:
                return ((Drawable.ConstantState) this.f390b).getChangingConfigurations();
            case 1:
                return 0;
            default:
                return 0;
        }
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public Drawable newDrawable(Resources resources) {
        switch (this.f389a) {
            case 0:
                f fVar = new f(null);
                Drawable drawableNewDrawable = ((Drawable.ConstantState) this.f390b).newDrawable(resources);
                fVar.f395c = drawableNewDrawable;
                drawableNewDrawable.setCallback(fVar.f394h);
                return fVar;
            default:
                return super.newDrawable(resources);
        }
    }

    public e(Drawable.ConstantState constantState) {
        this.f389a = 0;
        this.f390b = constantState;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public Drawable newDrawable(Resources resources, Resources.Theme theme) {
        switch (this.f389a) {
            case 0:
                f fVar = new f(null);
                Drawable drawableNewDrawable = ((Drawable.ConstantState) this.f390b).newDrawable(resources, theme);
                fVar.f395c = drawableNewDrawable;
                drawableNewDrawable.setCallback(fVar.f394h);
                return fVar;
            default:
                return super.newDrawable(resources, theme);
        }
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final Drawable newDrawable() {
        switch (this.f389a) {
            case 0:
                f fVar = new f(null);
                Drawable drawableNewDrawable = ((Drawable.ConstantState) this.f390b).newDrawable();
                fVar.f395c = drawableNewDrawable;
                drawableNewDrawable.setCallback(fVar.f394h);
                return fVar;
            case 1:
                return (U0) this.f390b;
            default:
                return (C0601j1) this.f390b;
        }
    }
}
