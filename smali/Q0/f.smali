.class public final synthetic LQ0/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:LQ0/j;

.field public final synthetic d:LL0/b;

.field public final synthetic e:I

.field public final synthetic f:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(LQ0/j;LL0/b;ILjava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LQ0/f;->c:LQ0/j;

    iput-object p2, p0, LQ0/f;->d:LL0/b;

    iput p3, p0, LQ0/f;->e:I

    iput-object p4, p0, LQ0/f;->f:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, LQ0/f;->d:LL0/b;

    iget v1, p0, LQ0/f;->e:I

    iget-object v2, p0, LQ0/f;->f:Ljava/lang/Runnable;

    iget-object p0, p0, LQ0/f;->c:LQ0/j;

    iget-object v3, p0, LQ0/j;->f:LS0/c;

    :try_start_0
    iget-object v4, p0, LQ0/j;->c:LR0/c;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, LA2/b;

    const/4 v6, 0x1

    invoke-direct {v5, v6, v4}, LA2/b;-><init>(ILjava/lang/Object;)V

    move-object v4, v3

    check-cast v4, LR0/h;

    invoke-virtual {v4, v5}, LR0/h;->m(LS0/b;)Ljava/lang/Object;

    iget-object v4, p0, LQ0/j;->a:Landroid/content/Context;

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0, v0, v1}, LQ0/j;->a(LL0/b;I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    new-instance v4, LQ0/g;

    invoke-direct {v4, p0, v0, v1}, LQ0/g;-><init>(LQ0/j;LL0/b;I)V

    check-cast v3, LR0/h;

    invoke-virtual {v3, v4}, LR0/h;->m(LS0/b;)Ljava/lang/Object;
    :try_end_0
    .catch LS0/a; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    :catch_0
    :try_start_1
    iget-object p0, p0, LQ0/j;->d:LQ0/d;

    add-int/lit8 v1, v1, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v3}, LQ0/d;->a(LL0/b;IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    throw p0
.end method
