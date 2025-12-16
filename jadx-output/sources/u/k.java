package u;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.SparseIntArray;

/* loaded from: classes.dex */
public final class k {

    /* renamed from: m, reason: collision with root package name */
    public static final SparseIntArray f9293m;

    /* renamed from: a, reason: collision with root package name */
    public float f9294a;

    /* renamed from: b, reason: collision with root package name */
    public float f9295b;

    /* renamed from: c, reason: collision with root package name */
    public float f9296c;

    /* renamed from: d, reason: collision with root package name */
    public float f9297d;

    /* renamed from: e, reason: collision with root package name */
    public float f9298e;
    public float f;

    /* renamed from: g, reason: collision with root package name */
    public float f9299g;

    /* renamed from: h, reason: collision with root package name */
    public float f9300h;

    /* renamed from: i, reason: collision with root package name */
    public float f9301i;

    /* renamed from: j, reason: collision with root package name */
    public float f9302j;

    /* renamed from: k, reason: collision with root package name */
    public boolean f9303k;

    /* renamed from: l, reason: collision with root package name */
    public float f9304l;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f9293m = sparseIntArray;
        sparseIntArray.append(6, 1);
        sparseIntArray.append(7, 2);
        sparseIntArray.append(8, 3);
        sparseIntArray.append(4, 4);
        sparseIntArray.append(5, 5);
        sparseIntArray.append(0, 6);
        sparseIntArray.append(1, 7);
        sparseIntArray.append(2, 8);
        sparseIntArray.append(3, 9);
        sparseIntArray.append(9, 10);
        sparseIntArray.append(10, 11);
    }

    public final void a(Context context, AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, o.f9316h);
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        for (int i5 = 0; i5 < indexCount; i5++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i5);
            switch (f9293m.get(index)) {
                case 1:
                    this.f9294a = typedArrayObtainStyledAttributes.getFloat(index, this.f9294a);
                    break;
                case 2:
                    this.f9295b = typedArrayObtainStyledAttributes.getFloat(index, this.f9295b);
                    break;
                case 3:
                    this.f9296c = typedArrayObtainStyledAttributes.getFloat(index, this.f9296c);
                    break;
                case 4:
                    this.f9297d = typedArrayObtainStyledAttributes.getFloat(index, this.f9297d);
                    break;
                case 5:
                    this.f9298e = typedArrayObtainStyledAttributes.getFloat(index, this.f9298e);
                    break;
                case 6:
                    this.f = typedArrayObtainStyledAttributes.getDimension(index, this.f);
                    break;
                case 7:
                    this.f9299g = typedArrayObtainStyledAttributes.getDimension(index, this.f9299g);
                    break;
                case 8:
                    this.f9300h = typedArrayObtainStyledAttributes.getDimension(index, this.f9300h);
                    break;
                case 9:
                    this.f9301i = typedArrayObtainStyledAttributes.getDimension(index, this.f9301i);
                    break;
                case 10:
                    this.f9302j = typedArrayObtainStyledAttributes.getDimension(index, this.f9302j);
                    break;
                case 11:
                    this.f9303k = true;
                    this.f9304l = typedArrayObtainStyledAttributes.getDimension(index, this.f9304l);
                    break;
            }
        }
        typedArrayObtainStyledAttributes.recycle();
    }
}
