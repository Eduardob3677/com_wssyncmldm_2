.class public final synthetic Lcom/idm/fotaagent/database/sqlite/database/dao/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/idm/fotaagent/database/sqlite/database/dao/Dao$Getter;


# instance fields
.field public final synthetic a:Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;


# direct methods
.method public synthetic constructor <init>(Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/idm/fotaagent/database/sqlite/database/dao/c;->a:Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;

    return-void
.end method


# virtual methods
.method public final getAt(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/database/sqlite/database/dao/c;->a:Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;

    invoke-static {p0, p1, p2}, Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;->c(Lcom/idm/fotaagent/database/sqlite/database/dao/Dao;Landroid/database/Cursor;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
