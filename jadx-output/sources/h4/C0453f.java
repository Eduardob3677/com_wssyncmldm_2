package h4;

import c3.InterfaceC0222b;
import f1.AbstractC0420a;

/* renamed from: h4.f, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0453f extends d3.k implements InterfaceC0222b {

    /* renamed from: e, reason: collision with root package name */
    public static final C0453f f7053e = new C0453f(1, 0);
    public static final C0453f f = new C0453f(1, 1);

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f7054d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C0453f(int i5, int i6) {
        super(i5);
        this.f7054d = i6;
    }

    @Override // c3.InterfaceC0222b
    public final Object e(Object obj) {
        switch (this.f7054d) {
            case 0:
                ((Boolean) obj).getClass();
                return new C0452e(AbstractC0420a.V(j4.i.f7650d));
            default:
                AbstractC0468v abstractC0468v = (AbstractC0468v) obj;
                d3.i.e("it", abstractC0468v);
                return abstractC0468v.toString();
        }
    }
}
