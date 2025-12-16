package com.idm.fotaagent.abupdate.manager;

import com.idm.fotaagent.abupdate.updateengine.UpdateStatus;
import java.io.Serializable;
import java.util.Optional;

/* loaded from: classes.dex */
public class UpdateInfo implements Serializable {
    private static final long serialVersionUID = 8074333769599985750L;
    private final Integer installationStep;
    private final int percent;

    public UpdateInfo(Integer num, int i5) {
        this.installationStep = num;
        this.percent = i5;
    }

    public int installationStep() {
        return ((Integer) Optional.ofNullable(this.installationStep).orElse(Integer.valueOf(UpdateStatus.InstallationStep.IDLE.getStatus()))).intValue();
    }

    public int percent() {
        return this.percent;
    }

    public String toString() {
        return "UpdateInfo{installationStep='" + this.installationStep + "'percent='" + this.percent + "'}";
    }
}
