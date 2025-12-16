package j0;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.ViewGroup;

/* loaded from: classes.dex */
public class K extends ViewGroup.MarginLayoutParams {

    /* renamed from: a, reason: collision with root package name */
    public b0 f7352a;

    /* renamed from: b, reason: collision with root package name */
    public final Rect f7353b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f7354c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f7355d;

    public K(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f7353b = new Rect();
        this.f7354c = true;
        this.f7355d = false;
    }

    public K(int i5, int i6) {
        super(i5, i6);
        this.f7353b = new Rect();
        this.f7354c = true;
        this.f7355d = false;
    }

    public K(ViewGroup.MarginLayoutParams marginLayoutParams) {
        super(marginLayoutParams);
        this.f7353b = new Rect();
        this.f7354c = true;
        this.f7355d = false;
    }

    public K(ViewGroup.LayoutParams layoutParams) {
        super(layoutParams);
        this.f7353b = new Rect();
        this.f7354c = true;
        this.f7355d = false;
    }

    public K(K k5) {
        super((ViewGroup.LayoutParams) k5);
        this.f7353b = new Rect();
        this.f7354c = true;
        this.f7355d = false;
    }
}
