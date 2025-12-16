package S1;

import android.text.method.PasswordTransformationMethod;
import android.view.View;
import android.widget.EditText;
import com.wssyncmldm.R;

/* loaded from: classes.dex */
public final class v extends o {

    /* renamed from: e, reason: collision with root package name */
    public final int f2567e;
    public EditText f;

    /* renamed from: g, reason: collision with root package name */
    public final A2.d f2568g;

    public v(n nVar, int i5) {
        super(nVar);
        this.f2567e = R.drawable.design_password_eye;
        this.f2568g = new A2.d(4, this);
        if (i5 != 0) {
            this.f2567e = i5;
        }
    }

    @Override // S1.o
    public final void b() {
        q();
    }

    @Override // S1.o
    public final int c() {
        return R.string.password_toggle_content_description;
    }

    @Override // S1.o
    public final int d() {
        return this.f2567e;
    }

    @Override // S1.o
    public final View.OnClickListener f() {
        return this.f2568g;
    }

    @Override // S1.o
    public final boolean k() {
        return true;
    }

    @Override // S1.o
    public final boolean l() {
        EditText editText = this.f;
        return !(editText != null && (editText.getTransformationMethod() instanceof PasswordTransformationMethod));
    }

    @Override // S1.o
    public final void m(EditText editText) {
        this.f = editText;
        q();
    }

    @Override // S1.o
    public final void r() {
        EditText editText = this.f;
        if (editText != null) {
            if (editText.getInputType() == 16 || editText.getInputType() == 128 || editText.getInputType() == 144 || editText.getInputType() == 224) {
                this.f.setTransformationMethod(PasswordTransformationMethod.getInstance());
            }
        }
    }

    @Override // S1.o
    public final void s() {
        EditText editText = this.f;
        if (editText != null) {
            editText.setTransformationMethod(PasswordTransformationMethod.getInstance());
        }
    }
}
