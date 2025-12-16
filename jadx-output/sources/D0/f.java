package D0;

import A.r;
import C0.q;
import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.AnimatedVectorDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import java.io.IOException;
import java.util.ArrayList;
import o.C0713b;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes.dex */
public final class f extends g implements Animatable {

    /* renamed from: e, reason: collision with root package name */
    public final Context f392e;
    public q f = null;

    /* renamed from: g, reason: collision with root package name */
    public ArrayList f393g = null;

    /* renamed from: h, reason: collision with root package name */
    public final c f394h = new c(this);

    /* renamed from: d, reason: collision with root package name */
    public final d f391d = new d();

    public f(Context context) {
        this.f392e = context;
    }

    @Override // D0.g, android.graphics.drawable.Drawable
    public final void applyTheme(Resources.Theme theme) {
        Drawable drawable = this.f395c;
        if (drawable != null) {
            C.a.a(drawable, theme);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean canApplyTheme() {
        Drawable drawable = this.f395c;
        if (drawable != null) {
            return C.a.b(drawable);
        }
        return false;
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        Drawable drawable = this.f395c;
        if (drawable != null) {
            drawable.draw(canvas);
            return;
        }
        d dVar = this.f391d;
        dVar.f385a.draw(canvas);
        if (dVar.f386b.isStarted()) {
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final int getAlpha() {
        Drawable drawable = this.f395c;
        return drawable != null ? drawable.getAlpha() : this.f391d.f385a.getAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getChangingConfigurations() {
        Drawable drawable = this.f395c;
        if (drawable != null) {
            return drawable.getChangingConfigurations();
        }
        int changingConfigurations = super.getChangingConfigurations();
        this.f391d.getClass();
        return changingConfigurations | 0;
    }

    @Override // android.graphics.drawable.Drawable
    public final ColorFilter getColorFilter() {
        Drawable drawable = this.f395c;
        return drawable != null ? C.a.c(drawable) : this.f391d.f385a.getColorFilter();
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        if (this.f395c != null) {
            return new e(this.f395c.getConstantState());
        }
        return null;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        Drawable drawable = this.f395c;
        return drawable != null ? drawable.getIntrinsicHeight() : this.f391d.f385a.getIntrinsicHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        Drawable drawable = this.f395c;
        return drawable != null ? drawable.getIntrinsicWidth() : this.f391d.f385a.getIntrinsicWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        Drawable drawable = this.f395c;
        return drawable != null ? drawable.getOpacity() : this.f391d.f385a.getOpacity();
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x00ca, code lost:
    
        if (r3.f386b != null) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00cc, code lost:
    
        r3.f386b = new android.animation.AnimatorSet();
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00d3, code lost:
    
        r3.f386b.playTogether(r3.f387c);
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00da, code lost:
    
        return;
     */
    @Override // android.graphics.drawable.Drawable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, Resources.NotFoundException, IOException {
        Drawable drawable = this.f395c;
        if (drawable != null) {
            C.a.d(drawable, resources, xmlPullParser, attributeSet, theme);
            return;
        }
        int eventType = xmlPullParser.getEventType();
        int depth = xmlPullParser.getDepth() + 1;
        while (true) {
            d dVar = this.f391d;
            if (eventType == 1 || (xmlPullParser.getDepth() < depth && eventType == 3)) {
                break;
            }
            if (eventType == 2) {
                String name = xmlPullParser.getName();
                if ("animated-vector".equals(name)) {
                    TypedArray typedArrayG = A.b.g(resources, theme, attributeSet, a.f382e);
                    int resourceId = typedArrayG.getResourceId(0, 0);
                    if (resourceId != 0) {
                        p pVar = new p();
                        ThreadLocal threadLocal = r.f36a;
                        pVar.f395c = A.k.a(resources, resourceId, theme);
                        new o(pVar.f395c.getConstantState());
                        pVar.f450h = false;
                        pVar.setCallback(this.f394h);
                        p pVar2 = dVar.f385a;
                        if (pVar2 != null) {
                            pVar2.setCallback(null);
                        }
                        dVar.f385a = pVar;
                    }
                    typedArrayG.recycle();
                } else if ("target".equals(name)) {
                    TypedArray typedArrayObtainAttributes = resources.obtainAttributes(attributeSet, a.f);
                    String string = typedArrayObtainAttributes.getString(0);
                    int resourceId2 = typedArrayObtainAttributes.getResourceId(1, 0);
                    if (resourceId2 != 0) {
                        Context context = this.f392e;
                        if (context == null) {
                            typedArrayObtainAttributes.recycle();
                            throw new IllegalStateException("Context can't be null when inflating animators");
                        }
                        Animator animatorLoadAnimator = AnimatorInflater.loadAnimator(context, resourceId2);
                        animatorLoadAnimator.setTarget(dVar.f385a.f447d.f435b.f433o.getOrDefault(string, null));
                        if (dVar.f387c == null) {
                            dVar.f387c = new ArrayList();
                            dVar.f388d = new C0713b();
                        }
                        dVar.f387c.add(animatorLoadAnimator);
                        dVar.f388d.put(animatorLoadAnimator, string);
                    }
                    typedArrayObtainAttributes.recycle();
                } else {
                    continue;
                }
            }
            eventType = xmlPullParser.next();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isAutoMirrored() {
        Drawable drawable = this.f395c;
        return drawable != null ? drawable.isAutoMirrored() : this.f391d.f385a.isAutoMirrored();
    }

    @Override // android.graphics.drawable.Animatable
    public final boolean isRunning() {
        Drawable drawable = this.f395c;
        return drawable != null ? ((AnimatedVectorDrawable) drawable).isRunning() : this.f391d.f386b.isRunning();
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isStateful() {
        Drawable drawable = this.f395c;
        return drawable != null ? drawable.isStateful() : this.f391d.f385a.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable mutate() {
        Drawable drawable = this.f395c;
        if (drawable != null) {
            drawable.mutate();
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public final void onBoundsChange(Rect rect) {
        Drawable drawable = this.f395c;
        if (drawable != null) {
            drawable.setBounds(rect);
        } else {
            this.f391d.f385a.setBounds(rect);
        }
    }

    @Override // D0.g, android.graphics.drawable.Drawable
    public final boolean onLevelChange(int i5) {
        Drawable drawable = this.f395c;
        return drawable != null ? drawable.setLevel(i5) : this.f391d.f385a.setLevel(i5);
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean onStateChange(int[] iArr) {
        Drawable drawable = this.f395c;
        return drawable != null ? drawable.setState(iArr) : this.f391d.f385a.setState(iArr);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i5) {
        Drawable drawable = this.f395c;
        if (drawable != null) {
            drawable.setAlpha(i5);
        } else {
            this.f391d.f385a.setAlpha(i5);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAutoMirrored(boolean z4) {
        Drawable drawable = this.f395c;
        if (drawable != null) {
            drawable.setAutoMirrored(z4);
        } else {
            this.f391d.f385a.setAutoMirrored(z4);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        Drawable drawable = this.f395c;
        if (drawable != null) {
            drawable.setColorFilter(colorFilter);
        } else {
            this.f391d.f385a.setColorFilter(colorFilter);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTint(int i5) {
        Drawable drawable = this.f395c;
        if (drawable != null) {
            W1.a.h0(drawable, i5);
        } else {
            this.f391d.f385a.setTint(i5);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTintList(ColorStateList colorStateList) {
        Drawable drawable = this.f395c;
        if (drawable != null) {
            W1.a.i0(drawable, colorStateList);
        } else {
            this.f391d.f385a.setTintList(colorStateList);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTintMode(PorterDuff.Mode mode) {
        Drawable drawable = this.f395c;
        if (drawable != null) {
            W1.a.j0(drawable, mode);
        } else {
            this.f391d.f385a.setTintMode(mode);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean setVisible(boolean z4, boolean z5) {
        Drawable drawable = this.f395c;
        if (drawable != null) {
            return drawable.setVisible(z4, z5);
        }
        this.f391d.f385a.setVisible(z4, z5);
        return super.setVisible(z4, z5);
    }

    @Override // android.graphics.drawable.Animatable
    public final void start() {
        Drawable drawable = this.f395c;
        if (drawable != null) {
            ((AnimatedVectorDrawable) drawable).start();
            return;
        }
        d dVar = this.f391d;
        if (dVar.f386b.isStarted()) {
            return;
        }
        dVar.f386b.start();
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Animatable
    public final void stop() {
        Drawable drawable = this.f395c;
        if (drawable != null) {
            ((AnimatedVectorDrawable) drawable).stop();
        } else {
            this.f391d.f386b.end();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet) throws XmlPullParserException, Resources.NotFoundException, IOException {
        inflate(resources, xmlPullParser, attributeSet, null);
    }
}
