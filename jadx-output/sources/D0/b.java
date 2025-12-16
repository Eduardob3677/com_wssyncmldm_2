package D0;

import android.content.res.ColorStateList;
import android.graphics.drawable.Animatable2;
import android.graphics.drawable.Drawable;

/* loaded from: classes.dex */
public final class b extends Animatable2.AnimationCallback {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ E1.a f383a;

    public b(E1.a aVar) {
        this.f383a = aVar;
    }

    @Override // android.graphics.drawable.Animatable2.AnimationCallback
    public final void onAnimationEnd(Drawable drawable) {
        ColorStateList colorStateList = this.f383a.f519b.f534q;
        if (colorStateList != null) {
            C.a.h(drawable, colorStateList);
        }
    }

    @Override // android.graphics.drawable.Animatable2.AnimationCallback
    public final void onAnimationStart(Drawable drawable) {
        E1.c cVar = this.f383a.f519b;
        ColorStateList colorStateList = cVar.f534q;
        if (colorStateList != null) {
            C.a.g(drawable, colorStateList.getColorForState(cVar.f538u, colorStateList.getDefaultColor()));
        }
    }
}
