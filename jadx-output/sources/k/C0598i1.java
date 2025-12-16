package k;

import android.util.IntProperty;

/* renamed from: k.i1, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0598i1 extends IntProperty {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ C0601j1 f7866a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0598i1(C0601j1 c0601j1) {
        super("visual_progress");
        this.f7866a = c0601j1;
    }

    @Override // android.util.Property
    public final Integer get(Object obj) {
        return Integer.valueOf(((C0601j1) obj).f7873e);
    }

    @Override // android.util.IntProperty
    public final void setValue(Object obj, int i5) {
        ((C0601j1) obj).f7873e = i5;
        this.f7866a.invalidateSelf();
    }
}
