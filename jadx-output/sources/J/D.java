package J;

import android.text.TextUtils;
import android.view.View;

/* loaded from: classes.dex */
public final class D extends F {

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f933e;

    public D(int i5, Class cls, int i6, int i7, int i8) {
        this.f933e = i8;
        this.f935a = i5;
        this.f938d = cls;
        this.f937c = i6;
        this.f936b = i7;
    }

    @Override // J.F
    public final Object b(View view) {
        switch (this.f933e) {
            case 0:
                return M.b(view);
            case 1:
                return O.b(view);
            default:
                return Boolean.valueOf(M.c(view));
        }
    }

    @Override // J.F
    public final void c(View view, Object obj) {
        switch (this.f933e) {
            case 0:
                M.h(view, (CharSequence) obj);
                break;
            case 1:
                O.f(view, (CharSequence) obj);
                break;
            default:
                M.g(view, ((Boolean) obj).booleanValue());
                break;
        }
    }

    @Override // J.F
    public final boolean f(Object obj, Object obj2) {
        switch (this.f933e) {
            case 0:
                return !TextUtils.equals((CharSequence) obj, (CharSequence) obj2);
            case 1:
                return !TextUtils.equals((CharSequence) obj, (CharSequence) obj2);
            default:
                Boolean bool = (Boolean) obj;
                Boolean bool2 = (Boolean) obj2;
                return true ^ ((bool != null && bool.booleanValue()) == (bool2 != null && bool2.booleanValue()));
        }
    }
}
