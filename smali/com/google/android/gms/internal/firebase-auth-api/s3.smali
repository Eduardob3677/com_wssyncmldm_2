.class public final Lcom/google/android/gms/internal/firebase-auth-api/s3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/d4;


# instance fields
.field public final synthetic c:I

.field public final synthetic d:Lcom/google/android/gms/internal/firebase-auth-api/G3;

.field public final synthetic e:Lcom/google/android/gms/internal/firebase-auth-api/n;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/n;Lcom/google/android/gms/internal/firebase-auth-api/G3;I)V
    .locals 0

    iput p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/s3;->c:I

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/s3;->e:Lcom/google/android/gms/internal/firebase-auth-api/n;

    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/s3;->d:Lcom/google/android/gms/internal/firebase-auth-api/G3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/s3;->c:I

    packed-switch v0, :pswitch_data_0

    invoke-static {p1}, Lf1/a;->t0(Ljava/lang/String;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/s3;->d:Lcom/google/android/gms/internal/firebase-auth-api/G3;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/G3;->b(Lcom/google/android/gms/common/api/Status;)V

    return-void

    :pswitch_0
    invoke-static {p1}, Lf1/a;->t0(Ljava/lang/String;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/s3;->d:Lcom/google/android/gms/internal/firebase-auth-api/G3;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/G3;->b(Lcom/google/android/gms/common/api/Status;)V

    return-void

    :pswitch_1
    invoke-static {p1}, Lf1/a;->t0(Ljava/lang/String;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/s3;->d:Lcom/google/android/gms/internal/firebase-auth-api/G3;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/G3;->b(Lcom/google/android/gms/common/api/Status;)V

    return-void

    :pswitch_2
    invoke-static {p1}, Lf1/a;->t0(Ljava/lang/String;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/s3;->d:Lcom/google/android/gms/internal/firebase-auth-api/G3;

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
    .locals 7

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/s3;->c:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/y4;

    iget-object p1, p1, Lcom/google/android/gms/internal/firebase-auth-api/y4;->d:Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/m4;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/m4;-><init>(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/s3;->e:Lcom/google/android/gms/internal/firebase-auth-api/n;

    iget-object p1, p1, Lcom/google/android/gms/internal/firebase-auth-api/n;->d:Ljava/lang/Object;

    check-cast p1, LJ3/c;

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/U;

    const/4 v2, 0x4

    invoke-direct {v1, p0, p0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/U;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/d4;Lcom/google/android/gms/internal/firebase-auth-api/d4;I)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, LJ3/c;->d:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/V3;

    const-string v2, "/deleteAccount"

    iget-object p1, p1, LJ3/c;->i:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, v2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/O3;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class v2, Ljava/lang/Void;

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/O3;->b:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/a4;

    invoke-static {p1, v0, v1, v2, p0}, Lcom/google/android/gms/internal/firebase-auth-api/s;->l(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/X3;Lcom/google/android/gms/internal/firebase-auth-api/d4;Ljava/lang/Class;Lcom/google/android/gms/internal/firebase-auth-api/a4;)V

    return-void

    :pswitch_0
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/y4;

    iget-object v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/y4;->d:Ljava/lang/String;

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/m4;

    const/4 v2, 0x3

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/m4;-><init>(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/s3;->e:Lcom/google/android/gms/internal/firebase-auth-api/n;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/n;->d:Ljava/lang/Object;

    check-cast v0, LJ3/c;

    new-instance v2, Lcom/google/android/gms/internal/firebase-auth-api/z2;

    const/4 v3, 0x7

    invoke-direct {v2, p0, p0, p1, v3}, Lcom/google/android/gms/internal/firebase-auth-api/z2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1, v2}, LJ3/c;->r(Lcom/google/android/gms/internal/firebase-auth-api/m4;Lcom/google/android/gms/internal/firebase-auth-api/d4;)V

    return-void

    :pswitch_1
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/P4;

    new-instance v6, Lcom/google/android/gms/internal/firebase-auth-api/y4;

    iget-object v1, p1, Lcom/google/android/gms/internal/firebase-auth-api/P4;->d:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/firebase-auth-api/P4;->c:Ljava/lang/String;

    iget-wide v3, p1, Lcom/google/android/gms/internal/firebase-auth-api/P4;->e:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v4, "Bearer"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/firebase-auth-api/y4;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;)V

    iget-boolean p1, p1, Lcom/google/android/gms/internal/firebase-auth-api/P4;->f:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/s3;->e:Lcom/google/android/gms/internal/firebase-auth-api/n;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/s3;->d:Lcom/google/android/gms/internal/firebase-auth-api/G3;

    invoke-static {v1}, Lc1/D;->e(Ljava/lang/Object;)V

    iget-object v2, v6, Lcom/google/android/gms/internal/firebase-auth-api/y4;->d:Ljava/lang/String;

    new-instance v3, Lcom/google/android/gms/internal/firebase-auth-api/m4;

    const/4 v4, 0x3

    invoke-direct {v3, v2, v4}, Lcom/google/android/gms/internal/firebase-auth-api/m4;-><init>(Ljava/lang/String;I)V

    new-instance v2, LJ3/c;

    invoke-direct {v2, p0, p1, v1, v6}, LJ3/c;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/d4;Ljava/lang/Boolean;Lcom/google/android/gms/internal/firebase-auth-api/G3;Lcom/google/android/gms/internal/firebase-auth-api/y4;)V

    iget-object p0, v0, Lcom/google/android/gms/internal/firebase-auth-api/n;->d:Ljava/lang/Object;

    check-cast p0, LJ3/c;

    invoke-virtual {p0, v3, v2}, LJ3/c;->r(Lcom/google/android/gms/internal/firebase-auth-api/m4;Lcom/google/android/gms/internal/firebase-auth-api/d4;)V

    return-void

    :pswitch_2
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/y4;

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/G4;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/G4;-><init>()V

    iget-object v1, p1, Lcom/google/android/gms/internal/firebase-auth-api/y4;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/G4;->d(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/firebase-auth-api/G4;->j:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/M4;

    iget-object v2, v1, Lcom/google/android/gms/internal/firebase-auth-api/M4;->d:Ljava/util/List;

    const-string v3, "EMAIL"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v1, Lcom/google/android/gms/internal/firebase-auth-api/M4;->d:Ljava/util/List;

    const-string v2, "PASSWORD"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/s3;->e:Lcom/google/android/gms/internal/firebase-auth-api/n;

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/s3;->d:Lcom/google/android/gms/internal/firebase-auth-api/G3;

    invoke-static {v1, v2, p0, p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/n;->s(Lcom/google/android/gms/internal/firebase-auth-api/n;Lcom/google/android/gms/internal/firebase-auth-api/G3;Lcom/google/android/gms/internal/firebase-auth-api/d4;Lcom/google/android/gms/internal/firebase-auth-api/y4;Lcom/google/android/gms/internal/firebase-auth-api/G4;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
