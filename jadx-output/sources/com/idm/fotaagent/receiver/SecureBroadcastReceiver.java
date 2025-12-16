package com.idm.fotaagent.receiver;

import com.idm.fotaagent.InitExecutor;
import com.idm.fotaagent.database.room.data.repository.DeviceRegistrationRepository;
import com.idm.fotaagent.database.room.data.repository.GeneralRepository;
import com.idm.fotaagent.database.room.data.repository.RegisteredDeviceRepository;
import com.idm.fotaagent.database.sqlite.database.dao.ActionInfoDao;
import com.idm.fotaagent.database.sqlite.database.settings.SettingsDatabaseManager;
import com.idm.fotaagent.enabler.fumo.policy.mdm.MDMInfo;
import com.idm.fotaagent.enabler.fumo.policy.mdm.MDMManager;
import com.idm.fotaagent.enabler.ui.installconfirm.InstallPolicy;
import com.idm.fotaagent.restapi.registration.RegistrationHelper;
import com.idm.fotaagent.scheduler.SchedulerInitiator;
import com.idm.fotaagent.utils.receiver.SafeBroadcastReceiver;
import com.samsung.android.fotaagent.common.log.Log;
import java.util.Optional;

/* loaded from: classes.dex */
public class SecureBroadcastReceiver extends SafeBroadcastReceiver {
    static final String ACTION_FIRSTNET_FORCE_UPDATE = "com.samsung.intent.action.FIRSTNET_FORCE_UPDATE";
    static final String ACTION_MDM_REGISTER = "sec.fota.intent.MDM_REGISTER";
    static final String ACTION_MDM_SUCANCEL = "sec.fota.intent.MDM_SU_CANCEL";
    public static final String ACTION_PULL = "sec.fota.action.SOFTWARE_UPDATE";
    static final String ACTION_SETUPWIZARD_COMPLETED = "com.sec.android.app.secsetupwizard.SETUPWIZARD_COMPLETE";

    private String getTaskId() {
        return new ActionInfoDao().getSessionId();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Boolean lambda$isCorpIdChanged$0(String str, String str2) {
        return Boolean.valueOf(!str2.equals(str));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Boolean lambda$isCorpIdChanged$1(String str) {
        return Boolean.valueOf(str.length() > 0);
    }

    @Override // com.idm.fotaagent.utils.receiver.SafeBroadcastReceiver
    public void handle() {
        Log.I("Receive broadcast message:" + getAction());
        String action = getAction();
        action.getClass();
        switch (action) {
            case "com.sec.android.app.secsetupwizard.SETUPWIZARD_COMPLETE":
                RegistrationHelper.scheduleDeviceRegistrationIfNeeded(getContext(), DeviceRegistrationRepository.Requester.SETUP_WIZARD);
                break;
            case "sec.fota.intent.MDM_REGISTER":
                new GeneralRepository(getContext()).enableSendResultForMDM();
                if (!isCorpIdChanged()) {
                    MDMManager.sendRegistrationResultIfNeeded(1);
                    break;
                } else {
                    InitExecutor.get().reset();
                    RegistrationHelper.startDeviceRegistration(getContext(), DeviceRegistrationRepository.Requester.MDM);
                    break;
                }
            case "sec.fota.action.SOFTWARE_UPDATE":
                SchedulerInitiator.getInstance().initiateByUser();
                break;
            case "com.samsung.intent.action.FIRSTNET_FORCE_UPDATE":
                SettingsDatabaseManager.disableFirstNetInstall(getContext());
                InstallPolicy.get(getContext()).rebootOrInstall(getTaskId());
                break;
            case "sec.fota.intent.MDM_SU_CANCEL":
                SchedulerInitiator.getInstance().cancelByMdm();
                break;
            default:
                Log.W("unexpected action");
                break;
        }
    }

    public boolean isCorpIdChanged() {
        String corpId = new MDMInfo().getCorpId();
        Optional<String> corpId2 = new RegisteredDeviceRepository(getContext()).getCorpId();
        boolean zBooleanValue = ((Boolean) corpId2.map(new F2.b(2, corpId)).orElseGet(new b(0, corpId))).booleanValue();
        if (zBooleanValue) {
            Log.H("Current CorpId: " + corpId + ", Registered CorpId: " + corpId2.orElse(null));
            Log.I("Current CorpId is different from registered one; reset and re-register device");
        }
        return zBooleanValue;
    }
}
