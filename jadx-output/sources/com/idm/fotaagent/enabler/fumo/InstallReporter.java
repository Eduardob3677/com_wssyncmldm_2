package com.idm.fotaagent.enabler.fumo;

import android.text.TextUtils;
import com.idm.adapter.callback.IDMCallback;
import com.idm.adapter.callback.IDMCallbackStatus;
import com.idm.agent.restclient.RestRequest;
import com.idm.fotaagent.database.room.data.repository.FotaJobRepository;
import com.idm.fotaagent.enabler.fumo.UpdateReporter;
import com.idm.service.actioninfo.IDMActionInfo;
import com.samsung.android.fotaagent.common.log.Log;
import java.util.concurrent.CompletableFuture;

/* loaded from: classes.dex */
public class InstallReporter extends UpdateReporter {
    private static final String INSTALL_TYPE_INSTALL = "I";
    private final CompletableFuture<Void> future;
    private final String installTypeUri = new FotaJobRepository(getContext()).getInstallTypeUri();

    public static final class InstallTypeCallback extends UpdateReporter.ReportCallback {
        private final CompletableFuture<Void> future;

        public InstallTypeCallback(CompletableFuture<Void> completableFuture) {
            this.future = completableFuture;
        }

        @Override // com.idm.fotaagent.enabler.fumo.UpdateReporter.ReportCallback, com.idm.adapter.callback.IDMCallback
        public void idmOnStatus(String str, IDMCallbackStatus iDMCallbackStatus) {
            super.idmOnStatus(str, iDMCallbackStatus);
            this.future.complete(null);
        }
    }

    public InstallReporter(CompletableFuture<Void> completableFuture) {
        this.future = completableFuture;
    }

    @Override // com.idm.fotaagent.enabler.fumo.UpdateReporter
    public RestRequest buildRestRequest(IDMActionInfo iDMActionInfo, String str) {
        String str2 = this.installTypeUri + "&installType=I";
        Log.D(str2);
        iDMActionInfo.idmSetInstallTypeUri(str2);
        return new RestRequest.Builder(RestRequest.MethodType.REST_METHOD_GET, iDMActionInfo.idmGetInstallTypeUri()).build();
    }

    @Override // com.idm.fotaagent.enabler.fumo.UpdateReporter
    public void checkUri(IDMActionInfo iDMActionInfo) {
        if (TextUtils.isEmpty(this.installTypeUri)) {
            throw new IllegalStateException("installTypeUri is empty.");
        }
        Log.D(this.installTypeUri);
    }

    @Override // com.idm.fotaagent.enabler.fumo.UpdateReporter
    public void finish(String str) {
        this.future.complete(null);
    }

    @Override // com.idm.fotaagent.enabler.fumo.UpdateReporter
    public IDMCallback getCallback() {
        return new InstallTypeCallback(this.future);
    }
}
