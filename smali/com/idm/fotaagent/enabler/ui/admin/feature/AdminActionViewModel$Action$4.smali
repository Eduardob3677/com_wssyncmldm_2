.class final enum Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Action$4;
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
    .locals 0

    sget-object p0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/UiMode;->WIFI_BACKGROUND:Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/UiMode;

    invoke-static {p0}, Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Action;->access$100(Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/UiMode;)V

    return-void
.end method

.method public getString(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const p0, 0x7f130005

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
