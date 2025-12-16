.class Lcom/idm/fotaagent/database/room/debug/dao/PostponeReasonDao_Impl$1;
.super Landroidx/room/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/idm/fotaagent/database/room/debug/dao/PostponeReasonDao_Impl;-><init>(Landroidx/room/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/b;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/idm/fotaagent/database/room/debug/dao/PostponeReasonDao_Impl;


# direct methods
.method public constructor <init>(Lcom/idm/fotaagent/database/room/debug/dao/PostponeReasonDao_Impl;Landroidx/room/j;)V
    .locals 0

    iput-object p1, p0, Lcom/idm/fotaagent/database/room/debug/dao/PostponeReasonDao_Impl$1;->this$0:Lcom/idm/fotaagent/database/room/debug/dao/PostponeReasonDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/m;-><init>(Landroidx/room/j;)V

    return-void
.end method


# virtual methods
.method public bind(Ly0/c;Lcom/idm/fotaagent/database/room/debug/entity/PostponeReason;)V
    .locals 3

    iget-wide v0, p2, Lcom/idm/fotaagent/database/room/debug/entity/PostponeReason;->_id:J

    move-object p0, p1

    check-cast p0, Lz0/f;

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v0, v1}, Lz0/f;->l(IJ)V

    invoke-virtual {p2}, Lcom/idm/fotaagent/database/room/debug/entity/PostponeReason;->getPostponeReason()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x2

    if-nez p0, :cond_0

    check-cast p1, Lz0/f;

    invoke-virtual {p1, v0}, Lz0/f;->m(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/idm/fotaagent/database/room/debug/entity/PostponeReason;->getPostponeReason()Ljava/lang/String;

    move-result-object p0

    check-cast p1, Lz0/f;

    invoke-virtual {p1, v0, p0}, Lz0/f;->n(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic bind(Ly0/c;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/idm/fotaagent/database/room/debug/entity/PostponeReason;

    invoke-virtual {p0, p1, p2}, Lcom/idm/fotaagent/database/room/debug/dao/PostponeReasonDao_Impl$1;->bind(Ly0/c;Lcom/idm/fotaagent/database/room/debug/entity/PostponeReason;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 0

    const-string p0, "INSERT OR REPLACE INTO `postpone_reason`(`_id`,`postpone_reason`) VALUES (nullif(?, 0),?)"

    return-object p0
.end method
