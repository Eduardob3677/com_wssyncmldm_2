.class Lcom/idm/fotaagent/database/room/debug/dao/PostponeReasonDao_Impl$2;
.super Landroidx/room/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/idm/fotaagent/database/room/debug/dao/PostponeReasonDao_Impl;-><init>(Landroidx/room/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/idm/fotaagent/database/room/debug/dao/PostponeReasonDao_Impl;


# direct methods
.method public constructor <init>(Lcom/idm/fotaagent/database/room/debug/dao/PostponeReasonDao_Impl;Landroidx/room/j;)V
    .locals 0

    iput-object p1, p0, Lcom/idm/fotaagent/database/room/debug/dao/PostponeReasonDao_Impl$2;->this$0:Lcom/idm/fotaagent/database/room/debug/dao/PostponeReasonDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/m;-><init>(Landroidx/room/j;)V

    return-void
.end method


# virtual methods
.method public createQuery()Ljava/lang/String;
    .locals 0

    const-string p0, "DELETE FROM postpone_reason"

    return-object p0
.end method
