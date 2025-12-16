.class public Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;
.super Lcom/idm/fotaagent/database/room/data/repository/CategoryNameValueRepository$SpecificCategory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SpecificCategory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/idm/fotaagent/database/room/data/repository/CategoryNameValueRepository$SpecificCategory<",
        "Lcom/idm/fotaagent/database/room/data/entity/Property;",
        "Lcom/idm/fotaagent/database/room/data/dao/PropertyDao;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase;->propertyDao()Lcom/idm/fotaagent/database/room/data/dao/PropertyDao;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/idm/fotaagent/database/room/data/repository/CategoryNameValueRepository$SpecificCategory;-><init>(Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase;Lcom/idm/fotaagent/database/room/data/dao/CategoryNameValueDao;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic delete(Ljava/lang/String;)I
    .locals 0

    invoke-super {p0, p1}, Lcom/idm/fotaagent/database/room/data/repository/CategoryNameValueRepository$SpecificCategory;->delete(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic deleteAll()I
    .locals 0

    invoke-super {p0}, Lcom/idm/fotaagent/database/room/data/repository/CategoryNameValueRepository$SpecificCategory;->deleteAll()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getAllEntities()Ljava/util/List;
    .locals 0

    invoke-super {p0}, Lcom/idm/fotaagent/database/room/data/repository/CategoryNameValueRepository$SpecificCategory;->getAllEntities()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getLiveDataValueOf(Ljava/lang/String;Ljava/io/Serializable;)Landroidx/lifecycle/C;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/idm/fotaagent/database/room/data/repository/CategoryNameValueRepository$SpecificCategory;->getLiveDataValueOf(Ljava/lang/String;Ljava/io/Serializable;)Landroidx/lifecycle/C;

    move-result-object p0

    return-object p0
.end method

.method public getValueOf(Ljava/lang/String;Ljava/io/Serializable;)Ljava/io/Serializable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V::",
            "Ljava/io/Serializable;",
            ">(",
            "Ljava/lang/String;",
            "TV;)TV;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->getValueOf(Ljava/lang/String;)Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/Serializable;

    return-object p0
.end method

.method public bridge synthetic getValueOf(Ljava/lang/String;)Ljava/util/Optional;
    .locals 0

    invoke-super {p0, p1}, Lcom/idm/fotaagent/database/room/data/repository/CategoryNameValueRepository$SpecificCategory;->getValueOf(Ljava/lang/String;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic insertOrReplace(Ljava/lang/String;Ljava/io/Serializable;)J
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/idm/fotaagent/database/room/data/repository/CategoryNameValueRepository$SpecificCategory;->insertOrReplace(Ljava/lang/String;Ljava/io/Serializable;)J

    move-result-wide p0

    return-wide p0
.end method

.method public insertOrReplaceWithoutException(Ljava/lang/String;Ljava/io/Serializable;)J
    .locals 1

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->insertOrReplace(Ljava/lang/String;Ljava/io/Serializable;)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->insertOrReplace(Ljava/lang/String;Ljava/io/Serializable;)J

    move-result-wide p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return-wide p0

    :catch_1
    move-exception p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public bridge synthetic size()I
    .locals 0

    invoke-super {p0}, Lcom/idm/fotaagent/database/room/data/repository/CategoryNameValueRepository$SpecificCategory;->size()I

    move-result p0

    return p0
.end method
