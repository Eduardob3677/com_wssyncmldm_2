package m3;

import java.lang.reflect.Field;

/* loaded from: classes.dex */
public final class n extends o {

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ int f8292g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ n(Field field, boolean z4, boolean z5, int i5) {
        super(field, z4, z5);
        this.f8292g = i5;
    }

    @Override // m3.o, m3.t
    public void a(Object[] objArr) {
        switch (this.f8292g) {
            case 1:
                super.a(objArr);
                b(objArr.length == 0 ? null : objArr[0]);
                break;
            default:
                super.a(objArr);
                break;
        }
    }
}
