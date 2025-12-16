package m3;

import java.util.Arrays;

/* loaded from: classes.dex */
public final class w extends x {
    @Override // m3.e
    public final Object i(Object[] objArr) {
        W1.a.j(this, objArr);
        Object obj = objArr[0];
        Object[] objArrL0 = objArr.length <= 1 ? new Object[0] : R2.i.l0(objArr, 1, objArr.length);
        return this.f8305a.invoke(obj, Arrays.copyOf(objArrL0, objArrL0.length));
    }
}
