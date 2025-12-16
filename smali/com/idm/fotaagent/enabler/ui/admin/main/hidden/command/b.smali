.class public final synthetic Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    iput p2, p0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/b;->c:I

    iput-object p1, p0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/b;->d:Ljava/lang/Object;

    iput-object p3, p0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/b;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget v0, p0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/b;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/b;->d:Ljava/lang/Object;

    check-cast v0, Lcom/idm/fotaagent/enabler/ui/admin/setting/AdminSettingModel;

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/b;->e:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    invoke-static {v0, p0, p1, p2}, Lcom/idm/fotaagent/enabler/ui/admin/setting/AdminSettingModel;->d(Lcom/idm/fotaagent/enabler/ui/admin/setting/AdminSettingModel;Ljava/util/ArrayList;Landroid/content/DialogInterface;I)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/b;->d:Ljava/lang/Object;

    check-cast v0, Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogFragmentForDialog;

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/b;->e:Ljava/lang/Object;

    check-cast p0, Lcom/idm/fotaagent/enabler/ui/dialog/model/buttonstrategy/ButtonStrategy;

    invoke-static {v0, p0, p1, p2}, Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogFragmentForDialog;->g(Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogFragmentForDialog;Lcom/idm/fotaagent/enabler/ui/dialog/model/buttonstrategy/ButtonStrategy;Landroid/content/DialogInterface;I)V

    return-void

    :pswitch_1
    const/16 v0, 0xfa

    iget-object v1, p0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/b;->d:Ljava/lang/Object;

    check-cast v1, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/Memoryfull;

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/b;->e:Ljava/lang/Object;

    check-cast p0, Landroid/widget/EditText;

    invoke-static {v1, p0, v0, p1, p2}, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/Memoryfull;->c(Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/Memoryfull;Landroid/widget/EditText;ILandroid/content/DialogInterface;I)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/b;->d:Ljava/lang/Object;

    check-cast v0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/Localtest;

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/b;->e:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-static {v0, p0, p1, p2}, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/Localtest;->c(Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/Localtest;Ljava/util/List;Landroid/content/DialogInterface;I)V

    return-void

    :pswitch_3
    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/b;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/Consumer;

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/b;->e:Ljava/lang/Object;

    check-cast p0, [Ljava/lang/Enum;

    invoke-static {v0, p0, p1, p2}, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/HiddenCommand;->a(Ljava/util/function/Consumer;[Ljava/lang/Enum;Landroid/content/DialogInterface;I)V

    return-void

    :pswitch_4
    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/b;->d:Ljava/lang/Object;

    check-cast v0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/Getlog;

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/b;->e:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-static {v0, p0, p1, p2}, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/Getlog;->d(Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/Getlog;Ljava/util/List;Landroid/content/DialogInterface;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
