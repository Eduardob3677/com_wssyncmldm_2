.class public final synthetic LA2/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LS0/b;
.implements Lcom/idm/fotaagent/enabler/ui/common/ButtonOnClickListener$ButtonAction;


# instance fields
.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, LA2/b;->c:I

    iput-object p2, p0, LA2/b;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()Ljava/lang/Object;
    .locals 5

    iget v0, p0, LA2/b;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, LA2/b;->d:Ljava/lang/Object;

    check-cast p0, LQ0/k;

    iget-object v0, p0, LQ0/k;->b:LR0/c;

    check-cast v0, LR0/h;

    new-instance v1, LE2/a;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, LE2/a;-><init>(I)V

    invoke-virtual {v0, v1}, LR0/h;->l(LR0/f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LL0/b;

    iget-object v2, p0, LQ0/k;->c:LQ0/d;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v4, v3}, LQ0/d;->a(LL0/b;IZ)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    iget-object p0, p0, LA2/b;->d:Ljava/lang/Object;

    check-cast p0, LR0/c;

    check-cast p0, LR0/h;

    iget-object v0, p0, LR0/h;->d:LT0/b;

    invoke-virtual {v0}, LT0/b;->a()J

    move-result-wide v0

    iget-object v2, p0, LR0/h;->f:LR0/a;

    iget-wide v2, v2, LR0/a;->d:J

    sub-long/2addr v0, v2

    invoke-virtual {p0}, LR0/h;->g()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "events"

    const-string v2, "timestamp_ms < ?"

    invoke-virtual {p0, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onClick()V
    .locals 0

    iget-object p0, p0, LA2/b;->d:Ljava/lang/Object;

    check-cast p0, Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressContractor$Presenter;

    invoke-interface {p0}, Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressContractor$Presenter;->downloadOrPause()V

    return-void
.end method
