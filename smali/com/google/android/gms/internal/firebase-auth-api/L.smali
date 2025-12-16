.class public abstract Lcom/google/android/gms/internal/firebase-auth-api/L;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lsun/misc/Unsafe;

.field public static final b:Ljava/lang/Class;

.field public static final c:Lcom/google/android/gms/internal/firebase-auth-api/K;

.field public static final d:Z

.field public static final e:Z

.field public static final f:J

.field public static final g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-class v2, Ljava/lang/Class;

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/L;->j()Lsun/misc/Unsafe;

    move-result-object v3

    sput-object v3, Lcom/google/android/gms/internal/firebase-auth-api/L;->a:Lsun/misc/Unsafe;

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/W4;->a()Ljava/lang/Class;

    move-result-object v4

    sput-object v4, Lcom/google/android/gms/internal/firebase-auth-api/L;->b:Ljava/lang/Class;

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v4}, Lcom/google/android/gms/internal/firebase-auth-api/L;->u(Ljava/lang/Class;)Z

    move-result v5

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v6}, Lcom/google/android/gms/internal/firebase-auth-api/L;->u(Ljava/lang/Class;)Z

    move-result v6

    const/4 v7, 0x0

    if-nez v3, :cond_1

    :cond_0
    move-object v5, v7

    goto :goto_0

    :cond_1
    if-eqz v5, :cond_2

    new-instance v5, Lcom/google/android/gms/internal/firebase-auth-api/J;

    invoke-direct {v5, v3, v1}, Lcom/google/android/gms/internal/firebase-auth-api/J;-><init>(Lsun/misc/Unsafe;I)V

    goto :goto_0

    :cond_2
    if-eqz v6, :cond_0

    new-instance v5, Lcom/google/android/gms/internal/firebase-auth-api/J;

    invoke-direct {v5, v3, v0}, Lcom/google/android/gms/internal/firebase-auth-api/J;-><init>(Lsun/misc/Unsafe;I)V

    :goto_0
    sput-object v5, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    const-string v3, "address"

    const-string v6, "effectiveDirectAddress"

    const-class v8, Ljava/nio/Buffer;

    const-string v9, "getLong"

    const-string v10, "objectFieldOffset"

    const-class v11, Ljava/lang/reflect/Field;

    const-class v12, Ljava/lang/Object;

    if-nez v5, :cond_3

    :goto_1
    move v4, v0

    goto :goto_5

    :cond_3
    iget-object v5, v5, Lcom/google/android/gms/internal/firebase-auth-api/K;->a:Lsun/misc/Unsafe;

    if-nez v5, :cond_4

    goto :goto_1

    :cond_4
    :try_start_0
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    filled-new-array {v11}, [Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v5, v10, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    filled-new-array {v12, v4}, [Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v5, v9, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-virtual {v8, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-object v4, v7

    :goto_2
    if-nez v4, :cond_6

    :try_start_2
    invoke-virtual {v8, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_1
    move-object v4, v7

    :goto_3
    if-eqz v4, :cond_5

    :try_start_3
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    sget-object v13, Ljava/lang/Long;->TYPE:Ljava/lang/Class;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-ne v5, v13, :cond_5

    goto :goto_4

    :cond_5
    move-object v4, v7

    :cond_6
    :goto_4
    if-nez v4, :cond_7

    goto :goto_1

    :cond_7
    move v4, v1

    goto :goto_5

    :catchall_2
    move-exception v4

    invoke-static {v4}, Lcom/google/android/gms/internal/firebase-auth-api/L;->k(Ljava/lang/Throwable;)V

    goto :goto_1

    :goto_5
    sput-boolean v4, Lcom/google/android/gms/internal/firebase-auth-api/L;->d:Z

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    if-nez v4, :cond_8

    :goto_6
    move v2, v0

    goto :goto_7

    :cond_8
    iget-object v4, v4, Lcom/google/android/gms/internal/firebase-auth-api/K;->a:Lsun/misc/Unsafe;

    if-nez v4, :cond_9

    goto :goto_6

    :cond_9
    :try_start_4
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    filled-new-array {v11}, [Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v10, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v5

    const-string v10, "arrayBaseOffset"

    invoke-virtual {v4, v10, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    const-string v5, "arrayIndexScale"

    invoke-virtual {v4, v5, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    filled-new-array {v12, v2}, [Ljava/lang/Class;

    move-result-object v5

    const-string v10, "getInt"

    invoke-virtual {v4, v10, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v12, v2, v5}, [Ljava/lang/Class;

    move-result-object v5

    const-string v10, "putInt"

    invoke-virtual {v4, v10, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    filled-new-array {v12, v2}, [Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v9, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    filled-new-array {v12, v2, v2}, [Ljava/lang/Class;

    move-result-object v5

    const-string v9, "putLong"

    invoke-virtual {v4, v9, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    filled-new-array {v12, v2}, [Ljava/lang/Class;

    move-result-object v5

    const-string v9, "getObject"

    invoke-virtual {v4, v9, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    filled-new-array {v12, v2, v12}, [Ljava/lang/Class;

    move-result-object v2

    const-string v5, "putObject"

    invoke-virtual {v4, v5, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move v2, v1

    goto :goto_7

    :catchall_3
    move-exception v2

    invoke-static {v2}, Lcom/google/android/gms/internal/firebase-auth-api/L;->k(Ljava/lang/Throwable;)V

    goto :goto_6

    :goto_7
    sput-boolean v2, Lcom/google/android/gms/internal/firebase-auth-api/L;->e:Z

    const-class v2, [B

    invoke-static {v2}, Lcom/google/android/gms/internal/firebase-auth-api/L;->w(Ljava/lang/Class;)I

    move-result v2

    int-to-long v4, v2

    sput-wide v4, Lcom/google/android/gms/internal/firebase-auth-api/L;->f:J

    const-class v2, [Z

    invoke-static {v2}, Lcom/google/android/gms/internal/firebase-auth-api/L;->w(Ljava/lang/Class;)I

    invoke-static {v2}, Lcom/google/android/gms/internal/firebase-auth-api/L;->a(Ljava/lang/Class;)V

    const-class v2, [I

    invoke-static {v2}, Lcom/google/android/gms/internal/firebase-auth-api/L;->w(Ljava/lang/Class;)I

    invoke-static {v2}, Lcom/google/android/gms/internal/firebase-auth-api/L;->a(Ljava/lang/Class;)V

    const-class v2, [J

    invoke-static {v2}, Lcom/google/android/gms/internal/firebase-auth-api/L;->w(Ljava/lang/Class;)I

    invoke-static {v2}, Lcom/google/android/gms/internal/firebase-auth-api/L;->a(Ljava/lang/Class;)V

    const-class v2, [F

    invoke-static {v2}, Lcom/google/android/gms/internal/firebase-auth-api/L;->w(Ljava/lang/Class;)I

    invoke-static {v2}, Lcom/google/android/gms/internal/firebase-auth-api/L;->a(Ljava/lang/Class;)V

    const-class v2, [D

    invoke-static {v2}, Lcom/google/android/gms/internal/firebase-auth-api/L;->w(Ljava/lang/Class;)I

    invoke-static {v2}, Lcom/google/android/gms/internal/firebase-auth-api/L;->a(Ljava/lang/Class;)V

    const-class v2, [Ljava/lang/Object;

    invoke-static {v2}, Lcom/google/android/gms/internal/firebase-auth-api/L;->w(Ljava/lang/Class;)I

    invoke-static {v2}, Lcom/google/android/gms/internal/firebase-auth-api/L;->a(Ljava/lang/Class;)V

    sget v2, Lcom/google/android/gms/internal/firebase-auth-api/W4;->a:I

    :try_start_5
    invoke-virtual {v8, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto :goto_8

    :catchall_4
    move-object v2, v7

    :goto_8
    if-nez v2, :cond_a

    :try_start_6
    invoke-virtual {v8, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    goto :goto_9

    :catchall_5
    move-object v2, v7

    :goto_9
    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v3, v4, :cond_b

    :cond_a
    move-object v7, v2

    :cond_b
    if-eqz v7, :cond_c

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    if-eqz v2, :cond_c

    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/firebase-auth-api/K;->l(Ljava/lang/reflect/Field;)V

    :cond_c
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v2, v3, :cond_d

    move v0, v1

    :cond_d
    sput-boolean v0, Lcom/google/android/gms/internal/firebase-auth-api/L;->g:Z

    return-void
.end method

.method public static a(Ljava/lang/Class;)V
    .locals 1

    sget-boolean v0, Lcom/google/android/gms/internal/firebase-auth-api/L;->e:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/K;->i(Ljava/lang/Class;)I

    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/Object;JB)V
    .locals 5

    const-wide/16 v0, -0x4

    and-long/2addr v0, p1

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v2, v0, v1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/K;->j(JLjava/lang/Object;)I

    move-result v3

    long-to-int p1, p1

    not-int p1, p1

    and-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x3

    const/16 p2, 0xff

    shl-int v4, p2, p1

    not-int v4, v4

    and-int/2addr v3, v4

    and-int/2addr p2, p3

    shl-int p1, p2, p1

    or-int/2addr p1, v3

    invoke-virtual {v2, p1, v0, v1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/K;->n(IJLjava/lang/Object;)V

    return-void
.end method

.method public static c(Ljava/lang/Object;JB)V
    .locals 5

    const-wide/16 v0, -0x4

    and-long/2addr v0, p1

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v2, v0, v1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/K;->j(JLjava/lang/Object;)I

    move-result v3

    long-to-int p1, p1

    and-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x3

    const/16 p2, 0xff

    shl-int v4, p2, p1

    not-int v4, v4

    and-int/2addr v3, v4

    and-int/2addr p2, p3

    shl-int p1, p2, p1

    or-int/2addr p1, v3

    invoke-virtual {v2, p1, v0, v1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/K;->n(IJLjava/lang/Object;)V

    return-void
.end method

.method public static d(JLjava/lang/Object;)D
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/K;->a(JLjava/lang/Object;)D

    move-result-wide p0

    return-wide p0
.end method

.method public static e(JLjava/lang/Object;)F
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/K;->b(JLjava/lang/Object;)F

    move-result p0

    return p0
.end method

.method public static f(JLjava/lang/Object;)I
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/K;->j(JLjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static g(JLjava/lang/Object;)J
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/K;->k(JLjava/lang/Object;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static h(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/L;->a:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->allocateInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static i(JLjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/K;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static j()Lsun/misc/Unsafe;
    .locals 1

    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/I;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/I;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/misc/Unsafe;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static synthetic k(Ljava/lang/Throwable;)V
    .locals 4

    const-class v0, Lcom/google/android/gms/internal/firebase-auth-api/L;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x47

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "platform method missing - proto runtime falling back to safer methods: "

    invoke-static {v3, v2, p0}, LB/f;->w(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "com.google.protobuf.UnsafeUtil"

    const-string v3, "logMissingMethod"

    invoke-virtual {v0, v1, v2, v3, p0}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static l(Ljava/lang/Object;JZ)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/firebase-auth-api/K;->c(Ljava/lang/Object;JZ)V

    return-void
.end method

.method public static m([BJB)V
    .locals 2

    sget-wide v0, Lcom/google/android/gms/internal/firebase-auth-api/L;->f:J

    add-long/2addr v0, p1

    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {p1, p0, v0, v1, p3}, Lcom/google/android/gms/internal/firebase-auth-api/K;->d(Ljava/lang/Object;JB)V

    return-void
.end method

.method public static n(Ljava/lang/Object;JD)V
    .locals 6

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/firebase-auth-api/K;->e(Ljava/lang/Object;JD)V

    return-void
.end method

.method public static o(Ljava/lang/Object;JF)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/firebase-auth-api/K;->f(Ljava/lang/Object;JF)V

    return-void
.end method

.method public static p(IJLjava/lang/Object;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/firebase-auth-api/K;->n(IJLjava/lang/Object;)V

    return-void
.end method

.method public static q(Ljava/lang/Object;JJ)V
    .locals 6

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/firebase-auth-api/K;->o(Ljava/lang/Object;JJ)V

    return-void
.end method

.method public static r(JLjava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/firebase-auth-api/K;->p(JLjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic s(JLjava/lang/Object;)Z
    .locals 3

    const-wide/16 v0, -0x4

    and-long/2addr v0, p0

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v2, v0, v1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/K;->j(JLjava/lang/Object;)I

    move-result p2

    not-long p0, p0

    const-wide/16 v0, 0x3

    and-long/2addr p0, v0

    const/4 v0, 0x3

    shl-long/2addr p0, v0

    long-to-int p0, p0

    ushr-int p0, p2, p0

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic t(JLjava/lang/Object;)Z
    .locals 3

    const-wide/16 v0, -0x4

    and-long/2addr v0, p0

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v2, v0, v1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/K;->j(JLjava/lang/Object;)I

    move-result p2

    const-wide/16 v0, 0x3

    and-long/2addr p0, v0

    const/4 v0, 0x3

    shl-long/2addr p0, v0

    long-to-int p0, p0

    ushr-int p0, p2, p0

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static u(Ljava/lang/Class;)Z
    .locals 6

    const-class v0, [B

    sget v1, Lcom/google/android/gms/internal/firebase-auth-api/W4;->a:I

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/L;->b:Ljava/lang/Class;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {p0, v2}, [Ljava/lang/Class;

    move-result-object v3

    const-string v4, "peekLong"

    invoke-virtual {v1, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    filled-new-array {p0, v3, v2}, [Ljava/lang/Class;

    move-result-object v3

    const-string v4, "pokeLong"

    invoke-virtual {v1, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {p0, v3, v2}, [Ljava/lang/Class;

    move-result-object v4

    const-string v5, "pokeInt"

    invoke-virtual {v1, v5, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    filled-new-array {p0, v2}, [Ljava/lang/Class;

    move-result-object v2

    const-string v4, "peekInt"

    invoke-virtual {v1, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    filled-new-array {p0, v2}, [Ljava/lang/Class;

    move-result-object v2

    const-string v4, "pokeByte"

    invoke-virtual {v1, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    filled-new-array {p0}, [Ljava/lang/Class;

    move-result-object v2

    const-string v4, "peekByte"

    invoke-virtual {v1, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    filled-new-array {p0, v0, v3, v3}, [Ljava/lang/Class;

    move-result-object v2

    const-string v4, "pokeByteArray"

    invoke-virtual {v1, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    filled-new-array {p0, v0, v3, v3}, [Ljava/lang/Class;

    move-result-object p0

    const-string v0, "peekByteArray"

    invoke-virtual {v1, v0, p0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x1

    return p0

    :catchall_0
    const/4 p0, 0x0

    return p0
.end method

.method public static v(JLjava/lang/Object;)Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/K;->g(JLjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static w(Ljava/lang/Class;)I
    .locals 1

    sget-boolean v0, Lcom/google/android/gms/internal/firebase-auth-api/L;->e:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/K;->h(Ljava/lang/Class;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method
