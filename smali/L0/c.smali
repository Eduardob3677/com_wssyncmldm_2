.class public final LL0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/emoji2/text/i;


# instance fields
.field public a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    packed-switch p2, :pswitch_data_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, LL0/c;->a:Landroid/content/Context;

    return-void

    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LL0/c;->a:Landroid/content/Context;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a(Lf1/a;)V
    .locals 9

    new-instance v7, Landroidx/emoji2/text/a;

    const-string v0, "EmojiCompatInitializer"

    invoke-direct {v7, v0}, Landroidx/emoji2/text/a;-><init>(Ljava/lang/String;)V

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    const-wide/16 v3, 0xf

    const/4 v1, 0x0

    const/4 v2, 0x1

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    new-instance v0, Lcom/idm/fotaagent/a;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p1, v8, v1}, Lcom/idm/fotaagent/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v8, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b()LL0/d;
    .locals 13

    iget-object p0, p0, LL0/c;->a:Landroid/content/Context;

    if-eqz p0, :cond_0

    new-instance v0, LL0/d;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sget-object v1, LL0/g;->a:LP1/e;

    invoke-static {v1}, LN0/a;->a(LN0/b;)LP2/a;

    move-result-object v1

    iput-object v1, v0, LL0/d;->c:LP2/a;

    new-instance v1, LK/j;

    invoke-direct {v1, p0}, LK/j;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, LL0/d;->d:LK/j;

    new-instance p0, LM0/e;

    invoke-direct {p0, v1}, LM0/e;-><init>(LK/j;)V

    new-instance v2, LA3/D;

    const/16 v3, 0x9

    invoke-direct {v2, v1, v3, p0}, LA3/D;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-static {v2}, LN0/a;->a(LN0/b;)LP2/a;

    move-result-object p0

    iput-object p0, v0, LL0/d;->e:LP2/a;

    iget-object p0, v0, LL0/d;->d:LK/j;

    new-instance v1, LM0/e;

    invoke-direct {v1, p0}, LM0/e;-><init>(LP2/a;)V

    new-instance p0, LP0/e;

    invoke-direct {p0, v1}, LP0/e;-><init>(LM0/e;)V

    invoke-static {p0}, LN0/a;->a(LN0/b;)LP2/a;

    move-result-object p0

    iput-object p0, v0, LL0/d;->f:LP2/a;

    new-instance v1, Ls2/c;

    const/16 v2, 0xf

    invoke-direct {v1, v2}, Ls2/c;-><init>(I)V

    iget-object v8, v0, LL0/d;->d:LK/j;

    new-instance v9, LP0/e;

    invoke-direct {v9, v8, p0, v1}, LP0/e;-><init>(LP2/a;LP2/a;Ls2/c;)V

    iget-object v1, v0, LL0/d;->c:LP2/a;

    iget-object v10, v0, LL0/d;->e:LP2/a;

    new-instance v11, LL0/l;

    move-object v2, v11

    move-object v3, v1

    move-object v4, v10

    move-object v5, v9

    move-object v6, p0

    move-object v7, p0

    invoke-direct/range {v2 .. v7}, LL0/l;-><init>(LP2/a;LP2/a;LP0/e;LP2/a;LP2/a;)V

    new-instance v12, LJ3/c;

    move-object v2, v12

    move-object v3, v8

    move-object v4, v10

    move-object v5, p0

    move-object v6, v9

    move-object v7, v1

    move-object v8, p0

    invoke-direct/range {v2 .. v8}, LJ3/c;-><init>(LP2/a;LP2/a;LP2/a;LP0/e;LP2/a;LP2/a;)V

    new-instance v2, LP0/e;

    invoke-direct {v2, v1, p0, v9, p0}, LP0/e;-><init>(LP2/a;LP2/a;LP0/e;LP2/a;)V

    new-instance p0, LL0/l;

    invoke-direct {p0, v11, v12, v2}, LL0/l;-><init>(LL0/l;LJ3/c;LP0/e;)V

    invoke-static {p0}, LN0/a;->a(LN0/b;)LP2/a;

    move-result-object p0

    iput-object p0, v0, LL0/d;->g:LP2/a;

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " must be set"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
