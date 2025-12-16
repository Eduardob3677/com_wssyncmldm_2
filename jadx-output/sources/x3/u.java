package x3;

import java.lang.reflect.Field;
import java.lang.reflect.Member;

/* loaded from: classes.dex */
public final class u extends w {

    /* renamed from: a, reason: collision with root package name */
    public final Field f9672a;

    public u(Field field) {
        d3.i.e("member", field);
        this.f9672a = field;
    }

    @Override // x3.w
    public final Member a() {
        return this.f9672a;
    }
}
