.class public final Lb2/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public final c:Ljava/io/Serializable;

.field public final d:Ljava/lang/Object;

.field public final e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/U1;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/U1;->q()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lb2/b;->c:Ljava/io/Serializable;

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/l0;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/U1;->p()Lcom/google/android/gms/internal/firebase-auth-api/Z4;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/g5;->a()Lcom/google/android/gms/internal/firebase-auth-api/g5;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/j1;->o(Lcom/google/android/gms/internal/firebase-auth-api/Z4;Lcom/google/android/gms/internal/firebase-auth-api/g5;)Lcom/google/android/gms/internal/firebase-auth-api/j1;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/j0;->b(Lcom/google/android/gms/internal/firebase-auth-api/U1;)Lcom/google/android/gms/internal/firebase-auth-api/U4;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/h1;

    iput-object p1, p0, Lb2/b;->d:Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/j1;->m()I

    move-result p1

    iput p1, p0, Lb2/b;->a:I
    :try_end_0
    .catch Lcom/google/android/gms/internal/firebase-auth-api/f; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "invalid KeyFormat protobuf, expected AesGcmKeyFormat"

    invoke-direct {p1, v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/l0;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "invalid KeyFormat protobuf, expected AesCtrHmacAeadKeyFormat"

    if-eqz v1, :cond_1

    :try_start_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/U1;->p()Lcom/google/android/gms/internal/firebase-auth-api/Z4;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/g5;->a()Lcom/google/android/gms/internal/firebase-auth-api/g5;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/T0;->n(Lcom/google/android/gms/internal/firebase-auth-api/Z4;Lcom/google/android/gms/internal/firebase-auth-api/g5;)Lcom/google/android/gms/internal/firebase-auth-api/T0;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/j0;->b(Lcom/google/android/gms/internal/firebase-auth-api/U1;)Lcom/google/android/gms/internal/firebase-auth-api/U4;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/R0;

    iput-object p1, p0, Lb2/b;->e:Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/T0;->o()Lcom/google/android/gms/internal/firebase-auth-api/X0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/X0;->m()I

    move-result p1

    iput p1, p0, Lb2/b;->b:I

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/T0;->p()Lcom/google/android/gms/internal/firebase-auth-api/N1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/N1;->m()I

    move-result v0

    add-int/2addr p1, v0

    iput p1, p0, Lb2/b;->a:I
    :try_end_1
    .catch Lcom/google/android/gms/internal/firebase-auth-api/f; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p0

    new-instance p1, Ljava/security/GeneralSecurityException;

    invoke-direct {p1, v2, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/v0;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :try_start_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/U1;->p()Lcom/google/android/gms/internal/firebase-auth-api/Z4;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/g5;->a()Lcom/google/android/gms/internal/firebase-auth-api/g5;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/r1;->o(Lcom/google/android/gms/internal/firebase-auth-api/Z4;Lcom/google/android/gms/internal/firebase-auth-api/g5;)Lcom/google/android/gms/internal/firebase-auth-api/r1;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/j0;->b(Lcom/google/android/gms/internal/firebase-auth-api/U1;)Lcom/google/android/gms/internal/firebase-auth-api/U4;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/p1;

    iput-object p1, p0, Lb2/b;->f:Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/r1;->m()I

    move-result p1

    iput p1, p0, Lb2/b;->a:I
    :try_end_2
    .catch Lcom/google/android/gms/internal/firebase-auth-api/f; {:try_start_2 .. :try_end_2} :catch_2

    return-void

    :catch_2
    move-exception p0

    new-instance p1, Ljava/security/GeneralSecurityException;

    invoke-direct {p1, v2, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_2
    new-instance p0, Ljava/security/GeneralSecurityException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "unsupported AEAD DEM key type: "

    if-eqz v0, :cond_3

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Ljava/lang/Class;[Ljava/lang/Class;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lb2/b;->c:Ljava/io/Serializable;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lb2/b;->d:Ljava/lang/Object;

    const/4 v1, 0x0

    iput v1, p0, Lb2/b;->a:I

    iput v1, p0, Lb2/b;->b:I

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lb2/b;->e:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    array-length p1, p2

    :goto_0
    if-ge v1, p1, :cond_0

    aget-object v0, p2, v1

    const-string v2, "Null interface"

    invoke-static {v2, v0}, Li3/x;->q(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lb2/b;->c:Ljava/io/Serializable;

    check-cast p0, Ljava/util/HashSet;

    invoke-static {p0, p2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public a(Lb2/l;)V
    .locals 2

    iget-object v0, p0, Lb2/b;->c:Ljava/io/Serializable;

    check-cast v0, Ljava/util/HashSet;

    iget-object v1, p1, Lb2/l;->a:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object p0, p0, Lb2/b;->d:Ljava/lang/Object;

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Components are not allowed to depend on interfaces they themselves provide."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public b()Lb2/c;
    .locals 8

    iget-object v0, p0, Lb2/b;->f:Ljava/lang/Object;

    check-cast v0, Lb2/f;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    new-instance v0, Lb2/c;

    new-instance v2, Ljava/util/HashSet;

    iget-object v1, p0, Lb2/b;->c:Ljava/io/Serializable;

    check-cast v1, Ljava/util/HashSet;

    invoke-direct {v2, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v3, Ljava/util/HashSet;

    iget-object v1, p0, Lb2/b;->d:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashSet;

    invoke-direct {v3, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget v4, p0, Lb2/b;->a:I

    iget v5, p0, Lb2/b;->b:I

    iget-object v1, p0, Lb2/b;->f:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Lb2/f;

    iget-object p0, p0, Lb2/b;->e:Ljava/lang/Object;

    move-object v7, p0

    check-cast v7, Ljava/util/HashSet;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lb2/c;-><init>(Ljava/util/HashSet;Ljava/util/HashSet;IILb2/f;Ljava/util/HashSet;)V

    return-object v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Missing required property: factory."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
