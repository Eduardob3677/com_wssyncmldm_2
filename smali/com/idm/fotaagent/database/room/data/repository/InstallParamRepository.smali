.class public Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository;
.super Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository$Internal;
    }
.end annotation


# static fields
.field public static final CATEGORY:Ljava/lang/String; = "InstallParam"

.field public static final DEFAULT_CACHE_MARGIN:J = 0x12cL

.field public static final DEFAULT_DATA_MARGIN:J = 0x1f4L

.field private static final NAME_APP_FOTA:Ljava/lang/String; = "appFota"

.field private static final NAME_BATTERY_INSTALL_LEVEL:Ljava/lang/String; = "batteryInstallLevel"

.field private static final NAME_CACHE_MARGIN:Ljava/lang/String; = "cacheMargin"

.field private static final NAME_DATA_MARGIN:Ljava/lang/String; = "dataMargin"

.field private static final NAME_FILE_HASH:Ljava/lang/String; = "fileHash"

.field private static final NAME_FILE_SIZE:Ljava/lang/String; = "fileSize"

.field private static final NAME_FIRMWARE_TYPE:Ljava/lang/String; = "firmwareType"

.field private static final NAME_MD5:Ljava/lang/String; = "MD5"

.field private static final NAME_METADATA_FILE_SIZE:Ljava/lang/String; = "metadataFileSize"

.field private static final NAME_METADATA_HASH:Ljava/lang/String; = "metadataHash"

.field private static final NAME_METADATA_SIZE:Ljava/lang/String; = "metadataSize"

.field private static final NAME_MR_TYPE:Ljava/lang/String; = "mrType"

.field private static final NAME_OFFSET:Ljava/lang/String; = "offset"

.field private static final NAME_ONE_UI_TYPE:Ljava/lang/String; = "oneUiType"

.field private static final NAME_SECURITY_PATCH_VERSION:Ljava/lang/String; = "securityPatchVersion"

.field private static final NAME_UPDATE_FW_OS_VERSION:Ljava/lang/String; = "updateFwOsV"

.field private static final NAME_UPDATE_FW_VERSION:Ljava/lang/String; = "updateFwV"

.field private static final NAME_UPDATE_ONE_UI_VERSION:Ljava/lang/String; = "updateOneUiVersion"

.field public static final VALUE_ONE_UI_TYPE_MAJOR:Ljava/lang/String; = "MAJOR"

