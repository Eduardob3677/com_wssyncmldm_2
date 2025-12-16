package com.idm.fotaagent.enabler.ui.downloadconfirm;

import com.idm.fotaagent.enabler.ui.common.ButtonOnClickListener;

/* loaded from: classes.dex */
public final /* synthetic */ class a implements ButtonOnClickListener.ButtonAction {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f6422c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ DownloadConfirmButtonViewModel f6423d;

    public /* synthetic */ a(DownloadConfirmButtonViewModel downloadConfirmButtonViewModel, int i5) {
        this.f6422c = i5;
        this.f6423d = downloadConfirmButtonViewModel;
    }

    @Override // com.idm.fotaagent.enabler.ui.common.ButtonOnClickListener.ButtonAction
    public final void onClick() {
        int i5 = this.f6422c;
        DownloadConfirmButtonViewModel downloadConfirmButtonViewModel = this.f6423d;
        switch (i5) {
            case 0:
                downloadConfirmButtonViewModel.lambda$highEmphasisButtonOnClickListener$1();
                break;
            default:
                downloadConfirmButtonViewModel.lambda$mediumEmphasisButtonOnClickListener$0();
                break;
        }
    }
}
