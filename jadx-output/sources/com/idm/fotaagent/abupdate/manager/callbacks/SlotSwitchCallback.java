package com.idm.fotaagent.abupdate.manager.callbacks;

import com.idm.fotaagent.abupdate.updateengine.ErrorCode;
import com.samsung.android.fotaagent.common.log.Log;
import java.util.concurrent.CompletableFuture;

/* loaded from: classes.dex */
public class SlotSwitchCallback extends AbstractCallback {
    private final CompletableFuture<Void> future;

    public static class SlotSwitchFailedException extends RuntimeException {
        private static final long serialVersionUID = -6769760399668242143L;

        public SlotSwitchFailedException(String str) {
            super(str);
        }
    }

    public SlotSwitchCallback(CompletableFuture<Void> completableFuture) {
        this.future = completableFuture;
    }

    @Override // com.idm.fotaagent.abupdate.manager.callbacks.AbstractCallback
    public void doSetResultCode(ErrorCode errorCode) {
        if (errorCode == ErrorCode.SUCCESS) {
            Log.I("Succeed to change the slot");
            this.future.complete(null);
        }
        this.future.completeExceptionally(new SlotSwitchFailedException("errorCode is " + errorCode));
    }

    @Override // com.idm.fotaagent.abupdate.updateengine.UpdateEngineCallback
    public void setUpdateStatus(int i5, float f) {
    }
}
