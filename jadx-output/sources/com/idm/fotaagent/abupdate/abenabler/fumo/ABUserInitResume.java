package com.idm.fotaagent.abupdate.abenabler.fumo;

import B.f;
import android.content.Context;
import com.idm.fotaagent.abupdate.updateengine.UpdateStatus;
import com.idm.fotaagent.database.room.data.repository.FotaJobRepository;
import com.idm.fotaagent.enabler.fumo.IDMFumoExecuteHandler;
import com.idm.fotaagent.enabler.fumo.UserInitResume;
import com.samsung.android.fotaagent.common.log.Log;

/* loaded from: classes.dex */
public class ABUserInitResume extends UserInitResume {
    public ABUserInitResume(Context context, String str) {
        super(context, str);
    }

    @Override // com.idm.fotaagent.enabler.fumo.UserInitResume
    public void execute() {
        this.actionInfoDao.setUiMode(1);
        int fumoStatus = this.actionInfoDao.getFumoStatus();
        f.D("fumoStatus: ", fumoStatus);
        if (fumoStatus != 60) {
            super.execute();
        } else {
            Log.I("AB resume");
            new IDMFumoExecuteHandler(this.taskId).fumoStartIfPossible(fumoStatus);
        }
    }

    @Override // com.idm.fotaagent.enabler.fumo.UserInitResume
    public boolean needsNetwork() {
        return UpdateStatus.InstallationStep.of(new FotaJobRepository(this.context).getUpdateInfo().installationStep()).needsNetwork();
    }
}
