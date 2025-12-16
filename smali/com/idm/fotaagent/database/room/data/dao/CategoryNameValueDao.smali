.class public interface abstract Lcom/idm/fotaagent/database/room/data/dao/CategoryNameValueDao;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Lcom/idm/fotaagent/database/room/data/entity/CategoryNameValue;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public static insertOrReplace(Landroidx/sqlite/db/SupportSQLiteDatabase;Lcom/idm/fotaagent/database/room/data/entity/CategoryNameValue;)J
    .locals 3

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/room/data/entity/CategoryNameValue;->getCategory()Ljava/lang/String;

    move-result-object v1

    const-string v2, "category"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "name"

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/room/data/entity/CategoryNameValue;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "value"

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/room/data/entity/CategoryNameValue;->getValue()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v1, "value_text"

    iget-object v2, p1, Lcom/idm/fotaagent/database/room/data/entity/CategoryNameValue;->valueString:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/room/data/entity/CategoryNameValue;->getTableName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->k(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p0

    return-wide p0
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
            "TE;>;"
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
            "TE;>;"
        }
    .end annotation
.end method

.method public abstract insertOrReplace(Lcom/idm/fotaagent/database/room/data/entity/CategoryNameValue;)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)J"
        }
    .end annotation
.end method

.method public abstract insertOrReplace(Ljava/lang/String;Ljava/lang/String;Ljava/io/Serializable;)J
.end method

.method public abstract size(Ljava/lang/String;)I
.end method
