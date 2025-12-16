.class public Lcom/idm/fotaagent/database/room/data/repository/InjectedFeatureRepository$SpecificCategory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/idm/fotaagent/database/room/data/repository/CategoryNameValueDataSource$SpecificCategory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/database/room/data/repository/InjectedFeatureRepository;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SpecificCategory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/idm/fotaagent/database/room/data/repository/CategoryNameValueDataSource$SpecificCategory<",
        "Lcom/idm/fotaagent/database/room/data/entity/InjectedFeature;",
        ">;"
    }
.end annotation


# static fields
.field private static final PERSISTENT_DATA_SOURCE:Lcom/idm/fotaagent/database/room/data/repository/CategoryNameValueDataSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/idm/fotaagent/database/room/data/repository/CategoryNameValueDataSource<",
            "Lcom/idm/fotaagent/database/room/data/entity/InjectedFeature;",
            ">;"
        }
    .end annotation
.end field

.field private static final REPOSITORIES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/idm/fotaagent/database/room/data/repository/InjectedFeatureRepository$SpecificCategory;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/Serializable;",
            ">;"
        }
    .end annotation
.end field

.field private final category:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/idm/fotaagent/database/room/data/repository/InjectedFeatureRepository$PersistentDataSource;

    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->idmGetContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/database/room/data/repository/InjectedFeatureRepository$PersistentDataSource;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/idm/fotaagent/database/room/data/repository/InjectedFeatureRepository$SpecificCategory;->PERSISTENT_DATA_SOURCE:Lcom/idm/fotaagent/database/room/data/repository/CategoryNameValueDataSource;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/idm/fotaagent/database/room/data/repository/InjectedFeatureRepository$SpecificCategory;->REPOSITORIES:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/idm/fotaagent/database/room/data/repository/InjectedFeatureRepository$SpecificCategory;->cache:Ljava/util/Map;

    iput-object p1, p0, Lcom/idm/fotaagent/database/room/data/repository/InjectedFeatureRepository$SpecificCategory;->category:Ljava/lang/String;

    sget-object v0, Lcom/idm/fotaagent/database/room/data/repository/InjectedFeatureRepository$SpecificCategory;->PERSISTENT_DATA_SOURCE:Lcom/idm/fotaagent/database/room/data/repository/CategoryNameValueDataSource;

    invoke-interface {v0, p1}, Lcom/idm/fotaagent/database/room/data/repository/CategoryNameValueDataSource;->getAllEntitiesOf(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/idm/fotaagent/database/room/data/entity/InjectedFeature;

    :try_start_0
    iget-object v1, p0, Lcom/idm/fotaagent/database/room/data/repository/InjectedFeatureRepository$SpecificCategory;->cache:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/room/data/entity/CategoryNameValue;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/room/data/entity/CategoryNameValue;->getDeserializedValue()Ljava/io/Serializable;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static get(Ljava/lang/String;)Lcom/idm/fotaagent/database/room/data/repository/InjectedFeatureRepository$SpecificCategory;
    .locals 2

    sget-object v0, Lcom/idm/fotaagent/database/room/data/repository/InjectedFeatureRepository$SpecificCategory;->REPOSITORIES:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/idm/fotaagent/database/room/data/repository/InjectedFeatureRepository$SpecificCategory;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    new-instance v1, Lcom/idm/fotaagent/database/room/data/repository/InjectedFeatureRepository$SpecificCategory;

    invoke-direct {v1, p0}, Lcom/idm/fotaagent/database/room/data/repository/InjectedFeatureRepository$SpecificCategory;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/idm/fotaagent/database/room/data/repository/InjectedFeatureRepository$SpecificCategory;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, p0

    :goto_0
    return-object v1
.end method


# virtual methods
.method public delete(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lcom/idm/fotaagent/database/room/data/repository/InjectedFeatureRepository$SpecificCategory;->cache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "previous: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->V(Ljava/lang/Object;)V

    sget-object v0, Lcom/idm/fotaagent/database/room/data/repository/InjectedFeatureRepository$SpecificCategory;->PERSISTENT_DATA_SOURCE:Lcom/idm/fotaagent/database/room/data/repository/CategoryNameValueDataSource;

    iget-object p0, p0, Lcom/idm/fotaagent/database/room/data/repository/InjectedFeatureRepository$SpecificCategory;->category:Ljava/lang/String;

    invoke-interface {v0, p0, p1}, Lcom/idm/fotaagent/database/room/data/repository/CategoryNameValueDataSource;->delete(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public deleteAll()I
    .locals 1

    iget-object v0, p0, Lcom/idm/fotaagent/database/room/data/repository/InjectedFeatureRepository$SpecificCategory;->cache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    sget-object v0, Lcom/idm/fotaagent/database/room/data/repository/InjectedFeatureRepository$SpecificCategory;->PERSISTENT_DATA_SOURCE:Lcom/idm/fotaagent/database/room/data/repository/CategoryNameValueDataSource;

    iget-object p0, p0, Lcom/idm/fotaagent/database/room/data/repository/InjectedFeatureRepository$SpecificCategory;->category:Ljava/lang/String;

    invoke-interface {v0, p0}, Lcom/idm/fotaagent/database/room/data/repository/CategoryNameValueDataSource;->deleteAll(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getAllEntities()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/idm/fotaagent/database/room/data/entity/InjectedFeature;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/idm/fotaagent/database/room/data/repository/InjectedFeatureRepository$SpecificCategory;->cache:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    :try_start_0
    new-instance v3, Lcom/idm/fotaagent/database/room/data/entity/InjectedFeature;

    iget-object v4, p0, Lcom/idm/fotaagent/database/room/data/repository/InjectedFeatureRepository$SpecificCategory;->category:Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/Serializable;

    invoke-direct {v3, v4, v5, v2}, Lcom/idm/fotaagent/database/room/data/entity/InjectedFeature;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-static {v2}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getLiveDataValueOf(Ljava/lang/String;Ljava/io/Serializable;)Landroidx/lifecycle/C;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V::",
            "Ljava/io/Serializable;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/io/Serializable;",
            ")",
            "Landroidx/lifecycle/C;"
        }
    .end annotation

    sget-object v0, Lcom/idm/fotaagent/database/room/data/repository/InjectedFeatureRepository$SpecificCategory;->PERSISTENT_DATA_SOURCE:Lcom/idm/fotaagent/database/room/data/repository/CategoryNameValueDataSource;

    iget-object p0, p0, Lcom/idm/fotaagent/database/room/data/repository/InjectedFeatureRepository$SpecificCategory;->category:Ljava/lang/String;

    invoke-interface {v0, p0, p1, p2}, Lcom/idm/fotaagent/database/room/data/repository/CategoryNameValueDataSource;->getLiveDataValueOf(Ljava/lang/String;Ljava/lang/String;Ljava/io/Serializable;)Landroidx/lifecycle/C;

    move-result-object p0

    return-object p0
.end method

.method public getValueOf(Ljava/lang/String;)Ljava/util/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V::",
            "Ljava/io/Serializable;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Optional<",
            "TV;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/idm/fotaagent/database/room/data/repository/InjectedFeatureRepository$SpecificCategory;->cache:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/Serializable;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public insertOrReplace(Ljava/lang/String;Ljava/io/Serializable;)J
    .locals 1

    iget-object v0, p0, Lcom/idm/fotaagent/database/room/data/repository/InjectedFeatureRepository$SpecificCategory;->cache:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/idm/fotaagent/database/room/data/repository/InjectedFeatureRepository$SpecificCategory;->PERSISTENT_DATA_SOURCE:Lcom/idm/fotaagent/database/room/data/repository/CategoryNameValueDataSource;

    iget-object p0, p0, Lcom/idm/fotaagent/database/room/data/repository/InjectedFeatureRepository$SpecificCategory;->category:Ljava/lang/String;

    invoke-interface {v0, p0, p1, p2}, Lcom/idm/fotaagent/database/room/data/repository/CategoryNameValueDataSource;->insertOrReplace(Ljava/lang/String;Ljava/lang/String;Ljava/io/Serializable;)J

    move-result-wide p0

    return-wide p0
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/database/room/data/repository/InjectedFeatureRepository$SpecificCategory;->cache:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    return p0
.end method
