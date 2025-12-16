.class public Lcom/idm/core/security/InsecureSHA1PRNGKeyDerivator;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final BYTES_OFFSET:I = 0x51

.field private static final COUNTER_BASE:I = 0x0

.field private static final DIGEST_LENGTH:I = 0x14

.field private static final END_FLAGS:[I

.field private static final EXTRAFRAME_OFFSET:I = 0x5

.field private static final FRAME_LENGTH:I = 0x10

.field private static final FRAME_OFFSET:I = 0x15

.field private static final H0:I = 0x67452301

.field private static final H1:I = -0x10325477

.field private static final H2:I = -0x67452302

.field private static final H3:I = 0x10325476

.field private static final H4:I = -0x3c2d1e10

.field private static final HASHBYTES_TO_USE:I = 0x14

.field private static final HASHCOPY_OFFSET:I = 0x0

.field private static final HASH_OFFSET:I = 0x52

.field private static final LEFT:[I

.field private static final MASK:[I

.field private static final MAX_BYTES:I = 0x30

.field private static final NEXT_BYTES:I = 0x2

.field private static final RIGHT1:[I

.field private static final RIGHT2:[I

.field private static final SET_SEED:I = 0x1

.field private static final UNDEFINED:I


# instance fields
.field private transient copies:[I

.field private transient counter:J

.field private transient nextBIndex:I

.field private transient nextBytes:[B

.field private transient seed:[I

.field private transient seedLength:J

.field private transient state:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const v0, 0x8000

    const/16 v1, 0x80

    const/high16 v2, -0x80000000

    const/high16 v3, 0x800000

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/idm/core/security/InsecureSHA1PRNGKeyDerivator;->END_FLAGS:[I

    const/16 v0, 0x30

    const/16 v1, 0x38

    const/4 v2, 0x0

    const/16 v3, 0x28

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/idm/core/security/InsecureSHA1PRNGKeyDerivator;->RIGHT1:[I

    const/16 v0, 0x8

    const/16 v1, 0x10

    const/16 v3, 0x18

    filled-new-array {v2, v0, v1, v3}, [I

    move-result-object v4

    sput-object v4, Lcom/idm/core/security/InsecureSHA1PRNGKeyDerivator;->RIGHT2:[I

    filled-new-array {v2, v3, v1, v0}, [I

    move-result-object v0

    sput-object v0, Lcom/idm/core/security/InsecureSHA1PRNGKeyDerivator;->LEFT:[I

    const v0, 0xffff

    const/16 v1, 0xff

    const/4 v2, -0x1

    const v3, 0xffffff

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/idm/core/security/InsecureSHA1PRNGKeyDerivator;->MASK:[I

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x57

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/idm/core/security/InsecureSHA1PRNGKeyDerivator;->seed:[I

    const/16 v1, 0x52

    const v2, 0x67452301

    aput v2, v0, v1

    const/16 v1, 0x53

    const v2, -0x10325477

    aput v2, v0, v1

    const/16 v1, 0x54

    const v2, -0x67452302

    aput v2, v0, v1

    const/16 v1, 0x55

    const v2, 0x10325476

    aput v2, v0, v1

    const/16 v1, 0x56

    const v2, -0x3c2d1e10

    aput v2, v0, v1

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/idm/core/security/InsecureSHA1PRNGKeyDerivator;->seedLength:J

    const/16 v2, 0x25

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/idm/core/security/InsecureSHA1PRNGKeyDerivator;->copies:[I

    const/16 v2, 0x14

    new-array v3, v2, [B

    iput-object v3, p0, Lcom/idm/core/security/InsecureSHA1PRNGKeyDerivator;->nextBytes:[B

    iput v2, p0, Lcom/idm/core/security/InsecureSHA1PRNGKeyDerivator;->nextBIndex:I

    iput-wide v0, p0, Lcom/idm/core/security/InsecureSHA1PRNGKeyDerivator;->counter:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/idm/core/security/InsecureSHA1PRNGKeyDerivator;->state:I

    return-void
.end method

.method private static computeHash([I)V
    .locals 16

    const/16 v0, 0x52

    aget v1, p0, v0

    const/16 v2, 0x53

    aget v3, p0, v2

    const/16 v4, 0x54

    aget v5, p0, v4

    const/16 v6, 0x55

    aget v7, p0, v6

    const/16 v8, 0x56

    aget v9, p0, v8

    const/16 v10, 0x10

    :goto_0
    const/16 v11, 0x50

    if-ge v10, v11, :cond_0

    add-int/lit8 v11, v10, -0x3

    aget v11, p0, v11

    add-int/lit8 v12, v10, -0x8

    aget v12, p0, v12

    xor-int/2addr v11, v12

    add-int/lit8 v12, v10, -0xe

    aget v12, p0, v12

    xor-int/2addr v11, v12

    add-int/lit8 v12, v10, -0x10

    aget v12, p0, v12

    xor-int/2addr v11, v12

    shl-int/lit8 v12, v11, 0x1

    ushr-int/lit8 v11, v11, 0x1f

    or-int/2addr v11, v12

    aput v11, p0, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    :goto_1
    const/16 v12, 0x14

    if-ge v10, v12, :cond_1

    shl-int/lit8 v12, v1, 0x5

    ushr-int/lit8 v13, v1, 0x1b

    or-int/2addr v12, v13

    and-int v13, v3, v5

    not-int v14, v3

    and-int/2addr v14, v7

    or-int/2addr v13, v14

    add-int/2addr v12, v13

    aget v13, p0, v10

    add-int/2addr v9, v13

    const v13, 0x5a827999

    add-int/2addr v9, v13

    add-int/2addr v9, v12

    shl-int/lit8 v12, v3, 0x1e

    ushr-int/lit8 v3, v3, 0x2

    or-int/2addr v3, v12

    add-int/lit8 v10, v10, 0x1

    move v15, v3

    move v3, v1

    move v1, v9

    move v9, v7

    move v7, v5

    move v5, v15

    goto :goto_1

    :cond_1
    :goto_2
    const/16 v10, 0x28

    if-ge v12, v10, :cond_2

    shl-int/lit8 v10, v1, 0x5

    ushr-int/lit8 v13, v1, 0x1b

    or-int/2addr v10, v13

    xor-int v13, v3, v5

    xor-int/2addr v13, v7

    add-int/2addr v10, v13

    aget v13, p0, v12

    add-int/2addr v9, v13

    const v13, 0x6ed9eba1

    add-int/2addr v9, v13

    add-int/2addr v9, v10

    shl-int/lit8 v10, v3, 0x1e

    ushr-int/lit8 v3, v3, 0x2

    or-int/2addr v3, v10

    add-int/lit8 v12, v12, 0x1

    move v15, v3

    move v3, v1

    move v1, v9

    move v9, v7

    move v7, v5

    move v5, v15

    goto :goto_2

    :cond_2
    :goto_3
    const/16 v12, 0x3c

    if-ge v10, v12, :cond_3

    shl-int/lit8 v12, v1, 0x5

    ushr-int/lit8 v13, v1, 0x1b

    or-int/2addr v12, v13

    and-int v13, v3, v5

    and-int v14, v3, v7

    or-int/2addr v13, v14

    and-int v14, v5, v7

    or-int/2addr v13, v14

    add-int/2addr v12, v13

    aget v13, p0, v10

    add-int/2addr v9, v13

    const v13, -0x70e44324

    add-int/2addr v9, v13

    add-int/2addr v9, v12

    shl-int/lit8 v12, v3, 0x1e

    ushr-int/lit8 v3, v3, 0x2

    or-int/2addr v3, v12

    add-int/lit8 v10, v10, 0x1

    move v15, v3

    move v3, v1

    move v1, v9

    move v9, v7

    move v7, v5

    move v5, v15

    goto :goto_3

    :cond_3
    :goto_4
    if-ge v12, v11, :cond_4

    shl-int/lit8 v10, v1, 0x5

    ushr-int/lit8 v13, v1, 0x1b

    or-int/2addr v10, v13

    xor-int v13, v3, v5

    xor-int/2addr v13, v7

    add-int/2addr v10, v13

    aget v13, p0, v12

    add-int/2addr v9, v13

    const v13, -0x359d3e2a    # -3715189.5f

    add-int/2addr v9, v13

    add-int/2addr v9, v10

    shl-int/lit8 v10, v3, 0x1e

    ushr-int/lit8 v3, v3, 0x2

    or-int/2addr v3, v10

    add-int/lit8 v12, v12, 0x1

    move v15, v3

    move v3, v1

    move v1, v9

    move v9, v7

    move v7, v5

    move v5, v15

    goto :goto_4

    :cond_4
    aget v10, p0, v0

    add-int/2addr v10, v1

    aput v10, p0, v0

    aget v0, p0, v2

    add-int/2addr v0, v3

    aput v0, p0, v2

    aget v0, p0, v4

    add-int/2addr v0, v5

    aput v0, p0, v4

    aget v0, p0, v6

    add-int/2addr v0, v7

    aput v0, p0, v6

    aget v0, p0, v8

    add-int/2addr v0, v9

    aput v0, p0, v8

    return-void
.end method

.method public static deriveInsecureKey([BI)[B
    .locals 1

    new-instance v0, Lcom/idm/core/security/InsecureSHA1PRNGKeyDerivator;

    invoke-direct {v0}, Lcom/idm/core/security/InsecureSHA1PRNGKeyDerivator;-><init>()V

    invoke-direct {v0, p0}, Lcom/idm/core/security/InsecureSHA1PRNGKeyDerivator;->setSeed([B)V

    new-array p0, p1, [B

    invoke-virtual {v0, p0}, Lcom/idm/core/security/InsecureSHA1PRNGKeyDerivator;->nextBytes([B)V

    return-object p0
.end method

.method private declared-synchronized setSeed([B)V
    .locals 5

    monitor-enter p0

    if-eqz p1, :cond_2

    :try_start_0
    iget v0, p0, Lcom/idm/core/security/InsecureSHA1PRNGKeyDerivator;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/idm/core/security/InsecureSHA1PRNGKeyDerivator;->copies:[I

    iget-object v1, p0, Lcom/idm/core/security/InsecureSHA1PRNGKeyDerivator;->seed:[I

    const/16 v2, 0x52

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-static {v0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/idm/core/security/InsecureSHA1PRNGKeyDerivator;->state:I

    array-length v0, p1

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/idm/core/security/InsecureSHA1PRNGKeyDerivator;->updateSeed([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "seed == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method private static updateHash([I[BII)V
    .locals 9

    const/16 v0, 0x51

    aget v1, p0, v0

    shr-int/lit8 v2, v1, 0x2

    and-int/lit8 v3, v1, 0x3

    add-int/2addr v1, p3

    sub-int/2addr v1, p2

    const/4 v4, 0x1

    add-int/2addr v1, v4

    and-int/lit8 v1, v1, 0x3f

    aput v1, p0, v0

    const/4 v0, 0x0

    const/16 v1, 0x10

    if-eqz v3, :cond_2

    :goto_0
    const/4 v5, 0x4

    if-gt p2, p3, :cond_0

    if-ge v3, v5, :cond_0

    aget v5, p0, v2

    aget-byte v6, p1, p2

    and-int/lit16 v6, v6, 0xff

    rsub-int/lit8 v7, v3, 0x3

    shl-int/lit8 v7, v7, 0x3

    shl-int/2addr v6, v7

    or-int/2addr v5, v6

    aput v5, p0, v2

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    if-ne v3, v5, :cond_1

    add-int/lit8 v2, v2, 0x1

    if-ne v2, v1, :cond_1

    invoke-static {p0}, Lcom/idm/core/security/InsecureSHA1PRNGKeyDerivator;->computeHash([I)V

    move v2, v0

    :cond_1
    if-le p2, p3, :cond_2

    return-void

    :cond_2
    sub-int v3, p3, p2

    add-int/2addr v3, v4

    const/4 v5, 0x2

    shr-int/2addr v3, v5

    move v6, v0

    :goto_1
    if-ge v6, v3, :cond_4

    aget-byte v7, p1, p2

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x18

    add-int/lit8 v8, p2, 0x1

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/2addr v8, v1

    or-int/2addr v7, v8

    add-int/lit8 v8, p2, 0x2

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v7, v8

    add-int/lit8 v8, p2, 0x3

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    or-int/2addr v7, v8

    aput v7, p0, v2

    add-int/lit8 p2, p2, 0x4

    add-int/lit8 v2, v2, 0x1

    if-ge v2, v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {p0}, Lcom/idm/core/security/InsecureSHA1PRNGKeyDerivator;->computeHash([I)V

    move v2, v0

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    sub-int/2addr p3, p2

    add-int/2addr p3, v4

    if-eqz p3, :cond_6

    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    if-eq p3, v4, :cond_5

    add-int/lit8 v3, p2, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v1, v3, 0x10

    or-int/2addr v0, v1

    if-eq p3, v5, :cond_5

    add-int/2addr p2, v5

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr v0, p1

    :cond_5
    aput v0, p0, v2

    :cond_6
    return-void
.end method

.method private updateSeed([B)V
    .locals 4

    iget-object v0, p0, Lcom/idm/core/security/InsecureSHA1PRNGKeyDerivator;->seed:[I

    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1}, Lcom/idm/core/security/InsecureSHA1PRNGKeyDerivator;->updateHash([I[BII)V

    iget-wide v0, p0, Lcom/idm/core/security/InsecureSHA1PRNGKeyDerivator;->seedLength:J

    array-length p1, p1

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/idm/core/security/InsecureSHA1PRNGKeyDerivator;->seedLength:J

    return-void
.end method


# virtual methods
.method public declared-synchronized nextBytes([B)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    monitor-enter p0

    if-eqz v0, :cond_10

    :try_start_0
    iget-object v2, v1, Lcom/idm/core/security/InsecureSHA1PRNGKeyDerivator;->seed:[I

    const/16 v3, 0x51

    aget v4, v2, v3

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-nez v4, :cond_0

    move v4, v6

    goto :goto_0

    :cond_0
    add-int/lit8 v4, v4, 0x7

    shr-int/2addr v4, v5

    :goto_0
    iget v7, v1, Lcom/idm/core/security/InsecureSHA1PRNGKeyDerivator;->state:I

    if-eqz v7, :cond_f

    const/16 v8, 0x20

    const/16 v9, 0x30

    const/4 v10, 0x3

    const/4 v11, 0x5

    const/16 v12, 0x14

    const/4 v13, 0x1

    if-ne v7, v13, :cond_3

    iget-object v7, v1, Lcom/idm/core/security/InsecureSHA1PRNGKeyDerivator;->copies:[I

    const/16 v13, 0x52

    invoke-static {v2, v13, v7, v6, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v4, 0x3

    :goto_1
    const/16 v7, 0x12

    if-ge v2, v7, :cond_1

    iget-object v7, v1, Lcom/idm/core/security/InsecureSHA1PRNGKeyDerivator;->seed:[I

    aput v6, v7, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_9

    :cond_1
    iget-wide v13, v1, Lcom/idm/core/security/InsecureSHA1PRNGKeyDerivator;->seedLength:J

    shl-long/2addr v13, v10

    const-wide/16 v15, 0x40

    add-long/2addr v13, v15

    iget-object v2, v1, Lcom/idm/core/security/InsecureSHA1PRNGKeyDerivator;->seed:[I

    aget v7, v2, v3

    if-ge v7, v9, :cond_2

    ushr-long v9, v13, v8

    long-to-int v9, v9

    const/16 v10, 0xe

    aput v9, v2, v10

    const/16 v9, 0xf

    long-to-int v10, v13

    aput v10, v2, v9

    goto :goto_2

    :cond_2
    iget-object v2, v1, Lcom/idm/core/security/InsecureSHA1PRNGKeyDerivator;->copies:[I

    ushr-long v9, v13, v8

    long-to-int v9, v9

    const/16 v10, 0x13

    aput v9, v2, v10

    long-to-int v9, v13

    aput v9, v2, v12

    :goto_2
    iput v12, v1, Lcom/idm/core/security/InsecureSHA1PRNGKeyDerivator;->nextBIndex:I

    :cond_3
    iput v5, v1, Lcom/idm/core/security/InsecureSHA1PRNGKeyDerivator;->state:I

    array-length v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_4

    monitor-exit p0

    return-void

    :cond_4
    :try_start_1
    iget v2, v1, Lcom/idm/core/security/InsecureSHA1PRNGKeyDerivator;->nextBIndex:I

    rsub-int/lit8 v5, v2, 0x14

    array-length v9, v0

    if-ge v5, v9, :cond_5

    rsub-int/lit8 v5, v2, 0x14

    goto :goto_3

    :cond_5
    array-length v5, v0

    :goto_3
    if-lez v5, :cond_6

    iget-object v9, v1, Lcom/idm/core/security/InsecureSHA1PRNGKeyDerivator;->nextBytes:[B

    invoke-static {v9, v2, v0, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, v1, Lcom/idm/core/security/InsecureSHA1PRNGKeyDerivator;->nextBIndex:I

    add-int/2addr v2, v5

    iput v2, v1, Lcom/idm/core/security/InsecureSHA1PRNGKeyDerivator;->nextBIndex:I

    goto :goto_4

    :cond_6
    move v5, v6

    :goto_4
    array-length v2, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lt v5, v2, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    :try_start_2
    iget-object v2, v1, Lcom/idm/core/security/InsecureSHA1PRNGKeyDerivator;->seed:[I

    aget v2, v2, v3

    const/4 v9, 0x3

    and-int/2addr v2, v9

    :goto_5
    if-nez v2, :cond_8

    iget-object v9, v1, Lcom/idm/core/security/InsecureSHA1PRNGKeyDerivator;->seed:[I

    iget-wide v13, v1, Lcom/idm/core/security/InsecureSHA1PRNGKeyDerivator;->counter:J

    ushr-long v11, v13, v8

    long-to-int v11, v11

    aput v11, v9, v4

    add-int/lit8 v11, v4, 0x1

    long-to-int v12, v13

    aput v12, v9, v11

    add-int/lit8 v11, v4, 0x2

    sget-object v12, Lcom/idm/core/security/InsecureSHA1PRNGKeyDerivator;->END_FLAGS:[I

    aget v12, v12, v6

    aput v12, v9, v11

    goto :goto_6

    :cond_8
    iget-object v9, v1, Lcom/idm/core/security/InsecureSHA1PRNGKeyDerivator;->seed:[I

    aget v11, v9, v4

    iget-wide v12, v1, Lcom/idm/core/security/InsecureSHA1PRNGKeyDerivator;->counter:J

    sget-object v14, Lcom/idm/core/security/InsecureSHA1PRNGKeyDerivator;->RIGHT1:[I

    aget v14, v14, v2

    ushr-long v16, v12, v14

    sget-object v14, Lcom/idm/core/security/InsecureSHA1PRNGKeyDerivator;->MASK:[I

    aget v14, v14, v2

    int-to-long v7, v14

    and-long v7, v16, v7

    long-to-int v7, v7

    or-int/2addr v7, v11

    aput v7, v9, v4

    add-int/lit8 v7, v4, 0x1

    sget-object v8, Lcom/idm/core/security/InsecureSHA1PRNGKeyDerivator;->RIGHT2:[I

    aget v8, v8, v2

    ushr-long v10, v12, v8

    long-to-int v8, v10

    aput v8, v9, v7

    add-int/lit8 v7, v4, 0x2

    sget-object v8, Lcom/idm/core/security/InsecureSHA1PRNGKeyDerivator;->LEFT:[I

    aget v8, v8, v2

    shl-long v10, v12, v8

    sget-object v8, Lcom/idm/core/security/InsecureSHA1PRNGKeyDerivator;->END_FLAGS:[I

    aget v8, v8, v2

    int-to-long v12, v8

    or-long/2addr v10, v12

    long-to-int v8, v10

    aput v8, v9, v7

    :goto_6
    iget-object v8, v1, Lcom/idm/core/security/InsecureSHA1PRNGKeyDerivator;->seed:[I

    aget v7, v8, v3

    const/16 v9, 0x10

    const/16 v10, 0x30

    if-le v7, v10, :cond_9

    iget-object v11, v1, Lcom/idm/core/security/InsecureSHA1PRNGKeyDerivator;->copies:[I

    aget v10, v8, v9

    const/4 v12, 0x5

    aput v10, v11, v12

    const/16 v12, 0x11

    aget v12, v8, v12

    const/4 v13, 0x6

    aput v12, v11, v13

    :cond_9
    invoke-static {v8}, Lcom/idm/core/security/InsecureSHA1PRNGKeyDerivator;->computeHash([I)V

    iget-object v8, v1, Lcom/idm/core/security/InsecureSHA1PRNGKeyDerivator;->seed:[I

    aget v11, v8, v3

    const/16 v7, 0x30

    if-le v11, v7, :cond_a

    iget-object v11, v1, Lcom/idm/core/security/InsecureSHA1PRNGKeyDerivator;->copies:[I

    const/16 v12, 0x15

    invoke-static {v8, v6, v11, v12, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v8, v1, Lcom/idm/core/security/InsecureSHA1PRNGKeyDerivator;->copies:[I

    iget-object v11, v1, Lcom/idm/core/security/InsecureSHA1PRNGKeyDerivator;->seed:[I

    const/4 v10, 0x5

    invoke-static {v8, v10, v11, v6, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v8, v1, Lcom/idm/core/security/InsecureSHA1PRNGKeyDerivator;->seed:[I

    invoke-static {v8}, Lcom/idm/core/security/InsecureSHA1PRNGKeyDerivator;->computeHash([I)V

    iget-object v8, v1, Lcom/idm/core/security/InsecureSHA1PRNGKeyDerivator;->copies:[I

    iget-object v11, v1, Lcom/idm/core/security/InsecureSHA1PRNGKeyDerivator;->seed:[I

    invoke-static {v8, v12, v11, v6, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_a
    iget-wide v8, v1, Lcom/idm/core/security/InsecureSHA1PRNGKeyDerivator;->counter:J

    const-wide/16 v11, 0x1

    add-long/2addr v8, v11

    iput-wide v8, v1, Lcom/idm/core/security/InsecureSHA1PRNGKeyDerivator;->counter:J

    move v9, v6

    move v10, v9

    const/4 v8, 0x5

    :goto_7
    if-ge v9, v8, :cond_b

    iget-object v11, v1, Lcom/idm/core/security/InsecureSHA1PRNGKeyDerivator;->seed:[I

    add-int/lit8 v12, v9, 0x52

    aget v11, v11, v12

    iget-object v12, v1, Lcom/idm/core/security/InsecureSHA1PRNGKeyDerivator;->nextBytes:[B

    ushr-int/lit8 v13, v11, 0x18

    int-to-byte v13, v13

    aput-byte v13, v12, v10

    add-int/lit8 v13, v10, 0x1

    ushr-int/lit8 v14, v11, 0x10

    int-to-byte v14, v14

    aput-byte v14, v12, v13

    add-int/lit8 v13, v10, 0x2

    ushr-int/lit8 v14, v11, 0x8

    int-to-byte v14, v14

    aput-byte v14, v12, v13

    add-int/lit8 v13, v10, 0x3

    int-to-byte v11, v11

    aput-byte v11, v12, v13

    add-int/lit8 v10, v10, 0x4

    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    :cond_b
    iput v6, v1, Lcom/idm/core/security/InsecureSHA1PRNGKeyDerivator;->nextBIndex:I

    array-length v9, v0

    sub-int/2addr v9, v5

    const/16 v10, 0x14

    if-ge v10, v9, :cond_c

    move v9, v10

    goto :goto_8

    :cond_c
    array-length v9, v0

    sub-int/2addr v9, v5

    :goto_8
    if-lez v9, :cond_d

    iget-object v11, v1, Lcom/idm/core/security/InsecureSHA1PRNGKeyDerivator;->nextBytes:[B

    invoke-static {v11, v6, v0, v5, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v5, v9

    iget v11, v1, Lcom/idm/core/security/InsecureSHA1PRNGKeyDerivator;->nextBIndex:I

    add-int/2addr v11, v9

    iput v11, v1, Lcom/idm/core/security/InsecureSHA1PRNGKeyDerivator;->nextBIndex:I

    :cond_d
    array-length v9, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-lt v5, v9, :cond_e

    monitor-exit p0

    return-void

    :cond_e
    move v11, v8

    move v12, v10

    const/16 v8, 0x20

    goto/16 :goto_5

    :cond_f
    :try_start_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "No seed supplied!"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "bytes == null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_9
    monitor-exit p0

    throw v0
.end method
