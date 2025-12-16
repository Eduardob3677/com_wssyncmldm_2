.class public Lcom/idm/fotaagent/receiver/callback/ProviderEventHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/idm/adapter/callback/IDMCallback;


# static fields
.field private static final NAME_FOR_CODE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/idm/fotaagent/receiver/callback/ProviderEventHandler;->NAME_FOR_CODE:Ljava/util/Map;

    const-class v0, Lcom/idm/adapter/callback/IDMCallbackStatusInterface;

    invoke-virtual {v0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v3, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v5, v3, Ljava/lang/Integer;

    if-eqz v5, :cond_0

    sget-object v5, Lcom/idm/fotaagent/receiver/callback/ProviderEventHandler;->NAME_FOR_CODE:Ljava/util/Map;

    move-object v6, v3

    check-cast v6, Ljava/lang/Integer;

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " is already used for "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    invoke-static {v3}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private ignoresIfSuCancelFor(I)Z
    .locals 0

    sparse-switch p1, :sswitch_data_0

    const/4 p0, 0x0

    return p0

    :sswitch_0
    const/4 p0, 0x1

    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x14 -> :sswitch_0
        0x1e -> :sswitch_0
        0x23 -> :sswitch_0
        0x28 -> :sswitch_0
        0x32 -> :sswitch_0
        0xc8 -> :sswitch_0
        0xe6 -> :sswitch_0
        0xf2 -> :sswitch_0
        0x3f5 -> :sswitch_0
        0x455 -> :sswitch_0
    .end sparse-switch
.end method

.method public static nameWithCode(I)Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/idm/fotaagent/receiver/callback/ProviderEventHandler;->NAME_FOR_CODE:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, ")"

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "undefined("

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public idmOnProgress(Ljava/lang/String;Lcom/idm/adapter/callback/IDMCallbackStatus;)V
    .locals 3

    const-string p0, "Downloading : "

    :try_start_0
    invoke-virtual {p2}, Lcom/idm/adapter/callback/IDMCallbackStatus;->idmGetObject()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/idm/agent/dl/IDMDlDownloadInfo;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/idm/agent/dl/IDMDlDownloadInfo;->idmGetDownloadPercent()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "% DownloadSize : "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/idm/agent/dl/IDMDlDownloadInfo;->idmGetDownloadSize()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/idm/agent/dl/IDMDlDownloadInfo;->idmGetDownloadSize()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/idm/agent/dl/IDMDlDownloadInfo;->idmGetDownloadPercent()I

    move-result p0

    invoke-static {v0, v1, p0, p1}, Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressInfo;->update(JILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public idmOnStatus(Ljava/lang/String;Lcom/idm/adapter/callback/IDMCallbackStatus;)V
    .locals 6

    invoke-virtual {p2}, Lcom/idm/adapter/callback/IDMCallbackStatus;->idmGetStatus()I

    move-result v0

    new-instance v1, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-direct {v1, p1}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getSuCancel()Z

    move-result v1

    const-string v2, ", callbackStatus: "

    const-string v3, "taskId "

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/idm/fotaagent/receiver/callback/ProviderEventHandler;->ignoresIfSuCancelFor(I)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/idm/fotaagent/receiver/callback/ProviderEventHandler;->nameWithCode(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " SuCancel Block"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->idmGetContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p2}, Lcom/idm/adapter/callback/IDMCallbackStatus;->idmGetObject()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2}, Lcom/idm/adapter/callback/IDMCallbackStatus;->idmGetAbortCode()I

    move-result v4

    invoke-virtual {p2}, Lcom/idm/adapter/callback/IDMCallbackStatus;->idmGetResults()I

    move-result p2

    const/16 v5, 0x2710

    if-ne p2, v5, :cond_1

    new-instance p2, Lcom/idm/fotaagent/receiver/callback/NormalEventHandler;

    invoke-direct {p2, p0, p1}, Lcom/idm/fotaagent/receiver/callback/NormalEventHandler;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p2, v0, v1, v4}, Lcom/idm/fotaagent/receiver/callback/BaseEventHandler;->handle(ILjava/lang/Object;I)V

    goto :goto_0

    :cond_1
    const/16 v5, 0x2712

    if-ne p2, v5, :cond_2

    new-instance p2, Lcom/idm/fotaagent/receiver/callback/AbortEventHandler;

    invoke-direct {p2, p0, p1}, Lcom/idm/fotaagent/receiver/callback/AbortEventHandler;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p2, v0, v1, v4}, Lcom/idm/fotaagent/receiver/callback/BaseEventHandler;->handle(ILjava/lang/Object;I)V

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/idm/fotaagent/receiver/callback/ProviderEventHandler;->nameWithCode(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " unsupported callback result: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
