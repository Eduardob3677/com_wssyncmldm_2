package J;

import android.os.Build;
import android.view.View;
import java.nio.ByteBuffer;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public abstract class F {

    /* renamed from: a, reason: collision with root package name */
    public int f935a;

    /* renamed from: b, reason: collision with root package name */
    public int f936b;

    /* renamed from: c, reason: collision with root package name */
    public int f937c;

    /* renamed from: d, reason: collision with root package name */
    public Object f938d;

    public F() {
        if (Z0.h.f3011e == null) {
            Z0.h.f3011e = new Z0.h(6);
        }
    }

    public int a(int i5) {
        if (i5 < this.f937c) {
            return ((ByteBuffer) this.f938d).getShort(this.f936b + i5);
        }
        return 0;
    }

    public abstract Object b(View view);

    public abstract void c(View view, Object obj);

    public Object d(View view) {
        if (Build.VERSION.SDK_INT >= this.f936b) {
            return b(view);
        }
        Object tag = view.getTag(this.f935a);
        if (((Class) this.f938d).isInstance(tag)) {
            return tag;
        }
        return null;
    }

    public void e(View view, Object obj) {
        if (Build.VERSION.SDK_INT >= this.f936b) {
            c(view, obj);
            return;
        }
        if (f(d(view), obj)) {
            WeakHashMap weakHashMap = Q.f940a;
            View.AccessibilityDelegate accessibilityDelegateA = N.a(view);
            C0028b c0028b = accessibilityDelegateA == null ? null : accessibilityDelegateA instanceof C0027a ? ((C0027a) accessibilityDelegateA).f953a : new C0028b(accessibilityDelegateA);
            if (c0028b == null) {
                c0028b = new C0028b();
            }
            Q.h(view, c0028b);
            view.setTag(this.f935a, obj);
            Q.d(this.f937c, view);
        }
    }

    public abstract boolean f(Object obj, Object obj2);
}
