.class public Lcom/idm/fotaagent/abupdate/abenabler/Executor$AB$DownloadPause;
.super Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutorDownloadPause;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/abupdate/abenabler/Executor$AB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DownloadPause"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutorDownloadPause;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public startFumo()V
    .locals 0

    const-string p0, ""

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-static {}, Lcom/idm/fotaagent/abupdate/manager/EnablerManager;->getInstance()Lcom/idm/fotaagent/abupdate/manager/EnablerManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/fotaagent/abupdate/manager/EnablerManager;->suspend()V

    return-void
.end method
