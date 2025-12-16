package com.idm.fotaagent.enabler.ui.installconfirm;

import android.os.BatteryManager;
import android.telephony.SubscriptionInfo;
import android.telephony.SubscriptionManager;
import com.idm.fotaagent.enabler.ui.DescriptionContent;
import com.idm.fotaagent.enabler.ui.whatsnew.AbstractClickableSpan;
import com.idm.fotaagent.receiver.dynamic.ReceiverToBeSpecifiedFlag;
import com.idm.fotaagent.utils.battery.BatteryChecker;
import com.idm.service.actioninfo.IDMActionInfo;
import com.samsung.android.fotaagent.common.FotaTelephonyManager;
import java.util.Map;
import java.util.function.Function;

/* loaded from: classes.dex */
public final /* synthetic */ class d implements Function {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f6432a;

    public /* synthetic */ d(int i5) {
        this.f6432a = i5;
    }

    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        switch (this.f6432a) {
            case 0:
                return Integer.valueOf(((IDMActionInfo) obj).idmGetFumoStatus());
            case 1:
                return AbstractClickableSpan.ForAppUpdateInformation.lambda$onClick$0((Map.Entry) obj);
            case 2:
                return AbstractClickableSpan.ForMainDescription.lambda$onClick$0((Map.Entry) obj);
            case 3:
                return Boolean.valueOf(((DescriptionContent) obj).existsSummaryDescription());
            case 4:
                return String.valueOf(obj);
            case 5:
                return ((ReceiverToBeSpecifiedFlag) obj).property();
            case 6:
                return BatteryChecker.lambda$isEnoughBattery$0((BatteryManager) obj);
            case 7:
                return FotaTelephonyManager.lambda$getDataSimSlotId$0((SubscriptionManager) obj);
            default:
                return FotaTelephonyManager.lambda$getDataSimSlotId$1((SubscriptionInfo) obj);
        }
    }
}
