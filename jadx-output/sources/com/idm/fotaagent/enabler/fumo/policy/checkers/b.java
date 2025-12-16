package com.idm.fotaagent.enabler.fumo.policy.checkers;

import com.idm.fotaagent.enabler.fumo.policy.afw.AfWManager;
import com.idm.fotaagent.enabler.fumo.policy.checkers.Policies;

/* loaded from: classes.dex */
public final /* synthetic */ class b implements Checker {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f6391a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ AfWManager f6392b;

    public /* synthetic */ b(AfWManager afWManager, int i5) {
        this.f6391a = i5;
        this.f6392b = afWManager;
    }

    @Override // com.idm.fotaagent.enabler.fumo.policy.checkers.Checker
    public final void check() {
        int i5 = this.f6391a;
        AfWManager afWManager = this.f6392b;
        switch (i5) {
            case 0:
                Policies.ForDownload.lambda$getExceptional$0(afWManager);
                break;
            default:
                Policies.ForInstall.lambda$getExceptional$0(afWManager);
                break;
        }
    }
}
