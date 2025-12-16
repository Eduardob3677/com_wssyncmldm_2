package X;

import android.text.InputFilter;
import android.text.method.PasswordTransformationMethod;
import android.text.method.TransformationMethod;
import android.util.SparseArray;
import android.widget.TextView;
import f1.AbstractC0420a;

/* loaded from: classes.dex */
public final class f extends AbstractC0420a {
    public final TextView f;

    /* renamed from: g, reason: collision with root package name */
    public final d f2853g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f2854h = true;

    public f(TextView textView) {
        this.f = textView;
        this.f2853g = new d(textView);
    }

    @Override // f1.AbstractC0420a
    public final InputFilter[] E(InputFilter[] inputFilterArr) {
        if (!this.f2854h) {
            SparseArray sparseArray = new SparseArray(1);
            for (int i5 = 0; i5 < inputFilterArr.length; i5++) {
                InputFilter inputFilter = inputFilterArr[i5];
                if (inputFilter instanceof d) {
                    sparseArray.put(i5, inputFilter);
                }
            }
            if (sparseArray.size() == 0) {
                return inputFilterArr;
            }
            int length = inputFilterArr.length;
            InputFilter[] inputFilterArr2 = new InputFilter[inputFilterArr.length - sparseArray.size()];
            int i6 = 0;
            for (int i7 = 0; i7 < length; i7++) {
                if (sparseArray.indexOfKey(i7) < 0) {
                    inputFilterArr2[i6] = inputFilterArr[i7];
                    i6++;
                }
            }
            return inputFilterArr2;
        }
        int length2 = inputFilterArr.length;
        int i8 = 0;
        while (true) {
            d dVar = this.f2853g;
            if (i8 >= length2) {
                InputFilter[] inputFilterArr3 = new InputFilter[inputFilterArr.length + 1];
                System.arraycopy(inputFilterArr, 0, inputFilterArr3, 0, length2);
                inputFilterArr3[length2] = dVar;
                return inputFilterArr3;
            }
            if (inputFilterArr[i8] == dVar) {
                return inputFilterArr;
            }
            i8++;
        }
    }

    @Override // f1.AbstractC0420a
    public final boolean Q() {
        return this.f2854h;
    }

    @Override // f1.AbstractC0420a
    public final void i0(boolean z4) {
        if (z4) {
            TextView textView = this.f;
            textView.setTransformationMethod(s0(textView.getTransformationMethod()));
        }
    }

    @Override // f1.AbstractC0420a
    public final void j0(boolean z4) {
        this.f2854h = z4;
        TextView textView = this.f;
        textView.setTransformationMethod(s0(textView.getTransformationMethod()));
        textView.setFilters(E(textView.getFilters()));
    }

    @Override // f1.AbstractC0420a
    public final TransformationMethod s0(TransformationMethod transformationMethod) {
        return this.f2854h ? ((transformationMethod instanceof j) || (transformationMethod instanceof PasswordTransformationMethod)) ? transformationMethod : new j(transformationMethod) : transformationMethod instanceof j ? ((j) transformationMethod).f2860a : transformationMethod;
    }
}
