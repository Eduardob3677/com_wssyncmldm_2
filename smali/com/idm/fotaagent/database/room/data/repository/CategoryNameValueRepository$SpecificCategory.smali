.class Lcom/idm/fotaagent/database/room/data/repository/CategoryNameValueRepository$SpecificCategory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/idm/fotaagent/database/room/data/repository/CategoryNameValueDataSource$SpecificCategory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/database/room/data/repository/CategoryNameValueRepository;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SpecificCategory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Lcom/idm/fotaagent/database/room/data/entity/CategoryNameValue;",
        "D::",
        "Lcom/idm/fotaagent/database/room/data/dao/CategoryNameValueDao<",
        "TE;>;>",
        "Ljava/lang/Object;",
        "Lcom/idm/fotaagent/database/room/data/repository/CategoryNameValueDataSource$SpecificCategory<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final category:Ljava/lang/String;

.field private final categoryNameValueRepository:Lcom/idm/fotaagent/database/room/data/repository/CategoryNameValueRepository;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/idm/fotaagent/database/room/data/repository/CategoryNameValueRepository<",
            "TE;TD;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase;Lcom/idm/fotaagent/database/room/data/dao/CategoryNameValueDao;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase;",
            "TD;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/idm/fotaagent/database/room/data/repository/CategoryNameValueRepository;

    invoke-direct {v0, p1, p2}, Lcom/idm/fotaagent/database/room/data/repository/CategoryNameValueRepository;-><init>(Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase;Lcom/idm/fotaagent/database/room/data/dao/CategoryNameValueDao;)V

    iput-object v0, p0, Lcom/idm/fotaagent/database/room/data/repository/CategoryNameValueRepository$SpecificCategory;->categoryNameValueRepository:Lcom/idm/fotaagent/database/room/data/repository/CategoryNameValueRepository;

    iput-object p3, p0, Lcom/idm/fotaagent/database/room/data/repository/CategoryNameValueRepository$SpecificCategory;->category:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public delete(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/idm/fotaagent/database/room/data/repository/CategoryNameValueRepository$SpecificCategory;->categoryNameValueRepository:Lcom/idm/fotaagent/database/room/data/repository/CategoryNameValueRepository;

    iget-object p0, p0, Lcom/idm/fotaagent/database/room/data/repository/CategoryNameValueRepository$SpecificCategory;->category:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Lcom/idm/fotaagent/database/room/data/repository/CategoryNameValueRepository;->delete(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public deleteAll()I
    .locals 1

    iget-object v0, p0, Lcom/idm/fotaagent/database/room/data/repository/CategoryNameValueRepository$SpecificCategory;->categoryNameValueRepository:Lcom/idm/fotaagent/database/room/data/repository/CategoryNameValueRepository;

    iget-object p0, p0, Lcom/idm/fotaagent/database/room/data/repository/CategoryNameValueRepository$SpecificCategory;->category:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/idm/fotaagent/database/room/data/repository/CategoryNameValueRepository;->deleteAll(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getAllEntities()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/idm/fotaagent/database/room/data/repository/CategoryNameValueRepository$SpecificCategory;->categoryNameValueRepository:Lcom/idm/fotaagent/database/room/data/repository/CategoryNameValueRepository;

    iget-object p0, p0, Lcom/idm/fotaagent/database/room/data/repository/CategoryNameValueRepository$SpecificCategory;->category:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/idm/fotaagent/database/room/data/repository/CategoryNameValueRepository;->getAllEntitiesOf(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
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

    iget-object v0, p0, Lcom/idm/fotaagent/database/room/data/repository/CategoryNameValueRepository$SpecificCategory;->categoryNameValueRepository:Lcom/idm/fotaagent/database/room/data/repository/CategoryNameValueRepository;

    iget-object p0, p0, Lcom/idm/fotaagent/database/room/data/repository/CategoryNameValueRepository$SpecificCategory;->category:Ljava/lang/String;

    invoke-virtual {v0, p0, p1, p2}, Lcom/idm/fotaagent/database/room/data/repository/CategoryNameValueRepository;->getLiveDataValueOf(Ljava/lang/String;Ljava/lang/String;Ljava/io/Serializable;)Landroidx/lifecycle/C;

    move-result-object p0

    return-object p0
.end method

.method public getValueOf(Ljava/lang/String;)Ljava/util/Optional;
    .locals 1
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

    iget-object v0, p0, Lcom/idm/fotaagent/database/room/data/repository/CategoryNameValueRepository$SpecificCategory;->categoryNameValueRepository:Lcom/idm/fotaagent/database/room/data/repository/CategoryNameValueRepository;

    iget-object p0, p0, Lcom/idm/fotaagent/database/room/data/repository/CategoryNameValueRepository$SpecificCategory;->category:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Lcom/idm/fotaagent/database/room/data/repository/CategoryNameValueRepository;->getValueOf(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public insertOrReplace(Ljava/lang/String;Ljava/io/Serializable;)J
    .locals 1

    iget-object v0, p0, Lcom/idm/fotaagent/database/room/data/repository/CategoryNameValueRepository$SpecificCategory;->categoryNameValueRepository:Lcom/idm/fotaagent/database/room/data/repository/CategoryNameValueRepository;

    iget-object p0, p0, Lcom/idm/fotaagent/database/room/data/repository/CategoryNameValueRepository$SpecificCategory;->category:Ljava/lang/String;

    invoke-virtual {v0, p0, p1, p2}, Lcom/idm/fotaagent/database/room/data/repository/CategoryNameValueRepository;->insertOrReplace(Ljava/lang/String;Ljava/lang/String;Ljava/io/Serializable;)J

    move-result-wide p0

    return-wide p0
.end method

.method public runInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;)TV;"
        }
    .end annotation

    iget-object p0, p0, Lcom/idm/fotaagent/database/room/data/repository/CategoryNameValueRepository$SpecificCategory;->categoryNameValueRepository:Lcom/idm/fotaagent/database/room/data/repository/CategoryNameValueRepository;

    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/database/room/data/repository/CategoryNameValueRepository;->runInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public runInTransaction(Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/database/room/data/repository/CategoryNameValueRepository$SpecificCategory;->categoryNameValueRepository:Lcom/idm/fotaagent/database/room/data/repository/CategoryNameValueRepository;

    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/database/room/data/repository/CategoryNameValueRepository;->runInTransaction(Ljava/lang/Runnable;)V

    return-void
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/idm/fotaagent/database/room/data/repository/CategoryNameValueRepository$SpecificCategory;->categoryNameValueRepository:Lcom/idm/fotaagent/database/room/data/repository/CategoryNameValueRepository;

    iget-object p0, p0, Lcom/idm/fotaagent/database/room/data/repository/CategoryNameValueRepository$SpecificCategory;->category:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/idm/fotaagent/database/room/data/repository/CategoryNameValueRepository;->size(Ljava/lang/String;)I

    move-result p0

    return p0
.end method
