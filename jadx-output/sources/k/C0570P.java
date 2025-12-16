package k;

import android.graphics.Typeface;
import android.widget.TextView;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;

/* renamed from: k.P, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0570P extends A.b {

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f7722e;
    public final /* synthetic */ int f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ WeakReference f7723g;

    /* renamed from: h, reason: collision with root package name */
    public final /* synthetic */ V f7724h;

    public C0570P(V v4, int i5, int i6, WeakReference weakReference) {
        this.f7724h = v4;
        this.f7722e = i5;
        this.f = i6;
        this.f7723g = weakReference;
    }

    @Override // A.b
    public final void h(int i5) {
    }

    @Override // A.b
    public final void i(Typeface typeface) {
        int i5 = this.f7722e;
        if (i5 != -1) {
            typeface = U.a(typeface, i5, (this.f & 2) != 0);
        }
        V v4 = this.f7724h;
        if (v4.f7759m) {
            v4.f7758l = typeface;
            TextView textView = (TextView) this.f7723g.get();
            if (textView != null) {
                WeakHashMap weakHashMap = J.Q.f940a;
                if (textView.isAttachedToWindow()) {
                    textView.post(new B1.a(textView, typeface, v4.f7756j));
                } else {
                    textView.setTypeface(typeface, v4.f7756j);
                }
            }
        }
    }
}
