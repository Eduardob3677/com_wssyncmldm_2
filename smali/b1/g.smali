.class public final Lb1/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field public static final j:Lcom/google/android/gms/common/api/Status;

.field public static final k:Lcom/google/android/gms/common/api/Status;

.field public static final l:Ljava/lang/Object;

.field public static m:Lb1/g;


# instance fields
.field public a:J

.field public final b:Landroid/content/Context;

.field public final c:LZ0/e;

.field public final d:LA3/D;

.field public final e:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final f:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final g:Ljava/util/concurrent/ConcurrentHashMap;

.field public final h:Lo/c;

.field public final i:Lcom/google/android/gms/internal/firebase-auth-api/Q1;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const-string v1, "Sign-out occurred while this API call was in progress."

    const/4 v2, 0x4

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    sput-object v0, Lb1/g;->j:Lcom/google/android/gms/common/api/Status;

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const-string v1, "The user must be signed in to make this API call."

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    sput-object v0, Lb1/g;->k:Lcom/google/android/gms/common/api/Status;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lb1/g;->l:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 6

    sget-object v0, LZ0/e;->c:LZ0/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v1, 0x2710

    iput-wide v1, p0, Lb1/g;->a:J

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lb1/g;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lb1/g;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v4, 0x5

    const/high16 v5, 0x3f400000    # 0.75f

    invoke-direct {v1, v4, v5, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v1, p0, Lb1/g;->g:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Lo/c;

    invoke-direct {v1, v3}, Lo/c;-><init>(I)V

    new-instance v1, Lo/c;

    invoke-direct {v1, v3}, Lo/c;-><init>(I)V

    iput-object v1, p0, Lb1/g;->h:Lo/c;

    iput-object p1, p0, Lb1/g;->b:Landroid/content/Context;

    new-instance p1, Lcom/google/android/gms/internal/firebase-auth-api/Q1;

    const/4 v1, 0x1

    invoke-direct {p1, p2, p0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/Q1;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;I)V

    iput-object p1, p0, Lb1/g;->i:Lcom/google/android/gms/internal/firebase-auth-api/Q1;

    iput-object v0, p0, Lb1/g;->c:LZ0/e;

    new-instance p2, LA3/D;

    const/16 v0, 0x14

    invoke-direct {p2, v0}, LA3/D;-><init>(I)V

    iput-object p2, p0, Lb1/g;->d:LA3/D;

    const/4 p0, 0x6

    invoke-virtual {p1, p0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public static a(Landroid/content/Context;)Lb1/g;
    .locals 4

    sget-object v0, Lb1/g;->l:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lb1/g;->m:Lb1/g;

    if-nez v1, :cond_0

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "GoogleApiHandler"

    const/16 v3, 0x9

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lb1/g;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sget-object v3, LZ0/e;->b:Ljava/lang/Object;

    invoke-direct {v2, p0, v1}, Lb1/g;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    sput-object v2, Lb1/g;->m:Lb1/g;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lb1/g;->m:Lb1/g;

    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public final b(La1/d;)V
    .locals 3

    iget-object v0, p1, La1/d;->d:Lb1/a;

    iget-object v1, p0, Lb1/g;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb1/d;

    if-nez v2, :cond_0

    new-instance v2, Lb1/d;

    invoke-direct {v2, p0, p1}, Lb1/d;-><init>(Lb1/g;La1/d;)V

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p1, v2, Lb1/d;->b:La1/b;

    invoke-interface {p1}, La1/b;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lb1/g;->h:Lo/c;

    invoke-virtual {p0, v0}, Lo/c;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v2}, Lb1/d;->a()V

    return-void
.end method

.method public final c(LZ0/a;I)Z
    .locals 7

    iget-object v0, p0, Lb1/g;->c:LZ0/e;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, p1, LZ0/a;->d:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object p1, p1, LZ0/a;->e:Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    const/high16 v5, 0x8000000

    iget-object p0, p0, Lb1/g;->b:Landroid/content/Context;

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {v0, p0, v1, p1}, LZ0/e;->a(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {p0, v3, v4, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    :goto_1
    if-eqz p1, :cond_3

    sget v4, Lcom/google/android/gms/common/api/GoogleApiActivity;->d:I

    new-instance v4, Landroid/content/Intent;

    const-class v6, Lcom/google/android/gms/common/api/GoogleApiActivity;

    invoke-direct {v4, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v6, "pending_intent"

    invoke-virtual {v4, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "failing_client_id"

    invoke-virtual {v4, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "notify_manager"

    invoke-virtual {v4, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {p0, v3, v4, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {v0, p0, v1, p1}, LZ0/e;->d(Landroid/content/Context;ILandroid/app/PendingIntent;)V

    goto :goto_2

    :cond_3
    move v2, v3

    :goto_2
    return v2
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 11

    iget v0, p1, Landroid/os/Message;->what:I

    iget-object v1, p0, Lb1/g;->g:Ljava/util/concurrent/ConcurrentHashMap;

    const-wide/32 v2, 0x493e0

    const/4 v4, 0x0

    const-string v5, "GoogleApiManager"

    const/4 v6, 0x0

    const/4 v7, 0x1

    packed-switch v0, :pswitch_data_0

    new-instance p0, Ljava/lang/StringBuilder;

    const/16 p1, 0x1f

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "Unknown message id: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :pswitch_0
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lb1/f;

    iget-object p1, p0, Lb1/f;->a:Lb1/a;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    iget-object p1, p0, Lb1/f;->a:Lb1/a;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb1/d;

    iget-object v0, p1, Lb1/d;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p1, Lb1/d;->l:Lb1/g;

    iget-object v1, v0, Lb1/g;->i:Lcom/google/android/gms/internal/firebase-auth-api/Q1;

    const/16 v2, 0xf

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, v0, Lb1/g;->i:Lcom/google/android/gms/internal/firebase-auth-api/Q1;

    const/16 v1, 0x10

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lb1/d;->a:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    iget-object v5, p0, Lb1/f;->b:LZ0/c;

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb1/m;

    instance-of v6, v3, Lb1/m;

    if-eqz v6, :cond_0

    invoke-virtual {v3, p1}, Lb1/m;->d(Lb1/d;)[LZ0/c;

    move-result-object v6

    if-eqz v6, :cond_0

    array-length v8, v6

    move v9, v4

    :goto_1
    if-ge v9, v8, :cond_2

    aget-object v10, v6, v9

    invoke-static {v10, v5}, Lc1/D;->h(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    goto :goto_2

    :cond_1
    add-int/2addr v9, v7

    goto :goto_1

    :cond_2
    const/4 v9, -0x1

    :goto_2
    if-ltz v9, :cond_3

    move v5, v7

    goto :goto_3

    :cond_3
    move v5, v4

    :goto_3
    if-eqz v5, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    :goto_4
    if-ge v4, p0, :cond_13

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    add-int/2addr v4, v7

    check-cast p1, Lb1/m;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    new-instance v2, La1/i;

    invoke-direct {v2, v5}, La1/i;-><init>(LZ0/c;)V

    invoke-virtual {p1, v2}, Lb1/m;->c(Ljava/lang/RuntimeException;)V

    goto :goto_4

    :pswitch_1
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lb1/f;

    iget-object p1, p0, Lb1/f;->a:Lb1/a;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    iget-object p1, p0, Lb1/f;->a:Lb1/a;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb1/d;

    iget-object v0, p1, Lb1/d;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto/16 :goto_a

    :cond_5
    iget-boolean p0, p1, Lb1/d;->i:Z

    if-nez p0, :cond_13

    iget-object p0, p1, Lb1/d;->b:La1/b;

    check-cast p0, Lc1/k;

    invoke-virtual {p0}, Lc1/k;->l()Z

    move-result p0

    if-nez p0, :cond_6

    invoke-virtual {p1}, Lb1/d;->a()V

    goto/16 :goto_a

    :cond_6
    invoke-virtual {p1}, Lb1/d;->g()V

    goto/16 :goto_a

    :pswitch_2
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {p0}, LB/f;->F(Ljava/lang/Object;)V

    throw v6

    :pswitch_3
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_13

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lb1/d;

    iget-object p1, p0, Lb1/d;->l:Lb1/g;

    iget-object p1, p1, Lb1/g;->i:Lcom/google/android/gms/internal/firebase-auth-api/Q1;

    invoke-static {p1}, Lc1/D;->b(Lcom/google/android/gms/internal/firebase-auth-api/Q1;)V

    iget-object p1, p0, Lb1/d;->b:La1/b;

    check-cast p1, Lc1/k;

    invoke-virtual {p1}, Lc1/k;->l()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lb1/d;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lb1/d;->d:LA3/D;

    iget-object v1, v0, LA3/D;->d:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v0, v0, LA3/D;->e:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_5

    :cond_7
    invoke-virtual {p1}, Lc1/k;->d()V

    goto/16 :goto_a

    :cond_8
    :goto_5
    invoke-virtual {p0}, Lb1/d;->i()V

    goto/16 :goto_a

    :pswitch_4
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_13

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lb1/d;

    iget-object p1, p0, Lb1/d;->l:Lb1/g;

    iget-object v0, p1, Lb1/g;->i:Lcom/google/android/gms/internal/firebase-auth-api/Q1;

    invoke-static {v0}, Lc1/D;->b(Lcom/google/android/gms/internal/firebase-auth-api/Q1;)V

    iget-boolean v0, p0, Lb1/d;->i:Z

    if-eqz v0, :cond_13

    if-eqz v0, :cond_9

    iget-object v0, p0, Lb1/d;->l:Lb1/g;

    iget-object v1, v0, Lb1/g;->i:Lcom/google/android/gms/internal/firebase-auth-api/Q1;

    const/16 v2, 0xb

    iget-object v3, p0, Lb1/d;->c:Lb1/a;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, v0, Lb1/g;->i:Lcom/google/android/gms/internal/firebase-auth-api/Q1;

    const/16 v1, 0x9

    invoke-virtual {v0, v1, v3}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iput-boolean v4, p0, Lb1/d;->i:Z

    :cond_9
    sget v0, LZ0/f;->a:I

    iget-object v1, p1, Lb1/g;->c:LZ0/e;

    iget-object p1, p1, Lb1/g;->b:Landroid/content/Context;

    invoke-virtual {v1, p1, v0}, LZ0/e;->b(Landroid/content/Context;I)I

    move-result p1

    const/16 v0, 0x12

    const/16 v1, 0x8

    if-ne p1, v0, :cond_a

    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const-string v0, "Connection timed out while waiting for Google Play services update to complete."

    invoke-direct {p1, v1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    goto :goto_6

    :cond_a
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const-string v0, "API failed to connect while resuming due to an unknown error."

    invoke-direct {p1, v1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    :goto_6
    invoke-virtual {p0, p1}, Lb1/d;->j(Lcom/google/android/gms/common/api/Status;)V

    iget-object p0, p0, Lb1/d;->b:La1/b;

    check-cast p0, Lc1/k;

    invoke-virtual {p0}, Lc1/k;->d()V

    goto/16 :goto_a

    :pswitch_5
    iget-object p0, p0, Lb1/g;->h:Lo/c;

    invoke-virtual {p0}, Lo/c;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7
    move-object v0, p1

    check-cast v0, Lo/g;

    invoke-virtual {v0}, Lo/g;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {v0}, Lo/g;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb1/a;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb1/d;

    invoke-virtual {v0}, Lb1/d;->h()V

    goto :goto_7

    :cond_b
    invoke-virtual {p0}, Lo/c;->clear()V

    goto/16 :goto_a

    :pswitch_6
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_13

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lb1/d;

    iget-object p1, p0, Lb1/d;->l:Lb1/g;

    iget-object p1, p1, Lb1/g;->i:Lcom/google/android/gms/internal/firebase-auth-api/Q1;

    invoke-static {p1}, Lc1/D;->b(Lcom/google/android/gms/internal/firebase-auth-api/Q1;)V

    iget-boolean p1, p0, Lb1/d;->i:Z

    if-eqz p1, :cond_13

    invoke-virtual {p0}, Lb1/d;->a()V

    goto/16 :goto_a

    :pswitch_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, La1/d;

    invoke-virtual {p0, p1}, Lb1/g;->b(La1/d;)V

    goto/16 :goto_a

    :pswitch_8
    iget-object p1, p0, Lb1/g;->b:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Application;

    if-eqz v0, :cond_13

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    invoke-static {p1}, Lb1/c;->b(Landroid/app/Application;)V

    sget-object p1, Lb1/c;->g:Lb1/c;

    new-instance v0, La2/h;

    invoke-direct {v0, v7, p0}, La2/h;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Lb1/c;->a(Lb1/b;)V

    iget-object v0, p1, Lb1/c;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    iget-object p1, p1, Lb1/c;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-nez v1, :cond_c

    new-instance v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>()V

    invoke-static {v1}, Landroid/app/ActivityManager;->getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    invoke-virtual {v0, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_c

    iget v0, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v1, 0x64

    if-le v0, v1, :cond_c

    invoke-virtual {p1, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_c
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_13

    iput-wide v2, p0, Lb1/g;->a:J

    goto/16 :goto_a

    :pswitch_9
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, LZ0/a;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb1/d;

    iget v3, v2, Lb1/d;->g:I

    if-ne v3, v0, :cond_d

    move-object v6, v2

    :cond_e
    if-eqz v6, :cond_f

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    iget v1, p1, LZ0/a;->d:I

    iget-object p0, p0, Lb1/g;->c:LZ0/e;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p0, LZ0/g;->c:I

    invoke-static {v1}, LZ0/a;->d(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x45

    iget-object p1, p1, LZ0/a;->f:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Error resolution was canceled by the user, original error message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x11

    invoke-direct {v0, p1, p0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-virtual {v6, v0}, Lb1/d;->j(Lcom/google/android/gms/common/api/Status;)V

    goto/16 :goto_a

    :cond_f
    new-instance p0, Ljava/lang/StringBuilder;

    const/16 p1, 0x4c

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "Could not find API instance "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " while trying to fail enqueued calls."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    invoke-static {v5, p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_a

    :pswitch_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lb1/p;

    iget-object v0, p1, Lb1/p;->c:La1/d;

    iget-object v0, v0, La1/d;->d:Lb1/a;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb1/d;

    if-nez v0, :cond_10

    iget-object v0, p1, Lb1/p;->c:La1/d;

    invoke-virtual {p0, v0}, Lb1/g;->b(La1/d;)V

    iget-object v0, v0, La1/d;->d:Lb1/a;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb1/d;

    :cond_10
    iget-object v1, v0, Lb1/d;->b:La1/b;

    invoke-interface {v1}, La1/b;->a()Z

    move-result v1

    iget-object v2, p1, Lb1/p;->a:Lb1/m;

    if-eqz v1, :cond_11

    iget-object p0, p0, Lb1/g;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    iget p1, p1, Lb1/p;->b:I

    if-eq p0, p1, :cond_11

    sget-object p0, Lb1/g;->j:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v2, p0}, Lb1/m;->b(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0}, Lb1/d;->h()V

    goto :goto_a

    :cond_11
    invoke-virtual {v0, v2}, Lb1/d;->b(Lb1/m;)V

    goto :goto_a

    :pswitch_b
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_13

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb1/d;

    iget-object v0, p1, Lb1/d;->l:Lb1/g;

    iget-object v0, v0, Lb1/g;->i:Lcom/google/android/gms/internal/firebase-auth-api/Q1;

    invoke-static {v0}, Lc1/D;->b(Lcom/google/android/gms/internal/firebase-auth-api/Q1;)V

    iput-object v6, p1, Lb1/d;->k:LZ0/a;

    invoke-virtual {p1}, Lb1/d;->a()V

    goto :goto_8

    :pswitch_c
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {p0}, LB/f;->F(Ljava/lang/Object;)V

    throw v6

    :pswitch_d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_12

    const-wide/16 v2, 0x2710

    :cond_12
    iput-wide v2, p0, Lb1/g;->a:J

    iget-object p1, p0, Lb1/g;->i:Lcom/google/android/gms/internal/firebase-auth-api/Q1;

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb1/a;

    invoke-virtual {p1, v0, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iget-wide v3, p0, Lb1/g;->a:J

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_9

    :cond_13
    :goto_a
    return v7

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_a
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_a
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