.field public static final VALUE_ONE_UI_TYPE_MINOR:Ljava/lang/String; = "MINOR"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-static {p1}, Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase;->get(Landroid/content/Context;)Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase;

    move-result-object p1

    const-string v0, "InstallParam"

    invoke-direct {p0, p1, v0}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;-><init>(Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository;->lambda$save$0(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository;Ljava/lang/String;JLjava/lang/String;JJJ)V
    .locals 0

    invoke-direct/range {p0 .. p10}, Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository;->lambda$saveInstallParamForABUpdate$1(Ljava/lang/String;JLjava/lang/String;JJJ)V

    return-void
.end method

.method private synthetic lambda$save$0(Ljava/lang/String;)V
    .locals 7

    new-instance v0, Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository$Internal;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository$Internal;-><init>(Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository$1;)V

    const-string p0, ";"

    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length p1, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p1, :cond_2

    aget-object v3, p0, v2

    const-string v4, "="

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    array-length v6, v4

    if-ne v6, v5, :cond_1

    aget-object v5, v4, v1

    if-eqz v5, :cond_1

    const/4 v6, 0x1

    aget-object v4, v4, v6

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    invoke-virtual {v0, v5, v4}, Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository$Internal;->insertOrReplace(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    invoke-static {v3}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_1
    :goto_1
    const-string v4, "invalid attribute: "

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private synthetic lambda$saveInstallParamForABUpdate$1(Ljava/lang/String;JLjava/lang/String;JJJ)V
    .locals 1

    const-string v0, "fileHash"

    invoke-virtual {p0, v0, p1}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->insertOrReplaceWithoutException(Ljava/lang/String;Ljava/io/Serializable;)J

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "fileSize"

    invoke-virtual {p0, p2, p1}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->insertOrReplaceWithoutException(Ljava/lang/String;Ljava/io/Serializable;)J

    const-string p1, "metadataHash"

    invoke-virtual {p0, p1, p4}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->insertOrReplaceWithoutException(Ljava/lang/String;Ljava/io/Serializable;)J

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "metadataSize"

    invoke-virtual {p0, p2, p1}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->insertOrReplaceWithoutException(Ljava/lang/String;Ljava/io/Serializable;)J

    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "metadataFileSize"

    invoke-virtual {p0, p2, p1}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->insertOrReplaceWithoutException(Ljava/lang/String;Ljava/io/Serializable;)J

    invoke-static {p9, p10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "offset"

    invoke-virtual {p0, p2, p1}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->insertOrReplaceWithoutException(Ljava/lang/String;Ljava/io/Serializable;)J

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->deleteAll()I

    return-void
.end method

.method public getAppFota()I
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "appFota"

    invoke-virtual {p0, v1, v0}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->getValueOf(Ljava/lang/String;Ljava/io/Serializable;)Ljava/io/Serializable;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getBatteryInstallLevel()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "batteryInstallLevel"

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->getValueOf(Ljava/lang/String;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public getCacheMargin()J
    .locals 2

    const-wide/16 v0, 0x12c

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "cacheMargin"

    invoke-virtual {p0, v1, v0}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->getValueOf(Ljava/lang/String;Ljava/io/Serializable;)Ljava/io/Serializable;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDataMargin()J
    .locals 2

    const-wide/16 v0, 0x1f4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "dataMargin"

    invoke-virtual {p0, v1, v0}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->getValueOf(Ljava/lang/String;Ljava/io/Serializable;)Ljava/io/Serializable;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFileHash()Ljava/lang/String;
    .locals 2

    const-string v0, "fileHash"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->getValueOf(Ljava/lang/String;Ljava/io/Serializable;)Ljava/io/Serializable;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getFileSize()J
    .locals 2

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "fileSize"

    invoke-virtual {p0, v1, v0}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->getValueOf(Ljava/lang/String;Ljava/io/Serializable;)Ljava/io/Serializable;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMD5()Ljava/lang/String;
    .locals 2

    const-string v0, "MD5"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->getValueOf(Ljava/lang/String;Ljava/io/Serializable;)Ljava/io/Serializable;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getMetadataFileSize()J
    .locals 2

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "metadataFileSize"

    invoke-virtual {p0, v1, v0}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->getValueOf(Ljava/lang/String;Ljava/io/Serializable;)Ljava/io/Serializable;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMetadataHash()Ljava/lang/String;
    .locals 2

    const-string v0, "metadataHash"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->getValueOf(Ljava/lang/String;Ljava/io/Serializable;)Ljava/io/Serializable;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getMetadataSize()J
    .locals 2

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "metadataSize"

    invoke-virtual {p0, v1, v0}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->getValueOf(Ljava/lang/String;Ljava/io/Serializable;)Ljava/io/Serializable;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMrType()Ljava/lang/String;
    .locals 2

    const-string v0, "mrType"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->getValueOf(Ljava/lang/String;Ljava/io/Serializable;)Ljava/io/Serializable;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getOffset()J
    .locals 2

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "offset"

    invoke-virtual {p0, v1, v0}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->getValueOf(Ljava/lang/String;Ljava/io/Serializable;)Ljava/io/Serializable;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getOneUiType()Ljava/lang/String;
    .locals 2

    const-string v0, "oneUiType"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->getValueOf(Ljava/lang/String;Ljava/io/Serializable;)Ljava/io/Serializable;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getSecurityPatchVersion()Ljava/lang/String;
    .locals 2

    const-string v0, "securityPatchVersion"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->getValueOf(Ljava/lang/String;Ljava/io/Serializable;)Ljava/io/Serializable;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getUpdateFwOsVersion()Ljava/lang/String;
    .locals 2

    const-string v0, "updateFwOsV"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->getValueOf(Ljava/lang/String;Ljava/io/Serializable;)Ljava/io/Serializable;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getUpdateFwVersion()Ljava/lang/String;
    .locals 2

    const-string v0, "updateFwV"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->getValueOf(Ljava/lang/String;Ljava/io/Serializable;)Ljava/io/Serializable;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getUpdateOneUiVersion()Ljava/lang/String;
    .locals 2

    const-string v0, "updateOneUiVersion"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->getValueOf(Ljava/lang/String;Ljava/io/Serializable;)Ljava/io/Serializable;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public isMajor()Z
    .locals 1

    const-string v0, "MAJOR"

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository;->getOneUiType()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isMinor()Z
    .locals 0

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository;->isMajor()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public save(Ljava/lang/String;)V
    .locals 2

    new-instance v0, LA/o;

    const/16 v1, 0x8

    invoke-direct {v0, p0, v1, p1}, LA/o;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/database/room/data/repository/CategoryNameValueRepository$SpecificCategory;->runInTransaction(Ljava/lang/Runnable;)V

    return-void
.end method

.method public saveInstallParamForABUpdate(Ljava/lang/String;JLjava/lang/String;JJJ)V
    .locals 13

    new-instance v12, Lcom/idm/fotaagent/database/room/data/repository/g;

    move-object v0, v12

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-object/from16 v5, p4

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    invoke-direct/range {v0 .. v11}, Lcom/idm/fotaagent/database/room/data/repository/g;-><init>(Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository;Ljava/lang/String;JLjava/lang/String;JJJ)V

    move-object v0, p0

    invoke-virtual {p0, v12}, Lcom/idm/fotaagent/database/room/data/repository/CategoryNameValueRepository$SpecificCategory;->runInTransaction(Ljava/lang/Runnable;)V

    return-void
.end method
