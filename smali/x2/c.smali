.class public final Lx2/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/preference/o;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lx2/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/preference/Preference;)Z
    .locals 1

    iget p0, p0, Lx2/c;->a:I

    packed-switch p0, :pswitch_data_0

    iget-object p0, p1, Landroidx/preference/Preference;->c:Landroid/content/Context;

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/idm/fotaagent/enabler/ui/userinit/UserInitEntryActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0

    :pswitch_0
    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->getEnablerFactory()Lcom/idm/fotaagent/enabler/enablerfactory/AbstractEnablerFactory;

    move-result-object p0

    iget-object p1, p1, Landroidx/preference/Preference;->c:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/enabler/enablerfactory/AbstractEnablerFactory;->getAdminCommandExecutor(Landroid/content/Context;)Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/executor/AdminCommandExecutor;

    move-result-object p0

    const-string p1, "localtest"

    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/executor/AdminCommandExecutor;->execute(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
