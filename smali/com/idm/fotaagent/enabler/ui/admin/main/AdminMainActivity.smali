.class public Lcom/idm/fotaagent/enabler/ui/admin/main/AdminMainActivity;
.super Le/n;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "FRAGMENT_FOR_ADMIN_MAIN_ACTIVITY"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Le/n;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, ""

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-super {p0, p1}, Landroidx/fragment/app/G;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/G;->getSupportFragmentManager()Landroidx/fragment/app/Z;

    move-result-object p0

    const-string p1, "FRAGMENT_FOR_ADMIN_MAIN_ACTIVITY"

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Z;->B(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroidx/fragment/app/a;

    invoke-direct {v0, p0}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/Z;)V

    new-instance p0, Lcom/idm/fotaagent/enabler/ui/admin/main/AdminMainFragment;

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/ui/admin/main/AdminMainFragment;-><init>()V

    const/4 v1, 0x2

    const v2, 0x1020002

    invoke-virtual {v0, v2, p0, p1, v1}, Landroidx/fragment/app/a;->c(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Landroidx/fragment/app/a;->e(Z)I

    :cond_0
    return-void
.end method

.method public onSearchRequested()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
