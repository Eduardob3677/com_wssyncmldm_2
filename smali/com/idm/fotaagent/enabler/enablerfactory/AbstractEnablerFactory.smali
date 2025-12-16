.class public abstract Lcom/idm/fotaagent/enabler/enablerfactory/AbstractEnablerFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract doCreateExecutor(ILjava/lang/String;I)Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;
.end method

.method public abstract getAdminCommandExecutor(Landroid/content/Context;)Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/executor/AdminCommandExecutor;
.end method

.method public abstract getBuilderVariant()Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType$BuilderVariant;
.end method

.method public getExecutor(ILjava/lang/String;I)Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;
    .locals 0

    sparse-switch p1, :sswitch_data_0

    const-string p0, "return downloadFailed executor for abnormal status to create executor"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->E(Ljava/lang/Object;)V

    new-instance p0, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutorDownloadFailed;

    invoke-direct {p0, p2, p3}, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutorDownloadFailed;-><init>(Ljava/lang/String;I)V

    return-object p0

    :sswitch_0
    new-instance p0, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutorFinishAndExecute;

    invoke-direct {p0, p2, p3}, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutorFinishAndExecute;-><init>(Ljava/lang/String;I)V

    return-object p0

    :sswitch_1
    new-instance p0, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutorDownloadFailedReporting;

    invoke-direct {p0, p2}, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutorDownloadFailedReporting;-><init>(Ljava/lang/String;)V

    return-object p0

    :sswitch_2
    new-instance p0, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutorUserCancelReporting;

    invoke-direct {p0, p2}, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutorUserCancelReporting;-><init>(Ljava/lang/String;)V

    return-object p0

    :sswitch_3
    new-instance p0, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutorDownloadInCancel;

    invoke-direct {p0, p2, p3}, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutorDownloadInCancel;-><init>(Ljava/lang/String;I)V

    return-object p0

    :sswitch_4
    new-instance p0, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutorUpdateSuccessfulNodata;

    invoke-direct {p0, p2}, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutorUpdateSuccessfulNodata;-><init>(Ljava/lang/String;)V

    return-object p0

    :sswitch_5
    new-instance p0, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutorUpdateFailedNodata;

    invoke-direct {p0, p2}, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutorUpdateFailedNodata;-><init>(Ljava/lang/String;)V

    return-object p0

    :sswitch_6
    new-instance p0, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutorReadyToUpdate;

    invoke-direct {p0, p2, p3}, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutorReadyToUpdate;-><init>(Ljava/lang/String;I)V

    return-object p0

    :sswitch_7
    new-instance p0, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutorDownloadComplete;

    invoke-direct {p0, p2, p3}, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutorDownloadComplete;-><init>(Ljava/lang/String;I)V

    return-object p0

    :sswitch_8
    new-instance p0, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutorDownloadFailed;

    invoke-direct {p0, p2, p3}, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutorDownloadFailed;-><init>(Ljava/lang/String;I)V

    return-object p0

    :sswitch_9
    invoke-virtual {p0, p1, p2, p3}, Lcom/idm/fotaagent/enabler/enablerfactory/AbstractEnablerFactory;->doCreateExecutor(ILjava/lang/String;I)Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;

    move-result-object p0

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_9
        0x14 -> :sswitch_8
        0x1e -> :sswitch_9
        0x23 -> :sswitch_9
        0x28 -> :sswitch_7
        0x32 -> :sswitch_6
        0x3c -> :sswitch_9
        0x41 -> :sswitch_9
        0x50 -> :sswitch_5
        0x64 -> :sswitch_4
        0xc8 -> :sswitch_9
        0xe6 -> :sswitch_3
        0xf0 -> :sswitch_2
        0xf1 -> :sswitch_1
        0xf2 -> :sswitch_9
        0x3f5 -> :sswitch_0
    .end sparse-switch
.end method

.method public abstract getInstallHandler(Landroid/content/Context;Ljava/lang/String;)Lcom/idm/fotaagent/enabler/fumo/IDMFumoInstallHandler;
.end method

.method public abstract getLibraryUtils()Lcom/idm/fotaagent/utils/LibraryUtils;
.end method

.method public abstract getMemoryHandler(Ljava/lang/String;Lcom/idm/fotaagent/enabler/fumo/memory/FumoMemoryHandler$CheckStatus;)Lcom/idm/fotaagent/abupdate/enablerinterface/MemoryHandler;
.end method

.method public abstract getPostponeModel(Ljava/lang/String;)Lcom/idm/fotaagent/enabler/ui/postpone/PostponeModel;
.end method

.method public abstract getTemperatureChecker()Lcom/idm/fotaagent/utils/temperature/TemperatureChecker;
.end method

.method public abstract getUserInitResume(Landroid/content/Context;Ljava/lang/String;)Lcom/idm/fotaagent/enabler/fumo/UserInitResume;
.end method
