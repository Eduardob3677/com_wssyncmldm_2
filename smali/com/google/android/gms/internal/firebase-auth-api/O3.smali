.class public abstract Lcom/google/android/gms/internal/firebase-auth-api/O3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/O3;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Le/C;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/O3;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/a4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/O3;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/O3;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public d()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/O3;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/messaging/s;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/O3;->b:Ljava/lang/Object;

    check-cast v1, Le/C;

    iget-object v1, v1, Le/C;->k:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/O3;->a:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public abstract e()Landroid/content/IntentFilter;
.end method

.method public abstract f()I
.end method

.method public g(Landroid/view/MenuItem;)Landroid/view/MenuItem;
    .locals 2

    instance-of v0, p1, LD/a;

    if-eqz v0, :cond_2

    check-cast p1, LD/a;

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/O3;->b:Ljava/lang/Object;

    check-cast v0, Lo/k;

    if-nez v0, :cond_0

    new-instance v0, Lo/k;

    invoke-direct {v0}, Lo/k;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/O3;->b:Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/O3;->b:Ljava/lang/Object;

    check-cast v0, Lo/k;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lo/k;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MenuItem;

    if-nez v0, :cond_1

    new-instance v0, Lj/p;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/O3;->a:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lj/p;-><init>(Landroid/content/Context;LD/a;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/O3;->b:Ljava/lang/Object;

    check-cast p0, Lo/k;

    invoke-virtual {p0, p1, v0}, Lo/k;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0

    :cond_2
    return-object p1
.end method

.method public abstract h()V
.end method

.method public i()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/O3;->d()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/O3;->e()Landroid/content/IntentFilter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/IntentFilter;->countActions()I

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/O3;->a:Ljava/lang/Object;

    check-cast v1, Lcom/google/firebase/messaging/s;

    if-nez v1, :cond_1

    new-instance v1, Lcom/google/firebase/messaging/s;

    invoke-direct {v1, p0}, Lcom/google/firebase/messaging/s;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/O3;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/O3;->a:Ljava/lang/Object;

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/O3;->b:Ljava/lang/Object;

    check-cast v1, Le/C;

    iget-object v1, v1, Le/C;->k:Landroid/content/Context;

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/O3;->a:Ljava/lang/Object;

    check-cast p0, Lcom/google/firebase/messaging/s;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/O3;->a:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x5

    add-int/2addr v0, v1

    add-int/2addr v0, v2

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "?key="

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
