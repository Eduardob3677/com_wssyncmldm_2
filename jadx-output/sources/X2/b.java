package X2;

import d3.i;
import f3.AbstractC0425d;
import f3.C0423b;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public class b {
    public void a(Throwable th, Throwable th2) {
        i.e("cause", th);
        i.e("exception", th2);
        Method method = a.f2865a;
        if (method != null) {
            method.invoke(th, th2);
        }
    }

    public AbstractC0425d b() {
        return new C0423b();
    }
}
