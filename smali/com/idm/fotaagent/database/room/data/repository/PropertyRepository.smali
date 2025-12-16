.class public Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository;
.super Lcom/idm/fotaagent/database/room/data/repository/CategoryNameValueRepository;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/idm/fotaagent/database/room/data/repository/CategoryNameValueRepository<",
        "Lcom/idm/fotaagent/database/room/data/entity/Property;",
        "Lcom/idm/fotaagent/database/room/data/dao/PropertyDao;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-static {p1}, Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase;->get(Landroid/content/Context;)Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository;-><init>(Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase;)V

    return-void
.end method

.method public constructor <init>(Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase;)V
    .locals 1

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase;->propertyDao()Lcom/idm/fotaagent/database/room/data/dao/PropertyDao;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/idm/fotaagent/database/room/data/repository/CategoryNameValueRepository;-><init>(Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase;Lcom/idm/fotaagent/database/room/data/dao/CategoryNameValueDao;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic delete(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/idm/fotaagent/database/room/data/repository/CategoryNameValueRepository;->delete(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic deleteAll(Ljava/lang/String;)I
    .locals 0

    invoke-super {p0, p1}, Lcom/idm/fotaagent/database/room/data/repository/CategoryNameValueRepository;->deleteAll(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic deleteCategories([Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/idm/fotaagent/database/room/data/repository/CategoryNameValueRepository;->deleteCategories([Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic getAllEntitiesOf(Ljava/lang/String;)Ljava/util/List;
    .locals 0

    invoke-super {p0, p1}, Lcom/idm/fotaagent/database/room/data/repository/CategoryNameValueRepository;->getAllEntitiesOf(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getLiveDataValueOf(Ljava/lang/String;Ljava/lang/String;Ljava/io/Serializable;)Landroidx/lifecycle/C;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/idm/fotaagent/database/room/data/repository/CategoryNameValueRepository;->getLiveDataValueOf(Ljava/lang/String;Ljava/lang/String;Ljava/io/Serializable;)Landroidx/lifecycle/C;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getValueOf(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Optional;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/idm/fotaagent/database/room/data/repository/CategoryNameValueRepository;->getValueOf(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic insertOrReplace(Ljava/lang/String;Ljava/lang/String;Ljava/io/Serializable;)J
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/idm/fotaagent/database/room/data/repository/CategoryNameValueRepository;->insertOrReplace(Ljava/lang/String;Ljava/lang/String;Ljava/io/Serializable;)J

    move-result-wide p0

    return-wide p0
.end method

.method public bridge synthetic size(Ljava/lang/String;)I
    .locals 0

    invoke-super {p0, p1}, Lcom/idm/fotaagent/database/room/data/repository/CategoryNameValueRepository;->size(Ljava/lang/String;)I

    move-result p0

    return p0
.end method
