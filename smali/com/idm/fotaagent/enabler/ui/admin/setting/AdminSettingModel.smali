.class public Lcom/idm/fotaagent/enabler/ui/admin/setting/AdminSettingModel;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final context:Landroid/content/Context;

.field private selectedProfile:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/idm/fotaagent/enabler/ui/admin/setting/AdminSettingModel;->selectedProfile:I

    iput-object p1, p0, Lcom/idm/fotaagent/enabler/ui/admin/setting/AdminSettingModel;->context:Landroid/content/Context;

    return-void
.end method

.method private IDMGetServerInfo(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseServerInfo;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseProfile;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    :try_start_0
    invoke-static {}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->getInstance()Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;

    move-result-object v1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseServerInfo;

    invoke-virtual {v1, v2}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->getProfile(Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseServerInfo;)Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseProfile;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/idm/providers/mo/exception/IDMMoExceptionNotFound; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public static synthetic a(Lcom/idm/fotaagent/enabler/ui/admin/setting/AdminSettingModel;Ljava/util/ArrayList;Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/idm/fotaagent/enabler/ui/admin/setting/AdminSettingModel;->lambda$createProfilePreferenceUsing$1(Ljava/util/ArrayList;Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic b(Lcom/idm/fotaagent/enabler/ui/admin/setting/AdminSettingModel;Ljava/util/ArrayList;Ljava/lang/Runnable;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/idm/fotaagent/enabler/ui/admin/setting/AdminSettingModel;->lambda$createProfilePreferenceUsing$3(Ljava/util/ArrayList;Ljava/lang/Runnable;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Lcom/idm/fotaagent/enabler/ui/admin/setting/AdminSettingModel;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/idm/fotaagent/enabler/ui/admin/setting/AdminSettingModel;->lambda$createProfilePreferenceUsing$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private createServerNameArray(Ljava/util/List;)[Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseProfile;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseProfile;

    invoke-virtual {v2}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseProfile;->idmGetName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseProfile;

    invoke-virtual {v2}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseProfile;->idmGetActive()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iput v1, p0, Lcom/idm/fotaagent/enabler/ui/admin/setting/AdminSettingModel;->selectedProfile:I

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static synthetic d(Lcom/idm/fotaagent/enabler/ui/admin/setting/AdminSettingModel;Ljava/util/ArrayList;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/idm/fotaagent/enabler/ui/admin/setting/AdminSettingModel;->lambda$createProfilePreferenceUsing$2(Ljava/util/ArrayList;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private getActiveServerName(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseProfile;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-string p1, ""

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseProfile;

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseProfile;->idmGetActive()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseProfile;->idmGetName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method private getSelectedProfile(Ljava/util/List;I)Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseProfile;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseProfile;",
            ">;I)",
            "Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseProfile;"
        }
    .end annotation

    const/4 p0, 0x0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    if-ne p2, v0, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseProfile;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method private synthetic lambda$createProfilePreferenceUsing$0(Landroid/content/DialogInterface;I)V
    .locals 0

    iput p2, p0, Lcom/idm/fotaagent/enabler/ui/admin/setting/AdminSettingModel;->selectedProfile:I

    return-void
.end method

.method private synthetic lambda$createProfilePreferenceUsing$1(Ljava/util/ArrayList;Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V
    .locals 0

    iget p3, p0, Lcom/idm/fotaagent/enabler/ui/admin/setting/AdminSettingModel;->selectedProfile:I

    invoke-direct {p0, p1, p3}, Lcom/idm/fotaagent/enabler/ui/admin/setting/AdminSettingModel;->getSelectedProfile(Ljava/util/List;I)Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseProfile;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "databaseProfile is null"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->getInstance()Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseProfile;->idmGetServerId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->updateActiveServer(Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$createProfilePreferenceUsing$2(Ljava/util/ArrayList;Landroid/content/DialogInterface;I)V
    .locals 1

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    iget p3, p0, Lcom/idm/fotaagent/enabler/ui/admin/setting/AdminSettingModel;->selectedProfile:I

    invoke-direct {p0, p1, p3}, Lcom/idm/fotaagent/enabler/ui/admin/setting/AdminSettingModel;->getSelectedProfile(Ljava/util/List;I)Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseProfile;

    move-result-object p1

    const-string p3, "profile"

    invoke-virtual {p2, p3, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    new-instance p1, Landroid/content/Intent;

    iget-object p3, p0, Lcom/idm/fotaagent/enabler/ui/admin/setting/AdminSettingModel;->context:Landroid/content/Context;

    const-class v0, Lcom/idm/fotaagent/enabler/ui/admin/profile/AdminProfileActivity;

    invoke-direct {p1, p3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p3, "serverId"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/admin/setting/AdminSettingModel;->context:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private lambda$createProfilePreferenceUsing$3(Ljava/util/ArrayList;Ljava/lang/Runnable;Landroidx/preference/Preference;)Z
    .locals 5

    new-instance p3, Le/j;

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/admin/setting/AdminSettingModel;->context:Landroid/content/Context;

    invoke-direct {p3, v0}, Le/j;-><init>(Landroid/content/Context;)V

    const-string v0, "Profile List\n"

    iget-object v1, p3, Le/j;->a:Le/g;

    iput-object v0, v1, Le/g;->d:Ljava/lang/CharSequence;

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/enabler/ui/admin/setting/AdminSettingModel;->createServerNameArray(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lcom/idm/fotaagent/enabler/ui/admin/setting/AdminSettingModel;->selectedProfile:I

    new-instance v3, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/d;

    const/4 v4, 0x3

    invoke-direct {v3, v4, p0}, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/d;-><init>(ILjava/lang/Object;)V

    iput-object v0, v1, Le/g;->n:[Ljava/lang/CharSequence;

    iput-object v3, v1, Le/g;->p:Landroid/content/DialogInterface$OnClickListener;

    iput v2, v1, Le/g;->u:I

    const/4 v0, 0x1

    iput-boolean v0, v1, Le/g;->t:Z

    new-instance v0, Lz2/a;

    invoke-direct {v0, p0, p1, p2}, Lz2/a;-><init>(Lcom/idm/fotaagent/enabler/ui/admin/setting/AdminSettingModel;Ljava/util/ArrayList;Ljava/lang/Runnable;)V

    const-string p2, "Select"

    iput-object p2, v1, Le/g;->g:Ljava/lang/CharSequence;

    iput-object v0, v1, Le/g;->h:Landroid/content/DialogInterface$OnClickListener;

    new-instance p2, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/b;

    const/4 v0, 0x5

    invoke-direct {p2, p0, v0, p1}, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/b;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    const-string p0, "Edit"

    iput-object p0, v1, Le/g;->i:Ljava/lang/CharSequence;

    iput-object p2, v1, Le/g;->j:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p3}, Le/j;->a()Le/k;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public createProfilePreferenceUsing(Landroidx/preference/Preference;Ljava/lang/Runnable;)Landroidx/preference/Preference;
    .locals 3

    const-string v0, ""

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-static {}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->getInstance()Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->getServerInfos()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/idm/fotaagent/enabler/ui/admin/setting/AdminSettingModel;->IDMGetServerInfo(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/idm/fotaagent/enabler/ui/admin/setting/AdminSettingModel;->getActiveServerName(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Landroidx/preference/Preference;->j:Ljava/lang/CharSequence;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iput-object v1, p1, Landroidx/preference/Preference;->j:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroidx/preference/Preference;->j()V

    :cond_0
    new-instance v1, Lz2/b;

    invoke-direct {v1, p0, v0, p2}, Lz2/b;-><init>(Lcom/idm/fotaagent/enabler/ui/admin/setting/AdminSettingModel;Ljava/util/ArrayList;Ljava/lang/Runnable;)V

    iput-object v1, p1, Landroidx/preference/Preference;->h:Landroidx/preference/o;

    return-object p1
.end method
