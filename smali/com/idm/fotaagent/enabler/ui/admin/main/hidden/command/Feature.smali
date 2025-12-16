.class public Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/Feature;
.super Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/HiddenCommand;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/HiddenCommand;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 3

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/HiddenCommand;->context:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/HiddenCommand;->context:Landroid/content/Context;

    const-class v2, Lcom/idm/fotaagent/enabler/ui/admin/feature/AdminFeatureAndActionActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
