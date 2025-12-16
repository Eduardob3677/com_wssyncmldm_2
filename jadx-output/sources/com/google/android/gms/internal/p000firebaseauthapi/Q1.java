package com.google.android.gms.internal.p000firebaseauthapi;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

/* loaded from: classes.dex */
public class Q1 extends Handler {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f5461a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ Q1(Looper looper, int i5) {
        super(looper);
        this.f5461a = i5;
    }

    @Override // android.os.Handler
    public void dispatchMessage(Message message) {
        switch (this.f5461a) {
            case 1:
                super.dispatchMessage(message);
                break;
            case 2:
            default:
                super.dispatchMessage(message);
                break;
            case 3:
                super.dispatchMessage(message);
                break;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ Q1(Looper looper, Handler.Callback callback, int i5) {
        super(looper, callback);
        this.f5461a = i5;
    }
}
