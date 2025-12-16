package u;

import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewParent;
import androidx.constraintlayout.widget.ConstraintLayout;

/* loaded from: classes.dex */
public abstract class p extends c {

    /* renamed from: j, reason: collision with root package name */
    public boolean f9318j;

    /* renamed from: k, reason: collision with root package name */
    public boolean f9319k;

    @Override // u.c
    public void f(AttributeSet attributeSet) {
        super.f(attributeSet);
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, o.f9311b);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i5 = 0; i5 < indexCount; i5++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i5);
                if (index == 6) {
                    this.f9318j = true;
                } else if (index == 13) {
                    this.f9319k = true;
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public abstract void i(s.g gVar, int i5, int i6);

    @Override // u.c, android.view.View
    public final void onAttachedToWindow() {
        ViewParent parent;
        super.onAttachedToWindow();
        if ((this.f9318j || this.f9319k) && (parent = getParent()) != null && (parent instanceof ConstraintLayout)) {
            ConstraintLayout constraintLayout = (ConstraintLayout) parent;
            int visibility = getVisibility();
            float elevation = getElevation();
            for (int i5 = 0; i5 < this.f9152d; i5++) {
                View view = (View) constraintLayout.f3570c.get(this.f9151c[i5]);
                if (view != null) {
                    if (this.f9318j) {
                        view.setVisibility(visibility);
                    }
                    if (this.f9319k && elevation > 0.0f) {
                        view.setTranslationZ(view.getTranslationZ() + elevation);
                    }
                }
            }
        }
    }

    @Override // android.view.View
    public void setElevation(float f) {
        super.setElevation(f);
        d();
    }

    @Override // android.view.View
    public void setVisibility(int i5) {
        super.setVisibility(i5);
        d();
    }
}
