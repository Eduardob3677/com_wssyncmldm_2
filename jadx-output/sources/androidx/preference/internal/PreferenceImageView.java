package androidx.preference.internal;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import androidx.preference.I;

/* loaded from: classes.dex */
public class PreferenceImageView extends ImageView {

    /* renamed from: c, reason: collision with root package name */
    public int f4716c;

    /* renamed from: d, reason: collision with root package name */
    public int f4717d;

    public PreferenceImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f4716c = Integer.MAX_VALUE;
        this.f4717d = Integer.MAX_VALUE;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, I.f4609i, 0, 0);
        setMaxWidth(typedArrayObtainStyledAttributes.getDimensionPixelSize(3, Integer.MAX_VALUE));
        setMaxHeight(typedArrayObtainStyledAttributes.getDimensionPixelSize(2, Integer.MAX_VALUE));
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override // android.widget.ImageView
    public int getMaxHeight() {
        return this.f4717d;
    }

    @Override // android.widget.ImageView
    public int getMaxWidth() {
        return this.f4716c;
    }

    @Override // android.widget.ImageView, android.view.View
    public final void onMeasure(int i5, int i6) {
        int mode = View.MeasureSpec.getMode(i5);
        if (mode == Integer.MIN_VALUE || mode == 0) {
            int size = View.MeasureSpec.getSize(i5);
            int maxWidth = getMaxWidth();
            if (maxWidth != Integer.MAX_VALUE && (maxWidth < size || mode == 0)) {
                i5 = View.MeasureSpec.makeMeasureSpec(maxWidth, Integer.MIN_VALUE);
            }
        }
        int mode2 = View.MeasureSpec.getMode(i6);
        if (mode2 == Integer.MIN_VALUE || mode2 == 0) {
            int size2 = View.MeasureSpec.getSize(i6);
            int maxHeight = getMaxHeight();
            if (maxHeight != Integer.MAX_VALUE && (maxHeight < size2 || mode2 == 0)) {
                i6 = View.MeasureSpec.makeMeasureSpec(maxHeight, Integer.MIN_VALUE);
            }
        }
        super.onMeasure(i5, i6);
    }

    @Override // android.widget.ImageView
    public void setMaxHeight(int i5) {
        this.f4717d = i5;
        super.setMaxHeight(i5);
    }

    @Override // android.widget.ImageView
    public void setMaxWidth(int i5) {
        this.f4716c = i5;
        super.setMaxWidth(i5);
    }
}
