.class public Lcom/idm/fotaagent/enabler/fumo/expiration/SessionExpirationService$ForNotify;
.super Lcom/idm/fotaagent/enabler/fumo/expiration/SessionExpirationService;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/enabler/fumo/expiration/SessionExpirationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForNotify"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/fumo/expiration/SessionExpirationService;-><init>()V

    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 0

    const-string p1, ""

    invoke-static {p1}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    new-instance p1, Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;->setExpirationNotify(Z)V

    const/4 p0, 0x0

    return p0
.end method
