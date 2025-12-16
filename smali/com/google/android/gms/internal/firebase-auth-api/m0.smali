.class public abstract Lcom/google/android/gms/internal/firebase-auth-api/m0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/android/gms/internal/firebase-auth-api/U1;

.field public static final b:Lcom/google/android/gms/internal/firebase-auth-api/U1;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/16 v0, 0x10

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/m0;->c(I)Lcom/google/android/gms/internal/firebase-auth-api/U1;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/firebase-auth-api/m0;->a:Lcom/google/android/gms/internal/firebase-auth-api/U1;

    const/16 v1, 0x20

    invoke-static {v1}, Lcom/google/android/gms/internal/firebase-auth-api/m0;->c(I)Lcom/google/android/gms/internal/firebase-auth-api/U1;

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/m0;->b(I)V

    invoke-static {v1}, Lcom/google/android/gms/internal/firebase-auth-api/m0;->b(I)V

    invoke-static {v0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/m0;->a(II)Lcom/google/android/gms/internal/firebase-auth-api/U1;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/m0;->b:Lcom/google/android/gms/internal/firebase-auth-api/U1;

    invoke-static {v1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/m0;->a(II)Lcom/google/android/gms/internal/firebase-auth-api/U1;

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/U1;->m()Lcom/google/android/gms/internal/firebase-auth-api/T1;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/p0;

    const-class v2, Lcom/google/android/gms/internal/firebase-auth-api/Q;

    const/4 v3, 0x5

    invoke-direct {v1, v3, v2}, Lcom/google/android/gms/internal/firebase-auth-api/p0;-><init>(ILjava/lang/Class;)V

    filled-new-array {v1}, [Lcom/google/android/gms/internal/firebase-auth-api/p0;

    move-result-object v1

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    const-string v6, "KeyTypeManager constructed with duplicate factories for primitive "

    if-gtz v5, :cond_2

    aget-object v7, v1, v5

    iget-object v8, v7, Lcom/google/android/gms/internal/firebase-auth-api/p0;->a:Ljava/lang/Class;

    invoke-virtual {v3, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    iget-object v9, v7, Lcom/google/android/gms/internal/firebase-auth-api/p0;->a:Ljava/lang/Class;

    if-eqz v8, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v9}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v6, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {v3, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    aget-object v1, v1, v4

    iget-object v1, v1, Lcom/google/android/gms/internal/firebase-auth-api/p0;->a:Ljava/lang/Class;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    const-string v1, "type.googleapis.com/google.crypto.tink.ChaCha20Poly1305Key"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/T1;->f(Ljava/lang/String;)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/T1;->e(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->b()Lcom/google/android/gms/internal/firebase-auth-api/m5;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/U1;

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/U1;->m()Lcom/google/android/gms/internal/firebase-auth-api/T1;

    move-result-object v0

    new-instance v3, Lcom/google/android/gms/internal/firebase-auth-api/p0;

    const/16 v5, 0x8

    invoke-direct {v3, v5, v2}, Lcom/google/android/gms/internal/firebase-auth-api/p0;-><init>(ILjava/lang/Class;)V

    filled-new-array {v3}, [Lcom/google/android/gms/internal/firebase-auth-api/p0;

    move-result-object v2

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move v5, v4

    :goto_2
    if-gtz v5, :cond_5

    aget-object v7, v2, v5

    iget-object v8, v7, Lcom/google/android/gms/internal/firebase-auth-api/p0;->a:Ljava/lang/Class;

    invoke-virtual {v3, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    iget-object v9, v7, Lcom/google/android/gms/internal/firebase-auth-api/p0;->a:Ljava/lang/Class;

    if-eqz v8, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v9}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v6, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_3
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_3
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-virtual {v3, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_5
    aget-object v2, v2, v4

    iget-object v2, v2, Lcom/google/android/gms/internal/firebase-auth-api/p0;->a:Ljava/lang/Class;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    const-string v2, "type.googleapis.com/google.crypto.tink.XChaCha20Poly1305Key"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/T1;->f(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/T1;->e(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->b()Lcom/google/android/gms/internal/firebase-auth-api/m5;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/U1;

    return-void
.end method

.method public static a(II)Lcom/google/android/gms/internal/firebase-auth-api/U1;
    .locals 6

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/X0;->n()Lcom/google/android/gms/internal/firebase-auth-api/W0;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/Z0;->n()Lcom/google/android/gms/internal/firebase-auth-api/Y0;

    move-result-object v1

    iget-boolean v2, v1, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d()V

    iput-boolean v3, v1, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    :cond_0
    iget-object v2, v1, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d:Lcom/google/android/gms/internal/firebase-auth-api/m5;

    check-cast v2, Lcom/google/android/gms/internal/firebase-auth-api/Z0;

    invoke-static {v2}, Lcom/google/android/gms/internal/firebase-auth-api/Z0;->p(Lcom/google/android/gms/internal/firebase-auth-api/Z0;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->b()Lcom/google/android/gms/internal/firebase-auth-api/m5;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/Z0;

    iget-boolean v2, v0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d()V

    iput-boolean v3, v0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    :cond_1
    iget-object v2, v0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d:Lcom/google/android/gms/internal/firebase-auth-api/m5;

    check-cast v2, Lcom/google/android/gms/internal/firebase-auth-api/X0;

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/X0;->r(Lcom/google/android/gms/internal/firebase-auth-api/X0;Lcom/google/android/gms/internal/firebase-auth-api/Z0;)V

    iget-boolean v1, v0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d()V

    iput-boolean v3, v0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    :cond_2
    iget-object v1, v0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d:Lcom/google/android/gms/internal/firebase-auth-api/m5;

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/X0;

    invoke-static {v1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/X0;->s(Lcom/google/android/gms/internal/firebase-auth-api/X0;I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->b()Lcom/google/android/gms/internal/firebase-auth-api/m5;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/X0;

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/N1;->n()Lcom/google/android/gms/internal/firebase-auth-api/M1;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/P1;->o()Lcom/google/android/gms/internal/firebase-auth-api/O1;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/O1;->e(I)V

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/firebase-auth-api/O1;->f(I)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->b()Lcom/google/android/gms/internal/firebase-auth-api/m5;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/P1;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/M1;->f(Lcom/google/android/gms/internal/firebase-auth-api/P1;)V

    const/16 p1, 0x20

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/M1;->e(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->b()Lcom/google/android/gms/internal/firebase-auth-api/m5;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/N1;

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/T0;->m()Lcom/google/android/gms/internal/firebase-auth-api/S0;

    move-result-object v0

    iget-boolean v1, v0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d()V

    iput-boolean v3, v0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    :cond_3
    iget-object v1, v0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d:Lcom/google/android/gms/internal/firebase-auth-api/m5;

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/T0;

    invoke-static {v1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/T0;->q(Lcom/google/android/gms/internal/firebase-auth-api/T0;Lcom/google/android/gms/internal/firebase-auth-api/X0;)V

    iget-boolean p0, v0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    if-eqz p0, :cond_4

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d()V

    iput-boolean v3, v0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    :cond_4
    iget-object p0, v0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d:Lcom/google/android/gms/internal/firebase-auth-api/m5;

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/T0;

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/T0;->r(Lcom/google/android/gms/internal/firebase-auth-api/T0;Lcom/google/android/gms/internal/firebase-auth-api/N1;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->b()Lcom/google/android/gms/internal/firebase-auth-api/m5;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/T0;

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/U1;->m()Lcom/google/android/gms/internal/firebase-auth-api/T1;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/U4;->b()Lcom/google/android/gms/internal/firebase-auth-api/Y4;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/T1;->g(Lcom/google/android/gms/internal/firebase-auth-api/Y4;)V

    new-instance p0, Lcom/google/android/gms/internal/firebase-auth-api/p0;

    const-class v0, Lcom/google/android/gms/internal/firebase-auth-api/Q;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/p0;-><init>(ILjava/lang/Class;)V

    filled-new-array {p0}, [Lcom/google/android/gms/internal/firebase-auth-api/p0;

    move-result-object p0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move v1, v3

    :goto_0
    if-gtz v1, :cond_7

    aget-object v2, p0, v1

    iget-object v4, v2, Lcom/google/android/gms/internal/firebase-auth-api/p0;->a:Ljava/lang/Class;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    iget-object v5, v2, Lcom/google/android/gms/internal/firebase-auth-api/p0;->a:Ljava/lang/Class;

    if-eqz v4, :cond_6

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "KeyTypeManager constructed with duplicate factories for primitive "

    if-eqz v0, :cond_5

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_5
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    invoke-virtual {v0, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    aget-object p0, p0, v3

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/p0;->a:Ljava/lang/Class;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    const-string p0, "type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey"

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/T1;->f(Ljava/lang/String;)V

    const/4 p0, 0x2

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/T1;->e(I)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->b()Lcom/google/android/gms/internal/firebase-auth-api/m5;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/U1;

    return-object p0
.end method

.method public static b(I)V
    .locals 7

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/d1;->n()Lcom/google/android/gms/internal/firebase-auth-api/c1;

    move-result-object v0

    iget-boolean v1, v0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d()V

    iput-boolean v2, v0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d:Lcom/google/android/gms/internal/firebase-auth-api/m5;

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/d1;

    invoke-static {v1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/d1;->r(Lcom/google/android/gms/internal/firebase-auth-api/d1;I)V

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/f1;->n()Lcom/google/android/gms/internal/firebase-auth-api/e1;

    move-result-object p0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d()V

    iput-boolean v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d:Lcom/google/android/gms/internal/firebase-auth-api/m5;

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/f1;

    invoke-static {v1}, Lcom/google/android/gms/internal/firebase-auth-api/f1;->p(Lcom/google/android/gms/internal/firebase-auth-api/f1;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->b()Lcom/google/android/gms/internal/firebase-auth-api/m5;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/f1;

    iget-boolean v1, v0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d()V

    iput-boolean v2, v0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    :cond_2
    iget-object v1, v0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d:Lcom/google/android/gms/internal/firebase-auth-api/m5;

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/d1;

    invoke-static {v1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/d1;->q(Lcom/google/android/gms/internal/firebase-auth-api/d1;Lcom/google/android/gms/internal/firebase-auth-api/f1;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->b()Lcom/google/android/gms/internal/firebase-auth-api/m5;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/d1;

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/U1;->m()Lcom/google/android/gms/internal/firebase-auth-api/T1;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/U4;->b()Lcom/google/android/gms/internal/firebase-auth-api/Y4;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/T1;->g(Lcom/google/android/gms/internal/firebase-auth-api/Y4;)V

    new-instance p0, Lcom/google/android/gms/internal/firebase-auth-api/p0;

    const-class v1, Lcom/google/android/gms/internal/firebase-auth-api/Q;

    const/4 v3, 0x2

    invoke-direct {p0, v3, v1}, Lcom/google/android/gms/internal/firebase-auth-api/p0;-><init>(ILjava/lang/Class;)V

    filled-new-array {p0}, [Lcom/google/android/gms/internal/firebase-auth-api/p0;

    move-result-object p0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move v3, v2

    :goto_0
    if-gtz v3, :cond_5

    aget-object v4, p0, v3

    iget-object v5, v4, Lcom/google/android/gms/internal/firebase-auth-api/p0;->a:Ljava/lang/Class;

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    iget-object v6, v4, Lcom/google/android/gms/internal/firebase-auth-api/p0;->a:Ljava/lang/Class;

    if-eqz v5, :cond_4

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v6}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "KeyTypeManager constructed with duplicate factories for primitive "

    if-eqz v1, :cond_3

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    invoke-virtual {v1, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    aget-object p0, p0, v2

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/p0;->a:Ljava/lang/Class;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    const-string p0, "type.googleapis.com/google.crypto.tink.AesEaxKey"

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/T1;->f(Ljava/lang/String;)V

    const/4 p0, 0x2

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/T1;->e(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->b()Lcom/google/android/gms/internal/firebase-auth-api/m5;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/U1;

    return-void
.end method

.method public static c(I)Lcom/google/android/gms/internal/firebase-auth-api/U1;
    .locals 7

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/j1;->n()Lcom/google/android/gms/internal/firebase-auth-api/i1;

    move-result-object v0

    iget-boolean v1, v0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d()V

    iput-boolean v2, v0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d:Lcom/google/android/gms/internal/firebase-auth-api/m5;

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/j1;

    invoke-static {v1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/j1;->p(Lcom/google/android/gms/internal/firebase-auth-api/j1;I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->b()Lcom/google/android/gms/internal/firebase-auth-api/m5;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/j1;

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/U1;->m()Lcom/google/android/gms/internal/firebase-auth-api/T1;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/U4;->b()Lcom/google/android/gms/internal/firebase-auth-api/Y4;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/T1;->g(Lcom/google/android/gms/internal/firebase-auth-api/Y4;)V

    new-instance p0, Lcom/google/android/gms/internal/firebase-auth-api/p0;

    const-class v1, Lcom/google/android/gms/internal/firebase-auth-api/Q;

    const/4 v3, 0x3

    invoke-direct {p0, v3, v1}, Lcom/google/android/gms/internal/firebase-auth-api/p0;-><init>(ILjava/lang/Class;)V

    filled-new-array {p0}, [Lcom/google/android/gms/internal/firebase-auth-api/p0;

    move-result-object p0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move v3, v2

    :goto_0
    if-gtz v3, :cond_3

    aget-object v4, p0, v3

    iget-object v5, v4, Lcom/google/android/gms/internal/firebase-auth-api/p0;->a:Ljava/lang/Class;

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    iget-object v6, v4, Lcom/google/android/gms/internal/firebase-auth-api/p0;->a:Ljava/lang/Class;

    if-eqz v5, :cond_2

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v6}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "KeyTypeManager constructed with duplicate factories for primitive "

    if-eqz v1, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-virtual {v1, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    aget-object p0, p0, v2

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/p0;->a:Ljava/lang/Class;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    const-string p0, "type.googleapis.com/google.crypto.tink.AesGcmKey"

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/T1;->f(Ljava/lang/String;)V

    const/4 p0, 0x2

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/T1;->e(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->b()Lcom/google/android/gms/internal/firebase-auth-api/m5;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/U1;

    return-object p0
.end method
