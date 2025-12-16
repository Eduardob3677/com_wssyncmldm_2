.class public final synthetic LY0/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/google/firebase/iid/FirebaseInstanceIdReceiver;

.field public final synthetic d:Landroid/content/Intent;

.field public final synthetic e:Landroid/content/Context;

.field public final synthetic f:Z

.field public final synthetic g:Landroid/content/BroadcastReceiver$PendingResult;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/iid/FirebaseInstanceIdReceiver;Landroid/content/Intent;Landroid/content/Context;ZLandroid/content/BroadcastReceiver$PendingResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LY0/f;->c:Lcom/google/firebase/iid/FirebaseInstanceIdReceiver;

    iput-object p2, p0, LY0/f;->d:Landroid/content/Intent;

    iput-object p3, p0, LY0/f;->e:Landroid/content/Context;

    iput-boolean p4, p0, LY0/f;->f:Z

    iput-object p5, p0, LY0/f;->g:Landroid/content/BroadcastReceiver$PendingResult;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, LY0/f;->d:Landroid/content/Intent;

    iget-object v1, p0, LY0/f;->g:Landroid/content/BroadcastReceiver$PendingResult;

    iget-object v2, p0, LY0/f;->c:Lcom/google/firebase/iid/FirebaseInstanceIdReceiver;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    const-string v2, "wrapped_intent"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    instance-of v3, v2, Landroid/content/Intent;

    if-eqz v3, :cond_0

    check-cast v2, Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, LY0/f;->e:Landroid/content/Context;

    if-eqz v2, :cond_1

    :try_start_1
    invoke-static {v2}, Lcom/google/firebase/iid/FirebaseInstanceIdReceiver;->b(Landroid/content/Intent;)I

    move-result v0

    goto :goto_1

    :cond_1
    invoke-static {v3, v0}, Lcom/google/firebase/iid/FirebaseInstanceIdReceiver;->a(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    iget-boolean p0, p0, LY0/f;->f:Z

    if-eqz p0, :cond_2

    :try_start_2
    invoke-virtual {v1, v0}, Landroid/content/BroadcastReceiver$PendingResult;->setResultCode(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    invoke-virtual {v1}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    return-void

    :goto_2
    invoke-virtual {v1}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    throw p0
.end method
