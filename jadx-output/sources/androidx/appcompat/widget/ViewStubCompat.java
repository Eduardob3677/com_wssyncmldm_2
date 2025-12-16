package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import c.AbstractC0206a;
import java.lang.ref.WeakReference;
import k.M1;

/* loaded from: classes.dex */
public final class ViewStubCompat extends View {

    /* renamed from: c, reason: collision with root package name */
    public int f3561c;

    /* renamed from: d, reason: collision with root package name */
    public int f3562d;

    /* renamed from: e, reason: collision with root package name */
    public WeakReference f3563e;
    public LayoutInflater f;

    public ViewStubCompat(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f3561c = 0;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, AbstractC0206a.E, 0, 0);
        this.f3562d = typedArrayObtainStyledAttributes.getResourceId(2, -1);
        this.f3561c = typedArrayObtainStyledAttributes.getResourceId(1, 0);
        setId(typedArrayObtainStyledAttributes.getResourceId(0, -1));
        typedArrayObtainStyledAttributes.recycle();
        setVisibility(8);
        setWillNotDraw(true);
    }

    public final View a() {
        ViewParent parent = getParent();
        if (!(parent instanceof ViewGroup)) {
            throw new IllegalStateException("ViewStub must have a non-null ViewGroup viewParent");
        }
        if (this.f3561c == 0) {
            throw new IllegalArgumentException("ViewStub must have a valid layoutResource");
        }
        ViewGroup viewGroup = (ViewGroup) parent;
        LayoutInflater layoutInflaterFrom = this.f;
        if (layoutInflaterFrom == null) {
            layoutInflaterFrom = LayoutInflater.from(getContext());
        }
        View viewInflate = layoutInflaterFrom.inflate(this.f3561c, viewGroup, false);
        int i5 = this.f3562d;
        if (i5 != -1) {
            viewInflate.setId(i5);
        }
        int iIndexOfChild = viewGroup.indexOfChild(this);
        viewGroup.removeViewInLayout(this);
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams != null) {
            viewGroup.addView(viewInflate, iIndexOfChild, layoutParams);
        } else {
            viewGroup.addView(viewInflate, iIndexOfChild);
        }
        this.f3563e = new WeakReference(viewInflate);
        return viewInflate;
    }

    @Override // android.view.View
    public final void dispatchDraw(Canvas canvas) {
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
    }

    public int getInflatedId() {
        return this.f3562d;
    }

    public LayoutInflater getLayoutInflater() {
        return this.f;
    }

    public int getLayoutResource() {
        return this.f3561c;
    }

    @Override // android.view.View
    public final void onMeasure(int i5, int i6) {
        setMeasuredDimension(0, 0);
    }

    public void setInflatedId(int i5) {
        this.f3562d = i5;
    }

    public void setLayoutInflater(LayoutInflater layoutInflater) {
        this.f = layoutInflater;
    }

    public void setLayoutResource(int i5) {
        this.f3561c = i5;
    }

    public void setOnInflateListener(M1 m12) {
    }

    @Override // android.view.View
    public void setVisibility(int i5) {
        WeakReference weakReference = this.f3563e;
        if (weakReference != null) {
            View view = (View) weakReference.get();
            if (view == null) {
                throw new IllegalStateException("setVisibility called on un-referenced view");
            }
            view.setVisibility(i5);
            return;
        }
        super.setVisibility(i5);
        if (i5 == 0 || i5 == 4) {
            a();
        }
    }
}
