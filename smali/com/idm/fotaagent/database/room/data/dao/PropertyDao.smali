.class public abstract Lcom/idm/fotaagent/database/room/data/dao/PropertyDao;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/idm/fotaagent/database/room/data/dao/CategoryNameValueDao;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/idm/fotaagent/database/room/data/dao/CategoryNameValueDao<",
        "Lcom/idm/fotaagent/database/room/data/entity/Property;",
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
.method public abstract delete(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract deleteAll(Ljava/lang/String;)I
.end method

.method public varargs abstract deleteCategories([Ljava/lang/String;)V
.end method

.method public abstract getAllEntitiesOf(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/idm/fotaagent/database/room/data/entity/Property;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getEntityLiveDataOf(Ljava/lang/String;Ljava/lang/String;)Landroidx/lifecycle/C;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/C;"
        }
    .end annotation
.end method

.method public abstract getEntityOf(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Optional<",
            "Lcom/idm/fotaagent/database/room/data/entity/Property;",
            ">;"
        }
    .end annotation
.end method

.method public insertOrReplace(Ljava/lang/String;Ljava/lang/String;Ljava/io/Serializable;)J
    .locals 1

    new-instance v0, Lcom/idm/fotaagent/database/room/data/entity/Property;

    invoke-direct {v0, p1, p2, p3}, Lcom/idm/fotaagent/database/room/data/entity/Property;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-interface {p0, v0}, Lcom/idm/fotaagent/database/room/data/dao/CategoryNameValueDao;->insertOrReplace(Lcom/idm/fotaagent/database/room/data/entity/CategoryNameValue;)J

    move-result-wide p0

    return-wide p0
.end method

.method public abstract size(Ljava/lang/String;)I
.end method
