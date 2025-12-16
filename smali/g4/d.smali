.class public final Lg4/d;
.super Lg4/h;
.source "SourceFile"

# interfaces
.implements Lg4/m;


# instance fields
.field public volatile f:Le/v;

.field public final synthetic g:Lc3/b;

.field public final synthetic h:Lc3/b;


# direct methods
.method public constructor <init>(Lg4/l;LB3/k;LA3/d;)V
    .locals 1

    sget-object v0, Lh4/f;->e:Lh4/f;

    iput-object v0, p0, Lg4/d;->g:Lc3/b;

    iput-object p3, p0, Lg4/d;->h:Lc3/b;

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    invoke-direct {p0, p1, p2}, Lg4/h;-><init>(Lg4/l;Lc3/a;)V

    iput-object p3, p0, Lg4/d;->f:Le/v;

    return-void

    :cond_0
    const/4 p0, 0x0

    invoke-static {p0}, Lg4/d;->e(I)V

    throw p3
.end method

.method public static synthetic b(I)V
    .locals 6

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const-string v1, "@NotNull method %s.%s must not return null"

    goto :goto_0

    :cond_0
    const-string v1, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    :goto_0
    if-eq p0, v0, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    const/4 v2, 0x3

    :goto_1
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$5"

    const/4 v4, 0x0

    if-eq p0, v0, :cond_2

    aput-object v3, v2, v4

    goto :goto_2

    :cond_2
    const-string v5, "value"

    aput-object v5, v2, v4

    :goto_2
    const/4 v4, 0x1

    if-eq p0, v0, :cond_3

    const-string v3, "recursionDetected"

    aput-object v3, v2, v4

    goto :goto_3

    :cond_3
    aput-object v3, v2, v4

    :goto_3
    if-eq p0, v0, :cond_4

    goto :goto_4

    :cond_4
    const-string v3, "doPostCompute"

    aput-object v3, v2, v0

    :goto_4
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    if-eq p0, v0, :cond_5

    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    :goto_5
    throw p0
.end method

.method public static synthetic e(I)V
    .locals 7

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const-string v1, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_0

    :cond_0
    const-string v1, "@NotNull method %s.%s must not return null"

    :goto_0
    if-eq p0, v0, :cond_1

    const/4 v2, 0x3

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedNotNullLazyValueWithPostCompute"

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq p0, v5, :cond_3

    if-eq p0, v0, :cond_2

    const-string v6, "storageManager"

    aput-object v6, v2, v4

    goto :goto_2

    :cond_2
    aput-object v3, v2, v4

    goto :goto_2

    :cond_3
    const-string v6, "computable"

    aput-object v6, v2, v4

    :goto_2
    if-eq p0, v0, :cond_4

    aput-object v3, v2, v5

    goto :goto_3

    :cond_4
    const-string v3, "invoke"

    aput-object v3, v2, v5

    :goto_3
    if-eq p0, v0, :cond_5

    const-string v3, "<init>"

    aput-object v3, v2, v0

    :cond_5
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    if-eq p0, v0, :cond_6

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_4
    throw p0
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lg4/d;->f()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x2

    invoke-static {p0}, Lg4/d;->e(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final c(Ljava/lang/Object;)V
    .locals 2

    new-instance v0, Le/v;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p1, v0, Le/v;->c:Ljava/lang/Object;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iput-object v1, v0, Le/v;->d:Ljava/lang/Object;

    iput-object v0, p0, Lg4/d;->f:Le/v;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lg4/d;->h:Lc3/b;

    invoke-interface {v1, p1}, Lc3/b;->e(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v0, p0, Lg4/d;->f:Le/v;

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :try_start_1
    invoke-static {p1}, Lg4/d;->b(I)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    iput-object v0, p0, Lg4/d;->f:Le/v;

    throw p1
.end method

.method public final d(Z)LB1/c;
    .locals 2

    iget-object v0, p0, Lg4/d;->g:Lc3/b;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lg4/h;->d(Z)LB1/c;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {v0, p0}, Lc3/b;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    new-instance p1, LB1/c;

    const/4 v0, 0x0

    const/4 v1, 0x5

    invoke-direct {p1, p0, v0, v1}, LB1/c;-><init>(Ljava/lang/Object;ZI)V

    return-object p1
.end method

.method public final f()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lg4/d;->f:Le/v;

    if-eqz v0, :cond_1

    iget-object v1, v0, Le/v;->d:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v1, v2, :cond_1

    iget-object p0, v0, Le/v;->d:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne p0, v1, :cond_0

    iget-object p0, v0, Le/v;->c:Ljava/lang/Object;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "No value in this thread (hasValue should be checked before)"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-super {p0}, Lg4/h;->a()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
