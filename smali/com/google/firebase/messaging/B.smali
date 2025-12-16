.class public final Lcom/google/firebase/messaging/B;
.super Landroid/os/Binder;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/firebase/messaging/g;


# direct methods
.method public constructor <init>(Lcom/google/firebase/messaging/g;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/messaging/B;->a:Lcom/google/firebase/messaging/g;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/firebase/messaging/C;)V
    .locals 3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-ne v0, v1, :cond_1

    const-string v0, "FirebaseMessaging"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "service received new intent via bind strategy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p1, Lcom/google/firebase/messaging/C;->a:Landroid/content/Intent;

    iget-object p0, p0, Lcom/google/firebase/messaging/B;->a:Lcom/google/firebase/messaging/g;

    iget-object p0, p0, Lcom/google/firebase/messaging/g;->d:Ljava/lang/Object;

    check-cast p0, Lcom/google/firebase/messaging/d;

    invoke-static {p0, v0}, Lcom/google/firebase/messaging/d;->-$$Nest$mprocessIntent(Lcom/google/firebase/messaging/d;Landroid/content/Intent;)Lu1/h;

    move-result-object p0

    sget-object v0, Lcom/google/firebase/messaging/c;->h:Lcom/google/firebase/messaging/c;

    new-instance v1, Lcom/google/firebase/messaging/g;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Lcom/google/firebase/messaging/g;-><init>(I)V

    iput-object p1, v1, Lcom/google/firebase/messaging/g;->d:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lu1/h;->a(Ljava/util/concurrent/Executor;Lu1/c;)Lu1/n;

    return-void

    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Binding only allowed within app"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
