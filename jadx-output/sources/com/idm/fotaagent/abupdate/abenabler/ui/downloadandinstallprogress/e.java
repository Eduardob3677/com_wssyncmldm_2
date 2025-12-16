package com.idm.fotaagent.abupdate.abenabler.ui.downloadandinstallprogress;

import com.idm.fotaagent.abupdate.abenabler.ui.downloadandinstallprogress.DownloadAndInstallProgressContractor;

/* loaded from: classes.dex */
public final /* synthetic */ class e implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f6331c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ MainTitleAnimator f6332d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ DownloadAndInstallProgressContractor.View f6333e;

    public /* synthetic */ e(MainTitleAnimator mainTitleAnimator, DownloadAndInstallProgressContractor.View view, int i5) {
        this.f6331c = i5;
        this.f6332d = mainTitleAnimator;
        this.f6333e = view;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f6331c) {
            case 0:
                this.f6332d.lambda$onRefresh$0(this.f6333e);
                break;
            default:
                this.f6332d.lambda$restoreMainTitle$1(this.f6333e);
                break;
        }
    }
}
