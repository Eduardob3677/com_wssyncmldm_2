package com.idm.fotaagent.enabler.fumo.policy.checkers;

import com.idm.fotaagent.enabler.fumo.policy.checkers.Action;
import com.idm.fotaagent.enabler.fumo.policy.exceptions.DownloadNotAllowedByPolicyException;
import com.idm.fotaagent.enabler.fumo.policy.exceptions.InstallFailedByPolicyException;
import com.idm.fotaagent.enabler.fumo.policy.exceptions.InstallSuspendedByPolicyException;
import com.idm.fotaagent.enabler.fumo.policy.interfaces.ActionForException;
import java.util.function.Consumer;

/* loaded from: classes.dex */
public final /* synthetic */ class a implements Consumer {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f6389c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ ActionForException f6390d;

    public /* synthetic */ a(ActionForException actionForException, int i5) {
        this.f6389c = i5;
        this.f6390d = actionForException;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        int i5 = this.f6389c;
        ActionForException actionForException = this.f6390d;
        switch (i5) {
            case 0:
                ((Action.DownloadNotAllowed) actionForException).reportAndShowUiIfNeeded((DownloadNotAllowedByPolicyException) obj);
                break;
            case 1:
                ((Action.InstallFailed) actionForException).reportAndShowUiIfNeeded((InstallFailedByPolicyException) obj);
                break;
            default:
                ((Action.InstallSuspended) actionForException).lambda$act$0((InstallSuspendedByPolicyException) obj);
                break;
        }
    }
}
