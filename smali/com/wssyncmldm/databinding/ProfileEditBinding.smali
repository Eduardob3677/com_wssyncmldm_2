.class public abstract Lcom/wssyncmldm/databinding/ProfileEditBinding;
.super Landroidx/databinding/v;
.source "SourceFile"


# instance fields
.field public final ProfileLinear:Landroid/widget/LinearLayout;

.field public final clientAuth:Landroid/widget/Spinner;

.field public final clientId:Landroid/widget/EditText;

.field public final clientPwd:Landroid/widget/EditText;

.field protected mViewModel:Lcom/idm/fotaagent/enabler/ui/admin/profile/AdminProfileViewModel;

.field public final profileName:Landroid/widget/EditText;

.field public final saveBtn:Landroid/widget/Button;

.field public final serverAddress:Landroid/widget/EditText;

.field public final serverAuth:Landroid/widget/Spinner;

.field public final serverId:Landroid/widget/EditText;

.field public final serverPwd:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/LinearLayout;Landroid/widget/Spinner;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/Button;Landroid/widget/EditText;Landroid/widget/Spinner;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/v;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    iput-object p4, p0, Lcom/wssyncmldm/databinding/ProfileEditBinding;->ProfileLinear:Landroid/widget/LinearLayout;

    iput-object p5, p0, Lcom/wssyncmldm/databinding/ProfileEditBinding;->clientAuth:Landroid/widget/Spinner;

    iput-object p6, p0, Lcom/wssyncmldm/databinding/ProfileEditBinding;->clientId:Landroid/widget/EditText;

    iput-object p7, p0, Lcom/wssyncmldm/databinding/ProfileEditBinding;->clientPwd:Landroid/widget/EditText;

    iput-object p8, p0, Lcom/wssyncmldm/databinding/ProfileEditBinding;->profileName:Landroid/widget/EditText;

    iput-object p9, p0, Lcom/wssyncmldm/databinding/ProfileEditBinding;->saveBtn:Landroid/widget/Button;

    iput-object p10, p0, Lcom/wssyncmldm/databinding/ProfileEditBinding;->serverAddress:Landroid/widget/EditText;

    iput-object p11, p0, Lcom/wssyncmldm/databinding/ProfileEditBinding;->serverAuth:Landroid/widget/Spinner;

    iput-object p12, p0, Lcom/wssyncmldm/databinding/ProfileEditBinding;->serverId:Landroid/widget/EditText;

    iput-object p13, p0, Lcom/wssyncmldm/databinding/ProfileEditBinding;->serverPwd:Landroid/widget/EditText;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/wssyncmldm/databinding/ProfileEditBinding;
    .locals 1

    sget-object v0, Landroidx/databinding/g;->a:Landroidx/databinding/DataBinderMapperImpl;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/wssyncmldm/databinding/ProfileEditBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/wssyncmldm/databinding/ProfileEditBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/wssyncmldm/databinding/ProfileEditBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d006d

    invoke-static {p1, p0, v0}, Landroidx/databinding/v;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/v;

    move-result-object p0

    check-cast p0, Lcom/wssyncmldm/databinding/ProfileEditBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/wssyncmldm/databinding/ProfileEditBinding;
    .locals 1

    sget-object v0, Landroidx/databinding/g;->a:Landroidx/databinding/DataBinderMapperImpl;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/wssyncmldm/databinding/ProfileEditBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/wssyncmldm/databinding/ProfileEditBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/wssyncmldm/databinding/ProfileEditBinding;
    .locals 1

    sget-object v0, Landroidx/databinding/g;->a:Landroidx/databinding/DataBinderMapperImpl;

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/wssyncmldm/databinding/ProfileEditBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/wssyncmldm/databinding/ProfileEditBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/wssyncmldm/databinding/ProfileEditBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d006d

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/v;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/v;

    move-result-object p0

    check-cast p0, Lcom/wssyncmldm/databinding/ProfileEditBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/wssyncmldm/databinding/ProfileEditBinding;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const v2, 0x7f0d006d

    invoke-static {p0, v2, v0, v1, p1}, Landroidx/databinding/v;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/v;

    move-result-object p0

    check-cast p0, Lcom/wssyncmldm/databinding/ProfileEditBinding;

    return-object p0
.end method


# virtual methods
.method public getViewModel()Lcom/idm/fotaagent/enabler/ui/admin/profile/AdminProfileViewModel;
    .locals 0

    iget-object p0, p0, Lcom/wssyncmldm/databinding/ProfileEditBinding;->mViewModel:Lcom/idm/fotaagent/enabler/ui/admin/profile/AdminProfileViewModel;

    return-object p0
.end method

.method public abstract setViewModel(Lcom/idm/fotaagent/enabler/ui/admin/profile/AdminProfileViewModel;)V
.end method
