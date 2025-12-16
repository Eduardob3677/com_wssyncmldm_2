.class public Lcom/idm/fotaagent/enabler/ui/admin/profile/AdminProfileActivity;
.super Le/n;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Le/n;-><init>()V

    return-void
.end method

.method public static synthetic k(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/idm/fotaagent/enabler/ui/admin/profile/AdminProfileActivity;->lambda$onCreate$0(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lcom/idm/fotaagent/enabler/ui/admin/profile/AdminProfileActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/idm/fotaagent/enabler/ui/admin/profile/AdminProfileActivity;->lambda$onBackPressed$2(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private synthetic lambda$onBackPressed$2(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private static synthetic lambda$onCreate$0(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 0

    const-string p1, "^[a-zA-Z0-9]*$"

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$onCreate$1(Ljava/lang/Integer;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/idm/fotaagent/utils/ToastHelper;->showLongToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic m(Lcom/idm/fotaagent/enabler/ui/admin/profile/AdminProfileActivity;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/enabler/ui/admin/profile/AdminProfileActivity;->lambda$onCreate$1(Ljava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 4

    new-instance v0, Le/j;

    invoke-direct {v0, p0}, Le/j;-><init>(Landroid/content/Context;)V

    const-string v1, "Profile Save"

    iget-object v2, v0, Le/j;->a:Le/g;

    iput-object v1, v2, Le/g;->d:Ljava/lang/CharSequence;

    const-string v1, "Do you want to exit screen?"

    iput-object v1, v2, Le/g;->f:Ljava/lang/CharSequence;

    new-instance v1, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/d;

    const/4 v3, 0x2

    invoke-direct {v1, v3, p0}, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/d;-><init>(ILjava/lang/Object;)V

    const-string p0, "OK"

    iput-object p0, v2, Le/g;->g:Ljava/lang/CharSequence;

    iput-object v1, v2, Le/g;->h:Landroid/content/DialogInterface$OnClickListener;

    const-string p0, "CANCEL"

    iput-object p0, v2, Le/g;->i:Ljava/lang/CharSequence;

    const/4 p0, 0x0

    iput-object p0, v2, Le/g;->j:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0}, Le/j;->a()Le/k;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroidx/fragment/app/G;->onCreate(Landroid/os/Bundle;)V

    const-string p1, ""

    invoke-static {p1}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "serverId"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "profile"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseProfile;

    if-nez p1, :cond_0

    const-string p0, "profile is null"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance v0, Lcom/idm/fotaagent/enabler/ui/admin/profile/AdminProfileViewModel;

    invoke-direct {v0, p1}, Lcom/idm/fotaagent/enabler/ui/admin/profile/AdminProfileViewModel;-><init>(Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseProfile;)V

    const p1, 0x7f0d006d

    invoke-static {p0, p1}, Landroidx/databinding/g;->d(Landroid/app/Activity;I)Landroidx/databinding/v;

    move-result-object p1

    check-cast p1, Lcom/wssyncmldm/databinding/ProfileEditBinding;

    invoke-virtual {p1, v0}, Lcom/wssyncmldm/databinding/ProfileEditBinding;->setViewModel(Lcom/idm/fotaagent/enabler/ui/admin/profile/AdminProfileViewModel;)V

    invoke-virtual {p1, p0}, Landroidx/databinding/v;->setLifecycleOwner(Landroidx/lifecycle/w;)V

    iget-object p1, p1, Lcom/wssyncmldm/databinding/ProfileEditBinding;->serverId:Landroid/widget/EditText;

    new-instance v1, Ly2/a;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/text/InputFilter;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/enabler/ui/admin/profile/AdminProfileViewModel;->getToastMessageId()Landroidx/lifecycle/F;

    move-result-object p1

    new-instance v0, Ly2/b;

    invoke-direct {v0, p0}, Ly2/b;-><init>(Lcom/idm/fotaagent/enabler/ui/admin/profile/AdminProfileActivity;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/C;->e(Landroidx/lifecycle/w;Landroidx/lifecycle/G;)V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/G;->onResume()V

    const-string p0, ""

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return-void
.end method
