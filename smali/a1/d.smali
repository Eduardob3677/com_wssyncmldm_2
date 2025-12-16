.class public abstract La1/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:LA3/D;

.field public final c:La1/a;

.field public final d:Lb1/a;

.field public final e:I

.field public final f:Lb1/l;

.field public final g:Lb1/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;LA3/D;Lcom/google/android/gms/internal/firebase-auth-api/W3;La1/c;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Null context is not permitted."

    invoke-static {v0, p1}, Lc1/D;->f(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "Api must not be null."

    invoke-static {v0, p2}, Lc1/D;->f(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "Settings must not be null; use Settings.DEFAULT_SETTINGS instead."

    invoke-static {v0, p4}, Lc1/D;->f(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, La1/d;->a:Landroid/content/Context;

    iput-object p2, p0, La1/d;->b:LA3/D;

    iput-object p3, p0, La1/d;->c:La1/a;

    new-instance v0, Lb1/a;

    invoke-direct {v0, p2, p3}, Lb1/a;-><init>(LA3/D;Lcom/google/android/gms/internal/firebase-auth-api/W3;)V

    iput-object v0, p0, La1/d;->d:Lb1/a;

    new-instance p2, Lb1/o;

    invoke-static {p1}, Lb1/g;->a(Landroid/content/Context;)Lb1/g;

    move-result-object p1

    iput-object p1, p0, La1/d;->g:Lb1/g;

    iget-object p2, p1, Lb1/g;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p2

    iput p2, p0, La1/d;->e:I

    iget-object p2, p4, La1/c;->a:Lb1/l;

    iput-object p2, p0, La1/d;->f:Lb1/l;

    iget-object p1, p1, Lb1/g;->i:Lcom/google/android/gms/internal/firebase-auth-api/Q1;

    const/4 p2, 0x7

    invoke-virtual {p1, p2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/firebase/messaging/p;
    .locals 4

    new-instance v0, Lcom/google/firebase/messaging/p;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lcom/google/firebase/messaging/p;-><init>(I)V

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/firebase/messaging/p;->e:Ljava/lang/Object;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    iget-object v2, v0, Lcom/google/firebase/messaging/p;->f:Ljava/lang/Object;

    check-cast v2, Lo/c;

    if-nez v2, :cond_0

    new-instance v2, Lo/c;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lo/c;-><init>(I)V

    iput-object v2, v0, Lcom/google/firebase/messaging/p;->f:Ljava/lang/Object;

    :cond_0
    iget-object v2, v0, Lcom/google/firebase/messaging/p;->f:Ljava/lang/Object;

    check-cast v2, Lo/c;

    invoke-virtual {v2, v1}, Lo/c;->addAll(Ljava/util/Collection;)Z

    iget-object p0, p0, La1/d;->a:Landroid/content/Context;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/firebase/messaging/p;->g:Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/google/firebase/messaging/p;->d:Ljava/lang/Object;

    return-object v0
.end method

.method public final b(ILR3/m;)Lu1/n;
    .locals 3

    new-instance p1, Lu1/i;

    invoke-direct {p1}, Lu1/i;-><init>()V

    iget-object v0, p0, La1/d;->g:Lb1/g;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lb1/s;

    iget-object v2, p0, La1/d;->f:Lb1/l;

    invoke-direct {v1, p2, p1, v2}, Lb1/s;-><init>(LR3/m;Lu1/i;Lb1/l;)V

    iget-object p2, v0, Lb1/g;->i:Lcom/google/android/gms/internal/firebase-auth-api/Q1;

    new-instance v2, Lb1/p;

    iget-object v0, v0, Lb1/g;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-direct {v2, v1, v0, p0}, Lb1/p;-><init>(Lb1/s;ILa1/d;)V

    const/4 p0, 0x4

    invoke-virtual {p2, p0, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object p0, p1, Lu1/i;->a:Lu1/n;

    return-object p0
.end method
