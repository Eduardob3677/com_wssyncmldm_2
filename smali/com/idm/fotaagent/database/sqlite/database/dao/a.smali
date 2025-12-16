.class public final synthetic Lcom/idm/fotaagent/database/sqlite/database/dao/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;


# direct methods
.method public synthetic constructor <init>(Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/idm/fotaagent/database/sqlite/database/dao/a;->a:Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/database/sqlite/database/dao/a;->a:Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getSessionId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
