.class public Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeType$Install$ScheduleForce;
.super Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeType$Install;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeType$Install;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScheduleForce"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeType$Install$ScheduleForce$IncreasablePostpone;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x5984b61f57f78ad8L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeType$Install;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-super {p0, p1}, Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeType;->accept(Ljava/lang/String;)V

    return-void
.end method

.method public getData(J)Lcom/idm/fotaagent/database/room/data/repository/PostponeRepository$DataBuilder;
    .locals 1

    invoke-static {}, Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeType;->access$000()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/idm/fotaagent/enabler/fumo/expiration/SessionExpirationManager;->cancel(Landroid/content/Context;)V

    invoke-super {p0, p1, p2}, Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeType;->getData(J)Lcom/idm/fotaagent/database/room/data/repository/PostponeRepository$DataBuilder;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/database/room/data/repository/PostponeRepository$DataBuilder;->autoInstall(Z)Lcom/idm/fotaagent/database/room/data/repository/PostponeRepository$DataBuilder;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/idm/fotaagent/database/room/data/repository/PostponeRepository$DataBuilder;->scheduledInstallTime(J)Lcom/idm/fotaagent/database/room/data/repository/PostponeRepository$DataBuilder;

    move-result-object p0

    return-object p0
.end method
