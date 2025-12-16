package S3;

import c3.InterfaceC0222b;
import h4.AbstractC0468v;
import u3.V;

/* loaded from: classes.dex */
public final class f extends d3.k implements InterfaceC0222b {

    /* renamed from: e, reason: collision with root package name */
    public static final f f2618e = new f(1, 0);
    public static final f f = new f(1, 1);

    /* renamed from: g, reason: collision with root package name */
    public static final f f2619g = new f(1, 2);

    /* renamed from: h, reason: collision with root package name */
    public static final f f2620h = new f(1, 3);

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f2621d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ f(int i5, int i6) {
        super(i5);
        this.f2621d = i6;
    }

    @Override // c3.InterfaceC0222b
    public final Object e(Object obj) {
        switch (this.f2621d) {
            case 0:
                return "";
            case 1:
                AbstractC0468v abstractC0468v = (AbstractC0468v) obj;
                d3.i.e("it", abstractC0468v);
                return abstractC0468v;
            case 2:
                d3.i.e("it", (V) obj);
                return "...";
            default:
                AbstractC0468v abstractC0468v2 = (AbstractC0468v) obj;
                d3.i.e("it", abstractC0468v2);
                return abstractC0468v2;
        }
    }
}
