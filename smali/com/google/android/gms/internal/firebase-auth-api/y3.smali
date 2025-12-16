.class public final Lcom/google/android/gms/internal/firebase-auth-api/y3;
.super Lcom/google/android/gms/internal/firebase-auth-api/c4;
.source "SourceFile"


# instance fields
.field public final synthetic n:I

.field public final o:Ld1/a;


# direct methods
.method public constructor <init>(LY1/c;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/y3;->n:I

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/c4;-><init>(I)V

    const/4 v0, 0x0

    invoke-static {p1, v0}, LL2/b;->Q(LY1/c;Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/N4;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/y3;->o:Ld1/a;

    return-void
.end method

.method public constructor <init>(LY1/j;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/y3;->n:I

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/c4;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/y3;->o:Ld1/a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/y3;->n:I

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/c4;-><init>(I)V

    const-string v0, "refresh token cannot be null"

    invoke-static {p1, v0}, Lc1/D;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/Q2;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/Q2;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/y3;->o:Ld1/a;

    return-void
.end method


# virtual methods
.method public final a()LR3/m;
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/y3;->n:I

    packed-switch v0, :pswitch_data_0

    invoke-static {}, LR3/m;->c()LR3/m;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/n;

    const/16 v2, 0xf

    invoke-direct {v1, v2, p0}, Lcom/google/android/gms/internal/firebase-auth-api/n;-><init>(ILjava/lang/Object;)V

    iput-object v1, v0, LR3/m;->b:Ljava/lang/Object;

    invoke-virtual {v0}, LR3/m;->b()LR3/m;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-static {}, LR3/m;->c()LR3/m;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/n;

    const/16 v2, 0xe

    invoke-direct {v1, v2, p0}, Lcom/google/android/gms/internal/firebase-auth-api/n;-><init>(ILjava/lang/Object;)V

    iput-object v1, v0, LR3/m;->b:Ljava/lang/Object;

    invoke-virtual {v0}, LR3/m;->b()LR3/m;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-static {}, LR3/m;->c()LR3/m;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/n;

    const/16 v2, 0xc

    invoke-direct {v1, v2, p0}, Lcom/google/android/gms/internal/firebase-auth-api/n;-><init>(ILjava/lang/Object;)V

    iput-object v1, v0, LR3/m;->b:Ljava/lang/Object;

    invoke-virtual {v0}, LR3/m;->b()LR3/m;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/y3;->n:I

    packed-switch p0, :pswitch_data_0

    const-string p0, "linkPhoneAuthCredential"

    return-object p0

    :pswitch_0
    const-string p0, "linkFederatedCredential"

    return-object p0

    :pswitch_1
    const-string p0, "getAccessToken"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c()V
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/y3;->n:I

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

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/c4;->e:Ljava/lang/Object;

    check-cast v1, La2/l;

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/c4;->g:Lcom/google/android/gms/internal/firebase-auth-api/y4;

    invoke-interface {v1, v2, v0}, La2/l;->a(Lcom/google/android/gms/internal/firebase-auth-api/y4;La2/s;)V

    new-instance v1, La2/p;

    invoke-direct {v1, v0}, La2/p;-><init>(La2/s;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/c4;->g(Ljava/lang/Object;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/c4;->g:Lcom/google/android/gms/internal/firebase-auth-api/y4;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/y4;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/c4;->g:Lcom/google/android/gms/internal/firebase-auth-api/y4;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/y3;->o:Ld1/a;

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/Q2;

    iget-object v1, v1, Lcom/google/android/gms/internal/firebase-auth-api/Q2;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lc1/D;->c(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/google/android/gms/internal/firebase-auth-api/y4;->c:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/c4;->e:Ljava/lang/Object;

    check-cast v0, La2/l;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/c4;->g:Lcom/google/android/gms/internal/firebase-auth-api/y4;

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/c4;->d:La2/s;

    invoke-interface {v0, v1, v2}, La2/l;->a(Lcom/google/android/gms/internal/firebase-auth-api/y4;La2/s;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/c4;->g:Lcom/google/android/gms/internal/firebase-auth-api/y4;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/y4;->d:Ljava/lang/String;

    invoke-static {v0}, La2/d;->a(Ljava/lang/String;)Ls2/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/c4;->g(Ljava/lang/Object;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
