package com.google.firebase.messaging;

import u1.InterfaceC0863a;

/* loaded from: classes.dex */
public final /* synthetic */ class e implements InterfaceC0863a, b2.f {

    /* renamed from: d, reason: collision with root package name */
    public static final /* synthetic */ e f6230d = new e(0);

    /* renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ e f6231e = new e(1);
    public static final /* synthetic */ e f = new e(2);

    /* renamed from: g, reason: collision with root package name */
    public static final /* synthetic */ e f6232g = new e(3);

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f6233c;

    public /* synthetic */ e(int i5) {
        this.f6233c = i5;
    }

    @Override // u1.InterfaceC0863a
    public Object H(u1.h hVar) {
        switch (this.f6233c) {
            case 0:
                return -1;
            default:
                return 403;
        }
    }

    @Override // b2.f
    public Object m(b2.t tVar) {
        return FirebaseMessagingRegistrar.lambda$getComponents$0(tVar);
    }
}
