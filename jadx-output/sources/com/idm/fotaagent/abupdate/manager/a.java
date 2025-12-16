package com.idm.fotaagent.abupdate.manager;

/* loaded from: classes.dex */
public final /* synthetic */ class a implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f6337c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f6338d;

    public /* synthetic */ a(int i5, Object obj) {
        this.f6337c = i5;
        this.f6338d = obj;
    }

    @Override // java.lang.Runnable
    public final void run() throws InterruptedException {
        int i5 = this.f6337c;
        Object obj = this.f6338d;
        switch (i5) {
            case 0:
                ((EnablerManager) obj).lambda$resetUpdateEngine$4();
                break;
            case 1:
                ((EnablerManager) obj).lambda$cancelDownloadingAndInstalling$3();
                break;
            case 2:
                ((EnablerManager) obj).lambda$suspend$2();
                break;
            default:
                ((UpdateEngineManager) obj).bind();
                break;
        }
    }
}
