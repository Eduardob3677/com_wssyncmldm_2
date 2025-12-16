package com.idm.fotaagent.enabler.fumo;

import android.text.TextUtils;
import com.idm.adapter.callback.IDMCallback;
import com.idm.adapter.callback.IDMCallbackStatus;
import com.idm.agent.restclient.RestRequest;
import com.idm.fotaagent.enabler.fumo.UpdateReporter;
import com.idm.service.actioninfo.IDMActionInfo;
import com.samsung.android.fotaagent.common.log.Log;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
public abstract class DLReporter extends UpdateReporter {

    public static class ForFailure extends DLReporter {
        public ForFailure() {
            Log.I("");
        }
    }

    public static class ForSuccess extends DLReporter {
        private static final AtomicBoolean reporting = new AtomicBoolean(false);

        public static final class DLSuccessTypeCallback extends UpdateReporter.ReportCallback {
            private DLSuccessTypeCallback() {
            }

            @Override // com.idm.fotaagent.enabler.fumo.UpdateReporter.ReportCallback, com.idm.adapter.callback.IDMCallback
            public void idmOnStatus(String str, IDMCallbackStatus iDMCallbackStatus) {
                ForSuccess.reporting.set(false);
                Log.I("taskId : " + str);
                super.idmOnStatus(str, iDMCallbackStatus);
                new IDMFumoExecuteHandler(str).callbackIfPossible(40, null);
            }
        }

        public static class InstanceLazyHolder {
            public static final ForSuccess INSTANCE = new ForSuccess();

            private InstanceLazyHolder() {
            }
        }

        public static ForSuccess getInstance() {
            return InstanceLazyHolder.INSTANCE;
        }

        @Override // com.idm.fotaagent.enabler.fumo.UpdateReporter
        public void finish(String str) {
            new IDMFumoExecuteHandler(str).callbackIfPossible(40, null);
        }

        @Override // com.idm.fotaagent.enabler.fumo.UpdateReporter
        public IDMCallback getCallback() {
            return new DLSuccessTypeCallback();
        }

        @Override // com.idm.fotaagent.enabler.fumo.UpdateReporter
        public void report(String str) {
            report(str, null);
        }

        private ForSuccess() {
            Log.I("");
        }

        @Override // com.idm.fotaagent.enabler.fumo.UpdateReporter
        public void report(String str, String str2) {
            if (reporting.compareAndSet(false, true)) {
                Log.I("taskId : " + str);
                super.report(str, str2);
            }
        }
    }

    @Override // com.idm.fotaagent.enabler.fumo.UpdateReporter
    public RestRequest buildRestRequest(IDMActionInfo iDMActionInfo, String str) {
        return new RestRequest.Builder(RestRequest.MethodType.REST_METHOD_POST, iDMActionInfo.idmGetNotifyUrl()).body(str).build();
    }

    @Override // com.idm.fotaagent.enabler.fumo.UpdateReporter
    public void checkUri(IDMActionInfo iDMActionInfo) {
        String strIdmGetNotifyUrl = iDMActionInfo.idmGetNotifyUrl();
        if (TextUtils.isEmpty(strIdmGetNotifyUrl)) {
            throw new IllegalStateException("notifyUrl is empty.");
        }
        Log.D(strIdmGetNotifyUrl);
    }
}
