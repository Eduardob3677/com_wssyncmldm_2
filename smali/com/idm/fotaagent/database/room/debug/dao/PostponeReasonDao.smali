.class public interface abstract Lcom/idm/fotaagent/database/room/debug/dao/PostponeReasonDao;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract deleteAll()I
.end method

.method public abstract getLimitedPostponeReasons()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertOrReplace(Lcom/idm/fotaagent/database/room/debug/entity/PostponeReason;)J
.end method
