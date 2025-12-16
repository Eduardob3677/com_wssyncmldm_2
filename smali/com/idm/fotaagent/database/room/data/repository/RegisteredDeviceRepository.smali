.class public Lcom/idm/fotaagent/database/room/data/repository/RegisteredDeviceRepository;
.super Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;
.source "SourceFile"


# static fields
.field public static final CATEGORY:Ljava/lang/String; = "RegisteredDevice"

.field private static final NAME_CORP_ID:Ljava/lang/String; = "corpId"

.field private static final NAME_DEVICE_ID:Ljava/lang/String; = "deviceId"

.field private static final NAME_MODEL_NAME:Ljava/lang/String; = "modelName"

.field private static final NAME_SALES_CODE:Ljava/lang/String; = "salesCode"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-static {p1}, Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase;->get(Landroid/content/Context;)Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase;

    move-result-object p1

    const-string v0, "RegisteredDevice"

    invoke-direct {p0, p1, v0}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;-><init>(Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/idm/fotaagent/database/room/data/repository/RegisteredDeviceRepository;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/idm/fotaagent/database/room/data/repository/RegisteredDeviceRepository;->lambda$save$0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/idm/fotaagent/database/room/data/repository/RegisteredDeviceRepository;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static decrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Lcom/idm/fotaagent/enabler/security/IDMSecurityAESCryptImpl;

    invoke-direct {v0}, Lcom/idm/fotaagent/enabler/security/IDMSecurityAESCryptImpl;-><init>()V

    invoke-virtual {v0}, Lcom/idm/fotaagent/enabler/security/IDMSecurityAESCryptImpl;->idmGetCryptionkey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/idm/core/security/IDMSecurityAESCrypt;->idmDecryptorStrBase64(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Lcom/idm/fotaagent/enabler/security/IDMSecurityAESCryptImpl;

    invoke-direct {v0}, Lcom/idm/fotaagent/enabler/security/IDMSecurityAESCryptImpl;-><init>()V

    invoke-virtual {v0}, Lcom/idm/fotaagent/enabler/security/IDMSecurityAESCryptImpl;->idmGetCryptionkey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/idm/core/security/IDMSecurityAESCrypt;->idmEncryptorStrBase64(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$save$0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "deviceId"

    invoke-static {p1}, Lcom/idm/fotaagent/database/room/data/repository/RegisteredDeviceRepository;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->insertOrReplaceWithoutException(Ljava/lang/String;Ljava/io/Serializable;)J

    const-string p1, "modelName"

    invoke-virtual {p0, p1, p2}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->insertOrReplaceWithoutException(Ljava/lang/String;Ljava/io/Serializable;)J

    const-string p1, "salesCode"

    invoke-virtual {p0, p1, p3}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->insertOrReplaceWithoutException(Ljava/lang/String;Ljava/io/Serializable;)J

    const-string p1, "corpId"

    invoke-virtual {p0, p1, p4}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->insertOrReplaceWithoutException(Ljava/lang/String;Ljava/io/Serializable;)J

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->deleteAll()I

    return-void
.end method

.method public getCorpId()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "corpId"

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->getValueOf(Ljava/lang/String;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public getDeviceId()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "deviceId"

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->getValueOf(Ljava/lang/String;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/idm/fotaagent/database/room/data/repository/h;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/database/room/data/repository/h;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public getModelName()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "modelName"

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->getValueOf(Ljava/lang/String;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public getSalesCode()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "salesCode"

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->getValueOf(Ljava/lang/String;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public save(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    new-instance v6, Lcom/idm/fotaagent/database/room/data/repository/j;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/idm/fotaagent/database/room/data/repository/j;-><init>(Lcom/idm/fotaagent/database/room/data/repository/RegisteredDeviceRepository;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Lcom/idm/fotaagent/database/room/data/repository/CategoryNameValueRepository$SpecificCategory;->runInTransaction(Ljava/lang/Runnable;)V

    return-void
.end method
