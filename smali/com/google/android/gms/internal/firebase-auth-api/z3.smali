.class public final Lcom/google/android/gms/internal/firebase-auth-api/z3;
.super Lcom/google/android/gms/internal/firebase-auth-api/c4;
.source "SourceFile"


# instance fields
.field public final synthetic n:I

.field public final o:LY1/d;


# direct methods
.method public constructor <init>(LY1/d;I)V
    .locals 0

    iput p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/z3;->n:I

    packed-switch p2, :pswitch_data_0

    const/4 p2, 0x2

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/c4;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/z3;->o:LY1/d;

    const-string p0, "email cannot be null"

    iget-object p2, p1, LY1/d;->c:Ljava/lang/String;

    invoke-static {p2, p0}, Lc1/D;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "password cannot be null"

    iget-object p1, p1, LY1/d;->d:Ljava/lang/String;

    invoke-static {p1, p0}, Lc1/D;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_0
    const/4 p2, 0x2

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/c4;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/z3;->o:LY1/d;

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

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/z3;->n:I

    packed-switch v0, :pswitch_data_0

    invoke-static {}, LR3/m;->c()LR3/m;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/n;

    const/16 v2, 0x10

    invoke-direct {v1, v2, p0}, Lcom/google/android/gms/internal/firebase-auth-api/n;-><init>(ILjava/lang/Object;)V

    iput-object v1, v0, LR3/m;->b:Ljava/lang/Object;

    invoke-virtual {v0}, LR3/m;->b()LR3/m;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-static {}, LR3/m;->c()LR3/m;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/n;

    const/16 v2, 0xd

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

    iget p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/z3;->n:I

    packed-switch p0, :pswitch_data_0

    const-string p0, "linkEmailAuthCredential"

    return-object p0

    :pswitch_0
    const-string p0, "linkEmailAuthCredential"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final c()V
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/z3;->n:I

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

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
