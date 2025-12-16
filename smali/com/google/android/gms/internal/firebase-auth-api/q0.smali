.class public final Lcom/google/android/gms/internal/firebase-auth-api/q0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Class;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Class;)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/q0;->b:I

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/q0;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/z0;)V
    .locals 0

    const/4 p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/q0;->b:I

    const-class p1, Lcom/google/android/gms/internal/firebase-auth-api/X0;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/q0;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/q0;->a:Ljava/lang/Class;

    return-void
.end method

.method public static final f(Lcom/google/android/gms/internal/firebase-auth-api/X0;)Lcom/google/android/gms/internal/firebase-auth-api/V0;
    .locals 4

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/V0;->n()Lcom/google/android/gms/internal/firebase-auth-api/U0;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/X0;->q()Lcom/google/android/gms/internal/firebase-auth-api/Z0;

    move-result-object v1

    iget-boolean v2, v0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d()V

    iput-boolean v3, v0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    :cond_0
    iget-object v2, v0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d:Lcom/google/android/gms/internal/firebase-auth-api/m5;

    check-cast v2, Lcom/google/android/gms/internal/firebase-auth-api/V0;

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/V0;->t(Lcom/google/android/gms/internal/firebase-auth-api/V0;Lcom/google/android/gms/internal/firebase-auth-api/Z0;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/X0;->m()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/C2;->a(I)[B

    move-result-object p0

    array-length v1, p0

    invoke-static {p0, v3, v1}, Lcom/google/android/gms/internal/firebase-auth-api/Z4;->q([BII)Lcom/google/android/gms/internal/firebase-auth-api/Y4;

    move-result-object p0

    iget-boolean v1, v0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d()V

    iput-boolean v3, v0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    :cond_1
    iget-object v1, v0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d:Lcom/google/android/gms/internal/firebase-auth-api/m5;

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/V0;

    invoke-static {v1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/V0;->u(Lcom/google/android/gms/internal/firebase-auth-api/V0;Lcom/google/android/gms/internal/firebase-auth-api/Y4;)V

    iget-boolean p0, v0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    if-eqz p0, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d()V

    iput-boolean v3, v0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    :cond_2
    iget-object p0, v0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d:Lcom/google/android/gms/internal/firebase-auth-api/m5;

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/V0;

    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/V0;->s(Lcom/google/android/gms/internal/firebase-auth-api/V0;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->b()Lcom/google/android/gms/internal/firebase-auth-api/m5;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/V0;

    return-object p0
.end method


# virtual methods
.method public final bridge a(Lcom/google/android/gms/internal/firebase-auth-api/Z4;)Lcom/google/android/gms/internal/firebase-auth-api/U4;
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/q0;->b:I

    packed-switch p0, :pswitch_data_0

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/g5;->a()Lcom/google/android/gms/internal/firebase-auth-api/g5;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/N1;->p(Lcom/google/android/gms/internal/firebase-auth-api/Z4;Lcom/google/android/gms/internal/firebase-auth-api/g5;)Lcom/google/android/gms/internal/firebase-auth-api/N1;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/g5;->a()Lcom/google/android/gms/internal/firebase-auth-api/g5;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/N0;->o(Lcom/google/android/gms/internal/firebase-auth-api/Z4;Lcom/google/android/gms/internal/firebase-auth-api/g5;)Lcom/google/android/gms/internal/firebase-auth-api/N0;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/g5;->a()Lcom/google/android/gms/internal/firebase-auth-api/g5;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/z1;->n(Lcom/google/android/gms/internal/firebase-auth-api/Z4;Lcom/google/android/gms/internal/firebase-auth-api/g5;)Lcom/google/android/gms/internal/firebase-auth-api/z1;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/g5;->a()Lcom/google/android/gms/internal/firebase-auth-api/g5;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/r1;->o(Lcom/google/android/gms/internal/firebase-auth-api/Z4;Lcom/google/android/gms/internal/firebase-auth-api/g5;)Lcom/google/android/gms/internal/firebase-auth-api/r1;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/g5;->a()Lcom/google/android/gms/internal/firebase-auth-api/g5;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/n2;->n(Lcom/google/android/gms/internal/firebase-auth-api/Z4;Lcom/google/android/gms/internal/firebase-auth-api/g5;)Lcom/google/android/gms/internal/firebase-auth-api/n2;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/g5;->a()Lcom/google/android/gms/internal/firebase-auth-api/g5;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/j2;->o(Lcom/google/android/gms/internal/firebase-auth-api/Z4;Lcom/google/android/gms/internal/firebase-auth-api/g5;)Lcom/google/android/gms/internal/firebase-auth-api/j2;

    move-result-object p0

    return-object p0

    :pswitch_5
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/g5;->a()Lcom/google/android/gms/internal/firebase-auth-api/g5;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/g2;->n(Lcom/google/android/gms/internal/firebase-auth-api/Z4;Lcom/google/android/gms/internal/firebase-auth-api/g5;)Lcom/google/android/gms/internal/firebase-auth-api/g2;

    move-result-object p0

    return-object p0

    :pswitch_6
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/g5;->a()Lcom/google/android/gms/internal/firebase-auth-api/g5;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/v1;->n(Lcom/google/android/gms/internal/firebase-auth-api/Z4;Lcom/google/android/gms/internal/firebase-auth-api/g5;)Lcom/google/android/gms/internal/firebase-auth-api/v1;

    move-result-object p0

    return-object p0

    :pswitch_7
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/g5;->a()Lcom/google/android/gms/internal/firebase-auth-api/g5;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/n1;->o(Lcom/google/android/gms/internal/firebase-auth-api/Z4;Lcom/google/android/gms/internal/firebase-auth-api/g5;)Lcom/google/android/gms/internal/firebase-auth-api/n1;

    move-result-object p0

    return-object p0

    :pswitch_8
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/g5;->a()Lcom/google/android/gms/internal/firebase-auth-api/g5;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/j1;->o(Lcom/google/android/gms/internal/firebase-auth-api/Z4;Lcom/google/android/gms/internal/firebase-auth-api/g5;)Lcom/google/android/gms/internal/firebase-auth-api/j1;

    move-result-object p0

    return-object p0

    :pswitch_9
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/g5;->a()Lcom/google/android/gms/internal/firebase-auth-api/g5;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/d1;->o(Lcom/google/android/gms/internal/firebase-auth-api/Z4;Lcom/google/android/gms/internal/firebase-auth-api/g5;)Lcom/google/android/gms/internal/firebase-auth-api/d1;

    move-result-object p0

    return-object p0

    :pswitch_a
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/g5;->a()Lcom/google/android/gms/internal/firebase-auth-api/g5;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/X0;->p(Lcom/google/android/gms/internal/firebase-auth-api/Z4;Lcom/google/android/gms/internal/firebase-auth-api/g5;)Lcom/google/android/gms/internal/firebase-auth-api/X0;

    move-result-object p0

    return-object p0

    :pswitch_b
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/g5;->a()Lcom/google/android/gms/internal/firebase-auth-api/g5;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/T0;->n(Lcom/google/android/gms/internal/firebase-auth-api/Z4;Lcom/google/android/gms/internal/firebase-auth-api/g5;)Lcom/google/android/gms/internal/firebase-auth-api/T0;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Lcom/google/android/gms/internal/firebase-auth-api/U4;)Ljava/lang/Object;
    .locals 8

    iget p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/q0;->b:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/N1;

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/L1;->n()Lcom/google/android/gms/internal/firebase-auth-api/K1;

    move-result-object p0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d()V

    iput-boolean v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d:Lcom/google/android/gms/internal/firebase-auth-api/m5;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/L1;

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/L1;->s(Lcom/google/android/gms/internal/firebase-auth-api/L1;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/N1;->q()Lcom/google/android/gms/internal/firebase-auth-api/P1;

    move-result-object v0

    iget-boolean v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d()V

    iput-boolean v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d:Lcom/google/android/gms/internal/firebase-auth-api/m5;

    check-cast v2, Lcom/google/android/gms/internal/firebase-auth-api/L1;

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/L1;->t(Lcom/google/android/gms/internal/firebase-auth-api/L1;Lcom/google/android/gms/internal/firebase-auth-api/P1;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/N1;->m()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/C2;->a(I)[B

    move-result-object p1

    array-length v0, p1

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/Z4;->q([BII)Lcom/google/android/gms/internal/firebase-auth-api/Y4;

    move-result-object p1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d()V

    iput-boolean v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d:Lcom/google/android/gms/internal/firebase-auth-api/m5;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/L1;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/L1;->u(Lcom/google/android/gms/internal/firebase-auth-api/L1;Lcom/google/android/gms/internal/firebase-auth-api/Y4;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->b()Lcom/google/android/gms/internal/firebase-auth-api/m5;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/L1;

    return-object p0

    :pswitch_0
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/N0;

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/L0;->n()Lcom/google/android/gms/internal/firebase-auth-api/K0;

    move-result-object p0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d()V

    iput-boolean v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d:Lcom/google/android/gms/internal/firebase-auth-api/m5;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/L0;

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/L0;->r(Lcom/google/android/gms/internal/firebase-auth-api/L0;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/N0;->m()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/C2;->a(I)[B

    move-result-object v0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/Z4;->q([BII)Lcom/google/android/gms/internal/firebase-auth-api/Y4;

    move-result-object v0

    iget-boolean v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d()V

    iput-boolean v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d:Lcom/google/android/gms/internal/firebase-auth-api/m5;

    check-cast v2, Lcom/google/android/gms/internal/firebase-auth-api/L0;

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/L0;->s(Lcom/google/android/gms/internal/firebase-auth-api/L0;Lcom/google/android/gms/internal/firebase-auth-api/Y4;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/N0;->p()Lcom/google/android/gms/internal/firebase-auth-api/P0;

    move-result-object p1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d()V

    iput-boolean v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d:Lcom/google/android/gms/internal/firebase-auth-api/m5;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/L0;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/L0;->t(Lcom/google/android/gms/internal/firebase-auth-api/L0;Lcom/google/android/gms/internal/firebase-auth-api/P0;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->b()Lcom/google/android/gms/internal/firebase-auth-api/m5;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/L0;

    return-object p0

    :pswitch_1
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/z1;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/z1;->o()Lcom/google/android/gms/internal/firebase-auth-api/B1;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/B1;->q()Lcom/google/android/gms/internal/firebase-auth-api/H1;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/H1;->o()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/s;->x(I)I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/s;->O(I)Ljava/security/spec/ECParameterSpec;

    move-result-object p0

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/x2;->h:Lcom/google/android/gms/internal/firebase-auth-api/x2;

    const-string v1, "EC"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/x2;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/KeyPairGenerator;

    invoke-virtual {v0, p0}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object p0

    invoke-virtual {p0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/ECPublicKey;

    invoke-virtual {p0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object p0

    check-cast p0, Ljava/security/interfaces/ECPrivateKey;

    invoke-interface {v0}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/F1;->o()Lcom/google/android/gms/internal/firebase-auth-api/E1;

    move-result-object v1

    iget-boolean v2, v1, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_6

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d()V

    iput-boolean v3, v1, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    :cond_6
    iget-object v2, v1, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d:Lcom/google/android/gms/internal/firebase-auth-api/m5;

    check-cast v2, Lcom/google/android/gms/internal/firebase-auth-api/F1;

    invoke-static {v2}, Lcom/google/android/gms/internal/firebase-auth-api/F1;->t(Lcom/google/android/gms/internal/firebase-auth-api/F1;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/z1;->o()Lcom/google/android/gms/internal/firebase-auth-api/B1;

    move-result-object p1

    iget-boolean v2, v1, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    if-eqz v2, :cond_7

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d()V

    iput-boolean v3, v1, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    :cond_7
    iget-object v2, v1, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d:Lcom/google/android/gms/internal/firebase-auth-api/m5;

    check-cast v2, Lcom/google/android/gms/internal/firebase-auth-api/F1;

    invoke-static {v2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/F1;->u(Lcom/google/android/gms/internal/firebase-auth-api/F1;Lcom/google/android/gms/internal/firebase-auth-api/B1;)V

    invoke-virtual {v0}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    array-length v2, p1

    invoke-static {p1, v3, v2}, Lcom/google/android/gms/internal/firebase-auth-api/Z4;->q([BII)Lcom/google/android/gms/internal/firebase-auth-api/Y4;

    move-result-object p1

    iget-boolean v2, v1, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    if-eqz v2, :cond_8

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d()V

    iput-boolean v3, v1, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    :cond_8
    iget-object v2, v1, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d:Lcom/google/android/gms/internal/firebase-auth-api/m5;

    check-cast v2, Lcom/google/android/gms/internal/firebase-auth-api/F1;

    invoke-static {v2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/F1;->v(Lcom/google/android/gms/internal/firebase-auth-api/F1;Lcom/google/android/gms/internal/firebase-auth-api/Y4;)V

    invoke-virtual {v0}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    array-length v0, p1

    invoke-static {p1, v3, v0}, Lcom/google/android/gms/internal/firebase-auth-api/Z4;->q([BII)Lcom/google/android/gms/internal/firebase-auth-api/Y4;

    move-result-object p1

    iget-boolean v0, v1, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    if-eqz v0, :cond_9

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d()V

    iput-boolean v3, v1, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    :cond_9
    iget-object v0, v1, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d:Lcom/google/android/gms/internal/firebase-auth-api/m5;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/F1;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/F1;->w(Lcom/google/android/gms/internal/firebase-auth-api/F1;Lcom/google/android/gms/internal/firebase-auth-api/Y4;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->b()Lcom/google/android/gms/internal/firebase-auth-api/m5;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/F1;

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/D1;->n()Lcom/google/android/gms/internal/firebase-auth-api/C1;

    move-result-object v0

    iget-boolean v1, v0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    if-eqz v1, :cond_a

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d()V

    iput-boolean v3, v0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    :cond_a
    iget-object v1, v0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d:Lcom/google/android/gms/internal/firebase-auth-api/m5;

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/D1;

    invoke-static {v1}, Lcom/google/android/gms/internal/firebase-auth-api/D1;->r(Lcom/google/android/gms/internal/firebase-auth-api/D1;)V

    iget-boolean v1, v0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    if-eqz v1, :cond_b

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d()V

    iput-boolean v3, v0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    :cond_b
    iget-object v1, v0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d:Lcom/google/android/gms/internal/firebase-auth-api/m5;

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/D1;

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/firebase-auth-api/D1;->s(Lcom/google/android/gms/internal/firebase-auth-api/D1;Lcom/google/android/gms/internal/firebase-auth-api/F1;)V

    invoke-interface {p0}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p0

    array-length p1, p0

    invoke-static {p0, v3, p1}, Lcom/google/android/gms/internal/firebase-auth-api/Z4;->q([BII)Lcom/google/android/gms/internal/firebase-auth-api/Y4;

    move-result-object p0

    iget-boolean p1, v0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    if-eqz p1, :cond_c

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d()V

    iput-boolean v3, v0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    :cond_c
    iget-object p1, v0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d:Lcom/google/android/gms/internal/firebase-auth-api/m5;

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/D1;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/D1;->t(Lcom/google/android/gms/internal/firebase-auth-api/D1;Lcom/google/android/gms/internal/firebase-auth-api/Y4;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->b()Lcom/google/android/gms/internal/firebase-auth-api/m5;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/D1;

    return-object p0

    :pswitch_2
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/r1;

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/p1;->n()Lcom/google/android/gms/internal/firebase-auth-api/o1;

    move-result-object p0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/r1;->m()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/C2;->a(I)[B

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/Z4;->q([BII)Lcom/google/android/gms/internal/firebase-auth-api/Y4;

    move-result-object p1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d()V

    iput-boolean v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d:Lcom/google/android/gms/internal/firebase-auth-api/m5;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/p1;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/p1;->r(Lcom/google/android/gms/internal/firebase-auth-api/p1;Lcom/google/android/gms/internal/firebase-auth-api/Y4;)V

    iget-boolean p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    if-eqz p1, :cond_e

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d()V

    iput-boolean v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    :cond_e
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d:Lcom/google/android/gms/internal/firebase-auth-api/m5;

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/p1;

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/p1;->q(Lcom/google/android/gms/internal/firebase-auth-api/p1;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->b()Lcom/google/android/gms/internal/firebase-auth-api/m5;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/p1;

    return-object p0

    :pswitch_3
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/n2;

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/m2;->n()Lcom/google/android/gms/internal/firebase-auth-api/l2;

    move-result-object p0

    iget-boolean p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_f

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d()V

    iput-boolean v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    :cond_f
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d:Lcom/google/android/gms/internal/firebase-auth-api/m5;

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/m2;

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/m2;->q(Lcom/google/android/gms/internal/firebase-auth-api/m2;)V

    const/16 p1, 0x20

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/C2;->a(I)[B

    move-result-object p1

    array-length v1, p1

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/Z4;->q([BII)Lcom/google/android/gms/internal/firebase-auth-api/Y4;

    move-result-object p1

    iget-boolean v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    if-eqz v1, :cond_10

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d()V

    iput-boolean v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d:Lcom/google/android/gms/internal/firebase-auth-api/m5;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/m2;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/m2;->r(Lcom/google/android/gms/internal/firebase-auth-api/m2;Lcom/google/android/gms/internal/firebase-auth-api/Y4;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->b()Lcom/google/android/gms/internal/firebase-auth-api/m5;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/m2;

    return-object p0

    :pswitch_4
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/j2;

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/i2;->n()Lcom/google/android/gms/internal/firebase-auth-api/h2;

    move-result-object p0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d()V

    iput-boolean v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    :cond_11
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d:Lcom/google/android/gms/internal/firebase-auth-api/m5;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/i2;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/i2;->r(Lcom/google/android/gms/internal/firebase-auth-api/i2;Lcom/google/android/gms/internal/firebase-auth-api/j2;)V

    iget-boolean p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    if-eqz p1, :cond_12

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d()V

    iput-boolean v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    :cond_12
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d:Lcom/google/android/gms/internal/firebase-auth-api/m5;

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/i2;

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/i2;->q(Lcom/google/android/gms/internal/firebase-auth-api/i2;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->b()Lcom/google/android/gms/internal/firebase-auth-api/m5;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/i2;

    return-object p0

    :pswitch_5
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/g2;

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/f2;->n()Lcom/google/android/gms/internal/firebase-auth-api/e2;

    move-result-object p0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d()V

    iput-boolean v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    :cond_13
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d:Lcom/google/android/gms/internal/firebase-auth-api/m5;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/f2;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/f2;->r(Lcom/google/android/gms/internal/firebase-auth-api/f2;Lcom/google/android/gms/internal/firebase-auth-api/g2;)V

    iget-boolean p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    if-eqz p1, :cond_14

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d()V

    iput-boolean v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    :cond_14
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d:Lcom/google/android/gms/internal/firebase-auth-api/m5;

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/f2;

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/f2;->q(Lcom/google/android/gms/internal/firebase-auth-api/f2;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->b()Lcom/google/android/gms/internal/firebase-auth-api/m5;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/f2;

    return-object p0

    :pswitch_6
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/v1;

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/t1;->n()Lcom/google/android/gms/internal/firebase-auth-api/s1;

    move-result-object p0

    iget-boolean p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_15

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d()V

    iput-boolean v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    :cond_15
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d:Lcom/google/android/gms/internal/firebase-auth-api/m5;

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/t1;

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/t1;->q(Lcom/google/android/gms/internal/firebase-auth-api/t1;)V

    const/16 p1, 0x20

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/C2;->a(I)[B

    move-result-object p1

    array-length v1, p1

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/Z4;->q([BII)Lcom/google/android/gms/internal/firebase-auth-api/Y4;

    move-result-object p1

    iget-boolean v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    if-eqz v1, :cond_16

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d()V

    iput-boolean v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    :cond_16
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d:Lcom/google/android/gms/internal/firebase-auth-api/m5;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/t1;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/t1;->r(Lcom/google/android/gms/internal/firebase-auth-api/t1;Lcom/google/android/gms/internal/firebase-auth-api/Y4;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->b()Lcom/google/android/gms/internal/firebase-auth-api/m5;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/t1;

    return-object p0

    :pswitch_7
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/n1;

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/l1;->n()Lcom/google/android/gms/internal/firebase-auth-api/k1;

    move-result-object p0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/n1;->m()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/C2;->a(I)[B

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/Z4;->q([BII)Lcom/google/android/gms/internal/firebase-auth-api/Y4;

    move-result-object p1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d()V

    iput-boolean v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    :cond_17
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d:Lcom/google/android/gms/internal/firebase-auth-api/m5;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/l1;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/l1;->r(Lcom/google/android/gms/internal/firebase-auth-api/l1;Lcom/google/android/gms/internal/firebase-auth-api/Y4;)V

    iget-boolean p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    if-eqz p1, :cond_18

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d()V

    iput-boolean v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    :cond_18
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d:Lcom/google/android/gms/internal/firebase-auth-api/m5;

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/l1;

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/l1;->q(Lcom/google/android/gms/internal/firebase-auth-api/l1;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->b()Lcom/google/android/gms/internal/firebase-auth-api/m5;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/l1;

    return-object p0

    :pswitch_8
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/j1;

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/h1;->n()Lcom/google/android/gms/internal/firebase-auth-api/g1;

    move-result-object p0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/j1;->m()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/C2;->a(I)[B

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/Z4;->q([BII)Lcom/google/android/gms/internal/firebase-auth-api/Y4;

    move-result-object p1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d()V

    iput-boolean v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    :cond_19
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d:Lcom/google/android/gms/internal/firebase-auth-api/m5;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/h1;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/h1;->r(Lcom/google/android/gms/internal/firebase-auth-api/h1;Lcom/google/android/gms/internal/firebase-auth-api/Y4;)V

    iget-boolean p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    if-eqz p1, :cond_1a

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d()V

    iput-boolean v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    :cond_1a
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d:Lcom/google/android/gms/internal/firebase-auth-api/m5;

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/h1;

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/h1;->q(Lcom/google/android/gms/internal/firebase-auth-api/h1;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->b()Lcom/google/android/gms/internal/firebase-auth-api/m5;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/h1;

    return-object p0

    :pswitch_9
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/d1;

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/b1;->n()Lcom/google/android/gms/internal/firebase-auth-api/a1;

    move-result-object p0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/d1;->m()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/C2;->a(I)[B

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/Z4;->q([BII)Lcom/google/android/gms/internal/firebase-auth-api/Y4;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    if-eqz v1, :cond_1b

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d()V

    iput-boolean v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    :cond_1b
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d:Lcom/google/android/gms/internal/firebase-auth-api/m5;

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/b1;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/b1;->t(Lcom/google/android/gms/internal/firebase-auth-api/b1;Lcom/google/android/gms/internal/firebase-auth-api/Y4;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/d1;->p()Lcom/google/android/gms/internal/firebase-auth-api/f1;

    move-result-object p1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    if-eqz v0, :cond_1c

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d()V

    iput-boolean v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    :cond_1c
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d:Lcom/google/android/gms/internal/firebase-auth-api/m5;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/b1;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/b1;->s(Lcom/google/android/gms/internal/firebase-auth-api/b1;Lcom/google/android/gms/internal/firebase-auth-api/f1;)V

    iget-boolean p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    if-eqz p1, :cond_1d

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d()V

    iput-boolean v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    :cond_1d
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d:Lcom/google/android/gms/internal/firebase-auth-api/m5;

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/b1;

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/b1;->r(Lcom/google/android/gms/internal/firebase-auth-api/b1;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->b()Lcom/google/android/gms/internal/firebase-auth-api/m5;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/b1;

    return-object p0

    :pswitch_a
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/X0;

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/q0;->f(Lcom/google/android/gms/internal/firebase-auth-api/X0;)Lcom/google/android/gms/internal/firebase-auth-api/V0;

    move-result-object p0

    return-object p0

    :pswitch_b
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/T0;

    new-instance p0, Lcom/google/android/gms/internal/firebase-auth-api/p0;

    const-class v0, Lcom/google/android/gms/internal/firebase-auth-api/y2;

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/p0;-><init>(ILjava/lang/Class;)V

    filled-new-array {p0}, [Lcom/google/android/gms/internal/firebase-auth-api/p0;

    move-result-object p0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const-string v3, "KeyTypeManager constructed with duplicate factories for primitive "

    if-gtz v2, :cond_20

    aget-object v4, p0, v2

    iget-object v5, v4, Lcom/google/android/gms/internal/firebase-auth-api/p0;->a:Ljava/lang/Class;

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    iget-object v6, v4, Lcom/google/android/gms/internal/firebase-auth-api/p0;->a:Ljava/lang/Class;

    if-eqz v5, :cond_1f

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v6}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1e
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1f
    invoke-virtual {v0, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_20
    aget-object p0, p0, v1

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/p0;->a:Ljava/lang/Class;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/T0;->o()Lcom/google/android/gms/internal/firebase-auth-api/X0;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/q0;->f(Lcom/google/android/gms/internal/firebase-auth-api/X0;)Lcom/google/android/gms/internal/firebase-auth-api/V0;

    move-result-object p0

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/p0;

    const-class v2, Lcom/google/android/gms/internal/firebase-auth-api/b0;

    const/16 v4, 0xd

    invoke-direct {v0, v4, v2}, Lcom/google/android/gms/internal/firebase-auth-api/p0;-><init>(ILjava/lang/Class;)V

    filled-new-array {v0}, [Lcom/google/android/gms/internal/firebase-auth-api/p0;

    move-result-object v0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move v4, v1

    :goto_2
    if-gtz v4, :cond_23

    aget-object v5, v0, v4

    iget-object v6, v5, Lcom/google/android/gms/internal/firebase-auth-api/p0;->a:Ljava/lang/Class;

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    iget-object v7, v5, Lcom/google/android/gms/internal/firebase-auth-api/p0;->a:Ljava/lang/Class;

    if-eqz v6, :cond_22

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v7}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_21

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_21
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_3
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_22
    invoke-virtual {v2, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_23
    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/p0;->a:Ljava/lang/Class;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/q0;

    const-class v2, Lcom/google/android/gms/internal/firebase-auth-api/N1;

    const/16 v3, 0xc

    invoke-direct {v0, v3, v2}, Lcom/google/android/gms/internal/firebase-auth-api/q0;-><init>(ILjava/lang/Class;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/T0;->p()Lcom/google/android/gms/internal/firebase-auth-api/N1;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/q0;->b(Lcom/google/android/gms/internal/firebase-auth-api/U4;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/R0;->n()Lcom/google/android/gms/internal/firebase-auth-api/Q0;

    move-result-object v0

    iget-boolean v2, v0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    if-eqz v2, :cond_24

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d()V

    iput-boolean v1, v0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    :cond_24
    iget-object v2, v0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d:Lcom/google/android/gms/internal/firebase-auth-api/m5;

    check-cast v2, Lcom/google/android/gms/internal/firebase-auth-api/R0;

    invoke-static {v2, p0}, Lcom/google/android/gms/internal/firebase-auth-api/R0;->s(Lcom/google/android/gms/internal/firebase-auth-api/R0;Lcom/google/android/gms/internal/firebase-auth-api/V0;)V

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/L1;

    iget-boolean p0, v0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    if-eqz p0, :cond_25

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d()V

    iput-boolean v1, v0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    :cond_25
    iget-object p0, v0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d:Lcom/google/android/gms/internal/firebase-auth-api/m5;

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/R0;

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/R0;->t(Lcom/google/android/gms/internal/firebase-auth-api/R0;Lcom/google/android/gms/internal/firebase-auth-api/L1;)V

    iget-boolean p0, v0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    if-eqz p0, :cond_26

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d()V

    iput-boolean v1, v0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    :cond_26
    iget-object p0, v0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d:Lcom/google/android/gms/internal/firebase-auth-api/m5;

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/R0;

    invoke-static {p0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/R0;->r(Lcom/google/android/gms/internal/firebase-auth-api/R0;I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->b()Lcom/google/android/gms/internal/firebase-auth-api/m5;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/R0;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public c()Ljava/util/Map;
    .locals 8

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/q0;->b:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/q0;->d()Ljava/util/Map;

    move-result-object p0

    return-object p0

    :pswitch_1
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const/16 v0, 0x20

    const/16 v1, 0x10

    const/4 v2, 0x4

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/z0;->u(IIII)Lcom/google/android/gms/internal/firebase-auth-api/W;

    move-result-object v4

    const-string v5, "HMAC_SHA256_128BITTAG"

    invoke-virtual {p0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x3

    invoke-static {v0, v1, v2, v4}, Lcom/google/android/gms/internal/firebase-auth-api/z0;->u(IIII)Lcom/google/android/gms/internal/firebase-auth-api/W;

    move-result-object v5

    const-string v6, "HMAC_SHA256_128BITTAG_RAW"

    invoke-virtual {p0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0, v0, v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/z0;->u(IIII)Lcom/google/android/gms/internal/firebase-auth-api/W;

    move-result-object v5

    const-string v6, "HMAC_SHA256_256BITTAG"

    invoke-virtual {p0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0, v0, v2, v4}, Lcom/google/android/gms/internal/firebase-auth-api/z0;->u(IIII)Lcom/google/android/gms/internal/firebase-auth-api/W;

    move-result-object v2

    const-string v5, "HMAC_SHA256_256BITTAG_RAW"

    invoke-virtual {p0, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x40

    const/4 v5, 0x5

    invoke-static {v2, v1, v5, v3}, Lcom/google/android/gms/internal/firebase-auth-api/z0;->u(IIII)Lcom/google/android/gms/internal/firebase-auth-api/W;

    move-result-object v6

    const-string v7, "HMAC_SHA512_128BITTAG"

    invoke-virtual {p0, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2, v1, v5, v4}, Lcom/google/android/gms/internal/firebase-auth-api/z0;->u(IIII)Lcom/google/android/gms/internal/firebase-auth-api/W;

    move-result-object v1

    const-string v6, "HMAC_SHA512_128BITTAG_RAW"

    invoke-virtual {p0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2, v0, v5, v3}, Lcom/google/android/gms/internal/firebase-auth-api/z0;->u(IIII)Lcom/google/android/gms/internal/firebase-auth-api/W;

    move-result-object v1

    const-string v6, "HMAC_SHA512_256BITTAG"

    invoke-virtual {p0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2, v0, v5, v4}, Lcom/google/android/gms/internal/firebase-auth-api/z0;->u(IIII)Lcom/google/android/gms/internal/firebase-auth-api/W;

    move-result-object v0

    const-string v1, "HMAC_SHA512_256BITTAG_RAW"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2, v2, v5, v3}, Lcom/google/android/gms/internal/firebase-auth-api/z0;->u(IIII)Lcom/google/android/gms/internal/firebase-auth-api/W;

    move-result-object v0

    const-string v1, "HMAC_SHA512_512BITTAG"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2, v2, v5, v4}, Lcom/google/android/gms/internal/firebase-auth-api/z0;->u(IIII)Lcom/google/android/gms/internal/firebase-auth-api/W;

    move-result-object v0

    const-string v1, "HMAC_SHA512_512BITTAG_RAW"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    :pswitch_2
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/W;

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/N0;->n()Lcom/google/android/gms/internal/firebase-auth-api/M0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/M0;->e()V

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/P0;->n()Lcom/google/android/gms/internal/firebase-auth-api/O0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/O0;->e()V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->b()Lcom/google/android/gms/internal/firebase-auth-api/m5;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/firebase-auth-api/P0;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/M0;->f(Lcom/google/android/gms/internal/firebase-auth-api/P0;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->b()Lcom/google/android/gms/internal/firebase-auth-api/m5;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/N0;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/W;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/m5;I)V

    const-string v1, "AES_CMAC"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/W;

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/N0;->n()Lcom/google/android/gms/internal/firebase-auth-api/M0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/M0;->e()V

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/P0;->n()Lcom/google/android/gms/internal/firebase-auth-api/O0;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/firebase-auth-api/O0;->e()V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->b()Lcom/google/android/gms/internal/firebase-auth-api/m5;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/firebase-auth-api/P0;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/firebase-auth-api/M0;->f(Lcom/google/android/gms/internal/firebase-auth-api/P0;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->b()Lcom/google/android/gms/internal/firebase-auth-api/m5;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/N0;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/W;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/m5;I)V

    const-string v1, "AES256_CMAC"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/W;

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/N0;->n()Lcom/google/android/gms/internal/firebase-auth-api/M0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/M0;->e()V

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/P0;->n()Lcom/google/android/gms/internal/firebase-auth-api/O0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/O0;->e()V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->b()Lcom/google/android/gms/internal/firebase-auth-api/m5;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/firebase-auth-api/P0;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/M0;->f(Lcom/google/android/gms/internal/firebase-auth-api/P0;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->b()Lcom/google/android/gms/internal/firebase-auth-api/m5;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/N0;

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/W;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/m5;I)V

    const-string v1, "AES256_CMAC_RAW"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    :pswitch_3
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "AES128_GCM"

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/s;->c(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/V;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/y0;->f:[B

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-static {v3, v1, v2, v4}, Lcom/google/android/gms/internal/firebase-auth-api/y0;->w(ILcom/google/android/gms/internal/firebase-auth-api/V;[BI)Lcom/google/android/gms/internal/firebase-auth-api/W;

    move-result-object v1

    const-string v5, "ECIES_P256_HKDF_HMAC_SHA256_AES128_GCM"

    invoke-virtual {p0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/s;->c(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/V;

    move-result-object v1

    const/4 v5, 0x3

    invoke-static {v3, v1, v2, v5}, Lcom/google/android/gms/internal/firebase-auth-api/y0;->w(ILcom/google/android/gms/internal/firebase-auth-api/V;[BI)Lcom/google/android/gms/internal/firebase-auth-api/W;

    move-result-object v1

    const-string v6, "ECIES_P256_HKDF_HMAC_SHA256_AES128_GCM_RAW"

    invoke-virtual {p0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/s;->c(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/V;

    move-result-object v1

    invoke-static {v5, v1, v2, v4}, Lcom/google/android/gms/internal/firebase-auth-api/y0;->w(ILcom/google/android/gms/internal/firebase-auth-api/V;[BI)Lcom/google/android/gms/internal/firebase-auth-api/W;

    move-result-object v1

    const-string v6, "ECIES_P256_COMPRESSED_HKDF_HMAC_SHA256_AES128_GCM"

    invoke-virtual {p0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/s;->c(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/V;

    move-result-object v1

    invoke-static {v5, v1, v2, v5}, Lcom/google/android/gms/internal/firebase-auth-api/y0;->w(ILcom/google/android/gms/internal/firebase-auth-api/V;[BI)Lcom/google/android/gms/internal/firebase-auth-api/W;

    move-result-object v1

    const-string v6, "ECIES_P256_COMPRESSED_HKDF_HMAC_SHA256_AES128_GCM_RAW"

    invoke-virtual {p0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/s;->c(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/V;

    move-result-object v0

    invoke-static {v5, v0, v2, v5}, Lcom/google/android/gms/internal/firebase-auth-api/y0;->w(ILcom/google/android/gms/internal/firebase-auth-api/V;[BI)Lcom/google/android/gms/internal/firebase-auth-api/W;

    move-result-object v0

    const-string v1, "ECIES_P256_HKDF_HMAC_SHA256_AES128_GCM_COMPRESSED_WITHOUT_PREFIX"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "AES128_CTR_HMAC_SHA256"

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/s;->c(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/V;

    move-result-object v1

    invoke-static {v3, v1, v2, v4}, Lcom/google/android/gms/internal/firebase-auth-api/y0;->w(ILcom/google/android/gms/internal/firebase-auth-api/V;[BI)Lcom/google/android/gms/internal/firebase-auth-api/W;

    move-result-object v1

    const-string v6, "ECIES_P256_HKDF_HMAC_SHA256_AES128_CTR_HMAC_SHA256"

    invoke-virtual {p0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/s;->c(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/V;

    move-result-object v1

    invoke-static {v3, v1, v2, v5}, Lcom/google/android/gms/internal/firebase-auth-api/y0;->w(ILcom/google/android/gms/internal/firebase-auth-api/V;[BI)Lcom/google/android/gms/internal/firebase-auth-api/W;

    move-result-object v1

    const-string v3, "ECIES_P256_HKDF_HMAC_SHA256_AES128_CTR_HMAC_SHA256_RAW"

    invoke-virtual {p0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/s;->c(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/V;

    move-result-object v1

    invoke-static {v5, v1, v2, v4}, Lcom/google/android/gms/internal/firebase-auth-api/y0;->w(ILcom/google/android/gms/internal/firebase-auth-api/V;[BI)Lcom/google/android/gms/internal/firebase-auth-api/W;

    move-result-object v1

    const-string v3, "ECIES_P256_COMPRESSED_HKDF_HMAC_SHA256_AES128_CTR_HMAC_SHA256"

    invoke-virtual {p0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/s;->c(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/V;

    move-result-object v0

    invoke-static {v5, v0, v2, v5}, Lcom/google/android/gms/internal/firebase-auth-api/y0;->w(ILcom/google/android/gms/internal/firebase-auth-api/V;[BI)Lcom/google/android/gms/internal/firebase-auth-api/W;

    move-result-object v0

    const-string v1, "ECIES_P256_COMPRESSED_HKDF_HMAC_SHA256_AES128_CTR_HMAC_SHA256_RAW"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    :pswitch_4
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/W;

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/r1;->n()Lcom/google/android/gms/internal/firebase-auth-api/q1;

    move-result-object v1

    iget-boolean v2, v1, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d()V

    iput-boolean v3, v1, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    :cond_0
    iget-object v2, v1, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d:Lcom/google/android/gms/internal/firebase-auth-api/m5;

    check-cast v2, Lcom/google/android/gms/internal/firebase-auth-api/r1;

    invoke-static {v2}, Lcom/google/android/gms/internal/firebase-auth-api/r1;->p(Lcom/google/android/gms/internal/firebase-auth-api/r1;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->b()Lcom/google/android/gms/internal/firebase-auth-api/m5;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/r1;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/W;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/m5;I)V

    const-string v1, "AES256_SIV"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/W;

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/r1;->n()Lcom/google/android/gms/internal/firebase-auth-api/q1;

    move-result-object v1

    iget-boolean v2, v1, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d()V

    iput-boolean v3, v1, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    :cond_1
    iget-object v2, v1, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d:Lcom/google/android/gms/internal/firebase-auth-api/m5;

    check-cast v2, Lcom/google/android/gms/internal/firebase-auth-api/r1;

    invoke-static {v2}, Lcom/google/android/gms/internal/firebase-auth-api/r1;->p(Lcom/google/android/gms/internal/firebase-auth-api/r1;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->b()Lcom/google/android/gms/internal/firebase-auth-api/m5;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/r1;

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/W;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/m5;I)V

    const-string v1, "AES256_SIV_RAW"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    :pswitch_5
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/W;

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/n2;->m()Lcom/google/android/gms/internal/firebase-auth-api/n2;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/W;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/m5;I)V

    const-string v1, "XCHACHA20_POLY1305"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/W;

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/n2;->m()Lcom/google/android/gms/internal/firebase-auth-api/n2;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/W;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/m5;I)V

    const-string v1, "XCHACHA20_POLY1305_RAW"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    :pswitch_6
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/W;

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/v1;->m()Lcom/google/android/gms/internal/firebase-auth-api/v1;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/W;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/m5;I)V

    const-string v1, "CHACHA20_POLY1305"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/W;

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/v1;->m()Lcom/google/android/gms/internal/firebase-auth-api/v1;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/W;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/m5;I)V

    const-string v1, "CHACHA20_POLY1305_RAW"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    :pswitch_7
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const/16 v0, 0x10

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/y0;->v(II)Lcom/google/android/gms/internal/firebase-auth-api/W;

    move-result-object v2

    const-string v3, "AES128_GCM_SIV"

    invoke-virtual {p0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x3

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/y0;->v(II)Lcom/google/android/gms/internal/firebase-auth-api/W;

    move-result-object v0

    const-string v3, "AES128_GCM_SIV_RAW"

    invoke-virtual {p0, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x20

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/y0;->v(II)Lcom/google/android/gms/internal/firebase-auth-api/W;

    move-result-object v1

    const-string v3, "AES256_GCM_SIV"

    invoke-virtual {p0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/y0;->v(II)Lcom/google/android/gms/internal/firebase-auth-api/W;

    move-result-object v0

    const-string v1, "AES256_GCM_SIV_RAW"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    :pswitch_8
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const/16 v0, 0x10

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/z0;->t(II)Lcom/google/android/gms/internal/firebase-auth-api/W;

    move-result-object v2

    const-string v3, "AES128_GCM"

    invoke-virtual {p0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x3

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/z0;->t(II)Lcom/google/android/gms/internal/firebase-auth-api/W;

    move-result-object v0

    const-string v3, "AES128_GCM_RAW"

    invoke-virtual {p0, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x20

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/z0;->t(II)Lcom/google/android/gms/internal/firebase-auth-api/W;

    move-result-object v1

    const-string v3, "AES256_GCM"

    invoke-virtual {p0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/z0;->t(II)Lcom/google/android/gms/internal/firebase-auth-api/W;

    move-result-object v0

    const-string v1, "AES256_GCM_RAW"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    :pswitch_9
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const/16 v0, 0x10

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/y0;->t(II)Lcom/google/android/gms/internal/firebase-auth-api/W;

    move-result-object v2

    const-string v3, "AES128_EAX"

    invoke-virtual {p0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x3

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/y0;->t(II)Lcom/google/android/gms/internal/firebase-auth-api/W;

    move-result-object v0

    const-string v3, "AES128_EAX_RAW"

    invoke-virtual {p0, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x20

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/y0;->t(II)Lcom/google/android/gms/internal/firebase-auth-api/W;

    move-result-object v1

    const-string v3, "AES256_EAX"

    invoke-virtual {p0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/y0;->t(II)Lcom/google/android/gms/internal/firebase-auth-api/W;

    move-result-object v0

    const-string v1, "AES256_EAX_RAW"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    :pswitch_a
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const/16 v0, 0x10

    const/4 v1, 0x1

    invoke-static {v0, v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/y0;->u(III)Lcom/google/android/gms/internal/firebase-auth-api/W;

    move-result-object v2

    const-string v3, "AES128_CTR_HMAC_SHA256"

    invoke-virtual {p0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x3

    invoke-static {v0, v0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/y0;->u(III)Lcom/google/android/gms/internal/firebase-auth-api/W;

    move-result-object v0

    const-string v3, "AES128_CTR_HMAC_SHA256_RAW"

    invoke-virtual {p0, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x20

    invoke-static {v0, v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/y0;->u(III)Lcom/google/android/gms/internal/firebase-auth-api/W;

    move-result-object v1

    const-string v3, "AES256_CTR_HMAC_SHA256"

    invoke-virtual {p0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0, v0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/y0;->u(III)Lcom/google/android/gms/internal/firebase-auth-api/W;

    move-result-object v0

    const-string v1, "AES256_CTR_HMAC_SHA256_RAW"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final d()Ljava/util/Map;
    .locals 0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public final e(Lcom/google/android/gms/internal/firebase-auth-api/U4;)V
    .locals 8

    iget p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/q0;->b:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/N1;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/N1;->m()I

    move-result p0

    const/16 v0, 0x10

    if-lt p0, v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/N1;->q()Lcom/google/android/gms/internal/firebase-auth-api/P1;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/z0;->w(Lcom/google/android/gms/internal/firebase-auth-api/P1;)V

    return-void

    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "key too short"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/N0;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/N0;->p()Lcom/google/android/gms/internal/firebase-auth-api/P0;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/y0;->x(Lcom/google/android/gms/internal/firebase-auth-api/P0;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/N0;->m()I

    move-result p0

    const/16 p1, 0x20

    if-ne p0, p1, :cond_1

    return-void

    :cond_1
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "AesCmacKey size wrong, must be 32 bytes"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/z1;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/z1;->o()Lcom/google/android/gms/internal/firebase-auth-api/B1;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/s;->s(Lcom/google/android/gms/internal/firebase-auth-api/B1;)V

    return-void

    :pswitch_2
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/r1;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/r1;->m()I

    move-result p0

    const/16 v0, 0x40

    if-ne p0, v0, :cond_2

    return-void

    :cond_2
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/r1;->m()I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x3d

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "invalid key size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ". Valid keys must have 64 bytes."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_3
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/n2;

    return-void

    :pswitch_4
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/j2;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/j2;->p()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/j2;->q()Z

    move-result p0

    if-eqz p0, :cond_3

    return-void

    :cond_3
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "invalid key format: missing KEK URI or DEK template"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_5
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/g2;

    return-void

    :pswitch_6
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/v1;

    return-void

    :pswitch_7
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/n1;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/n1;->m()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/D2;->b(I)V

    return-void

    :pswitch_8
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/j1;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/j1;->m()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/D2;->b(I)V

    return-void

    :pswitch_9
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/d1;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/d1;->m()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/D2;->b(I)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/d1;->p()Lcom/google/android/gms/internal/firebase-auth-api/f1;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/f1;->m()I

    move-result p0

    const/16 v0, 0xc

    if-eq p0, v0, :cond_5

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/d1;->p()Lcom/google/android/gms/internal/firebase-auth-api/f1;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/f1;->m()I

    move-result p0

    const/16 p1, 0x10

    if-ne p0, p1, :cond_4

    goto :goto_0

    :cond_4
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "invalid IV size; acceptable values have 12 or 16 bytes"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_0
    return-void

    :pswitch_a
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/X0;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/X0;->m()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/D2;->b(I)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/X0;->q()Lcom/google/android/gms/internal/firebase-auth-api/Z0;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/Z0;->m()I

    move-result p1

    const/16 v0, 0xc

    if-lt p1, v0, :cond_6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/Z0;->m()I

    move-result p0

    const/16 p1, 0x10

    if-gt p0, p1, :cond_6

    return-void

    :cond_6
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "invalid IV size"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_b
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/T0;

    new-instance p0, Lcom/google/android/gms/internal/firebase-auth-api/p0;

    const-class v0, Lcom/google/android/gms/internal/firebase-auth-api/y2;

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/p0;-><init>(ILjava/lang/Class;)V

    filled-new-array {p0}, [Lcom/google/android/gms/internal/firebase-auth-api/p0;

    move-result-object p0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    const-string v3, "KeyTypeManager constructed with duplicate factories for primitive "

    if-gtz v2, :cond_9

    aget-object v4, p0, v2

    iget-object v5, v4, Lcom/google/android/gms/internal/firebase-auth-api/p0;->a:Ljava/lang/Class;

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    iget-object v6, v4, Lcom/google/android/gms/internal/firebase-auth-api/p0;->a:Ljava/lang/Class;

    if-eqz v5, :cond_8

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v6}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_7
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    invoke-virtual {v0, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_9
    aget-object p0, p0, v1

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/p0;->a:Ljava/lang/Class;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/T0;->o()Lcom/google/android/gms/internal/firebase-auth-api/X0;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/X0;->m()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/D2;->b(I)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/X0;->q()Lcom/google/android/gms/internal/firebase-auth-api/Z0;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/Z0;->m()I

    move-result v0

    const/16 v2, 0xc

    if-lt v0, v2, :cond_e

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/Z0;->m()I

    move-result p0

    const/16 v0, 0x10

    if-gt p0, v0, :cond_e

    new-instance p0, Lcom/google/android/gms/internal/firebase-auth-api/p0;

    const-class v2, Lcom/google/android/gms/internal/firebase-auth-api/b0;

    const/16 v4, 0xd

    invoke-direct {p0, v4, v2}, Lcom/google/android/gms/internal/firebase-auth-api/p0;-><init>(ILjava/lang/Class;)V

    filled-new-array {p0}, [Lcom/google/android/gms/internal/firebase-auth-api/p0;

    move-result-object p0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move v4, v1

    :goto_3
    if-gtz v4, :cond_c

    aget-object v5, p0, v4

    iget-object v6, v5, Lcom/google/android/gms/internal/firebase-auth-api/p0;->a:Ljava/lang/Class;

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    iget-object v7, v5, Lcom/google/android/gms/internal/firebase-auth-api/p0;->a:Ljava/lang/Class;

    if-eqz v6, :cond_b

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v7}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_a
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_4
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    invoke-virtual {v2, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_c
    aget-object p0, p0, v1

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/p0;->a:Ljava/lang/Class;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/T0;->p()Lcom/google/android/gms/internal/firebase-auth-api/N1;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/N1;->m()I

    move-result v1

    if-lt v1, v0, :cond_d

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/N1;->q()Lcom/google/android/gms/internal/firebase-auth-api/P1;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/z0;->w(Lcom/google/android/gms/internal/firebase-auth-api/P1;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/T0;->o()Lcom/google/android/gms/internal/firebase-auth-api/X0;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/X0;->m()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/D2;->b(I)V

    return-void

    :cond_d
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "key too short"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_e
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "invalid IV size"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
