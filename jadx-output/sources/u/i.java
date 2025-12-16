package u;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.SparseIntArray;
import q.AbstractC0750a;

/* loaded from: classes.dex */
public final class i {

    /* renamed from: e, reason: collision with root package name */
    public static final SparseIntArray f9284e;

    /* renamed from: a, reason: collision with root package name */
    public int f9285a;

    /* renamed from: b, reason: collision with root package name */
    public int f9286b;

    /* renamed from: c, reason: collision with root package name */
    public float f9287c;

    /* renamed from: d, reason: collision with root package name */
    public float f9288d;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f9284e = sparseIntArray;
        sparseIntArray.append(2, 1);
        sparseIntArray.append(4, 2);
        sparseIntArray.append(5, 3);
        sparseIntArray.append(1, 4);
        sparseIntArray.append(0, 5);
        sparseIntArray.append(3, 6);
    }

    public final void a(Context context, AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, o.f9314e);
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        for (int i5 = 0; i5 < indexCount; i5++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i5);
            switch (f9284e.get(index)) {
                case 1:
                    this.f9288d = typedArrayObtainStyledAttributes.getFloat(index, this.f9288d);
                    break;
                case 2:
                    this.f9286b = typedArrayObtainStyledAttributes.getInt(index, this.f9286b);
                    break;
                case 3:
                    if (typedArrayObtainStyledAttributes.peekValue(index).type == 3) {
                        typedArrayObtainStyledAttributes.getString(index);
                        break;
                    } else {
                        String str = AbstractC0750a.f8599a[typedArrayObtainStyledAttributes.getInteger(index, 0)];
                        break;
                    }
                case 4:
                    typedArrayObtainStyledAttributes.getInt(index, 0);
                    break;
                case 5:
                    this.f9285a = l.f(typedArrayObtainStyledAttributes, index, this.f9285a);
                    break;
                case 6:
                    this.f9287c = typedArrayObtainStyledAttributes.getFloat(index, this.f9287c);
                    break;
            }
        }
        typedArrayObtainStyledAttributes.recycle();
    }
}
