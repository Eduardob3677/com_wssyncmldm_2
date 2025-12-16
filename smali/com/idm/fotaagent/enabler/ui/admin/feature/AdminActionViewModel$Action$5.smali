.class final enum Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Action$5;
.super Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Action;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Action;-><init>(Ljava/lang/String;ILcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$1;)V

    return-void
.end method


# virtual methods
.method public doAction()V
    .locals 2

    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->idmGetContext()Landroid/content/Context;

    move-result-object p0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/idm/fotaagent/enabler/ui/userinit/UserInitEntryActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public getString(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const p0, 0x7f130001

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
