package com.idm.fotaagent.utils;

import android.content.Context;
import h0.C0430a;
import java.io.Serializable;

/* loaded from: classes.dex */
public final /* synthetic */ class a implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f6470c = 0;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f6471d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f6472e;
    public final /* synthetic */ Object f;

    public /* synthetic */ a(Context context, int i5, String str) {
        this.f6472e = context;
        this.f = str;
        this.f6471d = i5;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f6470c) {
            case 0:
                ToastHelper.lambda$showToast$0((Context) this.f6472e, (String) this.f, this.f6471d);
                break;
            default:
                ((C0430a) this.f6472e).f6954b.q(this.f6471d, this.f);
                break;
        }
    }

    public /* synthetic */ a(C0430a c0430a, int i5, Serializable serializable) {
        this.f6472e = c0430a;
        this.f6471d = i5;
        this.f = serializable;
    }
}
