package com.google.firebase.messaging;

import java.util.concurrent.Executor;

/* renamed from: com.google.firebase.messaging.c, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class ExecutorC0382c implements Executor {

    /* renamed from: d, reason: collision with root package name */
    public static final /* synthetic */ ExecutorC0382c f6225d = new ExecutorC0382c(0);

    /* renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ ExecutorC0382c f6226e = new ExecutorC0382c(1);
    public static final /* synthetic */ ExecutorC0382c f = new ExecutorC0382c(2);

    /* renamed from: g, reason: collision with root package name */
    public static final /* synthetic */ ExecutorC0382c f6227g = new ExecutorC0382c(3);

    /* renamed from: h, reason: collision with root package name */
    public static final /* synthetic */ ExecutorC0382c f6228h = new ExecutorC0382c(4);

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f6229c;

    public /* synthetic */ ExecutorC0382c(int i5) {
        this.f6229c = i5;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        switch (this.f6229c) {
            case 0:
                runnable.run();
                break;
            case 1:
                runnable.run();
                break;
            case 2:
                runnable.run();
                break;
            case 3:
                runnable.run();
                break;
            default:
                runnable.run();
                break;
        }
    }
}
