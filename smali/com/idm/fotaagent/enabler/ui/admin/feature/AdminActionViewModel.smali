.class public Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel;
.super Landroidx/lifecycle/Y;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Actions;,
        Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Action;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/lifecycle/Y;-><init>()V

    return-void
.end method


# virtual methods
.method public getActionsList(Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Actions;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Actions;

    sget-object v1, Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Action;->PUSH_BACKGROUND:Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Action;

    sget-object v2, Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Action;->PUSH_INFORMATIVE:Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Action;

    invoke-direct {v0, p1, v1, v2}, Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Actions;-><init>(Landroid/content/Context;Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Action;Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Action;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Actions;

    sget-object v1, Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Action;->PUSH_INTERACTIVE:Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Action;

    sget-object v2, Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Action;->PUSH_WIFIBACKROUND:Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Action;

    invoke-direct {v0, p1, v1, v2}, Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Actions;-><init>(Landroid/content/Context;Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Action;Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Action;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Actions;

    sget-object v1, Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Action;->PULL:Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Action;

    sget-object v2, Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Action;->POLLING:Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Action;

    invoke-direct {v0, p1, v1, v2}, Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Actions;-><init>(Landroid/content/Context;Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Action;Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Action;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Actions;

    sget-object v1, Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Action;->RESET_REGISTER:Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Action;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Actions;-><init>(Landroid/content/Context;Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Action;Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminActionViewModel$Action;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
