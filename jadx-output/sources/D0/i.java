package D0;

import android.content.res.ColorStateList;
import android.graphics.Paint;

/* loaded from: classes.dex */
public final class i extends l {

    /* renamed from: e, reason: collision with root package name */
    public A.d f396e;
    public float f;

    /* renamed from: g, reason: collision with root package name */
    public A.d f397g;

    /* renamed from: h, reason: collision with root package name */
    public float f398h;

    /* renamed from: i, reason: collision with root package name */
    public float f399i;

    /* renamed from: j, reason: collision with root package name */
    public float f400j;

    /* renamed from: k, reason: collision with root package name */
    public float f401k;

    /* renamed from: l, reason: collision with root package name */
    public float f402l;

    /* renamed from: m, reason: collision with root package name */
    public Paint.Cap f403m;
    public Paint.Join n;

    /* renamed from: o, reason: collision with root package name */
    public float f404o;

    @Override // D0.k
    public final boolean a() {
        return this.f397g.g() || this.f396e.g();
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x001e  */
    @Override // D0.k
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean b(int[] iArr) {
        boolean z4;
        A.d dVar = this.f397g;
        boolean z5 = false;
        if (dVar.g()) {
            ColorStateList colorStateList = (ColorStateList) dVar.f12c;
            int colorForState = colorStateList.getColorForState(iArr, colorStateList.getDefaultColor());
            if (colorForState != dVar.f10a) {
                dVar.f10a = colorForState;
                z4 = true;
            } else {
                z4 = false;
            }
        }
        A.d dVar2 = this.f396e;
        if (dVar2.g()) {
            ColorStateList colorStateList2 = (ColorStateList) dVar2.f12c;
            int colorForState2 = colorStateList2.getColorForState(iArr, colorStateList2.getDefaultColor());
            if (colorForState2 != dVar2.f10a) {
                dVar2.f10a = colorForState2;
                z5 = true;
            }
        }
        return z4 | z5;
    }

    public float getFillAlpha() {
        return this.f399i;
    }

    public int getFillColor() {
        return this.f397g.f10a;
    }

    public float getStrokeAlpha() {
        return this.f398h;
    }

    public int getStrokeColor() {
        return this.f396e.f10a;
    }

    public float getStrokeWidth() {
        return this.f;
    }

    public float getTrimPathEnd() {
        return this.f401k;
    }

    public float getTrimPathOffset() {
        return this.f402l;
    }

    public float getTrimPathStart() {
        return this.f400j;
    }

    public void setFillAlpha(float f) {
        this.f399i = f;
    }

    public void setFillColor(int i5) {
        this.f397g.f10a = i5;
    }

    public void setStrokeAlpha(float f) {
        this.f398h = f;
    }

    public void setStrokeColor(int i5) {
        this.f396e.f10a = i5;
    }

    public void setStrokeWidth(float f) {
        this.f = f;
    }

    public void setTrimPathEnd(float f) {
        this.f401k = f;
    }

    public void setTrimPathOffset(float f) {
        this.f402l = f;
    }

    public void setTrimPathStart(float f) {
        this.f400j = f;
    }
}
