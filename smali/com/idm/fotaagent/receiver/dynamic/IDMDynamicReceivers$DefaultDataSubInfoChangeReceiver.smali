.class Lcom/idm/fotaagent/receiver/dynamic/IDMDynamicReceivers$DefaultDataSubInfoChangeReceiver;
.super Lcom/idm/fotaagent/receiver/dynamic/ReceiverWithIntentFilter;
.source "SourceFile"


# annotations
.annotation runtime Lcom/idm/fotaagent/receiver/dynamic/ReceiverToBeAutoRegistered;
.end annotation

.annotation runtime Lcom/idm/fotaagent/receiver/dynamic/ReceiverToBeSpecifiedFlag;
    property = .enum Lcom/idm/fotaagent/receiver/dynamic/ReceiverToBeSpecifiedFlag$Property;->EXPORT:Lcom/idm/fotaagent/receiver/dynamic/ReceiverToBeSpecifiedFlag$Property;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/receiver/dynamic/IDMDynamicReceivers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultDataSubInfoChangeReceiver"
.end annotation


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

    const-string v0, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-direct {p0, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public handle()V
    .locals 0

    const-string p0, "Subscription Changed Receive"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-static {}, Lcom/idm/fotaagent/receiver/dynamic/IDMDynamicReceivers;->resetNetworkFeatures()V

    return-void
.end method
