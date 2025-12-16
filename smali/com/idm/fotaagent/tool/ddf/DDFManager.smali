.class public Lcom/idm/fotaagent/tool/ddf/DDFManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DDF_DEFAULT_DIRECTORY:Ljava/lang/String; = "default"

.field private static final DDF_FILE_EXCLUDED_IN_CHINA:Ljava/lang/String; = "x6g1q14r75_DDF_SYNCML_DM.exml"

.field private static final DDF_FILE_EXCLUDED_IN_GLOBAL:Ljava/lang/String; = "x6g1q14r75_DDF_SYNCML_DM_CHN.exml"

.field private static final DDF_FILE_MAGIC_NAME:Ljava/lang/String; = "DDF"

.field private static final DDF_ROOT_DIRECTORY:Ljava/lang/String; = "profile"


# instance fields
.field private final assetManager:Landroid/content/res/AssetManager;

.field private final candidateServerIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private final ddfHashInfos:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/idm/fotaagent/tool/ddf/IDMToolDDFHashInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final deviceInfoAdapter:Lcom/idm/adapter/deviceinfo/IDMDeviceInfoAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterDeviceInfoImpl;

    invoke-direct {v0}, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterDeviceInfoImpl;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/idm/fotaagent/tool/ddf/DDFManager;-><init>(Landroid/content/Context;Lcom/idm/adapter/deviceinfo/IDMDeviceInfoAdapter;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/idm/adapter/deviceinfo/IDMDeviceInfoAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/idm/fotaagent/tool/ddf/DDFManager;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    iput-object p1, p0, Lcom/idm/fotaagent/tool/ddf/DDFManager;->assetManager:Landroid/content/res/AssetManager;

    invoke-static {}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->getInstance()Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->getAllDDFHashInfos()Ljava/util/HashMap;

    move-result-object p1

    iput-object p1, p0, Lcom/idm/fotaagent/tool/ddf/DDFManager;->ddfHashInfos:Ljava/util/HashMap;

    iput-object p2, p0, Lcom/idm/fotaagent/tool/ddf/DDFManager;->deviceInfoAdapter:Lcom/idm/adapter/deviceinfo/IDMDeviceInfoAdapter;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/idm/fotaagent/tool/ddf/DDFManager;->candidateServerIds:Ljava/util/List;

    return-void
.end method

.method public static synthetic a(Lcom/idm/fotaagent/tool/ddf/DDFManager;Ljava/lang/String;)Ljava/util/stream/Stream;
    .locals 0

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/tool/ddf/DDFManager;->getFilePaths(Ljava/lang/String;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/idm/fotaagent/tool/ddf/DDFManager;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/tool/ddf/DDFManager;->isTableCreatedSuccessfully(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Lcom/idm/fotaagent/tool/ddf/DDFManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/tool/ddf/DDFManager;->createDDFNode(Ljava/lang/String;)V

    return-void
.end method

.method private calculateHash(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1

    new-instance p0, Lcom/idm/core/security/IDMSecurityImpl;

    invoke-direct {p0}, Lcom/idm/core/security/IDMSecurityImpl;-><init>()V

    new-instance v0, Lcom/idm/adapter/filesystem/IDMFileSystemAdapter;

    invoke-direct {v0}, Lcom/idm/adapter/filesystem/IDMFileSystemAdapter;-><init>()V

    invoke-virtual {v0, p1}, Lcom/idm/adapter/filesystem/IDMFileSystemAdapter;->idmGetByteFromInputStream(Ljava/io/InputStream;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/idm/core/security/IDMSecurityImpl;->idmSecurityMD5FileHash([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private clearCandidateServerIds()V
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/tool/ddf/DDFManager;->candidateServerIds:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private createDDFNode(Ljava/lang/String;)V
    .locals 7

    const-string v0, "create nodes for "

    :try_start_0
    iget-object v1, p0, Lcom/idm/fotaagent/tool/ddf/DDFManager;->assetManager:Landroid/content/res/AssetManager;

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/io/InputStream;->mark(I)V

    invoke-direct {p0, v1}, Lcom/idm/fotaagent/tool/ddf/DDFManager;->calculateHash(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/tool/ddf/DDFManager;->getHashFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception p0

    goto :goto_4

    :cond_0
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " since changed"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/io/InputStream;->reset()V

    invoke-direct {p0, v1}, Lcom/idm/fotaagent/tool/ddf/DDFManager;->decrypt(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    new-instance v3, Lcom/idm/tool/ddf/DDFNodeCreator;

    iget-object v4, p0, Lcom/idm/fotaagent/tool/ddf/DDFManager;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/idm/fotaagent/tool/ddf/DDFManager;->getServerIdFrom(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/idm/fotaagent/tool/ddf/DDFManager;->deviceInfoAdapter:Lcom/idm/adapter/deviceinfo/IDMDeviceInfoAdapter;

    invoke-direct {v3, v4, v5, v0, v6}, Lcom/idm/tool/ddf/DDFNodeCreator;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/io/InputStream;Lcom/idm/adapter/deviceinfo/IDMDeviceInfoAdapter;)V

    invoke-virtual {v3}, Lcom/idm/tool/ddf/DDFNodeCreator;->creatAndReturnProfiles()Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/idm/fotaagent/tool/ddf/DDFManager;->replaceProfile(Ljava/util/List;)V

    invoke-direct {p0, p1, v2}, Lcom/idm/fotaagent/tool/ddf/DDFManager;->saveHashFor(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v0, :cond_1

    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_0
    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_5

    :catchall_1
    move-exception p0

    if-eqz v0, :cond_2

    :try_start_7
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p1

    :try_start_8
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :goto_2
    if-eqz v1, :cond_3

    :try_start_9
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception p1

    :try_start_a
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_3
    throw p0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    :goto_4
    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_5
    return-void
.end method

.method public static synthetic d(Lcom/idm/fotaagent/tool/ddf/DDFManager;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/tool/ddf/DDFManager;->isCandidateDirectory(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private decrypt(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 1

    new-instance p0, Lcom/idm/adapter/filesystem/IDMFileSystemAdapter;

    invoke-direct {p0}, Lcom/idm/adapter/filesystem/IDMFileSystemAdapter;-><init>()V

    new-instance v0, Lcom/idm/fotaagent/enabler/security/IDMSecurityAESCryptImpl;

    invoke-direct {v0}, Lcom/idm/fotaagent/enabler/security/IDMSecurityAESCryptImpl;-><init>()V

    invoke-virtual {p0, p1}, Lcom/idm/adapter/filesystem/IDMFileSystemAdapter;->idmGetByteFromInputStream(Ljava/io/InputStream;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/idm/fotaagent/enabler/security/IDMSecurityAESCryptImpl;->decrypt([B)[B

    move-result-object p0

    new-instance p1, Ljava/io/ByteArrayInputStream;

    invoke-direct {p1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object p1
.end method

.method private excludes(Ljava/lang/String;)Z
    .locals 1

    const-string p0, "DDF"

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lcom/samsung/android/fotaagent/common/feature/SalesCode;->get()Lcom/samsung/android/fotaagent/common/feature/SalesCode;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/fotaagent/common/feature/SalesCode;->isChinaCountryFeature()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "x6g1q14r75_DDF_SYNCML_DM.exml"

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3

    :cond_1
    invoke-static {}, Lcom/samsung/android/fotaagent/common/feature/SalesCode;->get()Lcom/samsung/android/fotaagent/common/feature/SalesCode;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/fotaagent/common/feature/SalesCode;->isChinaCountryFeature()Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "x6g1q14r75_DDF_SYNCML_DM_CHN.exml"

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_0
    return v0
.end method

.method private getFilePaths(Ljava/lang/String;)Ljava/util/stream/Stream;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/stream/Stream<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "profile/"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    iget-object v2, p0, Lcom/idm/fotaagent/tool/ddf/DDFManager;->assetManager:Landroid/content/res/AssetManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    invoke-direct {p0, v5}, Lcom/idm/fotaagent/tool/ddf/DDFManager;->excludes(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    :cond_1
    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method private getHashFor(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/tool/ddf/DDFManager;->ddfHashInfos:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/idm/fotaagent/tool/ddf/IDMToolDDFHashInfo;

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/idm/fotaagent/tool/ddf/IDMToolDDFHashInfo;->idmGetDDFHashData()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getServerIdFrom(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getServerIndex(Ljava/lang/String;)I
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "serverId : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/idm/fotaagent/tool/ddf/DDFManager;->candidateServerIds:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/idm/fotaagent/tool/ddf/DDFManager;->candidateServerIds:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private isCandidateDirectory(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "profile/"

    iget-object v1, p0, Lcom/idm/fotaagent/tool/ddf/DDFManager;->candidateServerIds:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/idm/fotaagent/tool/ddf/DDFManager;->assetManager:Landroid/content/res/AssetManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const-string p1, "list of assets should not be null"

    invoke-static {p0, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, [Ljava/lang/String;

    array-length p0, p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez p0, :cond_0

    const/4 v2, 0x1

    :catch_0
    :cond_0
    return v2
.end method

.method private isTableCreatedSuccessfully(Ljava/lang/String;)Z
    .locals 0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/idm/fotaagent/database/sqlite/database/mo/IDMDatabaseMoNodeManager;->getInstance()Lcom/idm/fotaagent/database/sqlite/database/mo/IDMDatabaseMoNodeManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/sqlite/database/mo/IDMDatabaseMoNodeManager;->idmGetMoDatabaseManager()Lcom/idm/providers/mo/IDMMoDatabaseManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/idm/providers/mo/IDMMoDatabaseManager;->idmMoDatabaseCreateTable(Ljava/util/ArrayList;)Z

    move-result p0

    return p0
.end method

.method private logBootstrapInfo(Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseServerInfo;)V
    .locals 6

    invoke-static {}, Lcom/idm/fotaagent/database/sqlite/database/mo/IDMDatabaseMoNodeManager;->getInstance()Lcom/idm/fotaagent/database/sqlite/database/mo/IDMDatabaseMoNodeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/mo/IDMDatabaseMoNodeManager;->idmGetMoDatabaseManager()Lcom/idm/providers/mo/IDMMoDatabaseManager;

    move-result-object v0

    iget-object v1, p0, Lcom/idm/fotaagent/tool/ddf/DDFManager;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/fotaagent/common/log/Log;->bootstrapLogger(Landroid/content/Context;)Lcom/samsung/android/fotaagent/common/log/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Model : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/idm/fotaagent/utils/DeviceUtils;->readModelName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/fotaagent/common/log/Logger;->H(Ljava/lang/Object;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Device ID : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/idm/fotaagent/tool/ddf/DDFManager;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/DeviceId;->readDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/samsung/android/fotaagent/common/log/Logger;->H(Ljava/lang/Object;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "Server ID : "

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseServerInfo;->idmGetServer()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const-string v4, "/AAuthName"

    invoke-virtual {v0, v3, v4, v2}, Lcom/idm/providers/mo/IDMMoDatabaseManager;->idmMoGetAccAuthInfo(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/samsung/android/fotaagent/common/log/Logger;->H(Ljava/lang/Object;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "Server PW : "

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/AAuthSecret"

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseServerInfo;->idmGetServer()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v2, v5}, Lcom/idm/providers/mo/IDMMoDatabaseManager;->idmMoGetAccAuthInfo(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/samsung/android/fotaagent/common/log/Logger;->H(Ljava/lang/Object;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "Server URL : "

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseServerInfo;->idmGetServer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/idm/providers/mo/IDMMoDatabaseManager;->idmMoGetAccServerUriInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/samsung/android/fotaagent/common/log/Logger;->H(Ljava/lang/Object;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "User ID : "

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x2

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseServerInfo;->idmGetServer()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, v4, p1}, Lcom/idm/providers/mo/IDMMoDatabaseManager;->idmMoGetAccAuthInfo(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/samsung/android/fotaagent/common/log/Logger;->H(Ljava/lang/Object;)V

    return-void
.end method

.method private populateCandidateServerIds(Z)V
    .locals 2

    iget-object v0, p0, Lcom/idm/fotaagent/tool/ddf/DDFManager;->candidateServerIds:Ljava/util/List;

    const-string v1, "x6g1q14r75"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/idm/fotaagent/tool/ddf/DDFManager;->candidateServerIds:Ljava/util/List;

    const-string p1, "mformtest2020"

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private replaceProfile(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/idm/core/ddf/DDFProfileInfo;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/idm/core/ddf/DDFProfileInfo;

    new-instance v1, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseServerInfo;

    invoke-direct {v1}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseServerInfo;-><init>()V

    invoke-virtual {v0}, Lcom/idm/core/ddf/DDFProfileInfo;->getServerId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseServerInfo;->idmSetServer(Ljava/lang/String;)V

    const-string v2, "x6g1q14r75"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseServerInfo;->idmSetActive(I)V

    :cond_1
    invoke-direct {p0, v0}, Lcom/idm/fotaagent/tool/ddf/DDFManager;->getServerIndex(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseServerInfo;->idmSetId(I)V

    invoke-static {}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->getInstance()Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->replaceServerInfo(Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseServerInfo;)V

    invoke-direct {p0, v1}, Lcom/idm/fotaagent/tool/ddf/DDFManager;->logBootstrapInfo(Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseServerInfo;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private saveHashFor(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    new-instance p0, Lcom/idm/fotaagent/tool/ddf/IDMToolDDFHashInfo;

    invoke-direct {p0}, Lcom/idm/fotaagent/tool/ddf/IDMToolDDFHashInfo;-><init>()V

    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/tool/ddf/IDMToolDDFHashInfo;->idmSetDDFFileName(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/idm/fotaagent/tool/ddf/IDMToolDDFHashInfo;->idmSetDDFHashData(Ljava/lang/String;)V

    invoke-static {}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->getInstance()Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/idm/fotaagent/database/sqlite/database/IDMDatabaseManager;->insertDDFHashInfo(Lcom/idm/fotaagent/tool/ddf/IDMToolDDFHashInfo;)V

    return-void
.end method


# virtual methods
.method public execute(Z)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/tool/ddf/DDFManager;->populateCandidateServerIds(Z)V

    iget-object p1, p0, Lcom/idm/fotaagent/tool/ddf/DDFManager;->assetManager:Landroid/content/res/AssetManager;

    const-string v0, "profile"

    invoke-virtual {p1, v0}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, LF2/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, LF2/a;-><init>(ILjava/lang/Object;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, LF2/a;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, LF2/a;-><init>(ILjava/lang/Object;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, LF2/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, LF2/b;-><init>(ILjava/lang/Object;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, LC2/c;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, LC2/c;-><init>(ILjava/lang/Object;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    invoke-direct {p0}, Lcom/idm/fotaagent/tool/ddf/DDFManager;->clearCandidateServerIds()V

    return-void
.end method
