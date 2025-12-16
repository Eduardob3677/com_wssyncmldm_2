.class public Lcom/idm/fotaagent/enabler/ui/admin/profile/AdminProfileViewModel;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final authTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final clientAuthTypeIndex:Landroidx/lifecycle/F;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/F;"
        }
    .end annotation
.end field

.field public final clientId:Landroidx/lifecycle/F;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/F;"
        }
    .end annotation
.end field

.field public final clientPwd:Landroidx/lifecycle/F;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/F;"
        }
    .end annotation
.end field

.field private final profile:Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseProfile;

.field public final profileName:Landroidx/lifecycle/F;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/F;"
        }
    .end annotation
.end field

.field public final serverAuthTypeIndex:Landroidx/lifecycle/F;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/F;"
        }
    .end annotation
.end field

.field public final serverId:Landroidx/lifecycle/F;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/F;"
        }
    .end annotation
.end field

.field public final serverPwd:Landroidx/lifecycle/F;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/F;"
        }
    .end annotation
.end field

.field public final serverUrl:Landroidx/lifecycle/F;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/F;"
        }
    .end annotation
.end field

.field private final toastMessageId:Landroidx/lifecycle/F;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/F;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseProfile;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/lifecycle/F;

    invoke-direct {v0}, Landroidx/lifecycle/C;-><init>()V

    iput-object v0, p0, Lcom/idm/fotaagent/enabler/ui/admin/profile/AdminProfileViewModel;->profileName:Landroidx/lifecycle/F;

    new-instance v1, Landroidx/lifecycle/F;

    invoke-direct {v1}, Landroidx/lifecycle/C;-><init>()V

    iput-object v1, p0, Lcom/idm/fotaagent/enabler/ui/admin/profile/AdminProfileViewModel;->serverUrl:Landroidx/lifecycle/F;

    new-instance v2, Landroidx/lifecycle/F;

    invoke-direct {v2}, Landroidx/lifecycle/C;-><init>()V

    iput-object v2, p0, Lcom/idm/fotaagent/enabler/ui/admin/profile/AdminProfileViewModel;->serverId:Landroidx/lifecycle/F;

    new-instance v3, Landroidx/lifecycle/F;

    invoke-direct {v3}, Landroidx/lifecycle/C;-><init>()V

    iput-object v3, p0, Lcom/idm/fotaagent/enabler/ui/admin/profile/AdminProfileViewModel;->serverPwd:Landroidx/lifecycle/F;

    new-instance v4, Landroidx/lifecycle/F;

    invoke-direct {v4}, Landroidx/lifecycle/C;-><init>()V

    iput-object v4, p0, Lcom/idm/fotaagent/enabler/ui/admin/profile/AdminProfileViewModel;->clientId:Landroidx/lifecycle/F;

    new-instance v5, Landroidx/lifecycle/F;

    invoke-direct {v5}, Landroidx/lifecycle/C;-><init>()V

    iput-object v5, p0, Lcom/idm/fotaagent/enabler/ui/admin/profile/AdminProfileViewModel;->clientPwd:Landroidx/lifecycle/F;

    new-instance v6, Landroidx/lifecycle/F;

    invoke-direct {v6}, Landroidx/lifecycle/C;-><init>()V

    iput-object v6, p0, Lcom/idm/fotaagent/enabler/ui/admin/profile/AdminProfileViewModel;->serverAuthTypeIndex:Landroidx/lifecycle/F;

    new-instance v7, Landroidx/lifecycle/F;

    invoke-direct {v7}, Landroidx/lifecycle/C;-><init>()V

    iput-object v7, p0, Lcom/idm/fotaagent/enabler/ui/admin/profile/AdminProfileViewModel;->clientAuthTypeIndex:Landroidx/lifecycle/F;

    new-instance v8, Landroidx/lifecycle/F;

    invoke-direct {v8}, Landroidx/lifecycle/C;-><init>()V

    iput-object v8, p0, Lcom/idm/fotaagent/enabler/ui/admin/profile/AdminProfileViewModel;->toastMessageId:Landroidx/lifecycle/F;

    iput-object p1, p0, Lcom/idm/fotaagent/enabler/ui/admin/profile/AdminProfileViewModel;->profile:Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseProfile;

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseProfile;->idmGetName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroidx/lifecycle/F;->k(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseProfile;->idmGetServerUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/lifecycle/F;->k(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseProfile;->idmGetServerId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroidx/lifecycle/F;->k(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseProfile;->idmGetServerPwd()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroidx/lifecycle/F;->k(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseProfile;->idmGetClientId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroidx/lifecycle/F;->k(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseProfile;->idmGetClientPwd()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroidx/lifecycle/F;->k(Ljava/lang/Object;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/idm/fotaagent/enabler/ui/admin/profile/AdminProfileViewModel;->authTypes:Ljava/util/List;

    const-string p0, "syncml:auth-basic"

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p0, "syncml:auth-md5"

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p0, "syncml:auth-MAC"

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseProfile;->idmGetServerAuthtype()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    const/4 v1, 0x0

    if-gez p0, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseProfile;->idmGetServerAuthtype()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v6, p0}, Landroidx/lifecycle/F;->k(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseProfile;->idmGetClientAuthtype()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    if-gez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseProfile;->idmGetClientAuthtype()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v7, p0}, Landroidx/lifecycle/F;->k(Ljava/lang/Object;)V

    return-void
.end method

.method private getPortFrom(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    :try_start_0
    new-instance p0, Ljava/net/URL;

    invoke-direct {p0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/net/URL;->getPort()I

    move-result p1

    if-lez p1, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    const-string p1, "http"

    invoke-virtual {p0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "80"

    goto :goto_1

    :cond_1
    const-string p0, "443"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    const-string p0, ""

    :goto_1
    return-object p0
.end method

.method private isEmptyText()Z
    .locals 1

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/admin/profile/AdminProfileViewModel;->profileName:Landroidx/lifecycle/F;

    invoke-virtual {v0}, Landroidx/lifecycle/C;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/admin/profile/AdminProfileViewModel;->serverUrl:Landroidx/lifecycle/F;

    invoke-virtual {v0}, Landroidx/lifecycle/C;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/admin/profile/AdminProfileViewModel;->serverId:Landroidx/lifecycle/F;

    invoke-virtual {v0}, Landroidx/lifecycle/C;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/admin/profile/AdminProfileViewModel;->serverPwd:Landroidx/lifecycle/F;

    invoke-virtual {v0}, Landroidx/lifecycle/C;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/admin/profile/AdminProfileViewModel;->clientId:Landroidx/lifecycle/F;

    invoke-virtual {v0}, Landroidx/lifecycle/C;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/admin/profile/AdminProfileViewModel;->clientPwd:Landroidx/lifecycle/F;

    invoke-virtual {p0}, Landroidx/lifecycle/C;->d()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isSameDBTable(Ljava/lang/String;)Z
    .locals 0

    invoke-static {}, Lcom/idm/fotaagent/database/sqlite/database/mo/IDMDatabaseMoNodeManager;->getInstance()Lcom/idm/fotaagent/database/sqlite/database/mo/IDMDatabaseMoNodeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/sqlite/database/mo/IDMDatabaseMoNodeManager;->idmGetMoDatabaseManager()Lcom/idm/providers/mo/IDMMoDatabaseManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/idm/providers/mo/IDMMoDatabaseManager;->idmMoIsSameMoDBTable(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private isServerIdFirstletterNumeric(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v0, 0x0

    if-lez p0, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->isDigit(C)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private replaceServerIdEnablerProfileTable(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->getInstance()Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->idmChangeServerIdProfileName(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private replaceServerIdMoProfileTable(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {}, Lcom/idm/fotaagent/database/sqlite/database/mo/IDMDatabaseMoNodeManager;->getInstance()Lcom/idm/fotaagent/database/sqlite/database/mo/IDMDatabaseMoNodeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/sqlite/database/mo/IDMDatabaseMoNodeManager;->idmGetMoDatabaseManager()Lcom/idm/providers/mo/IDMMoDatabaseManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/idm/providers/mo/IDMMoDatabaseManager;->idmMoChangeServerIdProfileTable(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private replaceServerIdMoProfileTableName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {}, Lcom/idm/fotaagent/database/sqlite/database/mo/IDMDatabaseMoNodeManager;->getInstance()Lcom/idm/fotaagent/database/sqlite/database/mo/IDMDatabaseMoNodeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/sqlite/database/mo/IDMDatabaseMoNodeManager;->idmGetMoDatabaseManager()Lcom/idm/providers/mo/IDMMoDatabaseManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/idm/providers/mo/IDMMoDatabaseManager;->idmMoChangeServerIdProfileTableName(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private replaceServerIdMoXNodeName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {}, Lcom/idm/fotaagent/database/sqlite/database/mo/IDMDatabaseMoNodeManager;->getInstance()Lcom/idm/fotaagent/database/sqlite/database/mo/IDMDatabaseMoNodeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/sqlite/database/mo/IDMDatabaseMoNodeManager;->idmGetMoDatabaseManager()Lcom/idm/providers/mo/IDMMoDatabaseManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/idm/providers/mo/IDMMoDatabaseManager;->idmMoChangeServerIdXNodeName(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private replaceServerIdMoXfumoTable(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {}, Lcom/idm/fotaagent/database/sqlite/database/mo/IDMDatabaseMoNodeManager;->getInstance()Lcom/idm/fotaagent/database/sqlite/database/mo/IDMDatabaseMoNodeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/sqlite/database/mo/IDMDatabaseMoNodeManager;->idmGetMoDatabaseManager()Lcom/idm/providers/mo/IDMMoDatabaseManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/idm/providers/mo/IDMMoDatabaseManager;->idmMoChangeServerIdXfumoTable(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private replaceServerIdMoXnodeTable(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {}, Lcom/idm/fotaagent/database/sqlite/database/mo/IDMDatabaseMoNodeManager;->getInstance()Lcom/idm/fotaagent/database/sqlite/database/mo/IDMDatabaseMoNodeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/sqlite/database/mo/IDMDatabaseMoNodeManager;->idmGetMoDatabaseManager()Lcom/idm/providers/mo/IDMMoDatabaseManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/idm/providers/mo/IDMMoDatabaseManager;->idmMoChangeServerIdXnodeTable(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private saveProfileToDB()Z
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/admin/profile/AdminProfileViewModel;->profile:Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseProfile;

    iget-object v1, p0, Lcom/idm/fotaagent/enabler/ui/admin/profile/AdminProfileViewModel;->profileName:Landroidx/lifecycle/F;

    invoke-virtual {v1}, Landroidx/lifecycle/C;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseProfile;->idmSetName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/admin/profile/AdminProfileViewModel;->profile:Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseProfile;

    iget-object v1, p0, Lcom/idm/fotaagent/enabler/ui/admin/profile/AdminProfileViewModel;->serverUrl:Landroidx/lifecycle/F;

    invoke-virtual {v1}, Landroidx/lifecycle/C;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseProfile;->idmSetServerUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/admin/profile/AdminProfileViewModel;->profile:Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseProfile;

    iget-object v1, p0, Lcom/idm/fotaagent/enabler/ui/admin/profile/AdminProfileViewModel;->serverId:Landroidx/lifecycle/F;

    invoke-virtual {v1}, Landroidx/lifecycle/C;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseProfile;->idmSetServerId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/admin/profile/AdminProfileViewModel;->profile:Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseProfile;

    iget-object v1, p0, Lcom/idm/fotaagent/enabler/ui/admin/profile/AdminProfileViewModel;->serverPwd:Landroidx/lifecycle/F;

    invoke-virtual {v1}, Landroidx/lifecycle/C;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseProfile;->idmSetServerPwd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/admin/profile/AdminProfileViewModel;->profile:Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseProfile;

    iget-object v1, p0, Lcom/idm/fotaagent/enabler/ui/admin/profile/AdminProfileViewModel;->authTypes:Ljava/util/List;

    iget-object v2, p0, Lcom/idm/fotaagent/enabler/ui/admin/profile/AdminProfileViewModel;->serverAuthTypeIndex:Landroidx/lifecycle/F;

    invoke-virtual {v2}, Landroidx/lifecycle/C;->d()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseProfile;->idmSetServerAuthtype(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/admin/profile/AdminProfileViewModel;->profile:Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseProfile;

    iget-object v1, p0, Lcom/idm/fotaagent/enabler/ui/admin/profile/AdminProfileViewModel;->clientId:Landroidx/lifecycle/F;

    invoke-virtual {v1}, Landroidx/lifecycle/C;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseProfile;->idmSetClientId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/admin/profile/AdminProfileViewModel;->profile:Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseProfile;

    iget-object v1, p0, Lcom/idm/fotaagent/enabler/ui/admin/profile/AdminProfileViewModel;->clientPwd:Landroidx/lifecycle/F;

    invoke-virtual {v1}, Landroidx/lifecycle/C;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseProfile;->idmSetClientPwd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/admin/profile/AdminProfileViewModel;->profile:Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseProfile;

    iget-object v1, p0, Lcom/idm/fotaagent/enabler/ui/admin/profile/AdminProfileViewModel;->authTypes:Ljava/util/List;

    iget-object v2, p0, Lcom/idm/fotaagent/enabler/ui/admin/profile/AdminProfileViewModel;->clientAuthTypeIndex:Landroidx/lifecycle/F;

    invoke-virtual {v2}, Landroidx/lifecycle/C;->d()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseProfile;->idmSetClientAuthtype(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/admin/profile/AdminProfileViewModel;->profile:Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseProfile;

    invoke-direct {p0, v0}, Lcom/idm/fotaagent/enabler/ui/admin/profile/AdminProfileViewModel;->setServerInfo(Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseProfile;)V

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/admin/profile/AdminProfileViewModel;->profile:Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseProfile;

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseProfile;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/idm/providers/mo/exception/IDMMoExceptionNotFound; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0
.end method

.method private setServerInfo(Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseProfile;)V
    .locals 8

    invoke-static {}, Lcom/idm/fotaagent/database/sqlite/database/mo/IDMDatabaseMoNodeManager;->getInstance()Lcom/idm/fotaagent/database/sqlite/database/mo/IDMDatabaseMoNodeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/mo/IDMDatabaseMoNodeManager;->idmGetMoDatabaseManager()Lcom/idm/providers/mo/IDMMoDatabaseManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseProfile;->idmGetServerId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseProfile;->idmGetServerId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const-string v4, "/AAuthName"

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/idm/providers/mo/IDMMoDatabaseManager;->idmMoSetAccAuthInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseProfile;->idmGetServerId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseProfile;->idmGetServerAuthtype()Ljava/lang/String;

    move-result-object v2

    const-string v5, "/AAuthType"

    invoke-virtual {v0, v3, v5, v1, v2}, Lcom/idm/providers/mo/IDMMoDatabaseManager;->idmMoSetAccAuthInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseProfile;->idmGetServerId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseProfile;->idmGetServerPwd()Ljava/lang/String;

    move-result-object v2

    const-string v6, "/AAuthSecret"

    invoke-virtual {v0, v3, v6, v1, v2}, Lcom/idm/providers/mo/IDMMoDatabaseManager;->idmMoSetAccAuthInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseProfile;->idmGetServerId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseProfile;->idmGetServerNonce()Ljava/lang/String;

    move-result-object v2

    const-string v7, "/AAuthData"

    invoke-virtual {v0, v3, v7, v1, v2}, Lcom/idm/providers/mo/IDMMoDatabaseManager;->idmMoSetAccAuthInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseProfile;->idmGetServerId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseProfile;->idmGetClientId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/idm/providers/mo/IDMMoDatabaseManager;->idmMoSetAccAuthInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseProfile;->idmGetServerId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseProfile;->idmGetClientAuthtype()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v5, v1, v2}, Lcom/idm/providers/mo/IDMMoDatabaseManager;->idmMoSetAccAuthInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseProfile;->idmGetServerId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseProfile;->idmGetClientPwd()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v6, v1, v2}, Lcom/idm/providers/mo/IDMMoDatabaseManager;->idmMoSetAccAuthInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseProfile;->idmGetServerId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseProfile;->idmGetClientNonce()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v7, v1, v2}, Lcom/idm/providers/mo/IDMMoDatabaseManager;->idmMoSetAccAuthInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseProfile;->idmGetName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseProfile;->idmGetServerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/idm/providers/mo/IDMMoDatabaseManager;->idmMoSetAccProfileName(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseProfile;->idmGetServerUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseProfile;->idmGetServerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/idm/providers/mo/IDMMoDatabaseManager;->idmMoSetAccServerUriInfo(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseProfile;->idmGetServerUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/idm/fotaagent/enabler/ui/admin/profile/AdminProfileViewModel;->getPortFrom(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseProfile;->idmGetServerId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/idm/providers/mo/IDMMoDatabaseManager;->idmMoSetAppAddrPortInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAuthTypes()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/admin/profile/AdminProfileViewModel;->authTypes:Ljava/util/List;

    return-object p0
.end method

.method public getToastMessageId()Landroidx/lifecycle/F;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/F;"
        }
    .end annotation

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/admin/profile/AdminProfileViewModel;->toastMessageId:Landroidx/lifecycle/F;

    return-object p0
.end method

.method public saveProfileToDBIfPossible()V
    .locals 2

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/ui/admin/profile/AdminProfileViewModel;->isEmptyText()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Empty text"

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/admin/profile/AdminProfileViewModel;->toastMessageId:Landroidx/lifecycle/F;

    const v0, 0x7f130194

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/lifecycle/F;->k(Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/admin/profile/AdminProfileViewModel;->serverUrl:Landroidx/lifecycle/F;

    invoke-virtual {v0}, Landroidx/lifecycle/C;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/admin/profile/AdminProfileViewModel;->toastMessageId:Landroidx/lifecycle/F;

    const v0, 0x7f13019c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/lifecycle/F;->k(Ljava/lang/Object;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/admin/profile/AdminProfileViewModel;->profile:Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseProfile;

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseProfile;->idmGetServerId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/idm/fotaagent/enabler/ui/admin/profile/AdminProfileViewModel;->serverId:Landroidx/lifecycle/F;

    invoke-virtual {v1}, Landroidx/lifecycle/C;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/admin/profile/AdminProfileViewModel;->serverId:Landroidx/lifecycle/F;

    invoke-virtual {v0}, Landroidx/lifecycle/C;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/idm/fotaagent/enabler/ui/admin/profile/AdminProfileViewModel;->isServerIdFirstletterNumeric(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/admin/profile/AdminProfileViewModel;->toastMessageId:Landroidx/lifecycle/F;

    const v0, 0x7f13019e

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/lifecycle/F;->k(Ljava/lang/Object;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/admin/profile/AdminProfileViewModel;->serverId:Landroidx/lifecycle/F;

    invoke-virtual {v0}, Landroidx/lifecycle/C;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/idm/fotaagent/enabler/ui/admin/profile/AdminProfileViewModel;->isSameDBTable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/admin/profile/AdminProfileViewModel;->toastMessageId:Landroidx/lifecycle/F;

    const v0, 0x7f13019d

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/lifecycle/F;->k(Ljava/lang/Object;)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/admin/profile/AdminProfileViewModel;->profile:Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseProfile;

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseProfile;->idmGetServerId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/idm/fotaagent/enabler/ui/admin/profile/AdminProfileViewModel;->serverId:Landroidx/lifecycle/F;

    invoke-virtual {v1}, Landroidx/lifecycle/C;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/idm/fotaagent/enabler/ui/admin/profile/AdminProfileViewModel;->replaceServerIdMoXfumoTable(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/idm/fotaagent/enabler/ui/admin/profile/AdminProfileViewModel;->replaceServerIdMoXnodeTable(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/idm/fotaagent/enabler/ui/admin/profile/AdminProfileViewModel;->replaceServerIdMoXNodeName(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/idm/fotaagent/enabler/ui/admin/profile/AdminProfileViewModel;->replaceServerIdMoProfileTable(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/idm/fotaagent/enabler/ui/admin/profile/AdminProfileViewModel;->replaceServerIdMoProfileTableName(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/idm/fotaagent/enabler/ui/admin/profile/AdminProfileViewModel;->replaceServerIdEnablerProfileTable(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/ui/admin/profile/AdminProfileViewModel;->saveProfileToDB()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "Success to save"

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    new-instance v0, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;

    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->idmGetContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/idm/fotaagent/database/room/data/repository/AdminRepository;->setCustomProfileMode(Z)V

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/admin/profile/AdminProfileViewModel;->toastMessageId:Landroidx/lifecycle/F;

    const v0, 0x7f1301f5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/lifecycle/F;->k(Ljava/lang/Object;)V

    :cond_5
    return-void
.end method
