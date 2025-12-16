.class public Lcom/idm/fotaagent/receiver/dynamic/LowBatteryReceiver;
.super Lcom/idm/fotaagent/receiver/dynamic/ReceiverWithIntentFilter;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/receiver/dynamic/ReceiverWithIntentFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public getIntentFilter()Landroid/content/IntentFilter;
    .locals 1

    new-instance p0, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.BATTERY_LOW"

    invoke-direct {p0, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public handle()V
    .locals 1

    const-string p0, "Low Battery"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-static {}, Lcom/idm/fotaagent/abupdate/abenabler/utils/UpdateEngineWakeLockManager;->get()Lcom/idm/fotaagent/abupdate/abenabler/utils/UpdateEngineWakeLockManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/fotaagent/abupdate/abenabler/utils/UpdateEngineWakeLockManager;->releaseWakeLock()V

    invoke-static {}, Lcom/idm/fotaagent/receiver/dynamic/IDMDynamicReceivers;->getInstance()Lcom/idm/fotaagent/receiver/dynamic/IDMDynamicReceivers;

    move-result-object p0

    const-class v0, Lcom/idm/fotaagent/receiver/dynamic/LowBatteryReceiver;

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/receiver/dynamic/IDMDynamicReceivers;->unregister(Ljava/lang/Class;)V

    return-void
.end method
