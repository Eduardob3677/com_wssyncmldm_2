package com.idm.fotaagent.enabler.ui.installconfirm;

/* loaded from: classes.dex */
public final /* synthetic */ class c implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f6430c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f6431d;

    public /* synthetic */ c(int i5, Object obj) {
        this.f6430c = i5;
        this.f6431d = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i5 = this.f6430c;
        Object obj = this.f6431d;
        switch (i5) {
            case 0:
                ((InstallConfirmPresenter) obj).refresh();
                break;
            default:
                ((InstallCountDown) obj).onCountDown();
                break;
        }
    }
}
