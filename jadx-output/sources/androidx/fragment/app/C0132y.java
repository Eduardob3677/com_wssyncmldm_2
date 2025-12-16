package androidx.fragment.app;

import b.AbstractC0194a;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: androidx.fragment.app.y, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0132y extends A {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ C0131x f3965a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ AtomicReference f3966b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AbstractC0194a f3967c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ androidx.activity.result.b f3968d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Fragment f3969e;

    public C0132y(Fragment fragment, C0131x c0131x, AtomicReference atomicReference, AbstractC0194a abstractC0194a, androidx.activity.result.b bVar) {
        this.f3969e = fragment;
        this.f3965a = c0131x;
        this.f3966b = atomicReference;
        this.f3967c = abstractC0194a;
        this.f3968d = bVar;
    }

    @Override // androidx.fragment.app.A
    public final void a() {
        Fragment fragment = this.f3969e;
        this.f3966b.set(this.f3965a.a().c(fragment.generateActivityResultKey(), fragment, this.f3967c, this.f3968d));
    }
}
