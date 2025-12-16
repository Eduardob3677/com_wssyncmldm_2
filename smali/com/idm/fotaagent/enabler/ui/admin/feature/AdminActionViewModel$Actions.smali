.class public Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Actions;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Actions"
.end annotation


# instance fields
.field public leftAction:Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Action;

.field public leftButtonName:Ljava/lang/String;

.field public rightAction:Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Action;

.field public rightButtonName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Action;Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Action;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2, p1}, Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Action;->getString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Actions;->leftButtonName:Ljava/lang/String;

    iput-object p2, p0, Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Actions;->leftAction:Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Action;

    if-eqz p3, :cond_0

    invoke-virtual {p3, p1}, Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Action;->getString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Actions;->rightButtonName:Ljava/lang/String;

    iput-object p3, p0, Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Actions;->rightAction:Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Action;

    :cond_0
    return-void
.end method
