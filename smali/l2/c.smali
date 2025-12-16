.class public final Ll2/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll2/d;


# static fields
.field public static final m:Ljava/lang/Object;

.field public static final n:Ll/b;


# instance fields
.field public final a:LW1/g;

.field public final b:Ln2/c;

.field public final c:Lm2/b;

.field public final d:Ll2/j;

.field public final e:Lm2/b;

.field public final f:Ll2/h;

.field public final g:Ljava/lang/Object;

.field public final h:Ljava/util/concurrent/ExecutorService;

.field public final i:Ljava/util/concurrent/ThreadPoolExecutor;

.field public j:Ljava/lang/String;

.field public final k:Ljava/util/HashSet;

.field public final l:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ll2/c;->m:Ljava/lang/Object;

    new-instance v0, Ll/b;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ll/b;-><init>(I)V

    sput-object v0, Ll2/c;->n:Ll/b;

    return-void
.end method

.method public constructor <init>(LW1/g;Lk2/a;Lk2/a;)V
    .locals 11

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v9, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v2, 0x1

    const-wide/16 v3, 0x1e

    const/4 v1, 0x0

    sget-object v10, Ll2/c;->n:Ll/b;

    move-object v0, v8

    move-object v5, v9

    move-object v7, v10

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    new-instance v0, Ln2/c;

    invoke-virtual {p1}, LW1/g;->a()V

    iget-object v1, p1, LW1/g;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p2, p3}, Ln2/c;-><init>(Landroid/content/Context;Lk2/a;Lk2/a;)V

    new-instance p2, Lm2/b;

    const/4 p3, 0x1

    invoke-direct {p2, p1, p3}, Lm2/b;-><init>(LW1/g;I)V

    sget-object p3, LZ0/h;->g:LZ0/h;

    if-nez p3, :cond_0

    new-instance p3, LZ0/h;

    const/16 v1, 0x10

    invoke-direct {p3, v1}, LZ0/h;-><init>(I)V

    sput-object p3, LZ0/h;->g:LZ0/h;

    :cond_0
    sget-object p3, LZ0/h;->g:LZ0/h;

    sget-object v1, Ll2/j;->d:Ll2/j;

    if-nez v1, :cond_1

    new-instance v1, Ll2/j;

    invoke-direct {v1, p3}, Ll2/j;-><init>(LZ0/h;)V

    sput-object v1, Ll2/j;->d:Ll2/j;

    :cond_1
    sget-object p3, Ll2/j;->d:Ll2/j;

    new-instance v1, Lm2/b;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lm2/b;-><init>(LW1/g;I)V

    new-instance v2, Ll2/h;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Ll2/c;->g:Ljava/lang/Object;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Ll2/c;->k:Ljava/util/HashSet;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Ll2/c;->l:Ljava/util/ArrayList;

    iput-object p1, p0, Ll2/c;->a:LW1/g;

    iput-object v0, p0, Ll2/c;->b:Ln2/c;

    iput-object p2, p0, Ll2/c;->c:Lm2/b;

    iput-object p3, p0, Ll2/c;->d:Ll2/j;

    iput-object v1, p0, Ll2/c;->e:Lm2/b;

    iput-object v2, p0, Ll2/c;->f:Ll2/h;

    iput-object v8, p0, Ll2/c;->h:Ljava/util/concurrent/ExecutorService;

    new-instance p1, Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-wide/16 v3, 0x1e

    const/4 v1, 0x0

    const/4 v2, 0x1

    move-object v0, p1

    move-object v5, v9

    move-object v7, v10

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object p1, p0, Ll2/c;->i:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 5

    sget-object v0, Ll2/c;->m:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Ll2/c;->a:LW1/g;

    invoke-virtual {v1}, LW1/g;->a()V

    iget-object v1, v1, LW1/g;->a:Landroid/content/Context;

    invoke-static {v1}, Le/v;->d(Landroid/content/Context;)Le/v;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, p0, Ll2/c;->c:Lm2/b;

    invoke-virtual {v2}, Lm2/b;->b()Lm2/a;

    move-result-object v2

    iget v3, v2, Lm2/a;->b:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    :cond_0
    invoke-virtual {p0, v2}, Ll2/c;->f(Lm2/a;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Ll2/c;->c:Lm2/b;

    invoke-virtual {v2}, Lm2/a;->a()LK3/b;

    move-result-object v2

    iput-object v3, v2, LK3/b;->b:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, LK3/b;->b(I)V

    invoke-virtual {v2}, LK3/b;->a()Lm2/a;

    move-result-object v2

    invoke-virtual {v4, v2}, Lm2/b;->a(Lm2/a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_1
    if-eqz v1, :cond_2

    :try_start_2
    invoke-virtual {v1}, Le/v;->B()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_3

    invoke-virtual {v2}, Lm2/a;->a()LK3/b;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, LK3/b;->d:Ljava/lang/Object;

    invoke-virtual {v0}, LK3/b;->a()Lm2/a;

    move-result-object v2

    :cond_3
    invoke-virtual {p0, v2}, Ll2/c;->i(Lm2/a;)V

    iget-object v0, p0, Ll2/c;->i:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Ll2/b;

    invoke-direct {v1, p0, p1}, Ll2/b;-><init>(Ll2/c;Z)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_1
    move-exception p0

    if-eqz v1, :cond_4

    :try_start_3
    invoke-virtual {v1}, Le/v;->B()V

    :cond_4
    throw p0

    :goto_1
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public final b(Lm2/a;)Lm2/a;
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    iget-object v2, v1, Ll2/c;->a:LW1/g;

    invoke-virtual {v2}, LW1/g;->a()V

    iget-object v2, v2, LW1/g;->c:LW1/j;

    iget-object v2, v2, LW1/j;->a:Ljava/lang/String;

    iget-object v3, v0, Lm2/a;->a:Ljava/lang/String;

    iget-object v4, v1, Ll2/c;->a:LW1/g;

    invoke-virtual {v4}, LW1/g;->a()V

    iget-object v4, v4, LW1/g;->c:LW1/j;

    iget-object v4, v4, LW1/j;->g:Ljava/lang/String;

    iget-object v5, v0, Lm2/a;->d:Ljava/lang/String;

    iget-object v6, v1, Ll2/c;->b:Ln2/c;

    iget-object v7, v6, Ln2/c;->d:Ln2/d;

    invoke-virtual {v7}, Ln2/d;->a()Z

    move-result v8

    const-string v9, "Firebase Installations Service is unavailable. Please try again later."

    if-eqz v8, :cond_a

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v10, "projects/"

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "/installations/"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/authTokens:generate"

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ln2/c;->a(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v3

    const/4 v10, 0x0

    :goto_0
    const/4 v11, 0x1

    if-gt v10, v11, :cond_9

    const v12, 0x8003

    invoke-static {v12}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    invoke-virtual {v6, v3, v2}, Ln2/c;->c(Ljava/net/URL;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v12

    :try_start_0
    const-string v13, "POST"

    invoke-virtual {v12, v13}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v13, "Authorization"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "FIS_v2 "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v11}, Ljava/net/URLConnection;->setDoOutput(Z)V

    invoke-static {v12}, Ln2/c;->h(Ljava/net/HttpURLConnection;)V

    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v13

    invoke-virtual {v7, v13}, Ln2/d;->b(I)V

    const/16 v14, 0xc8

    if-lt v13, v14, :cond_0

    const/16 v14, 0x12c

    if-ge v13, v14, :cond_0

    move v14, v11

    goto :goto_1

    :cond_0
    const/4 v14, 0x0

    :goto_1
    const/4 v15, 0x2

    const/4 v8, 0x0

    if-eqz v14, :cond_1

    invoke-static {v12}, Ln2/c;->f(Ljava/net/HttpURLConnection;)Ln2/b;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V

    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    goto :goto_4

    :cond_1
    :try_start_1
    invoke-static {v12, v8, v2, v4}, Ln2/c;->b(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/AssertionError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v14, 0x191

    if-eq v13, v14, :cond_5

    const/16 v14, 0x194

    if-ne v13, v14, :cond_2

    goto :goto_3

    :cond_2
    const/16 v14, 0x1ad

    if-eq v13, v14, :cond_4

    const/16 v14, 0x1f4

    if-lt v13, v14, :cond_3

    const/16 v14, 0x258

    if-ge v13, v14, :cond_3

    :catch_0
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V

    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    goto/16 :goto_6

    :cond_3
    :try_start_2
    const-string v13, "Firebase-Installations"

    const-string v14, "Firebase Installations can not communicate with Firebase server APIs due to invalid configuration. Please update your Firebase initialization process and set valid Firebase options (API key, Project ID, Application ID) when initializing Firebase."

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ln2/b;->a()LA/d;

    move-result-object v13

    iput v15, v13, LA/d;->a:I

    invoke-virtual {v13}, LA/d;->b()Ln2/b;

    move-result-object v2

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :cond_4
    new-instance v8, Ll2/e;

    const-string v11, "Firebase servers have received too many requests from this client in a short period of time. Please try again later."

    invoke-direct {v8, v11}, LW1/h;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_5
    :goto_3
    invoke-static {}, Ln2/b;->a()LA/d;

    move-result-object v13

    const/4 v14, 0x3

    iput v14, v13, LA/d;->a:I

    invoke-virtual {v13}, LA/d;->b()Ln2/b;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/AssertionError; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :goto_4
    iget v3, v2, Ln2/b;->c:I

    invoke-static {v3}, Lk/Q0;->f(I)I

    move-result v3

    if-eqz v3, :cond_8

    if-eq v3, v11, :cond_7

    if-ne v3, v15, :cond_6

    monitor-enter p0

    :try_start_3
    iput-object v8, v1, Ll2/c;->j:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    invoke-virtual/range {p1 .. p1}, Lm2/a;->a()LK3/b;

    move-result-object v0

    invoke-virtual {v0, v15}, LK3/b;->b(I)V

    invoke-virtual {v0}, LK3/b;->a()Lm2/a;

    move-result-object v0

    return-object v0

    :catchall_1
    move-exception v0

    move-object v2, v0

    monitor-exit p0

    throw v2

    :cond_6
    new-instance v0, Ll2/e;

    invoke-direct {v0, v9}, LW1/h;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    invoke-virtual/range {p1 .. p1}, Lm2/a;->a()LK3/b;

    move-result-object v0

    const-string v1, "BAD CONFIG"

    iput-object v1, v0, LK3/b;->h:Ljava/io/Serializable;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, LK3/b;->b(I)V

    invoke-virtual {v0}, LK3/b;->a()Lm2/a;

    move-result-object v0

    return-object v0

    :cond_8
    iget-object v1, v1, Ll2/c;->d:Ll2/j;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v1, v1, Ll2/j;->a:LZ0/h;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v3

    invoke-virtual/range {p1 .. p1}, Lm2/a;->a()LK3/b;

    move-result-object v0

    iget-object v1, v2, Ln2/b;->a:Ljava/lang/String;

    iput-object v1, v0, LK3/b;->d:Ljava/lang/Object;

    iget-wide v1, v2, Ln2/b;->b:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, LK3/b;->f:Ljava/io/Serializable;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, LK3/b;->g:Ljava/io/Serializable;

    invoke-virtual {v0}, LK3/b;->a()Lm2/a;

    move-result-object v0

    return-object v0

    :goto_5
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V

    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    throw v0

    :goto_6
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    :cond_9
    new-instance v0, Ll2/e;

    invoke-direct {v0, v9}, LW1/h;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    new-instance v0, Ll2/e;

    invoke-direct {v0, v9}, LW1/h;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final c()Lu1/n;
    .locals 4

    invoke-virtual {p0}, Ll2/c;->e()V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ll2/c;->j:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lp0/a;->j(Ljava/lang/Object;)Lu1/n;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lu1/i;

    invoke-direct {v0}, Lu1/i;-><init>()V

    new-instance v1, Ll2/g;

    invoke-direct {v1, v0}, Ll2/g;-><init>(Lu1/i;)V

    iget-object v2, p0, Ll2/c;->g:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    iget-object v3, p0, Ll2/c;->l:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, v0, Lu1/i;->a:Lu1/n;

    iget-object v1, p0, Ll2/c;->h:Ljava/util/concurrent/ExecutorService;

    new-instance v2, LD1/b;

    const/16 v3, 0x18

    invoke-direct {v2, v3, p0}, LD1/b;-><init>(ILjava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object v0

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final d()Lu1/n;
    .locals 4

    invoke-virtual {p0}, Ll2/c;->e()V

    new-instance v0, Lu1/i;

    invoke-direct {v0}, Lu1/i;-><init>()V

    new-instance v1, Ll2/f;

    iget-object v2, p0, Ll2/c;->d:Ll2/j;

    invoke-direct {v1, v2, v0}, Ll2/f;-><init>(Ll2/j;Lu1/i;)V

    iget-object v2, p0, Ll2/c;->g:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Ll2/c;->l:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v1, Ll2/b;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Ll2/b;-><init>(ILjava/lang/Object;)V

    iget-object p0, p0, Ll2/c;->h:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object p0, v0, Lu1/i;->a:Lu1/n;

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final e()V
    .locals 4

    iget-object p0, p0, Ll2/c;->a:LW1/g;

    invoke-virtual {p0}, LW1/g;->a()V

    iget-object v0, p0, LW1/g;->c:LW1/j;

    iget-object v0, v0, LW1/j;->b:Ljava/lang/String;

    const-string v1, "Please set your Application ID. A valid Firebase App ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options."

    invoke-static {v0, v1}, Lc1/D;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, LW1/g;->a()V

    iget-object v0, p0, LW1/g;->c:LW1/j;

    iget-object v0, v0, LW1/j;->g:Ljava/lang/String;

    const-string v2, "Please set your Project ID. A valid Firebase Project ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options."

    invoke-static {v0, v2}, Lc1/D;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, LW1/g;->a()V

    iget-object v0, p0, LW1/g;->c:LW1/j;

    iget-object v0, v0, LW1/j;->a:Ljava/lang/String;

    const-string v2, "Please set a valid API key. A Firebase API key is required to communicate with Firebase server APIs: It authenticates your project with Google.Please refer to https://firebase.google.com/support/privacy/init-options."

    invoke-static {v0, v2}, Lc1/D;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, LW1/g;->a()V

    iget-object v0, p0, LW1/g;->c:LW1/j;

    iget-object v0, v0, LW1/j;->b:Ljava/lang/String;

    sget-object v3, Ll2/j;->c:Ljava/util/regex/Pattern;

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-static {v1, v0}, Lc1/D;->a(Ljava/lang/String;Z)V

    invoke-virtual {p0}, LW1/g;->a()V

    iget-object p0, p0, LW1/g;->c:LW1/j;

    iget-object p0, p0, LW1/j;->a:Ljava/lang/String;

    sget-object v0, Ll2/j;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    invoke-static {v2, p0}, Lc1/D;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method public final f(Lm2/a;)Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Ll2/c;->a:LW1/g;

    invoke-virtual {v0}, LW1/g;->a()V

    iget-object v0, v0, LW1/g;->b:Ljava/lang/String;

    const-string v1, "CHIME_ANDROID_SDK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ll2/c;->a:LW1/g;

    invoke-virtual {v0}, LW1/g;->a()V

    const-string v1, "[DEFAULT]"

    iget-object v0, v0, LW1/g;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    const/4 v0, 0x1

    iget p1, p1, Lm2/a;->b:I

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Ll2/c;->e:Lm2/b;

    iget-object v0, p1, Lm2/b;->a:Ljava/lang/Object;

    check-cast v0, Landroid/content/SharedPreferences;

    monitor-enter v0

    :try_start_0
    iget-object v1, p1, Lm2/b;->a:Ljava/lang/Object;

    check-cast v1, Landroid/content/SharedPreferences;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, p1, Lm2/b;->a:Ljava/lang/Object;

    check-cast v2, Landroid/content/SharedPreferences;

    const-string v3, "|S|id"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_1

    :try_start_2
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lm2/b;->c()Ljava/lang/String;

    move-result-object v2

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Ll2/c;->f:Ll2/h;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ll2/h;->a()Ljava/lang/String;

    move-result-object v2

    :cond_2
    return-object v2

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p0

    :goto_1
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0

    :cond_3
    iget-object p0, p0, Ll2/c;->f:Ll2/h;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ll2/h;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final g(Lm2/a;)Lm2/a;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Lm2/a;->a:Ljava/lang/String;

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v6, 0xb

    if-ne v2, v6, :cond_3

    iget-object v2, v0, Ll2/c;->e:Lm2/b;

    iget-object v6, v2, Lm2/b;->a:Ljava/lang/Object;

    check-cast v6, Landroid/content/SharedPreferences;

    monitor-enter v6

    :try_start_0
    sget-object v7, Lm2/b;->c:[Ljava/lang/String;

    move v8, v4

    :goto_0
    if-ge v8, v3, :cond_2

    aget-object v9, v7, v8

    iget-object v10, v2, Lm2/b;->b:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "|T|"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "|"

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v2, Lm2/b;->a:Ljava/lang/Object;

    check-cast v10, Landroid/content/SharedPreferences;

    invoke-interface {v10, v9, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_1

    const-string v2, "{"

    invoke-virtual {v9, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v7, "token"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_0
    move-object v5, v9

    :catch_0
    :goto_1
    :try_start_2
    monitor-exit v6

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    monitor-exit v6

    goto :goto_3

    :goto_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_3
    :goto_3
    iget-object v2, v0, Ll2/c;->b:Ln2/c;

    iget-object v6, v0, Ll2/c;->a:LW1/g;

    invoke-virtual {v6}, LW1/g;->a()V

    iget-object v6, v6, LW1/g;->c:LW1/j;

    iget-object v6, v6, LW1/j;->a:Ljava/lang/String;

    iget-object v7, v1, Lm2/a;->a:Ljava/lang/String;

    iget-object v8, v0, Ll2/c;->a:LW1/g;

    invoke-virtual {v8}, LW1/g;->a()V

    iget-object v8, v8, LW1/g;->c:LW1/j;

    iget-object v8, v8, LW1/j;->g:Ljava/lang/String;

    iget-object v9, v0, Ll2/c;->a:LW1/g;

    invoke-virtual {v9}, LW1/g;->a()V

    iget-object v9, v9, LW1/g;->c:LW1/j;

    iget-object v9, v9, LW1/j;->b:Ljava/lang/String;

    iget-object v10, v2, Ln2/c;->d:Ln2/d;

    invoke-virtual {v10}, Ln2/d;->a()Z

    move-result v11

    const-string v12, "Firebase Installations Service is unavailable. Please try again later."

    if-eqz v11, :cond_b

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v13, "projects/"

    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "/installations"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ln2/c;->a(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v11

    :goto_4
    const/4 v13, 0x1

    if-gt v4, v13, :cond_a

    const v14, 0x8001

    invoke-static {v14}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    invoke-virtual {v2, v11, v6}, Ln2/c;->c(Ljava/net/URL;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v14

    :try_start_3
    const-string v15, "POST"

    invoke-virtual {v14, v15}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {v14, v13}, Ljava/net/URLConnection;->setDoOutput(Z)V

    if-eqz v5, :cond_4

    const-string v15, "x-goog-fis-android-iid-migration-auth"

    invoke-virtual {v14, v15, v5}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :catchall_1
    move-exception v0

    goto/16 :goto_7

    :cond_4
    :goto_5
    invoke-static {v14, v7, v9}, Ln2/c;->g(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v15

    invoke-virtual {v10, v15}, Ln2/d;->b(I)V
    :try_end_3
    .catch Ljava/lang/AssertionError; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/16 v3, 0xc8

    if-lt v15, v3, :cond_5

    const/16 v3, 0x12c

    if-ge v15, v3, :cond_5

    :try_start_4
    invoke-static {v14}, Ln2/c;->e(Ljava/net/HttpURLConnection;)Ln2/a;

    move-result-object v2
    :try_end_4
    .catch Ljava/lang/AssertionError; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->disconnect()V

    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    goto :goto_6

    :catch_1
    const/4 v3, 0x4

    goto/16 :goto_8

    :cond_5
    :try_start_5
    invoke-static {v14, v9, v6, v8}, Ln2/c;->b(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/AssertionError; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    const/16 v3, 0x1ad

    if-eq v15, v3, :cond_9

    const/16 v3, 0x1f4

    if-lt v15, v3, :cond_6

    const/16 v3, 0x258

    if-ge v15, v3, :cond_6

    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->disconnect()V

    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    const/4 v3, 0x4

    goto/16 :goto_9

    :cond_6
    :try_start_6
    const-string v3, "Firebase-Installations"

    const-string v15, "Firebase Installations can not communicate with Firebase server APIs due to invalid configuration. Please update your Firebase initialization process and set valid Firebase options (API key, Project ID, Application ID) when initializing Firebase."

    invoke-static {v3, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ln2/a;

    const/16 v20, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x2

    const/16 v18, 0x0

    const/16 v17, 0x0

    move-object/from16 v16, v3

    invoke-direct/range {v16 .. v21}, Ln2/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ln2/b;I)V
    :try_end_6
    .catch Ljava/lang/AssertionError; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->disconnect()V

    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    move-object v2, v3

    :goto_6
    iget v3, v2, Ln2/a;->e:I

    invoke-static {v3}, Lk/Q0;->f(I)I

    move-result v3

    if-eqz v3, :cond_8

    if-ne v3, v13, :cond_7

    invoke-virtual/range {p1 .. p1}, Lm2/a;->a()LK3/b;

    move-result-object v0

    const-string v1, "BAD CONFIG"

    iput-object v1, v0, LK3/b;->h:Ljava/io/Serializable;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, LK3/b;->b(I)V

    invoke-virtual {v0}, LK3/b;->a()Lm2/a;

    move-result-object v0

    return-object v0

    :cond_7
    new-instance v0, Ll2/e;

    const-string v1, "Firebase Installations Service is unavailable. Please try again later."

    invoke-direct {v0, v1}, LW1/h;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    iget-object v3, v2, Ln2/a;->b:Ljava/lang/String;

    iget-object v4, v2, Ln2/a;->c:Ljava/lang/String;

    iget-object v0, v0, Ll2/c;->d:Ll2/j;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v0, v0, Ll2/j;->a:LZ0/h;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v5

    iget-object v0, v2, Ln2/a;->d:Ln2/b;

    iget-object v2, v0, Ln2/b;->a:Ljava/lang/String;

    iget-wide v7, v0, Ln2/b;->b:J

    invoke-virtual/range {p1 .. p1}, Lm2/a;->a()LK3/b;

    move-result-object v0

    iput-object v3, v0, LK3/b;->b:Ljava/lang/String;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, LK3/b;->b(I)V

    iput-object v2, v0, LK3/b;->d:Ljava/lang/Object;

    iput-object v4, v0, LK3/b;->e:Ljava/lang/Object;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, LK3/b;->f:Ljava/io/Serializable;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, LK3/b;->g:Ljava/io/Serializable;

    invoke-virtual {v0}, LK3/b;->a()Lm2/a;

    move-result-object v0

    return-object v0

    :cond_9
    const/4 v3, 0x4

    :try_start_7
    new-instance v13, Ll2/e;

    const-string v15, "Firebase servers have received too many requests from this client in a short period of time. Please try again later."

    invoke-direct {v13, v15}, LW1/h;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_7
    .catch Ljava/lang/AssertionError; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :goto_7
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->disconnect()V

    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    throw v0

    :catch_2
    :goto_8
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->disconnect()V

    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    :goto_9
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_4

    :cond_a
    new-instance v0, Ll2/e;

    invoke-direct {v0, v12}, LW1/h;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    new-instance v0, Ll2/e;

    invoke-direct {v0, v12}, LW1/h;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final h(Ljava/lang/Exception;)V
    .locals 2

    iget-object v0, p0, Ll2/c;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Ll2/c;->l:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ll2/i;

    invoke-interface {v1, p1}, Ll2/i;->b(Ljava/lang/Exception;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final i(Lm2/a;)V
    .locals 2

    iget-object v0, p0, Ll2/c;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Ll2/c;->l:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ll2/i;

    invoke-interface {v1, p1}, Ll2/i;->a(Lm2/a;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
