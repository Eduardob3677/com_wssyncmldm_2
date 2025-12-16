.class public final Lcom/google/android/gms/internal/firebase-auth-api/t3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/d4;


# instance fields
.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Lcom/google/android/gms/internal/firebase-auth-api/G3;

.field public final synthetic f:Lcom/google/android/gms/internal/firebase-auth-api/n;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/n;Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/G3;I)V
    .locals 0

    iput p4, p0, Lcom/google/android/gms/internal/firebase-auth-api/t3;->c:I

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/t3;->f:Lcom/google/android/gms/internal/firebase-auth-api/n;

    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/t3;->d:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/t3;->e:Lcom/google/android/gms/internal/firebase-auth-api/G3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/t3;->c:I

    packed-switch v0, :pswitch_data_0

    invoke-static {p1}, Lf1/a;->t0(Ljava/lang/String;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/t3;->e:Lcom/google/android/gms/internal/firebase-auth-api/G3;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/G3;->b(Lcom/google/android/gms/common/api/Status;)V

    return-void

    :pswitch_0
    invoke-static {p1}, Lf1/a;->t0(Ljava/lang/String;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/t3;->e:Lcom/google/android/gms/internal/firebase-auth-api/G3;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/G3;->b(Lcom/google/android/gms/common/api/Status;)V

    return-void

    :pswitch_1
    invoke-static {p1}, Lf1/a;->t0(Ljava/lang/String;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/t3;->e:Lcom/google/android/gms/internal/firebase-auth-api/G3;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/G3;->b(Lcom/google/android/gms/common/api/Status;)V

    return-void

    :pswitch_2
    invoke-static {p1}, Lf1/a;->t0(Ljava/lang/String;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/t3;->e:Lcom/google/android/gms/internal/firebase-auth-api/G3;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/G3;->b(Lcom/google/android/gms/common/api/Status;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final k(Lcom/google/android/gms/internal/firebase-auth-api/Y3;)V
    .locals 4

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/t3;->c:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/y4;

    iget-object v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/y4;->d:Ljava/lang/String;

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/G4;

    invoke-direct {v1}, Lcom/google/android/gms/internal/firebase-auth-api/G4;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/G4;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/t3;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, v1, Lcom/google/android/gms/internal/firebase-auth-api/G4;->j:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/M4;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/M4;->d:Ljava/util/List;

    const-string v2, "PASSWORD"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iput-object v0, v1, Lcom/google/android/gms/internal/firebase-auth-api/G4;->f:Ljava/lang/Object;

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/t3;->f:Lcom/google/android/gms/internal/firebase-auth-api/n;

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/t3;->e:Lcom/google/android/gms/internal/firebase-auth-api/G3;

    invoke-static {v0, v2, p0, p1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/n;->s(Lcom/google/android/gms/internal/firebase-auth-api/n;Lcom/google/android/gms/internal/firebase-auth-api/G3;Lcom/google/android/gms/internal/firebase-auth-api/d4;Lcom/google/android/gms/internal/firebase-auth-api/y4;Lcom/google/android/gms/internal/firebase-auth-api/G4;)V

    return-void

    :pswitch_0
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/y4;

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/G4;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/G4;-><init>()V

    iget-object v1, p1, Lcom/google/android/gms/internal/firebase-auth-api/y4;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/G4;->d(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/t3;->d:Ljava/lang/String;

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/google/android/gms/internal/firebase-auth-api/G4;->j:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/M4;

    iget-object v1, v1, Lcom/google/android/gms/internal/firebase-auth-api/M4;->d:Ljava/util/List;

    const-string v2, "EMAIL"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iput-object v1, v0, Lcom/google/android/gms/internal/firebase-auth-api/G4;->e:Ljava/lang/Object;

    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/t3;->f:Lcom/google/android/gms/internal/firebase-auth-api/n;

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/t3;->e:Lcom/google/android/gms/internal/firebase-auth-api/G3;

    invoke-static {v1, v2, p0, p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/n;->s(Lcom/google/android/gms/internal/firebase-auth-api/n;Lcom/google/android/gms/internal/firebase-auth-api/G3;Lcom/google/android/gms/internal/firebase-auth-api/d4;Lcom/google/android/gms/internal/firebase-auth-api/y4;Lcom/google/android/gms/internal/firebase-auth-api/G4;)V

    return-void

    :pswitch_1
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/y4;

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/e4;

    iget-object p1, p1, Lcom/google/android/gms/internal/firebase-auth-api/y4;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/t3;->d:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-direct {v0, v2, p1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/e4;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/t3;->f:Lcom/google/android/gms/internal/firebase-auth-api/n;

    iget-object p1, p1, Lcom/google/android/gms/internal/firebase-auth-api/n;->d:Ljava/lang/Object;

    check-cast p1, LJ3/c;

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/n;

    const/16 v2, 0x9

    invoke-direct {v1, v2, p0}, Lcom/google/android/gms/internal/firebase-auth-api/n;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, LJ3/c;->e:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/V3;

    const-string v2, "/mfaEnrollment:withdraw"

    iget-object p1, p1, LJ3/c;->i:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, v2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/O3;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class v2, Lcom/google/android/gms/internal/firebase-auth-api/T4;

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/O3;->b:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/a4;

    invoke-static {p1, v0, v1, v2, p0}, Lcom/google/android/gms/internal/firebase-auth-api/s;->l(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/X3;Lcom/google/android/gms/internal/firebase-auth-api/d4;Ljava/lang/Class;Lcom/google/android/gms/internal/firebase-auth-api/a4;)V

    return-void

    :pswitch_2
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/y4;

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/m4;

    iget-object v1, p1, Lcom/google/android/gms/internal/firebase-auth-api/y4;->d:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/m4;-><init>(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/t3;->f:Lcom/google/android/gms/internal/firebase-auth-api/n;

    iget-object v1, v1, Lcom/google/android/gms/internal/firebase-auth-api/n;->d:Ljava/lang/Object;

    check-cast v1, LJ3/c;

    new-instance v2, Lcom/google/android/gms/internal/firebase-auth-api/z2;

    const/4 v3, 0x5

    invoke-direct {v2, p0, p0, p1, v3}, Lcom/google/android/gms/internal/firebase-auth-api/z2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v1, v0, v2}, LJ3/c;->r(Lcom/google/android/gms/internal/firebase-auth-api/m4;Lcom/google/android/gms/internal/firebase-auth-api/d4;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
