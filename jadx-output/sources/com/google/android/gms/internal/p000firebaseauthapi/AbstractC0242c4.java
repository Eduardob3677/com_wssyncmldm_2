package com.google.android.gms.internal.p000firebaseauthapi;

import R3.C0091m;
import W1.g;
import Y1.c;
import Y1.t;
import a2.s;
import c1.AbstractC0213D;
import com.google.android.gms.common.api.Status;
import java.util.ArrayList;

/* renamed from: com.google.android.gms.internal.firebase-auth-api.c4, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0242c4 {

    /* renamed from: a, reason: collision with root package name */
    public final int f5531a;

    /* renamed from: b, reason: collision with root package name */
    public final BinderC0236b4 f5532b = new BinderC0236b4(this);

    /* renamed from: c, reason: collision with root package name */
    public g f5533c;

    /* renamed from: d, reason: collision with root package name */
    public s f5534d;

    /* renamed from: e, reason: collision with root package name */
    public Object f5535e;
    public t f;

    /* renamed from: g, reason: collision with root package name */
    public C0373y4 f5536g;

    /* renamed from: h, reason: collision with root package name */
    public C0355v4 f5537h;

    /* renamed from: i, reason: collision with root package name */
    public c f5538i;

    /* renamed from: j, reason: collision with root package name */
    public C0319p3 f5539j;

    /* renamed from: k, reason: collision with root package name */
    public boolean f5540k;

    /* renamed from: l, reason: collision with root package name */
    public Object f5541l;

    /* renamed from: m, reason: collision with root package name */
    public U f5542m;

    public AbstractC0242c4(int i5) {
        new ArrayList();
        this.f5531a = i5;
    }

    public static /* synthetic */ void e(AbstractC0242c4 abstractC0242c4) {
        abstractC0242c4.c();
        AbstractC0213D.g("no success or failure set on method implementation", abstractC0242c4.f5540k);
    }

    public abstract C0091m a();

    public abstract String b();

    public abstract void c();

    public final void d(g gVar) {
        AbstractC0213D.f("firebaseApp cannot be null", gVar);
        this.f5533c = gVar;
    }

    public final void f(Status status) {
        this.f5540k = true;
        this.f5542m.c(null, status);
    }

    public final void g(Object obj) {
        this.f5540k = true;
        this.f5541l = obj;
        this.f5542m.c(obj, null);
    }
}
