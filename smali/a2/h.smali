.class public final La2/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb1/b;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, La2/h;->a:I

    iput-object p2, p0, La2/h;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 1

    iget v0, p0, La2/h;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, La2/h;->b:Ljava/lang/Object;

    check-cast p0, Lb1/g;

    iget-object p0, p0, Lb1/g;->i:Lcom/google/android/gms/internal/firebase-auth-api/Q1;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :pswitch_0
    iget-object p0, p0, La2/h;->b:Ljava/lang/Object;

    check-cast p0, Ls2/c;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Ls2/c;->c:Ljava/lang/Object;

    check-cast p0, La2/c;

    iget-object p1, p0, La2/c;->c:Lcom/google/android/gms/internal/firebase-auth-api/Q1;

    iget-object p0, p0, La2/c;->d:LG/a;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
