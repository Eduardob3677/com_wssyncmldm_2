.class public Lcom/samsung/android/fotaagent/common/feature/CarrierFeature$Delegate$Impl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/fotaagent/common/feature/CarrierFeature$Delegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/fotaagent/common/feature/CarrierFeature$Delegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Impl"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public disableWarning4DataCostDuringFota(I)Z
    .locals 1

    const-string p0, "CarrierFeature_SyncML_DisableWarning4DataCostDuringFota"

    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Lcom/samsung/android/fotaagent/common/feature/CarrierFeature;->access$100(ILjava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getActionDuringRoaming(I)Ljava/lang/String;
    .locals 1

    const-string p0, "CarrierFeature_SyncML_SwUpdateActionDuringRoaming"

    const-string v0, "onlywifi"

    invoke-static {p1, p0, v0}, Lcom/samsung/android/fotaagent/common/feature/CarrierFeature;->access$000(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultWifiAutoDownload(I)Ljava/lang/String;
    .locals 1

    const-string p0, "CarrierFeature_SyncML_ConfigDefStatusAutoDownload"

    const-string v0, "wifi"

    invoke-static {p1, p0, v0}, Lcom/samsung/android/fotaagent/common/feature/CarrierFeature;->access$000(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDeltaBinaryDownloadVia(I)Ljava/lang/String;
    .locals 1

    const-string p0, "CarrierFeature_SyncML_DeltaBinaryDownVia"

    const-string v0, "Unlimited"

    invoke-static {p1, p0, v0}, Lcom/samsung/android/fotaagent/common/feature/CarrierFeature;->access$000(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isFirstNetReady(Landroid/content/Context;)Z
    .locals 4

    const/4 p0, 0x0

    :try_start_0
    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    const-string v1, "defaultTelephonyManager should not be null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-class v1, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/SubscriptionManager;

    const-string v1, "subscriptionManager should not be nulll"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object p1

    const-string v1, "subscriptionInfos should not be null"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v2

    const-string v3, "CarrierFeature_SyncML_IsFirstNet"

    invoke-static {v2, v3, p0}, Lcom/samsung/android/fotaagent/common/feature/CarrierFeature;->access$100(ILjava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    const-string p1, "FirstNet ready"

    invoke-static {p1}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_2
    return p0

    :goto_1
    invoke-static {p1}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    return p0
.end method

.method public isShowDeltaSizeBeforeDownload(I)Z
    .locals 1

    const-string p0, "CarrierFeature_SyncML_EnableNotiDeltaBinarySizeBeforeDownload"

    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Lcom/samsung/android/fotaagent/common/feature/CarrierFeature;->access$100(ILjava/lang/String;Z)Z

    move-result p0

    return p0
.end method
