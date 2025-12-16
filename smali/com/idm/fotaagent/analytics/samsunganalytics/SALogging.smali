.class public Lcom/idm/fotaagent/analytics/samsunganalytics/SALogging;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TRACKING_ID:Ljava/lang/String; = "012-399-544955"

.field private static enabled:Z = false


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/app/Application;)V
    .locals 0

    invoke-static {p0}, Lcom/idm/fotaagent/analytics/samsunganalytics/SALogging;->lambda$setup$0(Landroid/app/Application;)V

    return-void
.end method

.method public static synthetic b(Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/idm/fotaagent/analytics/samsunganalytics/SALogging;->lambda$send$1(Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$send$1(Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "det"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->setDimension(Ljava/util/Map;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;

    return-void
.end method

.method private static synthetic lambda$setup$0(Landroid/app/Application;)V
    .locals 3

    const-class v0, Lcom/idm/fotaagent/analytics/samsunganalytics/SALogging;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-direct {v1}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;-><init>()V

    const-string v2, "012-399-544955"

    invoke-virtual {v1, v2}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->setTrackingId(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/idm/fotaagent/utils/DeviceUtils;->readAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->setVersion(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->enableAutoDeviceId()Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->setConfiguration(Landroid/app/Application;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)V

    const/4 p0, 0x1

    sput-boolean p0, Lcom/idm/fotaagent/analytics/samsunganalytics/SALogging;->enabled:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static send(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0, v0}, Lcom/idm/fotaagent/analytics/samsunganalytics/SALogging;->send(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static send(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/idm/fotaagent/analytics/samsunganalytics/SALogging;->send(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static send(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lcom/idm/fotaagent/analytics/samsunganalytics/SALogging;->enabled:Z

    if-nez v0, :cond_0

    const-string p0, "setup is not done"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "screenId : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", eventId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", detail : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->V(Ljava/lang/Object;)V

    :try_start_0
    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;

    invoke-direct {v0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->setEventId(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;

    move-result-object p1

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lu2/a;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lu2/a;-><init>(Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance p2, Lu2/a;

    const/4 v0, 0x1

    invoke-direct {p2, p1, v0}, Lu2/a;-><init>(Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;I)V

    invoke-virtual {p0, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->getInstance()Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;

    move-result-object p0

    invoke-virtual {p1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->sendLog(Ljava/util/Map;)I
    :try_end_0
    .catch Lcom/samsung/context/sdk/samsunganalytics/AnalyticsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static send(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-boolean v0, Lcom/idm/fotaagent/analytics/samsunganalytics/SALogging;->enabled:Z

    if-nez v0, :cond_0

    const-string p0, "setup is not done"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "eventId : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", dimen : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->V(Ljava/lang/Object;)V

    :try_start_0
    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;

    invoke-direct {v0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;-><init>()V

    invoke-virtual {v0, p0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->setEventId(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->setDimension(Ljava/util/Map;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;

    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->getInstance()Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->sendLog(Ljava/util/Map;)I
    :try_end_0
    .catch Lcom/samsung/context/sdk/samsunganalytics/AnalyticsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static sendScreenEntrance(Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lcom/idm/fotaagent/analytics/samsunganalytics/SALogging;->enabled:Z

    if-nez v0, :cond_0

    const-string p0, "setup is not done"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    return-void

    :cond_0
    if-nez p0, :cond_1

    return-void

    :cond_1
    const-string v0, "screenId : "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->V(Ljava/lang/Object;)V

    :try_start_0
    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->getInstance()Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;

    move-result-object v0

    new-instance v1, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$ScreenViewBuilder;

    invoke-direct {v1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$ScreenViewBuilder;-><init>()V

    invoke-virtual {v1, p0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$ScreenViewBuilder;->setScreenView(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$ScreenViewBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$ScreenViewBuilder;->build()Ljava/util/Map;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->sendLog(Ljava/util/Map;)I
    :try_end_0
    .catch Lcom/samsung/context/sdk/samsunganalytics/AnalyticsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static setup(Landroid/app/Application;)V
    .locals 3

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, LD1/b;

    const/16 v2, 0x1a

    invoke-direct {v1, v2, p0}, LD1/b;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
