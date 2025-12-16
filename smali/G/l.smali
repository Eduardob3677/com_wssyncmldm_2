.class public final LG/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:I

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, LG/l;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, LG/l;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LG/l;->e:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    iget-object v1, p0, LG/l;->f:Ljava/lang/Object;

    check-cast v1, Lu1/i;

    iget-object p0, p0, LG/l;->d:Ljava/lang/Object;

    check-cast p0, Lcom/google/firebase/messaging/d;

    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/messaging/d;->lambda$processIntent$0$com-google-firebase-messaging-EnhancedIntentService(Landroid/content/Intent;Lu1/i;)V

    return-void

    :pswitch_0
    :try_start_0
    iget-object v0, p0, LG/l;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, LG/a;

    iget-object v2, p0, LG/l;->e:Ljava/lang/Object;

    check-cast v2, LI/a;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v0}, LG/a;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    iget-object p0, p0, LG/l;->f:Ljava/lang/Object;

    check-cast p0, Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
