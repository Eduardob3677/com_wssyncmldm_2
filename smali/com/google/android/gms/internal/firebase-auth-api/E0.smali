.class public abstract Lcom/google/android/gms/internal/firebase-auth-api/E0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/android/gms/internal/firebase-auth-api/U1;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x0

    new-array v0, v0, [B

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/m0;->a:Lcom/google/android/gms/internal/firebase-auth-api/U1;

    const/4 v2, 0x2

    invoke-static {v2, v1, v2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/E0;->a(ILcom/google/android/gms/internal/firebase-auth-api/U1;I[B)Lcom/google/android/gms/internal/firebase-auth-api/U1;

    move-result-object v3

    sput-object v3, Lcom/google/android/gms/internal/firebase-auth-api/E0;->a:Lcom/google/android/gms/internal/firebase-auth-api/U1;

    const/4 v3, 0x3

    const/4 v4, 0x4

    invoke-static {v3, v1, v4, v0}, Lcom/google/android/gms/internal/firebase-auth-api/E0;->a(ILcom/google/android/gms/internal/firebase-auth-api/U1;I[B)Lcom/google/android/gms/internal/firebase-auth-api/U1;

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/m0;->b:Lcom/google/android/gms/internal/firebase-auth-api/U1;

    invoke-static {v2, v1, v2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/E0;->a(ILcom/google/android/gms/internal/firebase-auth-api/U1;I[B)Lcom/google/android/gms/internal/firebase-auth-api/U1;

    return-void
.end method

.method public static a(ILcom/google/android/gms/internal/firebase-auth-api/U1;I[B)Lcom/google/android/gms/internal/firebase-auth-api/U1;
    .locals 6

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/z1;->m()Lcom/google/android/gms/internal/firebase-auth-api/y1;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/H1;->m()Lcom/google/android/gms/internal/firebase-auth-api/G1;

    move-result-object v1

    iget-boolean v2, v1, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d()V

    iput-boolean v3, v1, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    :cond_0
    iget-object v2, v1, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d:Lcom/google/android/gms/internal/firebase-auth-api/m5;

    check-cast v2, Lcom/google/android/gms/internal/firebase-auth-api/H1;

    invoke-static {v2}, Lcom/google/android/gms/internal/firebase-auth-api/H1;->r(Lcom/google/android/gms/internal/firebase-auth-api/H1;)V

    iget-boolean v2, v1, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d()V

    iput-boolean v3, v1, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    :cond_1
    iget-object v2, v1, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d:Lcom/google/android/gms/internal/firebase-auth-api/m5;

    check-cast v2, Lcom/google/android/gms/internal/firebase-auth-api/H1;

    invoke-static {v2}, Lcom/google/android/gms/internal/firebase-auth-api/H1;->s(Lcom/google/android/gms/internal/firebase-auth-api/H1;)V

    array-length v2, p3

    invoke-static {p3, v3, v2}, Lcom/google/android/gms/internal/firebase-auth-api/Z4;->q([BII)Lcom/google/android/gms/internal/firebase-auth-api/Y4;

    move-result-object p3

    iget-boolean v2, v1, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d()V

    iput-boolean v3, v1, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    :cond_2
    iget-object v2, v1, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d:Lcom/google/android/gms/internal/firebase-auth-api/m5;

    check-cast v2, Lcom/google/android/gms/internal/firebase-auth-api/H1;

    invoke-static {v2, p3}, Lcom/google/android/gms/internal/firebase-auth-api/H1;->t(Lcom/google/android/gms/internal/firebase-auth-api/H1;Lcom/google/android/gms/internal/firebase-auth-api/Y4;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->b()Lcom/google/android/gms/internal/firebase-auth-api/m5;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/internal/firebase-auth-api/H1;

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/x1;->m()Lcom/google/android/gms/internal/firebase-auth-api/w1;

    move-result-object v1

    iget-boolean v2, v1, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d()V

    iput-boolean v3, v1, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    :cond_3
    iget-object v2, v1, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d:Lcom/google/android/gms/internal/firebase-auth-api/m5;

    check-cast v2, Lcom/google/android/gms/internal/firebase-auth-api/x1;

    invoke-static {v2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/x1;->p(Lcom/google/android/gms/internal/firebase-auth-api/x1;Lcom/google/android/gms/internal/firebase-auth-api/U1;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->b()Lcom/google/android/gms/internal/firebase-auth-api/m5;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/x1;

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/B1;->o()Lcom/google/android/gms/internal/firebase-auth-api/A1;

    move-result-object v1

    iget-boolean v2, v1, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d()V

    iput-boolean v3, v1, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    :cond_4
    iget-object v2, v1, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d:Lcom/google/android/gms/internal/firebase-auth-api/m5;

    check-cast v2, Lcom/google/android/gms/internal/firebase-auth-api/B1;

    invoke-static {v2, p3}, Lcom/google/android/gms/internal/firebase-auth-api/B1;->r(Lcom/google/android/gms/internal/firebase-auth-api/B1;Lcom/google/android/gms/internal/firebase-auth-api/H1;)V

    iget-boolean p3, v1, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    if-eqz p3, :cond_5

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d()V

    iput-boolean v3, v1, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    :cond_5
    iget-object p3, v1, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d:Lcom/google/android/gms/internal/firebase-auth-api/m5;

    check-cast p3, Lcom/google/android/gms/internal/firebase-auth-api/B1;

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/firebase-auth-api/B1;->s(Lcom/google/android/gms/internal/firebase-auth-api/B1;Lcom/google/android/gms/internal/firebase-auth-api/x1;)V

    iget-boolean p1, v1, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    if-eqz p1, :cond_6

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d()V

    iput-boolean v3, v1, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    :cond_6
    iget-object p1, v1, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d:Lcom/google/android/gms/internal/firebase-auth-api/m5;

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/B1;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/B1;->t(Lcom/google/android/gms/internal/firebase-auth-api/B1;I)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->b()Lcom/google/android/gms/internal/firebase-auth-api/m5;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/B1;

    iget-boolean p1, v0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    if-eqz p1, :cond_7

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d()V

    iput-boolean v3, v0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->e:Z

    :cond_7
    iget-object p1, v0, Lcom/google/android/gms/internal/firebase-auth-api/l5;->d:Lcom/google/android/gms/internal/firebase-auth-api/m5;

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/z1;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/z1;->p(Lcom/google/android/gms/internal/firebase-auth-api/z1;Lcom/google/android/gms/internal/firebase-auth-api/B1;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->b()Lcom/google/android/gms/internal/firebase-auth-api/m5;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/z1;

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/U1;->m()Lcom/google/android/gms/internal/firebase-auth-api/T1;

    move-result-object p1

    new-instance p3, Lcom/google/android/gms/internal/firebase-auth-api/p0;

    const-class v0, Lcom/google/android/gms/internal/firebase-auth-api/T;

    const/16 v1, 0xa

    invoke-direct {p3, v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/p0;-><init>(ILjava/lang/Class;)V

    filled-new-array {p3}, [Lcom/google/android/gms/internal/firebase-auth-api/p0;

    move-result-object p3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move v1, v3

    :goto_0
    if-gtz v1, :cond_a

    aget-object v2, p3, v1

    iget-object v4, v2, Lcom/google/android/gms/internal/firebase-auth-api/p0;->a:Ljava/lang/Class;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    iget-object v5, v2, Lcom/google/android/gms/internal/firebase-auth-api/p0;->a:Ljava/lang/Class;

    if-eqz v4, :cond_9

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const-string p3, "KeyTypeManager constructed with duplicate factories for primitive "

    if-eqz p2, :cond_8

    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_8
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    invoke-virtual {v0, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_a
    aget-object p3, p3, v3

    iget-object p3, p3, Lcom/google/android/gms/internal/firebase-auth-api/p0;->a:Ljava/lang/Class;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    const-string p3, "type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey"

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/firebase-auth-api/T1;->f(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/T1;->e(I)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/U4;->b()Lcom/google/android/gms/internal/firebase-auth-api/Y4;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/T1;->g(Lcom/google/android/gms/internal/firebase-auth-api/Y4;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/l5;->b()Lcom/google/android/gms/internal/firebase-auth-api/m5;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/U1;

    return-object p0
.end method
