.class Lcom/wssyncmldm/databinding/ProfileEditBindingImpl$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/databinding/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wssyncmldm/databinding/ProfileEditBindingImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wssyncmldm/databinding/ProfileEditBindingImpl;


# direct methods
.method public constructor <init>(Lcom/wssyncmldm/databinding/ProfileEditBindingImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/wssyncmldm/databinding/ProfileEditBindingImpl$5;->this$0:Lcom/wssyncmldm/databinding/ProfileEditBindingImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 1

    iget-object v0, p0, Lcom/wssyncmldm/databinding/ProfileEditBindingImpl$5;->this$0:Lcom/wssyncmldm/databinding/ProfileEditBindingImpl;

    iget-object v0, v0, Lcom/wssyncmldm/databinding/ProfileEditBinding;->serverAddress:Landroid/widget/EditText;

    invoke-static {v0}, Li3/x;->a0(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/wssyncmldm/databinding/ProfileEditBindingImpl$5;->this$0:Lcom/wssyncmldm/databinding/ProfileEditBindingImpl;

    iget-object p0, p0, Lcom/wssyncmldm/databinding/ProfileEditBinding;->mViewModel:Lcom/idm/fotaagent/enabler/ui/admin/profile/AdminProfileViewModel;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/admin/profile/AdminProfileViewModel;->serverUrl:Landroidx/lifecycle/F;

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0}, Landroidx/lifecycle/F;->k(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
