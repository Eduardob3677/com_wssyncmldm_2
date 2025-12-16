.class public final Lcom/google/android/gms/internal/firebase-auth-api/C3;
.super Lcom/google/android/gms/internal/firebase-auth-api/c4;
.source "SourceFile"


# instance fields
.field public final synthetic n:I

.field public final o:Lcom/google/android/gms/internal/firebase-auth-api/d3;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/C3;->n:I

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/c4;-><init>(I)V

    const-string p1, "email cannot be null or empty"

    invoke-static {p2, p1}, Lc1/D;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "password cannot be null or empty"

    invoke-static {p3, p1}, Lc1/D;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/internal/firebase-auth-api/d3;

    invoke-direct {p1, p2, p3, p4}, Lcom/google/android/gms/internal/firebase-auth-api/d3;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/C3;->o:Lcom/google/android/gms/internal/firebase-auth-api/d3;

    return-void

    :pswitch_0
    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/c4;-><init>(I)V

    const-string p1, "email cannot be null or empty"

    invoke-static {p2, p1}, Lc1/D;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "password cannot be null or empty"

    invoke-static {p3, p1}, Lc1/D;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/internal/firebase-auth-api/d3;

    invoke-direct {p1, p2, p3, p4}, Lcom/google/android/gms/internal/firebase-auth-api/d3;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/C3;->o:Lcom/google/android/gms/internal/firebase-auth-api/d3;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final a()LR3/m;
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/C3;->n:I

    packed-switch v0, :pswitch_data_0

    invoke-static {}, LR3/m;->c()LR3/m;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/n;

    const/16 v2, 0x16

    invoke-direct {v1, v2, p0}, Lcom/google/android/gms/internal/firebase-auth-api/n;-><init>(ILjava/lang/Object;)V

    iput-object v1, v0, LR3/m;->b:Ljava/lang/Object;

    invoke-virtual {v0}, LR3/m;->b()LR3/m;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-static {}, LR3/m;->c()LR3/m;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/n;

    const/16 v2, 0x13

    invoke-direct {v1, v2, p0}, Lcom/google/android/gms/internal/firebase-auth-api/n;-><init>(ILjava/lang/Object;)V

    iput-object v1, v0, LR3/m;->b:Ljava/lang/Object;

    invoke-virtual {v0}, LR3/m;->b()LR3/m;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/C3;->n:I

    packed-switch p0, :pswitch_data_0

    const-string p0, "signInWithEmailAndPassword"

    return-object p0

    :pswitch_0
    const-string p0, "reauthenticateWithEmailPasswordWithData"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final c()V
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/C3;->n:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/c4;->c:LW1/g;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/c4;->h:Lcom/google/android/gms/internal/firebase-auth-api/v4;

    invoke-static {v0, v1}, Lcom/google/firebase/messaging/p;->O(LW1/g;Lcom/google/android/gms/internal/firebase-auth-api/v4;)La2/s;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/c4;->e:Ljava/lang/Object;

    check-cast v1, La2/l;

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/c4;->g:Lcom/google/android/gms/internal/firebase-auth-api/y4;

    invoke-interface {v1, v2, v0}, La2/l;->a(Lcom/google/android/gms/internal/firebase-auth-api/y4;La2/s;)V

    new-instance v1, La2/p;

    invoke-direct {v1, v0}, La2/p;-><init>(La2/s;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/c4;->g(Ljava/lang/Object;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/c4;->c:LW1/g;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/c4;->h:Lcom/google/android/gms/internal/firebase-auth-api/v4;

    invoke-static {v0, v1}, Lcom/google/firebase/messaging/p;->O(LW1/g;Lcom/google/android/gms/internal/firebase-auth-api/v4;)La2/s;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/c4;->d:La2/s;

    iget-object v1, v1, La2/s;->d:La2/q;

    iget-object v1, v1, La2/q;->c:Ljava/lang/String;

    iget-object v2, v0, La2/s;->d:La2/q;

    iget-object v2, v2, La2/q;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/c4;->e:Ljava/lang/Object;

    check-cast v1, La2/l;

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/c4;->g:Lcom/google/android/gms/internal/firebase-auth-api/y4;

    invoke-interface {v1, v2, v0}, La2/l;->a(Lcom/google/android/gms/internal/firebase-auth-api/y4;La2/s;)V

    new-instance v1, La2/p;

    invoke-direct {v1, v0}, La2/p;-><init>(La2/s;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/c4;->g(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/4 v1, 0x0

    const/16 v2, 0x4280

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/c4;->f(Lcom/google/android/gms/common/api/Status;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
