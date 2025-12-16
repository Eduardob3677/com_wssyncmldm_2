package com.idm.fotaagent.enabler.ui.installconfirm;

import com.idm.fotaagent.enabler.ui.common.ButtonOnClickListener;
import com.idm.fotaagent.enabler.ui.installconfirm.InstallConfirmContractor;
import com.idm.fotaagent.enabler.ui.installconfirm.InstallPolicy;

/* loaded from: classes.dex */
public final /* synthetic */ class a implements ButtonOnClickListener.ButtonAction, InstallPolicy.OnFirstNetReadyChangedListener {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f6427c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ InstallConfirmContractor.Presenter f6428d;

    public /* synthetic */ a(InstallConfirmContractor.Presenter presenter, int i5) {
        this.f6427c = i5;
        this.f6428d = presenter;
    }

    @Override // com.idm.fotaagent.enabler.ui.common.ButtonOnClickListener.ButtonAction
    public void onClick() {
        int i5 = this.f6427c;
        InstallConfirmContractor.Presenter presenter = this.f6428d;
        switch (i5) {
            case 0:
                presenter.scheduleInstall();
                break;
            default:
                presenter.installNow();
                break;
        }
    }

    @Override // com.idm.fotaagent.enabler.ui.installconfirm.InstallPolicy.OnFirstNetReadyChangedListener
    public void update() {
        ((InstallConfirmPresenter) this.f6428d).lambda$onStart$0();
    }
}
