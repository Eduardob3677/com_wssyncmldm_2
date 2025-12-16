.class Lcom/idm/fotaagent/database/room/data/repository/CategoryNameValueRepository;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/idm/fotaagent/database/room/data/repository/CategoryNameValueDataSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idm/fotaagent/database/room/data/repository/CategoryNameValueRepository$SpecificCategory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Lcom/idm/fotaagent/database/room/data/entity/CategoryNameValue;",
        "D::",
        "Lcom/idm/fotaagent/database/room/data/dao/CategoryNameValueDao<",
        "TE;>;>",
        "Ljava/lang/Object;",
        "Lcom/idm/fotaagent/database/room/data/repository/CategoryNameValueDataSource<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final dao:Lcom/idm/fotaagent/database/room/data/dao/CategoryNameValueDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/idm/fotaagent/database/room/data/dao/CategoryNameValueDao<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final roomDatabase:Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase;


# direct methods
.method public constructor <init>(Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase;Lcom/idm/fotaagent/database/room/data/dao/CategoryNameValueDao;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase;",
            "TD;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/idm/fotaagent/database/room/data/repository/CategoryNameValueRepository;->roomDatabase:Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase;

    iput-object p2, p0, Lcom/idm/fotaagent/database/room/data/repository/CategoryNameValueRepository;->dao:Lcom/idm/fotaagent/database/room/data/dao/CategoryNameValueDao;

    return-void
.end method

.method public static synthetic a(Ljava/io/Serializable;Lcom/idm/fotaagent/database/room/data/entity/CategoryNameValue;)Ljava/io/Serializable;
    .locals 0

    invoke-static {p0, p1}, Lcom/idm/fotaagent/database/room/data/repository/CategoryNameValueRepository;->lambda$getLiveDataValueOf$0(Ljava/io/Serializable;Lcom/idm/fotaagent/database/room/data/entity/CategoryNameValue;)Ljava/io/Serializable;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getLiveDataValueOf$0(Ljava/io/Serializable;Lcom/idm/fotaagent/database/room/data/entity/CategoryNameValue;)Ljava/io/Serializable;
    .locals 0

    :try_start_0
    invoke-virtual {p1}, Lcom/idm/fotaagent/database/room/data/entity/CategoryNameValue;->getDeserializedValue()Ljava/io/Serializable;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    return-object p0
.end method


# virtual methods
.method public delete(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/database/room/data/repository/CategoryNameValueRepository;->dao:Lcom/idm/fotaagent/database/room/data/dao/CategoryNameValueDao;

    invoke-interface {p0, p1, p2}, Lcom/idm/fotaagent/database/room/data/dao/CategoryNameValueDao;->delete(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public deleteAll(Ljava/lang/String;)I
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/database/room/data/repository/CategoryNameValueRepository;->dao:Lcom/idm/fotaagent/database/room/data/dao/CategoryNameValueDao;

    invoke-interface {p0, p1}, Lcom/idm/fotaagent/database/room/data/dao/CategoryNameValueDao;->deleteAll(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public varargs deleteCategories([Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/database/room/data/repository/CategoryNameValueRepository;->dao:Lcom/idm/fotaagent/database/room/data/dao/CategoryNameValueDao;

    invoke-interface {p0, p1}, Lcom/idm/fotaagent/database/room/data/dao/CategoryNameValueDao;->deleteCategories([Ljava/lang/String;)V

    return-void
.end method

.method public getAllEntitiesOf(Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/idm/fotaagent/database/room/data/repository/CategoryNameValueRepository;->dao:Lcom/idm/fotaagent/database/room/data/dao/CategoryNameValueDao;

    invoke-interface {p0, p1}, Lcom/idm/fotaagent/database/room/data/dao/CategoryNameValueDao;->getAllEntitiesOf(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getLiveDataValueOf(Ljava/lang/String;Ljava/lang/String;Ljava/io/Serializable;)Landroidx/lifecycle/C;
    .locals 2
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

    iget-object p0, p0, Lcom/idm/fotaagent/database/room/data/repository/CategoryNameValueRepository;->dao:Lcom/idm/fotaagent/database/room/data/dao/CategoryNameValueDao;

    invoke-interface {p0, p1, p2}, Lcom/idm/fotaagent/database/room/data/dao/CategoryNameValueDao;->getEntityLiveDataOf(Ljava/lang/String;Ljava/lang/String;)Landroidx/lifecycle/C;

    move-result-object p0

    new-instance p1, Lcom/idm/fotaagent/database/room/data/repository/b;

    invoke-direct {p1, p3}, Lcom/idm/fotaagent/database/room/data/repository/b;-><init>(Ljava/io/Serializable;)V

    const-string p2, "<this>"

    invoke-static {p2, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p2, Landroidx/lifecycle/E;

    invoke-direct {p2}, Landroidx/lifecycle/C;-><init>()V

    new-instance p3, Lm/f;

    invoke-direct {p3}, Lm/f;-><init>()V

    iput-object p3, p2, Landroidx/lifecycle/E;->l:Lm/f;

    new-instance v0, LE3/p;

    const/4 v1, 0x5

    invoke-direct {v0, p2, v1, p1}, LE3/p;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    new-instance p1, Landroidx/lifecycle/X;

    invoke-direct {p1, v0}, Landroidx/lifecycle/X;-><init>(LE3/p;)V

    new-instance v0, Landroidx/lifecycle/D;

    invoke-direct {v0, p0, p1}, Landroidx/lifecycle/D;-><init>(Landroidx/lifecycle/C;Landroidx/lifecycle/X;)V

    invoke-virtual {p3, p0, v0}, Lm/f;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/lifecycle/D;

    if-eqz p3, :cond_1

    iget-object v1, p3, Landroidx/lifecycle/D;->b:Landroidx/lifecycle/G;

    if-ne v1, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "This source was already added with the different observer"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-eqz p3, :cond_2

    goto :goto_1

    :cond_2
    iget p1, p2, Landroidx/lifecycle/C;->c:I

    if-lez p1, :cond_3

    invoke-virtual {p0, v0}, Landroidx/lifecycle/C;->f(Landroidx/lifecycle/G;)V

    :cond_3
    :goto_1
    return-object p2
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

    :try_start_0
    iget-object p0, p0, Lcom/idm/fotaagent/database/room/data/repository/CategoryNameValueRepository;->dao:Lcom/idm/fotaagent/database/room/data/dao/CategoryNameValueDao;

    invoke-interface {p0, p1, p2}, Lcom/idm/fotaagent/database/room/data/dao/CategoryNameValueDao;->getEntityOf(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/idm/fotaagent/database/room/data/repository/h;

    const/16 p2, 0xa

    invoke-direct {p1, p2}, Lcom/idm/fotaagent/database/room/data/repository/h;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public insertOrReplace(Ljava/lang/String;Ljava/lang/String;Ljava/io/Serializable;)J
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/database/room/data/repository/CategoryNameValueRepository;->dao:Lcom/idm/fotaagent/database/room/data/dao/CategoryNameValueDao;

    invoke-interface {p0, p1, p2, p3}, Lcom/idm/fotaagent/database/room/data/dao/CategoryNameValueDao;->insertOrReplace(Ljava/lang/String;Ljava/lang/String;Ljava/io/Serializable;)J

    move-result-wide p0

    const-wide/16 p2, -0x1

    cmp-long p2, p0, p2

    if-eqz p2, :cond_0

    return-wide p0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "insertOrReplace failed"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
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

    iget-object p0, p0, Lcom/idm/fotaagent/database/room/data/repository/CategoryNameValueRepository;->roomDatabase:Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase;

    invoke-virtual {p0, p1}, Landroidx/room/j;->runInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public runInTransaction(Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/database/room/data/repository/CategoryNameValueRepository;->roomDatabase:Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase;

    invoke-virtual {p0, p1}, Landroidx/room/j;->runInTransaction(Ljava/lang/Runnable;)V

    return-void
.end method

.method public size(Ljava/lang/String;)I
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/database/room/data/repository/CategoryNameValueRepository;->dao:Lcom/idm/fotaagent/database/room/data/dao/CategoryNameValueDao;

    invoke-interface {p0, p1}, Lcom/idm/fotaagent/database/room/data/dao/CategoryNameValueDao;->size(Ljava/lang/String;)I

    move-result p0

    return p0
.end method
