package u;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;

/* loaded from: classes.dex */
public final class j {

    /* renamed from: a, reason: collision with root package name */
    public int f9289a;

    /* renamed from: b, reason: collision with root package name */
    public int f9290b;

    /* renamed from: c, reason: collision with root package name */
    public float f9291c;

    /* renamed from: d, reason: collision with root package name */
    public float f9292d;

    public final void a(Context context, AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, o.f);
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        for (int i5 = 0; i5 < indexCount; i5++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i5);
            if (index == 1) {
                this.f9291c = typedArrayObtainStyledAttributes.getFloat(index, this.f9291c);
            } else if (index == 0) {
                int i6 = typedArrayObtainStyledAttributes.getInt(index, this.f9289a);
                this.f9289a = i6;
                this.f9289a = l.f9305d[i6];
            } else if (index == 4) {
                this.f9290b = typedArrayObtainStyledAttributes.getInt(index, this.f9290b);
            } else if (index == 3) {
                this.f9292d = typedArrayObtainStyledAttributes.getFloat(index, this.f9292d);
            }
        }
        typedArrayObtainStyledAttributes.recycle();
    }
}
