package m3;

import java.lang.reflect.Method;

/* loaded from: classes.dex */
public final class s extends o {

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ int f8296g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public s(int i5, Method method) {
        super(method, false, 6);
        this.f8296g = i5;
        switch (i5) {
            case 1:
                d3.i.e("method", method);
                super(method, true, 4);
                break;
            case 2:
                d3.i.e("method", method);
                super(method, false, 6);
                break;
            default:
                d3.i.e("method", method);
                break;
        }
    }

    @Override // m3.o, m3.e
    public final Object i(Object[] objArr) {
        switch (this.f8296g) {
            case 0:
                W1.a.j(this, objArr);
                return c(objArr[0], objArr.length <= 1 ? new Object[0] : R2.i.l0(objArr, 1, objArr.length));
            case 1:
                W1.a.j(this, objArr);
                b(objArr.length == 0 ? null : objArr[0]);
                return c(null, objArr.length <= 1 ? new Object[0] : R2.i.l0(objArr, 1, objArr.length));
            default:
                W1.a.j(this, objArr);
                return c(null, objArr);
        }
    }
}
