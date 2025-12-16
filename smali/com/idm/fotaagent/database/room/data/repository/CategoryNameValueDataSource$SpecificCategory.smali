.class public interface abstract Lcom/idm/fotaagent/database/room/data/repository/CategoryNameValueDataSource$SpecificCategory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/database/room/data/repository/CategoryNameValueDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SpecificCategory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Lcom/idm/fotaagent/database/room/data/entity/CategoryNameValue;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract delete(Ljava/lang/String;)I
.end method

.method public abstract deleteAll()I
.end method

.method public abstract getAllEntities()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation
.end method

.method public abstract getLiveDataValueOf(Ljava/lang/String;Ljava/io/Serializable;)Landroidx/lifecycle/C;
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
.end method

.method public abstract getValueOf(Ljava/lang/String;)Ljava/util/Optional;
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
.end method

.method public abstract insertOrReplace(Ljava/lang/String;Ljava/io/Serializable;)J
.end method

.method public abstract size()I
.end method
