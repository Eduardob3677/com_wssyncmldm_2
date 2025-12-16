.class interface abstract Lcom/samsung/android/fotaagent/common/feature/CarrierFeature$Delegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/samsung/android/fotaagent/common/feature/FeatureDelegate;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/fotaagent/common/feature/CarrierFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Delegate"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/fotaagent/common/feature/CarrierFeature$Delegate$Impl;
    }
.end annotation


# virtual methods
.method public abstract disableWarning4DataCostDuringFota(I)Z
    .annotation runtime Lcom/samsung/android/fotaagent/common/feature/FeatureAttribute;
        description = "Whether to disable warning message for data cost of mobile networks\n\n1. true: do not show warning message\n2. false: show warning message"
        values = {
            "true",
            "false"
        }
    .end annotation
.end method

.method public abstract getActionDuringRoaming(I)Ljava/lang/String;
    .annotation runtime Lcom/samsung/android/fotaagent/common/feature/FeatureAttribute;
        description = "Whether to allow software update (FOTA) in roaming\n\n1. onlywifi: only Wi-Fi allowed\n2. onlywifipull: only pull via Wi-Fi allowed (push/polling via Wi-Fi not allowed)\n3. domestic_roaming: domestic roaming network allowed\n4. roaminginfo: roaming network allowed\n\nonlywifi,roaminginfo is the same as onlywifi\n\nNote that roaminginfo allows to proceed software update via roaming network.\nTo prevent software update via roaming network, set onlywifi."
        values = {
            "onlywifi",
            "onlywifipull",
            "domestic_roaming",
            "roaminginfo"
        }
    .end annotation
.end method

.method public abstract getDefaultWifiAutoDownload(I)Ljava/lang/String;
    .annotation runtime Lcom/samsung/android/fotaagent/common/feature/FeatureAttribute;
        description = "Default status for \"Auto download over Wifi\" in Settings\n\n1. off: set the default status to off\n2. wifi: set the default status to wifi\n3. wifiandcellular: set the default status to wifi/cellular\n4. remove,off: remove the menu and disable auto download5. remove,wifi: remove the menu and enable auto download over wifi6. remove: remove the menu and enable auto download over wifi/cellular"
        values = {
            "off",
            "wifi",
            "wifiandcellular",
            "remove,off",
            "remove,wifi",
            "remove"
        }
    .end annotation
.end method

.method public abstract getDeltaBinaryDownloadVia(I)Ljava/lang/String;
    .annotation runtime Lcom/samsung/android/fotaagent/common/feature/FeatureAttribute;
        description = "Unlimited: no restrictions for networks during FOTA\nwifi_dedicated: delta binary can be downloaded via only Wi-Fi\nmobile_only: no Internet access via Wi-Fi"
        values = {
            "Unlimited",
            "wifi_dedicated",
            "mobile_only"
        }
    .end annotation
.end method

.method public abstract isFirstNetReady(Landroid/content/Context;)Z
    .annotation runtime Lcom/samsung/android/fotaagent/common/feature/FeatureAttribute;
        description = "Is FirstNet ready?"
        values = {
            "true",
            "false"
        }
    .end annotation
.end method

.method public abstract isShowDeltaSizeBeforeDownload(I)Z
    .annotation runtime Lcom/samsung/android/fotaagent/common/feature/FeatureAttribute;
        description = "Whether to have to notify the size of delta binary (aka., update package).\nUsers can decide whether to download delta binary from its size.\n\n1. true: notify the size\n2. false: need not notify the size.\n\nNote that the size could be notified even in the case of FALSE due to other features."
        values = {
            "true",
            "false"
        }
    .end annotation
.end method
