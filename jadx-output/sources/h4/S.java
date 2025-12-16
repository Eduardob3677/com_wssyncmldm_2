package h4;

import s3.InterfaceC0845h;

/* loaded from: classes.dex */
public abstract class S {

    /* renamed from: a, reason: collision with root package name */
    public static final P f7040a = new P();

    public boolean a() {
        return false;
    }

    public boolean b() {
        return false;
    }

    public InterfaceC0845h c(InterfaceC0845h interfaceC0845h) {
        d3.i.e("annotations", interfaceC0845h);
        return interfaceC0845h;
    }

    public abstract N d(AbstractC0468v abstractC0468v);

    public boolean e() {
        return this instanceof P;
    }

    public AbstractC0468v f(int i5, AbstractC0468v abstractC0468v) {
        d3.i.e("topLevelType", abstractC0468v);
        B.f.x(i5, "position");
        return abstractC0468v;
    }
}
