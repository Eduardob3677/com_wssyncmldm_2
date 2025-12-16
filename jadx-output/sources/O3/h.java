package O3;

import R3.r;

/* loaded from: classes.dex */
public enum h implements r {
    NONE(0),
    INTERNAL_TO_CLASS_ID(1),
    DESC_TO_CLASS_ID(2);


    /* renamed from: c, reason: collision with root package name */
    public final int f1996c;

    h(int i5) {
        this.f1996c = i5;
    }

    @Override // R3.r
    public final int a() {
        return this.f1996c;
    }
}
