package P1;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import f1.AbstractC0420a;

/* loaded from: classes.dex */
public final class k {

    /* renamed from: a, reason: collision with root package name */
    public Z0.j f2107a = new i();

    /* renamed from: b, reason: collision with root package name */
    public Z0.j f2108b = new i();

    /* renamed from: c, reason: collision with root package name */
    public Z0.j f2109c = new i();

    /* renamed from: d, reason: collision with root package name */
    public Z0.j f2110d = new i();

    /* renamed from: e, reason: collision with root package name */
    public c f2111e = new a(0.0f);
    public c f = new a(0.0f);

    /* renamed from: g, reason: collision with root package name */
    public c f2112g = new a(0.0f);

    /* renamed from: h, reason: collision with root package name */
    public c f2113h = new a(0.0f);

    /* renamed from: i, reason: collision with root package name */
    public e f2114i = new e(0);

    /* renamed from: j, reason: collision with root package name */
    public e f2115j = new e(0);

    /* renamed from: k, reason: collision with root package name */
    public e f2116k = new e(0);

    /* renamed from: l, reason: collision with root package name */
    public e f2117l = new e(0);

    public static j a(Context context, int i5, int i6, a aVar) {
        ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(context, i5);
        if (i6 != 0) {
            contextThemeWrapper = new ContextThemeWrapper(contextThemeWrapper, i6);
        }
        TypedArray typedArrayObtainStyledAttributes = contextThemeWrapper.obtainStyledAttributes(v1.a.f9548x);
        try {
            int i7 = typedArrayObtainStyledAttributes.getInt(0, 0);
            int i8 = typedArrayObtainStyledAttributes.getInt(3, i7);
            int i9 = typedArrayObtainStyledAttributes.getInt(4, i7);
            int i10 = typedArrayObtainStyledAttributes.getInt(2, i7);
            int i11 = typedArrayObtainStyledAttributes.getInt(1, i7);
            c cVarC = c(typedArrayObtainStyledAttributes, 5, aVar);
            c cVarC2 = c(typedArrayObtainStyledAttributes, 8, cVarC);
            c cVarC3 = c(typedArrayObtainStyledAttributes, 9, cVarC);
            c cVarC4 = c(typedArrayObtainStyledAttributes, 7, cVarC);
            c cVarC5 = c(typedArrayObtainStyledAttributes, 6, cVarC);
            j jVar = new j();
            Z0.j jVarJ = AbstractC0420a.j(i8);
            jVar.f2096a = jVarJ;
            j.b(jVarJ);
            jVar.f2100e = cVarC2;
            Z0.j jVarJ2 = AbstractC0420a.j(i9);
            jVar.f2097b = jVarJ2;
            j.b(jVarJ2);
            jVar.f = cVarC3;
            Z0.j jVarJ3 = AbstractC0420a.j(i10);
            jVar.f2098c = jVarJ3;
            j.b(jVarJ3);
            jVar.f2101g = cVarC4;
            Z0.j jVarJ4 = AbstractC0420a.j(i11);
            jVar.f2099d = jVarJ4;
            j.b(jVarJ4);
            jVar.f2102h = cVarC5;
            return jVar;
        } finally {
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public static j b(Context context, AttributeSet attributeSet, int i5, int i6) {
        a aVar = new a(0);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, v1.a.f9542r, i5, i6);
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(0, 0);
        int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(1, 0);
        typedArrayObtainStyledAttributes.recycle();
        return a(context, resourceId, resourceId2, aVar);
    }

    public static c c(TypedArray typedArray, int i5, c cVar) {
        TypedValue typedValuePeekValue = typedArray.peekValue(i5);
        if (typedValuePeekValue == null) {
            return cVar;
        }
        int i6 = typedValuePeekValue.type;
        return i6 == 5 ? new a(TypedValue.complexToDimensionPixelSize(typedValuePeekValue.data, typedArray.getResources().getDisplayMetrics())) : i6 == 6 ? new h(typedValuePeekValue.getFraction(1.0f, 1.0f)) : cVar;
    }

    public final boolean d(RectF rectF) {
        boolean z4 = this.f2117l.getClass().equals(e.class) && this.f2115j.getClass().equals(e.class) && this.f2114i.getClass().equals(e.class) && this.f2116k.getClass().equals(e.class);
        float fA = this.f2111e.a(rectF);
        return z4 && ((this.f.a(rectF) > fA ? 1 : (this.f.a(rectF) == fA ? 0 : -1)) == 0 && (this.f2113h.a(rectF) > fA ? 1 : (this.f2113h.a(rectF) == fA ? 0 : -1)) == 0 && (this.f2112g.a(rectF) > fA ? 1 : (this.f2112g.a(rectF) == fA ? 0 : -1)) == 0) && ((this.f2108b instanceof i) && (this.f2107a instanceof i) && (this.f2109c instanceof i) && (this.f2110d instanceof i));
    }

    public final j e() {
        j jVar = new j();
        jVar.f2096a = this.f2107a;
        jVar.f2097b = this.f2108b;
        jVar.f2098c = this.f2109c;
        jVar.f2099d = this.f2110d;
        jVar.f2100e = this.f2111e;
        jVar.f = this.f;
        jVar.f2101g = this.f2112g;
        jVar.f2102h = this.f2113h;
        jVar.f2103i = this.f2114i;
        jVar.f2104j = this.f2115j;
        jVar.f2105k = this.f2116k;
        jVar.f2106l = this.f2117l;
        return jVar;
    }
}
