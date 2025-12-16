.class public abstract Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeType$Install;
.super Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeType;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Install"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeType$Install$PolicyWindowed;,
        Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeType$Install$ScheduleForce;,
        Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeType$Install$PeriodicRemind;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0xf591818267f49cdL


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeType;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-super {p0, p1}, Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeType;->accept(Ljava/lang/String;)V

    return-void
.end method

.method public onAlarm(Ljava/lang/String;)V
    .locals 0

    new-instance p0, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskInstallConfirm;

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/enabler/fumo/uimanager/taskevent/IDMFumoTaskInstallConfirm;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/fumo/uimanager/IDMFumoTaskCommon;->execute()V

    return-void
.end method

.method public updateNotification(Ljava/lang/String;)V
    .locals 0

    invoke-static {}, Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeType;->access$000()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy;->get(Landroid/content/Context;)Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy;->updateNotification(Ljava/lang/String;)V

    return-void
.end method
