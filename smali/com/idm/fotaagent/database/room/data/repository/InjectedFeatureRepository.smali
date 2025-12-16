.class public Lcom/idm/fotaagent/database/room/data/repository/InjectedFeatureRepository;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/idm/fotaagent/database/room/data/repository/CategoryNameValueDataSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idm/fotaagent/database/room/data/repository/InjectedFeatureRepository$SpecificCategory;,
        Lcom/idm/fotaagent/database/room/data/repository/InjectedFeatureRepository$PersistentDataSource;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/idm/fotaagent/database/room/data/repository/CategoryNameValueDataSource<",
        "Lcom/idm/fotaagent/database/room/data/entity/InjectedFeature;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public delete(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-static {p1}, Lcom/idm/fotaagent/database/room/data/repository/InjectedFeatureRepository$SpecificCategory;->get(Ljava/lang/String;)Lcom/idm/fotaagent/database/room/data/repository/InjectedFeatureRepository$SpecificCategory;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/idm/fotaagent/database/room/data/repository/InjectedFeatureRepository$SpecificCategory;->delete(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public deleteAll(Ljava/lang/String;)I
    .locals 0

    invoke-static {p1}, Lcom/idm/fotaagent/database/room/data/repository/InjectedFeatureRepository$SpecificCategory;->get(Ljava/lang/String;)Lcom/idm/fotaagent/database/room/data/repository/InjectedFeatureRepository$SpecificCategory;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/room/data/repository/InjectedFeatureRepository$SpecificCategory;->deleteAll()I

    move-result p0

    return p0
.end method

.method public getAllEntitiesOf(Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/idm/fotaagent/database/room/data/entity/InjectedFeature;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/idm/fotaagent/database/room/data/repository/InjectedFeatureRepository$SpecificCategory;->get(Ljava/lang/String;)Lcom/idm/fotaagent/database/room/data/repository/InjectedFeatureRepository$SpecificCategory;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/room/data/repository/InjectedFeatureRepository$SpecificCategory;->getAllEntities()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getLiveDataValueOf(Ljava/lang/String;Ljava/lang/String;Ljava/io/Serializable;)Landroidx/lifecycle/C;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V::",
            "Ljava/io/Serializable;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/io/Serializable;",
            ")",
            "Landroidx/lifecycle/C;"
        }
    .end annotation

    invoke-static {p1}, Lcom/idm/fotaagent/database/room/data/repository/InjectedFeatureRepository$SpecificCategory;->get(Ljava/lang/String;)Lcom/idm/fotaagent/database/room/data/repository/InjectedFeatureRepository$SpecificCategory;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Lcom/idm/fotaagent/database/room/data/repository/InjectedFeatureRepository$SpecificCategory;->getLiveDataValueOf(Ljava/lang/String;Ljava/io/Serializable;)Landroidx/lifecycle/C;

    move-result-object p0

    return-object p0
.end method

.method public getValueOf(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V::",
            "Ljava/io/Serializable;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Optional<",
            "TV;>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/idm/fotaagent/database/room/data/repository/InjectedFeatureRepository$SpecificCategory;->get(Ljava/lang/String;)Lcom/idm/fotaagent/database/room/data/repository/InjectedFeatureRepository$SpecificCategory;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/idm/fotaagent/database/room/data/repository/InjectedFeatureRepository$SpecificCategory;->getValueOf(Ljava/lang/String;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public insertOrReplace(Ljava/lang/String;Ljava/lang/String;Ljava/io/Serializable;)J
    .locals 0

    invoke-static {p1}, Lcom/idm/fotaagent/database/room/data/repository/InjectedFeatureRepository$SpecificCategory;->get(Ljava/lang/String;)Lcom/idm/fotaagent/database/room/data/repository/InjectedFeatureRepository$SpecificCategory;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Lcom/idm/fotaagent/database/room/data/repository/InjectedFeatureRepository$SpecificCategory;->insertOrReplace(Ljava/lang/String;Ljava/io/Serializable;)J

    move-result-wide p0

    return-wide p0
.end method

.method public size(Ljava/lang/String;)I
    .locals 0

    invoke-static {p1}, Lcom/idm/fotaagent/database/room/data/repository/InjectedFeatureRepository$SpecificCategory;->get(Ljava/lang/String;)Lcom/idm/fotaagent/database/room/data/repository/InjectedFeatureRepository$SpecificCategory;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/room/data/repository/InjectedFeatureRepository$SpecificCategory;->size()I

    move-result p0

    return p0
.end method
