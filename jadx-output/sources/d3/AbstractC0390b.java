package d3;

import i3.InterfaceC0481b;
import i3.InterfaceC0484e;
import java.io.Serializable;

/* renamed from: d3.b, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0390b implements InterfaceC0481b, Serializable {

    /* renamed from: i, reason: collision with root package name */
    public static final /* synthetic */ int f6500i = 0;

    /* renamed from: c, reason: collision with root package name */
    public transient InterfaceC0481b f6501c;

    /* renamed from: d, reason: collision with root package name */
    public final Object f6502d;

    /* renamed from: e, reason: collision with root package name */
    public final Class f6503e;
    public final String f;

    /* renamed from: g, reason: collision with root package name */
    public final String f6504g;

    /* renamed from: h, reason: collision with root package name */
    public final boolean f6505h;

    public AbstractC0390b(Object obj, Class cls, String str, String str2, boolean z4) {
        this.f6502d = obj;
        this.f6503e = cls;
        this.f = str;
        this.f6504g = str2;
        this.f6505h = z4;
    }

    public InterfaceC0481b c() {
        InterfaceC0481b interfaceC0481b = this.f6501c;
        if (interfaceC0481b != null) {
            return interfaceC0481b;
        }
        InterfaceC0481b interfaceC0481bG = g();
        this.f6501c = interfaceC0481bG;
        return interfaceC0481bG;
    }

    public abstract InterfaceC0481b g();

    @Override // i3.InterfaceC0481b
    public String getName() {
        return this.f;
    }

    @Override // i3.InterfaceC0481b
    public final Object i(Object... objArr) {
        return k().i(objArr);
    }

    public InterfaceC0484e j() {
        Class cls = this.f6503e;
        if (cls == null) {
            return null;
        }
        return this.f6505h ? q.f6516a.c(cls, "") : q.f6516a.b(cls);
    }

    public abstract InterfaceC0481b k();

    public String l() {
        return this.f6504g;
    }
}
