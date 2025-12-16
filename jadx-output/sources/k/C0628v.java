package k;

import android.content.res.TypedArray;
import android.text.InputFilter;
import android.util.AttributeSet;
import android.widget.TextView;
import c.AbstractC0206a;
import f1.AbstractC0420a;
import s2.C0837c;

/* renamed from: k.v, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0628v {

    /* renamed from: a, reason: collision with root package name */
    public final TextView f8015a;

    /* renamed from: b, reason: collision with root package name */
    public final C0837c f8016b;

    public C0628v(TextView textView) {
        this.f8015a = textView;
        C0837c c0837c = new C0837c();
        Z0.j.m("textView cannot be null", textView);
        c0837c.f9022c = new X.g(textView);
        this.f8016b = c0837c;
    }

    public final InputFilter[] a(InputFilter[] inputFilterArr) {
        return ((AbstractC0420a) this.f8016b.f9022c).E(inputFilterArr);
    }

    public final void b(AttributeSet attributeSet, int i5) {
        TypedArray typedArrayObtainStyledAttributes = this.f8015a.getContext().obtainStyledAttributes(attributeSet, AbstractC0206a.f5168i, i5, 0);
        try {
            boolean z4 = typedArrayObtainStyledAttributes.hasValue(14) ? typedArrayObtainStyledAttributes.getBoolean(14, true) : true;
            typedArrayObtainStyledAttributes.recycle();
            d(z4);
        } catch (Throwable th) {
            typedArrayObtainStyledAttributes.recycle();
            throw th;
        }
    }

    public final void c(boolean z4) {
        ((AbstractC0420a) this.f8016b.f9022c).i0(z4);
    }

    public final void d(boolean z4) {
        ((AbstractC0420a) this.f8016b.f9022c).j0(z4);
    }
}
