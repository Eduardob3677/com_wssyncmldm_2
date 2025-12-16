.class public final synthetic Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/d;->c:I

    iput-object p2, p0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/d;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget v0, p0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/d;->c:I

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/d;->d:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/idm/fotaagent/enabler/ui/admin/setting/AdminSettingModel;

    invoke-static {p0, p1, p2}, Lcom/idm/fotaagent/enabler/ui/admin/setting/AdminSettingModel;->c(Lcom/idm/fotaagent/enabler/ui/admin/setting/AdminSettingModel;Landroid/content/DialogInterface;I)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/idm/fotaagent/enabler/ui/admin/profile/AdminProfileActivity;

    invoke-static {p0, p1, p2}, Lcom/idm/fotaagent/enabler/ui/admin/profile/AdminProfileActivity;->l(Lcom/idm/fotaagent/enabler/ui/admin/profile/AdminProfileActivity;Landroid/content/DialogInterface;I)V

    return-void

    :pswitch_1
    check-cast p0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/executor/CopyAndUpdateTrigger;

    invoke-static {p0, p1, p2}, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/executor/CopyAndUpdateTrigger;->a(Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/executor/CopyAndUpdateTrigger;Landroid/content/DialogInterface;I)V

    return-void

    :pswitch_2
    check-cast p0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/Localtest;

    invoke-static {p0, p1, p2}, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/Localtest;->e(Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/Localtest;Landroid/content/DialogInterface;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
