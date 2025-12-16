.class public Lcom/idm/fotaagent/abupdate/abenabler/Executor$AB$FumoStart;
.super Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutorFumoStart;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/abupdate/abenabler/Executor$AB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FumoStart"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutorFumoStart;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public check(Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutorFumoStart;->check(Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository;)V

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository;->getOffset()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-ltz p0, :cond_0

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository;->getFileHash()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository;->getFileSize()J

    move-result-wide v0

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository;->getMetadataHash()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository;->getMetadataSize()J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-lez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lcom/idm/fotaagent/enabler/fumo/exception/dd/InvalidDownloadDescriptorException;

    const-string p1, "AB update\'s attributes not found or invalid"

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/enabler/fumo/exception/dd/InvalidDownloadDescriptorException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
