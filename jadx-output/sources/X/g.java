package X;

import android.text.InputFilter;
import android.text.method.TransformationMethod;
import android.widget.TextView;
import f1.AbstractC0420a;

/* loaded from: classes.dex */
public final class g extends AbstractC0420a {
    public final f f;

    public g(TextView textView) {
        this.f = new f(textView);
    }

    @Override // f1.AbstractC0420a
    public final InputFilter[] E(InputFilter[] inputFilterArr) {
        return (androidx.emoji2.text.j.f3695j != null) ^ true ? inputFilterArr : this.f.E(inputFilterArr);
    }

    @Override // f1.AbstractC0420a
    public final boolean Q() {
        return this.f.f2854h;
    }

    @Override // f1.AbstractC0420a
    public final void i0(boolean z4) {
        if (!(androidx.emoji2.text.j.f3695j != null)) {
            return;
        }
        this.f.i0(z4);
    }

    @Override // f1.AbstractC0420a
    public final void j0(boolean z4) {
        boolean z5 = !(androidx.emoji2.text.j.f3695j != null);
        f fVar = this.f;
        if (z5) {
            fVar.f2854h = z4;
        } else {
            fVar.j0(z4);
        }
    }

    @Override // f1.AbstractC0420a
    public final TransformationMethod s0(TransformationMethod transformationMethod) {
        return (androidx.emoji2.text.j.f3695j != null) ^ true ? transformationMethod : this.f.s0(transformationMethod);
    }
}
