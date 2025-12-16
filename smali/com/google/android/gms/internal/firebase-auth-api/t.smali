.class public final Lcom/google/android/gms/internal/firebase-auth-api/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/A;


# static fields
.field public static final m:[I

.field public static final n:Lsun/misc/Unsafe;


# instance fields
.field public final a:[I

.field public final b:[Ljava/lang/Object;

.field public final c:I

.field public final d:I

.field public final e:Lcom/google/android/gms/internal/firebase-auth-api/U4;

.field public final f:Z

.field public final g:Z

.field public final h:[I

.field public final i:I

.field public final j:I

.field public final k:Lcom/google/android/gms/internal/firebase-auth-api/l;

.field public final l:Lcom/google/android/gms/internal/firebase-auth-api/E;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/t;->m:[I

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/L;->j()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/t;->n:Lsun/misc/Unsafe;

    return-void
.end method

.method public constructor <init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/firebase-auth-api/U4;Z[IIILcom/google/android/gms/internal/firebase-auth-api/l;Lcom/google/android/gms/internal/firebase-auth-api/E;Lcom/google/android/gms/internal/firebase-auth-api/h5;Lcom/google/android/gms/internal/firebase-auth-api/p;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/t;->a:[I

    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/t;->b:[Ljava/lang/Object;

    iput p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/t;->c:I

    iput p4, p0, Lcom/google/android/gms/internal/firebase-auth-api/t;->d:I

    instance-of p1, p5, Lcom/google/android/gms/internal/firebase-auth-api/m5;

    iput-boolean p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/t;->f:Z

    iput-boolean p6, p0, Lcom/google/android/gms/internal/firebase-auth-api/t;->g:Z

    iput-object p7, p0, Lcom/google/android/gms/internal/firebase-auth-api/t;->h:[I

    iput p8, p0, Lcom/google/android/gms/internal/firebase-auth-api/t;->i:I

    iput p9, p0, Lcom/google/android/gms/internal/firebase-auth-api/t;->j:I

    iput-object p10, p0, Lcom/google/android/gms/internal/firebase-auth-api/t;->k:Lcom/google/android/gms/internal/firebase-auth-api/l;

    iput-object p11, p0, Lcom/google/android/gms/internal/firebase-auth-api/t;->l:Lcom/google/android/gms/internal/firebase-auth-api/E;

    iput-object p5, p0, Lcom/google/android/gms/internal/firebase-auth-api/t;->e:Lcom/google/android/gms/internal/firebase-auth-api/U4;

    return-void
.end method

.method public static A(ILcom/google/android/gms/internal/firebase-auth-api/A;Ljava/lang/Object;)Z
    .locals 2

    const v0, 0xfffff

    and-int/2addr p0, v0

    int-to-long v0, p0

    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/K;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/A;->i(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final D(ILjava/lang/Object;Lcom/google/android/gms/internal/firebase-auth-api/n;)V
    .locals 1

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/String;

    iget-object p2, p2, Lcom/google/android/gms/internal/firebase-auth-api/n;->d:Ljava/lang/Object;

    check-cast p2, Lcom/google/android/gms/internal/firebase-auth-api/f5;

    invoke-virtual {p2, p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/f5;->n0(ILjava/lang/String;)V

    return-void

    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/Z4;

    invoke-virtual {p2, p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/n;->r(ILcom/google/android/gms/internal/firebase-auth-api/Z4;)V

    return-void
.end method

.method public static F(Lcom/google/android/gms/internal/firebase-auth-api/z;Lcom/google/android/gms/internal/firebase-auth-api/l;Lcom/google/android/gms/internal/firebase-auth-api/E;Lcom/google/android/gms/internal/firebase-auth-api/h5;Lcom/google/android/gms/internal/firebase-auth-api/p;)Lcom/google/android/gms/internal/firebase-auth-api/t;
    .locals 1

    instance-of v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/z;

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/firebase-auth-api/t;->G(Lcom/google/android/gms/internal/firebase-auth-api/z;Lcom/google/android/gms/internal/firebase-auth-api/l;Lcom/google/android/gms/internal/firebase-auth-api/E;Lcom/google/android/gms/internal/firebase-auth-api/h5;Lcom/google/android/gms/internal/firebase-auth-api/p;)Lcom/google/android/gms/internal/firebase-auth-api/t;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0}, LB/f;->F(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static G(Lcom/google/android/gms/internal/firebase-auth-api/z;Lcom/google/android/gms/internal/firebase-auth-api/l;Lcom/google/android/gms/internal/firebase-auth-api/E;Lcom/google/android/gms/internal/firebase-auth-api/h5;Lcom/google/android/gms/internal/firebase-auth-api/p;)Lcom/google/android/gms/internal/firebase-auth-api/t;
    .locals 32

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/firebase-auth-api/z;->b()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v10, 0x1

    goto :goto_0

    :cond_0
    move v10, v2

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/firebase-auth-api/z;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const v5, 0xd800

    if-lt v4, v5, :cond_1

    const/4 v4, 0x1

    :goto_1
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_2

    move v4, v6

    goto :goto_1

    :cond_1
    const/4 v6, 0x1

    :cond_2
    add-int/lit8 v4, v6, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-lt v6, v5, :cond_4

    and-int/lit16 v6, v6, 0x1fff

    const/16 v8, 0xd

    :goto_2
    add-int/lit8 v9, v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_3

    and-int/lit16 v4, v4, 0x1fff

    shl-int/2addr v4, v8

    or-int/2addr v6, v4

    add-int/lit8 v8, v8, 0xd

    move v4, v9

    goto :goto_2

    :cond_3
    shl-int/2addr v4, v8

    or-int/2addr v6, v4

    move v4, v9

    :cond_4
    if-nez v6, :cond_5

    sget-object v6, Lcom/google/android/gms/internal/firebase-auth-api/t;->m:[I

    move v8, v2

    move v9, v8

    move v11, v9

    move v12, v11

    move v14, v12

    move/from16 v16, v14

    move-object v13, v6

    move/from16 v6, v16

    goto/16 :goto_b

    :cond_5
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_7

    and-int/lit16 v4, v4, 0x1fff

    const/16 v8, 0xd

    :goto_3
    add-int/lit8 v9, v6, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-lt v6, v5, :cond_6

    and-int/lit16 v6, v6, 0x1fff

    shl-int/2addr v6, v8

    or-int/2addr v4, v6

    add-int/lit8 v8, v8, 0xd

    move v6, v9

    goto :goto_3

    :cond_6
    shl-int/2addr v6, v8

    or-int/2addr v4, v6

    move v6, v9

    :cond_7
    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-lt v6, v5, :cond_9

    and-int/lit16 v6, v6, 0x1fff

    const/16 v9, 0xd

    :goto_4
    add-int/lit8 v11, v8, 0x1

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v5, :cond_8

    and-int/lit16 v8, v8, 0x1fff

    shl-int/2addr v8, v9

    or-int/2addr v6, v8

    add-int/lit8 v9, v9, 0xd

    move v8, v11

    goto :goto_4

    :cond_8
    shl-int/2addr v8, v9

    or-int/2addr v6, v8

    move v8, v11

    :cond_9
    add-int/lit8 v9, v8, 0x1

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v5, :cond_b

    and-int/lit16 v8, v8, 0x1fff

    const/16 v11, 0xd

    :goto_5
    add-int/lit8 v12, v9, 0x1

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v5, :cond_a

    and-int/lit16 v9, v9, 0x1fff

    shl-int/2addr v9, v11

    or-int/2addr v8, v9

    add-int/lit8 v11, v11, 0xd

    move v9, v12

    goto :goto_5

    :cond_a
    shl-int/2addr v9, v11

    or-int/2addr v8, v9

    move v9, v12

    :cond_b
    add-int/lit8 v11, v9, 0x1

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v5, :cond_d

    and-int/lit16 v9, v9, 0x1fff

    const/16 v12, 0xd

    :goto_6
    add-int/lit8 v13, v11, 0x1

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v5, :cond_c

    and-int/lit16 v11, v11, 0x1fff

    shl-int/2addr v11, v12

    or-int/2addr v9, v11

    add-int/lit8 v12, v12, 0xd

    move v11, v13

    goto :goto_6

    :cond_c
    shl-int/2addr v11, v12

    or-int/2addr v9, v11

    move v11, v13

    :cond_d
    add-int/lit8 v12, v11, 0x1

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v5, :cond_f

    and-int/lit16 v11, v11, 0x1fff

    const/16 v13, 0xd

    :goto_7
    add-int/lit8 v14, v12, 0x1

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v5, :cond_e

    and-int/lit16 v12, v12, 0x1fff

    shl-int/2addr v12, v13

    or-int/2addr v11, v12

    add-int/lit8 v13, v13, 0xd

    move v12, v14

    goto :goto_7

    :cond_e
    shl-int/2addr v12, v13

    or-int/2addr v11, v12

    move v12, v14

    :cond_f
    add-int/lit8 v13, v12, 0x1

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v5, :cond_11

    and-int/lit16 v12, v12, 0x1fff

    const/16 v14, 0xd

    :goto_8
    add-int/lit8 v15, v13, 0x1

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v5, :cond_10

    and-int/lit16 v13, v13, 0x1fff

    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    add-int/lit8 v14, v14, 0xd

    move v13, v15

    goto :goto_8

    :cond_10
    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    move v13, v15

    :cond_11
    add-int/lit8 v14, v13, 0x1

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v5, :cond_13

    and-int/lit16 v13, v13, 0x1fff

    const/16 v15, 0xd

    :goto_9
    add-int/lit8 v16, v14, 0x1

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v5, :cond_12

    and-int/lit16 v14, v14, 0x1fff

    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    add-int/lit8 v15, v15, 0xd

    move/from16 v14, v16

    goto :goto_9

    :cond_12
    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    move/from16 v14, v16

    :cond_13
    add-int/lit8 v15, v14, 0x1

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v5, :cond_15

    and-int/lit16 v14, v14, 0x1fff

    const/16 v16, 0xd

    :goto_a
    add-int/lit8 v17, v15, 0x1

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v5, :cond_14

    and-int/lit16 v15, v15, 0x1fff

    shl-int v15, v15, v16

    or-int/2addr v14, v15

    add-int/lit8 v16, v16, 0xd

    move/from16 v15, v17

    goto :goto_a

    :cond_14
    shl-int v15, v15, v16

    or-int/2addr v14, v15

    move/from16 v15, v17

    :cond_15
    add-int v16, v14, v12

    add-int v13, v16, v13

    new-array v13, v13, [I

    add-int v16, v4, v4

    add-int v16, v16, v6

    move v6, v4

    move v4, v15

    move/from16 v31, v14

    move v14, v12

    move/from16 v12, v31

    :goto_b
    sget-object v15, Lcom/google/android/gms/internal/firebase-auth-api/t;->n:Lsun/misc/Unsafe;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/firebase-auth-api/z;->d()[Ljava/lang/Object;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/firebase-auth-api/z;->a()Lcom/google/android/gms/internal/firebase-auth-api/U4;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    mul-int/lit8 v7, v11, 0x3

    new-array v7, v7, [I

    add-int/2addr v11, v11

    new-array v11, v11, [Ljava/lang/Object;

    add-int/2addr v14, v12

    move/from16 v21, v12

    move/from16 v22, v14

    const/16 v19, 0x0

    const/16 v20, 0x0

    :goto_c
    if-ge v4, v1, :cond_32

    add-int/lit8 v23, v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_17

    and-int/lit16 v4, v4, 0x1fff

    move/from16 v3, v23

    const/16 v23, 0xd

    :goto_d
    add-int/lit8 v25, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v5, :cond_16

    and-int/lit16 v3, v3, 0x1fff

    shl-int v3, v3, v23

    or-int/2addr v4, v3

    add-int/lit8 v23, v23, 0xd

    move/from16 v3, v25

    goto :goto_d

    :cond_16
    shl-int v3, v3, v23

    or-int/2addr v4, v3

    move/from16 v3, v25

    goto :goto_e

    :cond_17
    move/from16 v3, v23

    :goto_e
    add-int/lit8 v23, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v5, :cond_19

    and-int/lit16 v3, v3, 0x1fff

    move/from16 v5, v23

    const/16 v23, 0xd

    :goto_f
    add-int/lit8 v26, v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move/from16 v27, v1

    const v1, 0xd800

    if-lt v5, v1, :cond_18

    and-int/lit16 v1, v5, 0x1fff

    shl-int v1, v1, v23

    or-int/2addr v3, v1

    add-int/lit8 v23, v23, 0xd

    move/from16 v5, v26

    move/from16 v1, v27

    goto :goto_f

    :cond_18
    shl-int v1, v5, v23

    or-int/2addr v3, v1

    move/from16 v1, v26

    goto :goto_10

    :cond_19
    move/from16 v27, v1

    move/from16 v1, v23

    :goto_10
    and-int/lit16 v5, v3, 0xff

    move/from16 v23, v14

    and-int/lit16 v14, v3, 0x400

    if-eqz v14, :cond_1a

    add-int/lit8 v14, v20, 0x1

    aput v19, v13, v20

    move/from16 v20, v14

    :cond_1a
    const/16 v14, 0x33

    if-lt v5, v14, :cond_22

    add-int/lit8 v14, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    move/from16 v26, v14

    const v14, 0xd800

    if-lt v1, v14, :cond_1c

    and-int/lit16 v1, v1, 0x1fff

    move/from16 v14, v26

    const/16 v26, 0xd

    :goto_11
    add-int/lit8 v29, v14, 0x1

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    move/from16 v30, v12

    const v12, 0xd800

    if-lt v14, v12, :cond_1b

    and-int/lit16 v12, v14, 0x1fff

    shl-int v12, v12, v26

    or-int/2addr v1, v12

    add-int/lit8 v26, v26, 0xd

    move/from16 v14, v29

    move/from16 v12, v30

    goto :goto_11

    :cond_1b
    shl-int v12, v14, v26

    or-int/2addr v1, v12

    move/from16 v14, v29

    goto :goto_12

    :cond_1c
    move/from16 v30, v12

    move/from16 v14, v26

    :goto_12
    add-int/lit8 v12, v5, -0x33

    move/from16 v26, v14

    const/16 v14, 0x9

    if-eq v12, v14, :cond_1e

    const/16 v14, 0x11

    if-ne v12, v14, :cond_1d

    goto :goto_14

    :cond_1d
    const/16 v14, 0xc

    if-ne v12, v14, :cond_1f

    if-nez v10, :cond_1f

    div-int/lit8 v12, v19, 0x3

    add-int/lit8 v14, v16, 0x1

    add-int/2addr v12, v12

    const/16 v24, 0x1

    add-int/lit8 v12, v12, 0x1

    aget-object v16, v17, v16

    aput-object v16, v11, v12

    :goto_13
    move/from16 v16, v14

    goto :goto_15

    :cond_1e
    :goto_14
    div-int/lit8 v12, v19, 0x3

    add-int/lit8 v14, v16, 0x1

    add-int/2addr v12, v12

    const/16 v24, 0x1

    add-int/lit8 v12, v12, 0x1

    aget-object v16, v17, v16

    aput-object v16, v11, v12

    goto :goto_13

    :cond_1f
    :goto_15
    add-int/2addr v1, v1

    aget-object v12, v17, v1

    instance-of v14, v12, Ljava/lang/reflect/Field;

    if-eqz v14, :cond_20

    check-cast v12, Ljava/lang/reflect/Field;

    :goto_16
    move v14, v8

    move/from16 v29, v9

    goto :goto_17

    :cond_20
    check-cast v12, Ljava/lang/String;

    invoke-static {v2, v12}, Lcom/google/android/gms/internal/firebase-auth-api/t;->s(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v12

    aput-object v12, v17, v1

    goto :goto_16

    :goto_17
    invoke-virtual {v15, v12}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v8

    long-to-int v8, v8

    add-int/lit8 v1, v1, 0x1

    aget-object v9, v17, v1

    instance-of v12, v9, Ljava/lang/reflect/Field;

    if-eqz v12, :cond_21

    check-cast v9, Ljava/lang/reflect/Field;

    :goto_18
    move v1, v8

    goto :goto_19

    :cond_21
    check-cast v9, Ljava/lang/String;

    invoke-static {v2, v9}, Lcom/google/android/gms/internal/firebase-auth-api/t;->s(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    aput-object v9, v17, v1

    goto :goto_18

    :goto_19
    invoke-virtual {v15, v9}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v8

    long-to-int v8, v8

    move v9, v8

    move v12, v10

    move/from16 v28, v26

    const/16 v24, 0x1

    move v8, v1

    const/4 v1, 0x0

    goto/16 :goto_25

    :cond_22
    move v14, v8

    move/from16 v29, v9

    move/from16 v30, v12

    add-int/lit8 v8, v16, 0x1

    aget-object v9, v17, v16

    check-cast v9, Ljava/lang/String;

    invoke-static {v2, v9}, Lcom/google/android/gms/internal/firebase-auth-api/t;->s(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    const/16 v12, 0x9

    if-eq v5, v12, :cond_23

    const/16 v12, 0x11

    if-ne v5, v12, :cond_24

    :cond_23
    const/16 v24, 0x1

    goto :goto_1e

    :cond_24
    const/16 v12, 0x1b

    if-eq v5, v12, :cond_25

    const/16 v12, 0x31

    if-ne v5, v12, :cond_26

    :cond_25
    const/16 v24, 0x1

    goto :goto_1d

    :cond_26
    const/16 v12, 0xc

    if-eq v5, v12, :cond_2a

    const/16 v12, 0x1e

    if-eq v5, v12, :cond_2a

    const/16 v12, 0x2c

    if-ne v5, v12, :cond_27

    goto :goto_1b

    :cond_27
    const/16 v12, 0x32

    if-ne v5, v12, :cond_28

    add-int/lit8 v12, v21, 0x1

    aput v19, v13, v21

    div-int/lit8 v21, v19, 0x3

    add-int v21, v21, v21

    add-int/lit8 v28, v16, 0x2

    aget-object v8, v17, v8

    aput-object v8, v11, v21

    and-int/lit16 v8, v3, 0x800

    if-eqz v8, :cond_29

    add-int/lit8 v8, v16, 0x3

    add-int/lit8 v21, v21, 0x1

    aget-object v16, v17, v28

    aput-object v16, v11, v21

    move/from16 v21, v12

    :cond_28
    const/16 v24, 0x1

    :goto_1a
    move v12, v8

    goto :goto_1f

    :cond_29
    move/from16 v21, v12

    move/from16 v12, v28

    const/16 v24, 0x1

    goto :goto_1f

    :cond_2a
    :goto_1b
    if-nez v10, :cond_28

    div-int/lit8 v12, v19, 0x3

    add-int/lit8 v16, v16, 0x2

    add-int/2addr v12, v12

    const/16 v24, 0x1

    add-int/lit8 v12, v12, 0x1

    aget-object v8, v17, v8

    aput-object v8, v11, v12

    :goto_1c
    move/from16 v12, v16

    goto :goto_1f

    :goto_1d
    div-int/lit8 v12, v19, 0x3

    add-int/lit8 v16, v16, 0x2

    add-int/2addr v12, v12

    add-int/lit8 v12, v12, 0x1

    aget-object v8, v17, v8

    aput-object v8, v11, v12

    goto :goto_1c

    :goto_1e
    div-int/lit8 v12, v19, 0x3

    add-int/2addr v12, v12

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v16

    aput-object v16, v11, v12

    goto :goto_1a

    :goto_1f
    invoke-virtual {v15, v9}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v8

    long-to-int v8, v8

    and-int/lit16 v9, v3, 0x1000

    move/from16 v16, v12

    const/16 v12, 0x1000

    const v28, 0xfffff

    if-ne v9, v12, :cond_2e

    const/16 v9, 0x11

    if-gt v5, v9, :cond_2e

    add-int/lit8 v9, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const v12, 0xd800

    if-lt v1, v12, :cond_2c

    and-int/lit16 v1, v1, 0x1fff

    const/16 v25, 0xd

    :goto_20
    add-int/lit8 v28, v9, 0x1

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v12, :cond_2b

    and-int/lit16 v9, v9, 0x1fff

    shl-int v9, v9, v25

    or-int/2addr v1, v9

    add-int/lit8 v25, v25, 0xd

    move/from16 v9, v28

    goto :goto_20

    :cond_2b
    shl-int v9, v9, v25

    or-int/2addr v1, v9

    goto :goto_21

    :cond_2c
    move/from16 v28, v9

    :goto_21
    add-int v9, v6, v6

    div-int/lit8 v25, v1, 0x20

    add-int v25, v25, v9

    aget-object v9, v17, v25

    instance-of v12, v9, Ljava/lang/reflect/Field;

    if-eqz v12, :cond_2d

    check-cast v9, Ljava/lang/reflect/Field;

    :goto_22
    move v12, v10

    goto :goto_23

    :cond_2d
    check-cast v9, Ljava/lang/String;

    invoke-static {v2, v9}, Lcom/google/android/gms/internal/firebase-auth-api/t;->s(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    aput-object v9, v17, v25

    goto :goto_22

    :goto_23
    invoke-virtual {v15, v9}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v9

    long-to-int v9, v9

    rem-int/lit8 v1, v1, 0x20

    goto :goto_24

    :cond_2e
    move v12, v10

    move/from16 v9, v28

    move/from16 v28, v1

    const/4 v1, 0x0

    :goto_24
    const/16 v10, 0x12

    if-lt v5, v10, :cond_2f

    const/16 v10, 0x31

    if-gt v5, v10, :cond_2f

    add-int/lit8 v10, v22, 0x1

    aput v8, v13, v22

    move/from16 v22, v10

    :cond_2f
    :goto_25
    add-int/lit8 v10, v19, 0x1

    aput v4, v7, v19

    add-int/lit8 v4, v19, 0x2

    move-object/from16 v25, v0

    and-int/lit16 v0, v3, 0x200

    if-eqz v0, :cond_30

    const/high16 v0, 0x20000000

    goto :goto_26

    :cond_30
    const/4 v0, 0x0

    :goto_26
    and-int/lit16 v3, v3, 0x100

    if-eqz v3, :cond_31

    const/high16 v3, 0x10000000

    goto :goto_27

    :cond_31
    const/4 v3, 0x0

    :goto_27
    or-int/2addr v0, v3

    shl-int/lit8 v3, v5, 0x14

    or-int/2addr v0, v3

    or-int/2addr v0, v8

    aput v0, v7, v10

    add-int/lit8 v19, v19, 0x3

    shl-int/lit8 v0, v1, 0x14

    or-int/2addr v0, v9

    aput v0, v7, v4

    move v10, v12

    move v8, v14

    move/from16 v14, v23

    move-object/from16 v0, v25

    move/from16 v1, v27

    move/from16 v4, v28

    move/from16 v9, v29

    move/from16 v12, v30

    const v5, 0xd800

    goto/16 :goto_c

    :cond_32
    move/from16 v29, v9

    move/from16 v30, v12

    move/from16 v23, v14

    move v14, v8

    move v12, v10

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/t;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/firebase-auth-api/z;->a()Lcom/google/android/gms/internal/firebase-auth-api/U4;

    move-result-object v9

    move-object v4, v0

    move-object v5, v7

    move-object v6, v11

    move v7, v14

    move/from16 v8, v29

    move-object v11, v13

    move/from16 v12, v30

    move/from16 v13, v23

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    move-object/from16 v16, p3

    move-object/from16 v17, p4

    invoke-direct/range {v4 .. v17}, Lcom/google/android/gms/internal/firebase-auth-api/t;-><init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/firebase-auth-api/U4;Z[IIILcom/google/android/gms/internal/firebase-auth-api/l;Lcom/google/android/gms/internal/firebase-auth-api/E;Lcom/google/android/gms/internal/firebase-auth-api/h5;Lcom/google/android/gms/internal/firebase-auth-api/p;)V

    return-object v0
.end method

.method public static J(JLjava/lang/Object;)I
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/K;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static l(I)I
    .locals 0

    ushr-int/lit8 p0, p0, 0x14

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public static n(JLjava/lang/Object;)J
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/K;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method public static s(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 6

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x28

    add-int/2addr v2, v3

    add-int/2addr v2, v4

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Field "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not found. Known fields are "

    invoke-static {v5, p0, v0}, LB/f;->w(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final B(ILjava/lang/Object;I)Z
    .locals 2

    add-int/lit8 p3, p3, 0x2

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/t;->a:[I

    aget p0, p0, p3

    const p3, 0xfffff

    and-int/2addr p0, p3

    int-to-long v0, p0

    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/K;->j(JLjava/lang/Object;)I

    move-result p0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final C(Ljava/lang/Object;Lcom/google/android/gms/internal/firebase-auth-api/n;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lcom/google/android/gms/internal/firebase-auth-api/t;->a:[I

    array-length v4, v3

    sget-object v5, Lcom/google/android/gms/internal/firebase-auth-api/t;->n:Lsun/misc/Unsafe;

    const v6, 0xfffff

    move v10, v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_0
    if-ge v8, v4, :cond_5

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/firebase-auth-api/t;->m(I)I

    move-result v11

    aget v12, v3, v8

    invoke-static {v11}, Lcom/google/android/gms/internal/firebase-auth-api/t;->l(I)I

    move-result v13

    const/16 v14, 0x11

    const/4 v15, 0x1

    if-gt v13, v14, :cond_1

    add-int/lit8 v14, v8, 0x2

    aget v14, v3, v14

    and-int v7, v14, v6

    if-eq v7, v10, :cond_0

    int-to-long v9, v7

    invoke-virtual {v5, v1, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v9

    move v10, v7

    :cond_0
    ushr-int/lit8 v7, v14, 0x14

    shl-int v7, v15, v7

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    and-int/2addr v11, v6

    move/from16 v16, v7

    int-to-long v6, v11

    packed-switch v13, :pswitch_data_0

    :cond_2
    :goto_2
    const/4 v13, 0x0

    goto/16 :goto_4

    :pswitch_0
    invoke-virtual {v0, v12, v1, v8}, Lcom/google/android/gms/internal/firebase-auth-api/t;->B(ILjava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/firebase-auth-api/t;->p(I)Lcom/google/android/gms/internal/firebase-auth-api/A;

    move-result-object v7

    invoke-virtual {v2, v12, v7, v6}, Lcom/google/android/gms/internal/firebase-auth-api/n;->C(ILcom/google/android/gms/internal/firebase-auth-api/A;Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_1
    invoke-virtual {v0, v12, v1, v8}, Lcom/google/android/gms/internal/firebase-auth-api/t;->B(ILjava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-static {v6, v7, v1}, Lcom/google/android/gms/internal/firebase-auth-api/t;->n(JLjava/lang/Object;)J

    move-result-wide v6

    invoke-virtual {v2, v12, v6, v7}, Lcom/google/android/gms/internal/firebase-auth-api/n;->e(IJ)V

    goto :goto_2

    :pswitch_2
    invoke-virtual {v0, v12, v1, v8}, Lcom/google/android/gms/internal/firebase-auth-api/t;->B(ILjava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-static {v6, v7, v1}, Lcom/google/android/gms/internal/firebase-auth-api/t;->J(JLjava/lang/Object;)I

    move-result v6

    invoke-virtual {v2, v12, v6}, Lcom/google/android/gms/internal/firebase-auth-api/n;->d(II)V

    goto :goto_2

    :pswitch_3
    invoke-virtual {v0, v12, v1, v8}, Lcom/google/android/gms/internal/firebase-auth-api/t;->B(ILjava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-static {v6, v7, v1}, Lcom/google/android/gms/internal/firebase-auth-api/t;->n(JLjava/lang/Object;)J

    move-result-wide v6

    invoke-virtual {v2, v12, v6, v7}, Lcom/google/android/gms/internal/firebase-auth-api/n;->H(IJ)V

    goto :goto_2

    :pswitch_4
    invoke-virtual {v0, v12, v1, v8}, Lcom/google/android/gms/internal/firebase-auth-api/t;->B(ILjava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-static {v6, v7, v1}, Lcom/google/android/gms/internal/firebase-auth-api/t;->J(JLjava/lang/Object;)I

    move-result v6

    invoke-virtual {v2, v12, v6}, Lcom/google/android/gms/internal/firebase-auth-api/n;->G(II)V

    goto :goto_2

    :pswitch_5
    invoke-virtual {v0, v12, v1, v8}, Lcom/google/android/gms/internal/firebase-auth-api/t;->B(ILjava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-static {v6, v7, v1}, Lcom/google/android/gms/internal/firebase-auth-api/t;->J(JLjava/lang/Object;)I

    move-result v6

    invoke-virtual {v2, v12, v6}, Lcom/google/android/gms/internal/firebase-auth-api/n;->y(II)V

    goto :goto_2

    :pswitch_6
    invoke-virtual {v0, v12, v1, v8}, Lcom/google/android/gms/internal/firebase-auth-api/t;->B(ILjava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-static {v6, v7, v1}, Lcom/google/android/gms/internal/firebase-auth-api/t;->J(JLjava/lang/Object;)I

    move-result v6

    invoke-virtual {v2, v12, v6}, Lcom/google/android/gms/internal/firebase-auth-api/n;->f(II)V

    goto :goto_2

    :pswitch_7
    invoke-virtual {v0, v12, v1, v8}, Lcom/google/android/gms/internal/firebase-auth-api/t;->B(ILjava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/firebase-auth-api/Z4;

    invoke-virtual {v2, v12, v6}, Lcom/google/android/gms/internal/firebase-auth-api/n;->r(ILcom/google/android/gms/internal/firebase-auth-api/Z4;)V

    goto :goto_2

    :pswitch_8
    invoke-virtual {v0, v12, v1, v8}, Lcom/google/android/gms/internal/firebase-auth-api/t;->B(ILjava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/firebase-auth-api/t;->p(I)Lcom/google/android/gms/internal/firebase-auth-api/A;

    move-result-object v7

    invoke-virtual {v2, v12, v7, v6}, Lcom/google/android/gms/internal/firebase-auth-api/n;->F(ILcom/google/android/gms/internal/firebase-auth-api/A;Ljava/lang/Object;)V

    goto/16 :goto_2

    :pswitch_9
    invoke-virtual {v0, v12, v1, v8}, Lcom/google/android/gms/internal/firebase-auth-api/t;->B(ILjava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v12, v6, v2}, Lcom/google/android/gms/internal/firebase-auth-api/t;->D(ILjava/lang/Object;Lcom/google/android/gms/internal/firebase-auth-api/n;)V

    goto/16 :goto_2

    :pswitch_a
    invoke-virtual {v0, v12, v1, v8}, Lcom/google/android/gms/internal/firebase-auth-api/t;->B(ILjava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_2

    sget-object v11, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v11, v6, v7, v1}, Lcom/google/android/gms/internal/firebase-auth-api/K;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v2, v12, v6}, Lcom/google/android/gms/internal/firebase-auth-api/n;->l(IZ)V

    goto/16 :goto_2

    :pswitch_b
    invoke-virtual {v0, v12, v1, v8}, Lcom/google/android/gms/internal/firebase-auth-api/t;->B(ILjava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-static {v6, v7, v1}, Lcom/google/android/gms/internal/firebase-auth-api/t;->J(JLjava/lang/Object;)I

    move-result v6

    invoke-virtual {v2, v12, v6}, Lcom/google/android/gms/internal/firebase-auth-api/n;->z(II)V

    goto/16 :goto_2

    :pswitch_c
    invoke-virtual {v0, v12, v1, v8}, Lcom/google/android/gms/internal/firebase-auth-api/t;->B(ILjava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-static {v6, v7, v1}, Lcom/google/android/gms/internal/firebase-auth-api/t;->n(JLjava/lang/Object;)J

    move-result-wide v6

    invoke-virtual {v2, v12, v6, v7}, Lcom/google/android/gms/internal/firebase-auth-api/n;->A(IJ)V

    goto/16 :goto_2

    :pswitch_d
    invoke-virtual {v0, v12, v1, v8}, Lcom/google/android/gms/internal/firebase-auth-api/t;->B(ILjava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-static {v6, v7, v1}, Lcom/google/android/gms/internal/firebase-auth-api/t;->J(JLjava/lang/Object;)I

    move-result v6

    invoke-virtual {v2, v12, v6}, Lcom/google/android/gms/internal/firebase-auth-api/n;->D(II)V

    goto/16 :goto_2

    :pswitch_e
    invoke-virtual {v0, v12, v1, v8}, Lcom/google/android/gms/internal/firebase-auth-api/t;->B(ILjava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-static {v6, v7, v1}, Lcom/google/android/gms/internal/firebase-auth-api/t;->n(JLjava/lang/Object;)J

    move-result-wide v6

    invoke-virtual {v2, v12, v6, v7}, Lcom/google/android/gms/internal/firebase-auth-api/n;->g(IJ)V

    goto/16 :goto_2

    :pswitch_f
    invoke-virtual {v0, v12, v1, v8}, Lcom/google/android/gms/internal/firebase-auth-api/t;->B(ILjava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-static {v6, v7, v1}, Lcom/google/android/gms/internal/firebase-auth-api/t;->n(JLjava/lang/Object;)J

    move-result-wide v6

    invoke-virtual {v2, v12, v6, v7}, Lcom/google/android/gms/internal/firebase-auth-api/n;->E(IJ)V

    goto/16 :goto_2

    :pswitch_10
    invoke-virtual {v0, v12, v1, v8}, Lcom/google/android/gms/internal/firebase-auth-api/t;->B(ILjava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_2

    sget-object v11, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v11, v6, v7, v1}, Lcom/google/android/gms/internal/firebase-auth-api/K;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-virtual {v2, v12, v6}, Lcom/google/android/gms/internal/firebase-auth-api/n;->B(IF)V

    goto/16 :goto_2

    :pswitch_11
    invoke-virtual {v0, v12, v1, v8}, Lcom/google/android/gms/internal/firebase-auth-api/t;->B(ILjava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_2

    sget-object v11, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v11, v6, v7, v1}, Lcom/google/android/gms/internal/firebase-auth-api/K;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-virtual {v2, v12, v6, v7}, Lcom/google/android/gms/internal/firebase-auth-api/n;->u(ID)V

    goto/16 :goto_2

    :pswitch_12
    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_3

    goto/16 :goto_2

    :cond_3
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/firebase-auth-api/t;->r(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LB/f;->F(Ljava/lang/Object;)V

    const/4 v0, 0x0

    throw v0

    :pswitch_13
    aget v11, v3, v8

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/firebase-auth-api/t;->p(I)Lcom/google/android/gms/internal/firebase-auth-api/A;

    move-result-object v7

    invoke-static {v11, v6, v2, v7}, Lcom/google/android/gms/internal/firebase-auth-api/B;->k(ILjava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/n;Lcom/google/android/gms/internal/firebase-auth-api/A;)V

    goto/16 :goto_2

    :pswitch_14
    aget v11, v3, v8

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v11, v6, v2, v15}, Lcom/google/android/gms/internal/firebase-auth-api/B;->r(ILjava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/n;Z)V

    goto/16 :goto_2

    :pswitch_15
    aget v11, v3, v8

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v11, v6, v2, v15}, Lcom/google/android/gms/internal/firebase-auth-api/B;->q(ILjava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/n;Z)V

    goto/16 :goto_2

    :pswitch_16
    aget v11, v3, v8

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v11, v6, v2, v15}, Lcom/google/android/gms/internal/firebase-auth-api/B;->p(ILjava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/n;Z)V

    goto/16 :goto_2

    :pswitch_17
    aget v11, v3, v8

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v11, v6, v2, v15}, Lcom/google/android/gms/internal/firebase-auth-api/B;->o(ILjava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/n;Z)V

    goto/16 :goto_2

    :pswitch_18
    aget v11, v3, v8

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v11, v6, v2, v15}, Lcom/google/android/gms/internal/firebase-auth-api/B;->g(ILjava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/n;Z)V

    goto/16 :goto_2

    :pswitch_19
    aget v11, v3, v8

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v11, v6, v2, v15}, Lcom/google/android/gms/internal/firebase-auth-api/B;->t(ILjava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/n;Z)V

    goto/16 :goto_2

    :pswitch_1a
    aget v11, v3, v8

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v11, v6, v2, v15}, Lcom/google/android/gms/internal/firebase-auth-api/B;->d(ILjava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/n;Z)V

    goto/16 :goto_2

    :pswitch_1b
    aget v11, v3, v8

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v11, v6, v2, v15}, Lcom/google/android/gms/internal/firebase-auth-api/B;->h(ILjava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/n;Z)V

    goto/16 :goto_2

    :pswitch_1c
    aget v11, v3, v8

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v11, v6, v2, v15}, Lcom/google/android/gms/internal/firebase-auth-api/B;->i(ILjava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/n;Z)V

    goto/16 :goto_2

    :pswitch_1d
    aget v11, v3, v8

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v11, v6, v2, v15}, Lcom/google/android/gms/internal/firebase-auth-api/B;->l(ILjava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/n;Z)V

    goto/16 :goto_2

    :pswitch_1e
    aget v11, v3, v8

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v11, v6, v2, v15}, Lcom/google/android/gms/internal/firebase-auth-api/B;->v(ILjava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/n;Z)V

    goto/16 :goto_2

    :pswitch_1f
    aget v11, v3, v8

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v11, v6, v2, v15}, Lcom/google/android/gms/internal/firebase-auth-api/B;->m(ILjava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/n;Z)V

    goto/16 :goto_2

    :pswitch_20
    aget v11, v3, v8

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v11, v6, v2, v15}, Lcom/google/android/gms/internal/firebase-auth-api/B;->j(ILjava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/n;Z)V

    goto/16 :goto_2

    :pswitch_21
    aget v11, v3, v8

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v11, v6, v2, v15}, Lcom/google/android/gms/internal/firebase-auth-api/B;->f(ILjava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/n;Z)V

    goto/16 :goto_2

    :pswitch_22
    aget v11, v3, v8

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    const/4 v12, 0x0

    invoke-static {v11, v6, v2, v12}, Lcom/google/android/gms/internal/firebase-auth-api/B;->r(ILjava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/n;Z)V

    :goto_3
    move v13, v12

    goto/16 :goto_4

    :pswitch_23
    const/4 v12, 0x0

    aget v11, v3, v8

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v11, v6, v2, v12}, Lcom/google/android/gms/internal/firebase-auth-api/B;->q(ILjava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/n;Z)V

    goto :goto_3

    :pswitch_24
    const/4 v12, 0x0

    aget v11, v3, v8

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v11, v6, v2, v12}, Lcom/google/android/gms/internal/firebase-auth-api/B;->p(ILjava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/n;Z)V

    goto :goto_3

    :pswitch_25
    const/4 v12, 0x0

    aget v11, v3, v8

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v11, v6, v2, v12}, Lcom/google/android/gms/internal/firebase-auth-api/B;->o(ILjava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/n;Z)V

    goto :goto_3

    :pswitch_26
    const/4 v12, 0x0

    aget v11, v3, v8

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v11, v6, v2, v12}, Lcom/google/android/gms/internal/firebase-auth-api/B;->g(ILjava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/n;Z)V

    goto :goto_3

    :pswitch_27
    const/4 v12, 0x0

    aget v11, v3, v8

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v11, v6, v2, v12}, Lcom/google/android/gms/internal/firebase-auth-api/B;->t(ILjava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/n;Z)V

    goto :goto_3

    :pswitch_28
    aget v11, v3, v8

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v11, v6, v2}, Lcom/google/android/gms/internal/firebase-auth-api/B;->e(ILjava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/n;)V

    goto/16 :goto_2

    :pswitch_29
    aget v11, v3, v8

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/firebase-auth-api/t;->p(I)Lcom/google/android/gms/internal/firebase-auth-api/A;

    move-result-object v7

    invoke-static {v11, v6, v2, v7}, Lcom/google/android/gms/internal/firebase-auth-api/B;->n(ILjava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/n;Lcom/google/android/gms/internal/firebase-auth-api/A;)V

    goto/16 :goto_2

    :pswitch_2a
    aget v11, v3, v8

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v11, v6, v2}, Lcom/google/android/gms/internal/firebase-auth-api/B;->s(ILjava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/n;)V

    goto/16 :goto_2

    :pswitch_2b
    aget v11, v3, v8

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    const/4 v13, 0x0

    invoke-static {v11, v6, v2, v13}, Lcom/google/android/gms/internal/firebase-auth-api/B;->d(ILjava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/n;Z)V

    goto/16 :goto_4

    :pswitch_2c
    const/4 v13, 0x0

    aget v11, v3, v8

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v11, v6, v2, v13}, Lcom/google/android/gms/internal/firebase-auth-api/B;->h(ILjava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/n;Z)V

    goto/16 :goto_4

    :pswitch_2d
    const/4 v13, 0x0

    aget v11, v3, v8

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v11, v6, v2, v13}, Lcom/google/android/gms/internal/firebase-auth-api/B;->i(ILjava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/n;Z)V

    goto/16 :goto_4

    :pswitch_2e
    const/4 v13, 0x0

    aget v11, v3, v8

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v11, v6, v2, v13}, Lcom/google/android/gms/internal/firebase-auth-api/B;->l(ILjava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/n;Z)V

    goto/16 :goto_4

    :pswitch_2f
    const/4 v13, 0x0

    aget v11, v3, v8

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v11, v6, v2, v13}, Lcom/google/android/gms/internal/firebase-auth-api/B;->v(ILjava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/n;Z)V

    goto/16 :goto_4

    :pswitch_30
    const/4 v13, 0x0

    aget v11, v3, v8

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v11, v6, v2, v13}, Lcom/google/android/gms/internal/firebase-auth-api/B;->m(ILjava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/n;Z)V

    goto/16 :goto_4

    :pswitch_31
    const/4 v13, 0x0

    aget v11, v3, v8

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v11, v6, v2, v13}, Lcom/google/android/gms/internal/firebase-auth-api/B;->j(ILjava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/n;Z)V

    goto/16 :goto_4

    :pswitch_32
    const/4 v13, 0x0

    aget v11, v3, v8

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v11, v6, v2, v13}, Lcom/google/android/gms/internal/firebase-auth-api/B;->f(ILjava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/n;Z)V

    goto/16 :goto_4

    :pswitch_33
    const/4 v13, 0x0

    and-int v11, v9, v16

    if-eqz v11, :cond_4

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/firebase-auth-api/t;->p(I)Lcom/google/android/gms/internal/firebase-auth-api/A;

    move-result-object v7

    invoke-virtual {v2, v12, v7, v6}, Lcom/google/android/gms/internal/firebase-auth-api/n;->C(ILcom/google/android/gms/internal/firebase-auth-api/A;Ljava/lang/Object;)V

    goto/16 :goto_4

    :pswitch_34
    const/4 v13, 0x0

    and-int v11, v9, v16

    if-eqz v11, :cond_4

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-virtual {v2, v12, v6, v7}, Lcom/google/android/gms/internal/firebase-auth-api/n;->e(IJ)V

    goto/16 :goto_4

    :pswitch_35
    const/4 v13, 0x0

    and-int v11, v9, v16

    if-eqz v11, :cond_4

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    invoke-virtual {v2, v12, v6}, Lcom/google/android/gms/internal/firebase-auth-api/n;->d(II)V

    goto/16 :goto_4

    :pswitch_36
    const/4 v13, 0x0

    and-int v11, v9, v16

    if-eqz v11, :cond_4

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-virtual {v2, v12, v6, v7}, Lcom/google/android/gms/internal/firebase-auth-api/n;->H(IJ)V

    goto/16 :goto_4

    :pswitch_37
    const/4 v13, 0x0

    and-int v11, v9, v16

    if-eqz v11, :cond_4

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    invoke-virtual {v2, v12, v6}, Lcom/google/android/gms/internal/firebase-auth-api/n;->G(II)V

    goto/16 :goto_4

    :pswitch_38
    const/4 v13, 0x0

    and-int v11, v9, v16

    if-eqz v11, :cond_4

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    invoke-virtual {v2, v12, v6}, Lcom/google/android/gms/internal/firebase-auth-api/n;->y(II)V

    goto/16 :goto_4

    :pswitch_39
    const/4 v13, 0x0

    and-int v11, v9, v16

    if-eqz v11, :cond_4

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    invoke-virtual {v2, v12, v6}, Lcom/google/android/gms/internal/firebase-auth-api/n;->f(II)V

    goto/16 :goto_4

    :pswitch_3a
    const/4 v13, 0x0

    and-int v11, v9, v16

    if-eqz v11, :cond_4

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/firebase-auth-api/Z4;

    invoke-virtual {v2, v12, v6}, Lcom/google/android/gms/internal/firebase-auth-api/n;->r(ILcom/google/android/gms/internal/firebase-auth-api/Z4;)V

    goto/16 :goto_4

    :pswitch_3b
    const/4 v13, 0x0

    and-int v11, v9, v16

    if-eqz v11, :cond_4

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/firebase-auth-api/t;->p(I)Lcom/google/android/gms/internal/firebase-auth-api/A;

    move-result-object v7

    invoke-virtual {v2, v12, v7, v6}, Lcom/google/android/gms/internal/firebase-auth-api/n;->F(ILcom/google/android/gms/internal/firebase-auth-api/A;Ljava/lang/Object;)V

    goto/16 :goto_4

    :pswitch_3c
    const/4 v13, 0x0

    and-int v11, v9, v16

    if-eqz v11, :cond_4

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v12, v6, v2}, Lcom/google/android/gms/internal/firebase-auth-api/t;->D(ILjava/lang/Object;Lcom/google/android/gms/internal/firebase-auth-api/n;)V

    goto/16 :goto_4

    :pswitch_3d
    const/4 v13, 0x0

    and-int v11, v9, v16

    if-eqz v11, :cond_4

    invoke-static {v6, v7, v1}, Lcom/google/android/gms/internal/firebase-auth-api/L;->v(JLjava/lang/Object;)Z

    move-result v6

    invoke-virtual {v2, v12, v6}, Lcom/google/android/gms/internal/firebase-auth-api/n;->l(IZ)V

    goto :goto_4

    :pswitch_3e
    const/4 v13, 0x0

    and-int v11, v9, v16

    if-eqz v11, :cond_4

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    invoke-virtual {v2, v12, v6}, Lcom/google/android/gms/internal/firebase-auth-api/n;->z(II)V

    goto :goto_4

    :pswitch_3f
    const/4 v13, 0x0

    and-int v11, v9, v16

    if-eqz v11, :cond_4

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-virtual {v2, v12, v6, v7}, Lcom/google/android/gms/internal/firebase-auth-api/n;->A(IJ)V

    goto :goto_4

    :pswitch_40
    const/4 v13, 0x0

    and-int v11, v9, v16

    if-eqz v11, :cond_4

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    invoke-virtual {v2, v12, v6}, Lcom/google/android/gms/internal/firebase-auth-api/n;->D(II)V

    goto :goto_4

    :pswitch_41
    const/4 v13, 0x0

    and-int v11, v9, v16

    if-eqz v11, :cond_4

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-virtual {v2, v12, v6, v7}, Lcom/google/android/gms/internal/firebase-auth-api/n;->g(IJ)V

    goto :goto_4

    :pswitch_42
    const/4 v13, 0x0

    and-int v11, v9, v16

    if-eqz v11, :cond_4

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-virtual {v2, v12, v6, v7}, Lcom/google/android/gms/internal/firebase-auth-api/n;->E(IJ)V

    goto :goto_4

    :pswitch_43
    const/4 v13, 0x0

    and-int v11, v9, v16

    if-eqz v11, :cond_4

    invoke-static {v6, v7, v1}, Lcom/google/android/gms/internal/firebase-auth-api/L;->e(JLjava/lang/Object;)F

    move-result v6

    invoke-virtual {v2, v12, v6}, Lcom/google/android/gms/internal/firebase-auth-api/n;->B(IF)V

    goto :goto_4

    :pswitch_44
    const/4 v13, 0x0

    and-int v11, v9, v16

    if-eqz v11, :cond_4

    invoke-static {v6, v7, v1}, Lcom/google/android/gms/internal/firebase-auth-api/L;->d(JLjava/lang/Object;)D

    move-result-wide v6

    invoke-virtual {v2, v12, v6, v7}, Lcom/google/android/gms/internal/firebase-auth-api/n;->u(ID)V

    :cond_4
    :goto_4
    add-int/lit8 v8, v8, 0x3

    const v6, 0xfffff

    goto/16 :goto_0

    :cond_5
    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/t;->l:Lcom/google/android/gms/internal/firebase-auth-api/E;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/firebase-auth-api/E;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase-auth-api/D;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/E;->d(Lcom/google/android/gms/internal/firebase-auth-api/D;Lcom/google/android/gms/internal/firebase-auth-api/n;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
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

.method public final E(Ljava/lang/Object;[BIIILJ0/b;)I
    .locals 30

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move/from16 v11, p5

    move-object/from16 v9, p6

    sget-object v10, Lcom/google/android/gms/internal/firebase-auth-api/t;->n:Lsun/misc/Unsafe;

    move/from16 v0, p3

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0xfffff

    :goto_0
    if-ge v0, v13, :cond_1d

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v12, v0

    if-gez v0, :cond_0

    invoke-static {v0, v12, v1, v9}, Lcom/google/android/gms/internal/firebase-auth-api/s;->U(I[BILJ0/b;)I

    move-result v0

    iget v1, v9, LJ0/b;->a:I

    goto :goto_1

    :cond_0
    move/from16 v29, v1

    move v1, v0

    move/from16 v0, v29

    :goto_1
    ushr-int/lit8 v6, v1, 0x3

    and-int/lit8 v8, v1, 0x7

    iget v7, v15, Lcom/google/android/gms/internal/firebase-auth-api/t;->d:I

    move/from16 v19, v0

    iget v0, v15, Lcom/google/android/gms/internal/firebase-auth-api/t;->c:I

    move/from16 v20, v1

    const/4 v1, 0x3

    if-le v6, v2, :cond_2

    div-int/2addr v3, v1

    if-lt v6, v0, :cond_1

    if-gt v6, v7, :cond_1

    invoke-virtual {v15, v6, v3}, Lcom/google/android/gms/internal/firebase-auth-api/t;->k(II)I

    move-result v0

    goto :goto_2

    :cond_1
    const/4 v0, -0x1

    :goto_2
    move v3, v0

    const/4 v2, -0x1

    const/4 v7, 0x0

    goto :goto_4

    :cond_2
    if-lt v6, v0, :cond_3

    if-gt v6, v7, :cond_3

    const/4 v7, 0x0

    invoke-virtual {v15, v6, v7}, Lcom/google/android/gms/internal/firebase-auth-api/t;->k(II)I

    move-result v0

    goto :goto_3

    :cond_3
    const/4 v7, 0x0

    const/4 v0, -0x1

    :goto_3
    move v3, v0

    const/4 v2, -0x1

    :goto_4
    if-ne v3, v2, :cond_4

    move/from16 v16, v4

    move/from16 v26, v5

    move/from16 v17, v6

    move/from16 v28, v7

    move-object/from16 v27, v10

    move v6, v11

    move-object v15, v14

    move/from16 v7, v20

    move/from16 v20, v28

    move/from16 v29, v19

    move/from16 v19, v2

    move/from16 v2, v29

    goto/16 :goto_14

    :cond_4
    add-int/lit8 v0, v3, 0x1

    iget-object v2, v15, Lcom/google/android/gms/internal/firebase-auth-api/t;->a:[I

    aget v0, v2, v0

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/t;->l(I)I

    move-result v1

    const v16, 0xfffff

    and-int v7, v0, v16

    int-to-long v11, v7

    const/16 v7, 0x11

    move/from16 v22, v0

    if-gt v1, v7, :cond_11

    add-int/lit8 v7, v3, 0x2

    aget v2, v2, v7

    ushr-int/lit8 v7, v2, 0x14

    const/4 v0, 0x1

    shl-int v7, v0, v7

    const v13, 0xfffff

    and-int/2addr v2, v13

    if-eq v2, v5, :cond_6

    move/from16 v16, v1

    if-eq v5, v13, :cond_5

    int-to-long v0, v5

    invoke-virtual {v10, v14, v0, v1, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_5
    int-to-long v0, v2

    invoke-virtual {v10, v14, v0, v1}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    move/from16 v26, v2

    move/from16 v25, v4

    goto :goto_5

    :cond_6
    move/from16 v16, v1

    move/from16 v25, v4

    move/from16 v26, v5

    :goto_5
    const/4 v0, 0x5

    packed-switch v16, :pswitch_data_0

    const/4 v1, 0x3

    if-ne v8, v1, :cond_8

    invoke-virtual {v15, v3}, Lcom/google/android/gms/internal/firebase-auth-api/t;->p(I)Lcom/google/android/gms/internal/firebase-auth-api/A;

    move-result-object v0

    shl-int/lit8 v1, v6, 0x3

    or-int/lit8 v4, v1, 0x4

    move/from16 v5, v19

    move/from16 v8, v20

    move-object/from16 v1, p2

    const/16 v17, -0x1

    move v2, v5

    move v5, v3

    move/from16 v3, p4

    move v13, v5

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/firebase-auth-api/s;->y(Lcom/google/android/gms/internal/firebase-auth-api/A;[BIIILJ0/b;)I

    move-result v0

    and-int v1, v25, v7

    if-nez v1, :cond_7

    iget-object v1, v9, LJ0/b;->c:Ljava/lang/Object;

    invoke-virtual {v10, v14, v11, v12, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_6

    :cond_7
    invoke-virtual {v10, v14, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, v9, LJ0/b;->c:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/d;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase-auth-api/m5;

    move-result-object v1

    invoke-virtual {v10, v14, v11, v12, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_6
    or-int v4, v25, v7

    move-object/from16 v12, p2

    move/from16 v11, p5

    move v2, v6

    move v1, v8

    move v3, v13

    move/from16 v5, v26

    move/from16 v13, p4

    goto/16 :goto_0

    :cond_8
    move v13, v3

    const/16 v17, -0x1

    move-object/from16 v12, p2

    move/from16 v1, v19

    move/from16 v11, v20

    :goto_7
    const v18, 0xfffff

    goto/16 :goto_10

    :pswitch_0
    move v13, v3

    move/from16 v5, v19

    move/from16 v4, v20

    const/16 v17, -0x1

    if-nez v8, :cond_9

    move-wide v2, v11

    move-object/from16 v12, p2

    invoke-static {v12, v5, v9}, Lcom/google/android/gms/internal/firebase-auth-api/s;->W([BILJ0/b;)I

    move-result v8

    iget-wide v0, v9, LJ0/b;->b:J

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->l(J)J

    move-result-wide v19

    move-object v0, v10

    move-object/from16 v1, p1

    move v11, v4

    move-wide/from16 v4, v19

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    :goto_8
    or-int v4, v25, v7

    move v2, v6

    move v0, v8

    :goto_9
    move v1, v11

    move v3, v13

    :goto_a
    move/from16 v5, v26

    move/from16 v13, p4

    :goto_b
    move/from16 v11, p5

    goto/16 :goto_0

    :cond_9
    move-object/from16 v12, p2

    move v11, v4

    :cond_a
    move v1, v5

    goto :goto_7

    :pswitch_1
    move v13, v3

    move-wide v2, v11

    move/from16 v5, v19

    move/from16 v11, v20

    const/16 v17, -0x1

    move-object/from16 v12, p2

    if-nez v8, :cond_a

    invoke-static {v12, v5, v9}, Lcom/google/android/gms/internal/firebase-auth-api/s;->T([BILJ0/b;)I

    move-result v0

    iget v1, v9, LJ0/b;->a:I

    invoke-static {v1}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->k(I)I

    move-result v1

    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_c
    or-int v4, v25, v7

    move v2, v6

    goto :goto_9

    :pswitch_2
    move v13, v3

    move-wide v2, v11

    move/from16 v5, v19

    move/from16 v11, v20

    const/16 v17, -0x1

    move-object/from16 v12, p2

    if-nez v8, :cond_a

    invoke-static {v12, v5, v9}, Lcom/google/android/gms/internal/firebase-auth-api/s;->T([BILJ0/b;)I

    move-result v0

    iget v1, v9, LJ0/b;->a:I

    invoke-virtual {v15, v13}, Lcom/google/android/gms/internal/firebase-auth-api/t;->o(I)V

    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_c

    :pswitch_3
    move v13, v3

    move-wide v2, v11

    move/from16 v5, v19

    move/from16 v11, v20

    const/4 v0, 0x2

    const/16 v17, -0x1

    move-object/from16 v12, p2

    if-ne v8, v0, :cond_a

    invoke-static {v12, v5, v9}, Lcom/google/android/gms/internal/firebase-auth-api/s;->a([BILJ0/b;)I

    move-result v0

    iget-object v1, v9, LJ0/b;->c:Ljava/lang/Object;

    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_c

    :pswitch_4
    move v13, v3

    move-wide v2, v11

    move/from16 v5, v19

    move/from16 v11, v20

    const/4 v0, 0x2

    const/16 v17, -0x1

    move-object/from16 v12, p2

    if-ne v8, v0, :cond_c

    invoke-virtual {v15, v13}, Lcom/google/android/gms/internal/firebase-auth-api/t;->p(I)Lcom/google/android/gms/internal/firebase-auth-api/A;

    move-result-object v0

    move/from16 v4, p4

    const v18, 0xfffff

    invoke-static {v0, v12, v5, v4, v9}, Lcom/google/android/gms/internal/firebase-auth-api/s;->E(Lcom/google/android/gms/internal/firebase-auth-api/A;[BIILJ0/b;)I

    move-result v0

    and-int v1, v25, v7

    if-nez v1, :cond_b

    iget-object v1, v9, LJ0/b;->c:Ljava/lang/Object;

    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_d

    :cond_b
    invoke-virtual {v10, v14, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    iget-object v5, v9, LJ0/b;->c:Ljava/lang/Object;

    invoke-static {v1, v5}, Lcom/google/android/gms/internal/firebase-auth-api/d;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase-auth-api/m5;

    move-result-object v1

    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_d
    or-int v1, v25, v7

    move v2, v6

    move v3, v13

    move/from16 v5, v26

    move v13, v4

    move v4, v1

    move v1, v11

    goto/16 :goto_b

    :cond_c
    move/from16 v4, p4

    const v18, 0xfffff

    :cond_d
    move v1, v5

    goto/16 :goto_10

    :pswitch_5
    move/from16 v4, p4

    move/from16 v18, v13

    move/from16 v5, v19

    const/4 v0, 0x2

    const/16 v17, -0x1

    move v13, v3

    move-wide v2, v11

    move/from16 v11, v20

    move-object/from16 v12, p2

    if-ne v8, v0, :cond_d

    const/high16 v0, 0x20000000

    and-int v0, v22, v0

    if-nez v0, :cond_e

    invoke-static {v12, v5, v9}, Lcom/google/android/gms/internal/firebase-auth-api/s;->P([BILJ0/b;)I

    move-result v0

    goto :goto_e

    :cond_e
    invoke-static {v12, v5, v9}, Lcom/google/android/gms/internal/firebase-auth-api/s;->R([BILJ0/b;)I

    move-result v0

    :goto_e
    iget-object v1, v9, LJ0/b;->c:Ljava/lang/Object;

    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_d

    :pswitch_6
    move/from16 v4, p4

    move/from16 v18, v13

    move/from16 v5, v19

    const/16 v17, -0x1

    move v13, v3

    move-wide v2, v11

    move/from16 v11, v20

    move-object/from16 v12, p2

    if-nez v8, :cond_d

    invoke-static {v12, v5, v9}, Lcom/google/android/gms/internal/firebase-auth-api/s;->W([BILJ0/b;)I

    move-result v0

    move/from16 p3, v0

    iget-wide v0, v9, LJ0/b;->b:J

    const-wide/16 v19, 0x0

    cmp-long v0, v0, v19

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_f

    :cond_f
    const/4 v0, 0x0

    :goto_f
    invoke-static {v14, v2, v3, v0}, Lcom/google/android/gms/internal/firebase-auth-api/L;->l(Ljava/lang/Object;JZ)V

    or-int v0, v25, v7

    move v2, v6

    move v1, v11

    move v3, v13

    move/from16 v5, v26

    move/from16 v11, p5

    move v13, v4

    move v4, v0

    move/from16 v0, p3

    goto/16 :goto_0

    :pswitch_7
    move/from16 v4, p4

    move/from16 v18, v13

    move/from16 v5, v19

    const/16 v17, -0x1

    move v13, v3

    move-wide v2, v11

    move/from16 v11, v20

    move-object/from16 v12, p2

    if-ne v8, v0, :cond_d

    invoke-static {v5, v12}, Lcom/google/android/gms/internal/firebase-auth-api/s;->o(I[B)I

    move-result v0

    invoke-virtual {v10, v14, v2, v3, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v0, v5, 0x4

    goto/16 :goto_d

    :pswitch_8
    move/from16 v4, p4

    move/from16 v18, v13

    move/from16 v5, v19

    const/4 v0, 0x1

    const/16 v17, -0x1

    move v13, v3

    move-wide v2, v11

    move/from16 v11, v20

    move-object/from16 v12, p2

    if-ne v8, v0, :cond_d

    invoke-static {v5, v12}, Lcom/google/android/gms/internal/firebase-auth-api/s;->X(I[B)J

    move-result-wide v19

    move-object v0, v10

    move-object/from16 v1, p1

    move v8, v5

    move-wide/from16 v4, v19

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    add-int/lit8 v0, v8, 0x8

    goto/16 :goto_c

    :pswitch_9
    move/from16 v18, v13

    move/from16 v1, v19

    const/16 v17, -0x1

    move v13, v3

    move-wide v2, v11

    move/from16 v11, v20

    move-object/from16 v12, p2

    if-nez v8, :cond_10

    invoke-static {v12, v1, v9}, Lcom/google/android/gms/internal/firebase-auth-api/s;->T([BILJ0/b;)I

    move-result v0

    iget v1, v9, LJ0/b;->a:I

    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_c

    :pswitch_a
    move/from16 v18, v13

    move/from16 v1, v19

    const/16 v17, -0x1

    move v13, v3

    move-wide v2, v11

    move/from16 v11, v20

    move-object/from16 v12, p2

    if-nez v8, :cond_10

    invoke-static {v12, v1, v9}, Lcom/google/android/gms/internal/firebase-auth-api/s;->W([BILJ0/b;)I

    move-result v8

    iget-wide v4, v9, LJ0/b;->b:J

    move-object v0, v10

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    goto/16 :goto_8

    :pswitch_b
    move/from16 v18, v13

    move/from16 v1, v19

    const/16 v17, -0x1

    move v13, v3

    move-wide v2, v11

    move/from16 v11, v20

    move-object/from16 v12, p2

    if-ne v8, v0, :cond_10

    invoke-static {v1, v12}, Lcom/google/android/gms/internal/firebase-auth-api/s;->o(I[B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-static {v14, v2, v3, v0}, Lcom/google/android/gms/internal/firebase-auth-api/L;->o(Ljava/lang/Object;JF)V

    add-int/lit8 v0, v1, 0x4

    goto/16 :goto_c

    :pswitch_c
    move/from16 v18, v13

    move/from16 v1, v19

    const/4 v0, 0x1

    const/16 v17, -0x1

    move v13, v3

    move-wide v2, v11

    move/from16 v11, v20

    move-object/from16 v12, p2

    if-ne v8, v0, :cond_10

    invoke-static {v1, v12}, Lcom/google/android/gms/internal/firebase-auth-api/s;->X(I[B)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v4

    invoke-static {v14, v2, v3, v4, v5}, Lcom/google/android/gms/internal/firebase-auth-api/L;->n(Ljava/lang/Object;JD)V

    add-int/lit8 v0, v1, 0x8

    goto/16 :goto_c

    :cond_10
    :goto_10
    move v2, v1

    move-object/from16 v27, v10

    move v7, v11

    move/from16 v28, v13

    move-object v15, v14

    move/from16 v19, v17

    move/from16 v16, v25

    const/16 v20, 0x0

    move/from16 v17, v6

    move/from16 v6, p5

    goto/16 :goto_14

    :cond_11
    move/from16 v16, v1

    move v13, v3

    move-wide v2, v11

    move/from16 v1, v19

    move/from16 v11, v20

    const/16 v17, -0x1

    const v18, 0xfffff

    move-object/from16 v12, p2

    const/16 v0, 0x1b

    move/from16 v7, v16

    if-ne v7, v0, :cond_15

    const/4 v0, 0x2

    if-ne v8, v0, :cond_14

    invoke-virtual {v10, v14, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/c;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/V4;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/V4;->m()Z

    move-result v7

    if-nez v7, :cond_13

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_12

    const/16 v7, 0xa

    goto :goto_11

    :cond_12
    add-int/2addr v7, v7

    :goto_11
    invoke-interface {v0, v7}, Lcom/google/android/gms/internal/firebase-auth-api/c;->d(I)Lcom/google/android/gms/internal/firebase-auth-api/c;

    move-result-object v0

    invoke-virtual {v10, v14, v2, v3, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_13
    move-object v7, v0

    invoke-virtual {v15, v13}, Lcom/google/android/gms/internal/firebase-auth-api/t;->p(I)Lcom/google/android/gms/internal/firebase-auth-api/A;

    move-result-object v0

    move v3, v1

    move v1, v11

    move-object/from16 v2, p2

    move/from16 v16, v4

    move/from16 v4, p4

    move/from16 v26, v5

    move-object v5, v7

    move/from16 v19, v17

    move/from16 v17, v6

    move-object/from16 v6, p6

    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/firebase-auth-api/s;->K(Lcom/google/android/gms/internal/firebase-auth-api/A;I[BIILcom/google/android/gms/internal/firebase-auth-api/c;LJ0/b;)I

    move-result v0

    move v3, v13

    move/from16 v4, v16

    move/from16 v2, v17

    goto/16 :goto_a

    :cond_14
    move/from16 v16, v4

    move/from16 v26, v5

    move/from16 v19, v17

    move/from16 v17, v6

    move v15, v1

    move-object/from16 v27, v10

    move/from16 p3, v11

    move/from16 v28, v13

    const/16 v20, 0x0

    goto/16 :goto_12

    :cond_15
    move/from16 v16, v4

    move/from16 v26, v5

    move/from16 v19, v17

    move/from16 v17, v6

    move v6, v1

    const/16 v0, 0x31

    if-gt v7, v0, :cond_17

    move/from16 v0, v22

    int-to-long v4, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v24, v2

    move-object/from16 v2, p2

    move v3, v6

    move-wide/from16 v22, v4

    move/from16 v4, p4

    move v5, v11

    move v15, v6

    move/from16 v6, v17

    move/from16 v21, v7

    const/16 v20, 0x0

    move v7, v8

    move v8, v13

    move-object/from16 v27, v10

    move-wide/from16 v9, v22

    move/from16 p3, v11

    move/from16 v11, v21

    move/from16 v28, v13

    move-wide/from16 v12, v24

    move-object/from16 v14, p6

    invoke-virtual/range {v0 .. v14}, Lcom/google/android/gms/internal/firebase-auth-api/t;->N(Ljava/lang/Object;[BIIIIIIJIJLJ0/b;)I

    move-result v0

    if-eq v0, v15, :cond_16

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v1, p3

    move/from16 v13, p4

    move/from16 v11, p5

    move-object/from16 v9, p6

    move/from16 v4, v16

    move/from16 v2, v17

    move/from16 v5, v26

    move-object/from16 v10, v27

    move/from16 v3, v28

    goto/16 :goto_0

    :cond_16
    move-object/from16 v15, p1

    move/from16 v7, p3

    move/from16 v6, p5

    move v2, v0

    goto/16 :goto_14

    :cond_17
    move-wide/from16 v24, v2

    move v15, v6

    move/from16 v21, v7

    move-object/from16 v27, v10

    move/from16 p3, v11

    move/from16 v28, v13

    move/from16 v0, v22

    const/16 v20, 0x0

    const/16 v1, 0x32

    move/from16 v9, v21

    if-ne v9, v1, :cond_19

    const/4 v1, 0x2

    if-eq v8, v1, :cond_18

    :goto_12
    move/from16 v7, p3

    move/from16 v6, p5

    move v2, v15

    move-object/from16 v15, p1

    goto/16 :goto_14

    :cond_18
    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move-wide/from16 v10, v24

    move/from16 v13, v28

    invoke-virtual {v14, v13, v10, v11, v15}, Lcom/google/android/gms/internal/firebase-auth-api/t;->K(IJLjava/lang/Object;)V

    const/4 v12, 0x0

    throw v12

    :cond_19
    const/4 v12, 0x0

    move-object/from16 v14, p0

    move/from16 v18, v0

    move v7, v15

    move-wide/from16 v10, v24

    move/from16 v13, v28

    move-object/from16 v15, p1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v7

    move/from16 v4, p4

    move/from16 v5, p3

    move/from16 v6, v17

    move v14, v7

    move v7, v8

    move/from16 v8, v18

    move v12, v13

    move/from16 v18, v13

    move-object/from16 v13, p6

    invoke-virtual/range {v0 .. v13}, Lcom/google/android/gms/internal/firebase-auth-api/t;->L(Ljava/lang/Object;[BIIIIIIIJILJ0/b;)I

    move-result v0

    if-eq v0, v14, :cond_1a

    move-object/from16 v12, p2

    move/from16 v1, p3

    move/from16 v13, p4

    move/from16 v11, p5

    move-object/from16 v9, p6

    move-object v14, v15

    move/from16 v4, v16

    move/from16 v2, v17

    move/from16 v3, v18

    move/from16 v5, v26

    move-object/from16 v10, v27

    :goto_13
    move-object/from16 v15, p0

    goto/16 :goto_0

    :cond_1a
    move/from16 v7, p3

    move/from16 v6, p5

    move v2, v0

    move/from16 v28, v18

    :goto_14
    if-ne v7, v6, :cond_1b

    if-eqz v6, :cond_1b

    move v0, v2

    move v1, v7

    move/from16 v4, v16

    move/from16 v5, v26

    :goto_15
    const v2, 0xfffff

    goto :goto_16

    :cond_1b
    move-object v0, v15

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/m5;

    iget-object v1, v0, Lcom/google/android/gms/internal/firebase-auth-api/m5;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/D;

    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/D;->f:Lcom/google/android/gms/internal/firebase-auth-api/D;

    if-ne v1, v3, :cond_1c

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/D;->b()Lcom/google/android/gms/internal/firebase-auth-api/D;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/firebase-auth-api/m5;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/D;

    :cond_1c
    move-object v4, v1

    move v0, v7

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/firebase-auth-api/s;->S(I[BIILcom/google/android/gms/internal/firebase-auth-api/D;LJ0/b;)I

    move-result v0

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v9, p6

    move v11, v6

    move v1, v7

    move-object v14, v15

    move/from16 v4, v16

    move/from16 v2, v17

    move/from16 v5, v26

    move-object/from16 v10, v27

    move/from16 v3, v28

    goto :goto_13

    :cond_1d
    move/from16 v16, v4

    move/from16 v26, v5

    move-object/from16 v27, v10

    move v6, v11

    move-object v15, v14

    goto :goto_15

    :goto_16
    if-eq v5, v2, :cond_1e

    int-to-long v2, v5

    move-object/from16 v5, v27

    invoke-virtual {v5, v15, v2, v3, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_1e
    move-object/from16 v2, p0

    iget v3, v2, Lcom/google/android/gms/internal/firebase-auth-api/t;->i:I

    :goto_17
    iget v4, v2, Lcom/google/android/gms/internal/firebase-auth-api/t;->j:I

    if-ge v3, v4, :cond_1f

    iget-object v4, v2, Lcom/google/android/gms/internal/firebase-auth-api/t;->h:[I

    aget v4, v4, v3

    const/4 v5, 0x0

    invoke-virtual {v2, v15, v4, v5}, Lcom/google/android/gms/internal/firebase-auth-api/t;->q(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    :cond_1f
    if-nez v6, :cond_21

    move/from16 v2, p4

    if-ne v0, v2, :cond_20

    goto :goto_18

    :cond_20
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/f;->d()Lcom/google/android/gms/internal/firebase-auth-api/f;

    move-result-object v0

    throw v0

    :cond_21
    move/from16 v2, p4

    if-gt v0, v2, :cond_22

    if-ne v1, v6, :cond_22

    :goto_18
    return v0

    :cond_22
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/f;->d()Lcom/google/android/gms/internal/firebase-auth-api/f;

    move-result-object v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final H(Ljava/lang/Object;)I
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/t;->n:Lsun/misc/Unsafe;

    const v4, 0xfffff

    move v8, v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    iget-object v9, v0, Lcom/google/android/gms/internal/firebase-auth-api/t;->a:[I

    array-length v10, v9

    if-ge v5, v10, :cond_5

    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/firebase-auth-api/t;->m(I)I

    move-result v10

    aget v11, v9, v5

    invoke-static {v10}, Lcom/google/android/gms/internal/firebase-auth-api/t;->l(I)I

    move-result v12

    const/16 v13, 0x11

    const/4 v14, 0x1

    if-gt v12, v13, :cond_0

    add-int/lit8 v13, v5, 0x2

    aget v9, v9, v13

    and-int v13, v9, v4

    ushr-int/lit8 v9, v9, 0x14

    shl-int v9, v14, v9

    if-eq v13, v8, :cond_1

    int-to-long v7, v13

    invoke-virtual {v2, v1, v7, v8}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v7

    move v8, v13

    goto :goto_1

    :cond_0
    const/4 v9, 0x0

    :cond_1
    :goto_1
    and-int/2addr v10, v4

    int-to-long v3, v10

    const/16 v10, 0x3f

    const/4 v13, 0x4

    const/16 v15, 0x8

    packed-switch v12, :pswitch_data_0

    goto/16 :goto_5

    :pswitch_0
    invoke-virtual {v0, v11, v1, v5}, Lcom/google/android/gms/internal/firebase-auth-api/t;->B(ILjava/lang/Object;I)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/firebase-auth-api/U4;

    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/firebase-auth-api/t;->p(I)Lcom/google/android/gms/internal/firebase-auth-api/A;

    move-result-object v4

    invoke-static {v11, v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/f5;->t0(ILcom/google/android/gms/internal/firebase-auth-api/U4;Lcom/google/android/gms/internal/firebase-auth-api/A;)I

    move-result v3

    :goto_2
    add-int/2addr v6, v3

    goto/16 :goto_5

    :pswitch_1
    invoke-virtual {v0, v11, v1, v5}, Lcom/google/android/gms/internal/firebase-auth-api/t;->B(ILjava/lang/Object;I)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-static {v3, v4, v1}, Lcom/google/android/gms/internal/firebase-auth-api/t;->n(JLjava/lang/Object;)J

    move-result-wide v3

    shl-int/lit8 v9, v11, 0x3

    invoke-static {v9}, Lcom/google/android/gms/internal/firebase-auth-api/f5;->a0(I)I

    move-result v9

    add-long v11, v3, v3

    shr-long/2addr v3, v10

    xor-long/2addr v3, v11

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/f5;->b0(J)I

    move-result v3

    :goto_3
    add-int/2addr v3, v9

    goto :goto_2

    :pswitch_2
    invoke-virtual {v0, v11, v1, v5}, Lcom/google/android/gms/internal/firebase-auth-api/t;->B(ILjava/lang/Object;I)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-static {v3, v4, v1}, Lcom/google/android/gms/internal/firebase-auth-api/t;->J(JLjava/lang/Object;)I

    move-result v3

    shl-int/lit8 v4, v11, 0x3

    invoke-static {v4}, Lcom/google/android/gms/internal/firebase-auth-api/f5;->a0(I)I

    move-result v4

    add-int v9, v3, v3

    shr-int/lit8 v3, v3, 0x1f

    xor-int/2addr v3, v9

    invoke-static {v3, v4, v6}, LB/f;->r(III)I

    move-result v6

    goto/16 :goto_5

    :pswitch_3
    invoke-virtual {v0, v11, v1, v5}, Lcom/google/android/gms/internal/firebase-auth-api/t;->B(ILjava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_4

    shl-int/lit8 v3, v11, 0x3

    invoke-static {v3, v15, v6}, LB/f;->r(III)I

    move-result v6

    goto/16 :goto_5

    :pswitch_4
    invoke-virtual {v0, v11, v1, v5}, Lcom/google/android/gms/internal/firebase-auth-api/t;->B(ILjava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_4

    shl-int/lit8 v3, v11, 0x3

    invoke-static {v3, v13, v6}, LB/f;->r(III)I

    move-result v6

    goto/16 :goto_5

    :pswitch_5
    invoke-virtual {v0, v11, v1, v5}, Lcom/google/android/gms/internal/firebase-auth-api/t;->B(ILjava/lang/Object;I)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-static {v3, v4, v1}, Lcom/google/android/gms/internal/firebase-auth-api/t;->J(JLjava/lang/Object;)I

    move-result v3

    shl-int/lit8 v4, v11, 0x3

    invoke-static {v4}, Lcom/google/android/gms/internal/firebase-auth-api/f5;->a0(I)I

    move-result v4

    invoke-static {v3}, Lcom/google/android/gms/internal/firebase-auth-api/f5;->u0(I)I

    move-result v3

    :goto_4
    add-int/2addr v3, v4

    goto :goto_2

    :pswitch_6
    invoke-virtual {v0, v11, v1, v5}, Lcom/google/android/gms/internal/firebase-auth-api/t;->B(ILjava/lang/Object;I)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-static {v3, v4, v1}, Lcom/google/android/gms/internal/firebase-auth-api/t;->J(JLjava/lang/Object;)I

    move-result v3

    shl-int/lit8 v4, v11, 0x3

    invoke-static {v4}, Lcom/google/android/gms/internal/firebase-auth-api/f5;->a0(I)I

    move-result v4

    invoke-static {v3, v4, v6}, LB/f;->r(III)I

    move-result v6

    goto/16 :goto_5

    :pswitch_7
    invoke-virtual {v0, v11, v1, v5}, Lcom/google/android/gms/internal/firebase-auth-api/t;->B(ILjava/lang/Object;I)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/firebase-auth-api/Z4;

    shl-int/lit8 v4, v11, 0x3

    invoke-static {v4}, Lcom/google/android/gms/internal/firebase-auth-api/f5;->a0(I)I

    move-result v4

    invoke-virtual {v3}, Lcom/google/android/gms/internal/firebase-auth-api/Z4;->n()I

    move-result v3

    invoke-static {v3, v3, v4, v6}, LB/f;->s(IIII)I

    move-result v6

    goto/16 :goto_5

    :pswitch_8
    invoke-virtual {v0, v11, v1, v5}, Lcom/google/android/gms/internal/firebase-auth-api/t;->B(ILjava/lang/Object;I)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/firebase-auth-api/t;->p(I)Lcom/google/android/gms/internal/firebase-auth-api/A;

    move-result-object v4

    invoke-static {v11, v4, v3}, Lcom/google/android/gms/internal/firebase-auth-api/B;->K(ILcom/google/android/gms/internal/firebase-auth-api/A;Ljava/lang/Object;)I

    move-result v3

    goto/16 :goto_2

    :pswitch_9
    invoke-virtual {v0, v11, v1, v5}, Lcom/google/android/gms/internal/firebase-auth-api/t;->B(ILjava/lang/Object;I)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lcom/google/android/gms/internal/firebase-auth-api/Z4;

    if-eqz v4, :cond_2

    check-cast v3, Lcom/google/android/gms/internal/firebase-auth-api/Z4;

    shl-int/lit8 v4, v11, 0x3

    invoke-static {v4}, Lcom/google/android/gms/internal/firebase-auth-api/f5;->a0(I)I

    move-result v4

    invoke-virtual {v3}, Lcom/google/android/gms/internal/firebase-auth-api/Z4;->n()I

    move-result v3

    invoke-static {v3, v3, v4, v6}, LB/f;->s(IIII)I

    move-result v6

    goto/16 :goto_5

    :cond_2
    check-cast v3, Ljava/lang/String;

    shl-int/lit8 v4, v11, 0x3

    invoke-static {v4}, Lcom/google/android/gms/internal/firebase-auth-api/f5;->a0(I)I

    move-result v4

    invoke-static {v3}, Lcom/google/android/gms/internal/firebase-auth-api/f5;->Y(Ljava/lang/String;)I

    move-result v3

    goto :goto_4

    :pswitch_a
    invoke-virtual {v0, v11, v1, v5}, Lcom/google/android/gms/internal/firebase-auth-api/t;->B(ILjava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_4

    shl-int/lit8 v3, v11, 0x3

    invoke-static {v3, v14, v6}, LB/f;->r(III)I

    move-result v6

    goto/16 :goto_5

    :pswitch_b
    invoke-virtual {v0, v11, v1, v5}, Lcom/google/android/gms/internal/firebase-auth-api/t;->B(ILjava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_4

    shl-int/lit8 v3, v11, 0x3

    invoke-static {v3, v13, v6}, LB/f;->r(III)I

    move-result v6

    goto/16 :goto_5

    :pswitch_c
    invoke-virtual {v0, v11, v1, v5}, Lcom/google/android/gms/internal/firebase-auth-api/t;->B(ILjava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_4

    shl-int/lit8 v3, v11, 0x3

    invoke-static {v3, v15, v6}, LB/f;->r(III)I

    move-result v6

    goto/16 :goto_5

    :pswitch_d
    invoke-virtual {v0, v11, v1, v5}, Lcom/google/android/gms/internal/firebase-auth-api/t;->B(ILjava/lang/Object;I)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-static {v3, v4, v1}, Lcom/google/android/gms/internal/firebase-auth-api/t;->J(JLjava/lang/Object;)I

    move-result v3

    shl-int/lit8 v4, v11, 0x3

    invoke-static {v4}, Lcom/google/android/gms/internal/firebase-auth-api/f5;->a0(I)I

    move-result v4

    invoke-static {v3}, Lcom/google/android/gms/internal/firebase-auth-api/f5;->u0(I)I

    move-result v3

    goto/16 :goto_4

    :pswitch_e
    invoke-virtual {v0, v11, v1, v5}, Lcom/google/android/gms/internal/firebase-auth-api/t;->B(ILjava/lang/Object;I)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-static {v3, v4, v1}, Lcom/google/android/gms/internal/firebase-auth-api/t;->n(JLjava/lang/Object;)J

    move-result-wide v3

    shl-int/lit8 v9, v11, 0x3

    invoke-static {v9}, Lcom/google/android/gms/internal/firebase-auth-api/f5;->a0(I)I

    move-result v9

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/f5;->b0(J)I

    move-result v3

    goto/16 :goto_3

    :pswitch_f
    invoke-virtual {v0, v11, v1, v5}, Lcom/google/android/gms/internal/firebase-auth-api/t;->B(ILjava/lang/Object;I)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-static {v3, v4, v1}, Lcom/google/android/gms/internal/firebase-auth-api/t;->n(JLjava/lang/Object;)J

    move-result-wide v3

    shl-int/lit8 v9, v11, 0x3

    invoke-static {v9}, Lcom/google/android/gms/internal/firebase-auth-api/f5;->a0(I)I

    move-result v9

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/f5;->b0(J)I

    move-result v3

    goto/16 :goto_3

    :pswitch_10
    invoke-virtual {v0, v11, v1, v5}, Lcom/google/android/gms/internal/firebase-auth-api/t;->B(ILjava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_4

    shl-int/lit8 v3, v11, 0x3

    invoke-static {v3, v13, v6}, LB/f;->r(III)I

    move-result v6

    goto/16 :goto_5

    :pswitch_11
    invoke-virtual {v0, v11, v1, v5}, Lcom/google/android/gms/internal/firebase-auth-api/t;->B(ILjava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_4

    shl-int/lit8 v3, v11, 0x3

    invoke-static {v3, v15, v6}, LB/f;->r(III)I

    move-result v6

    goto/16 :goto_5

    :pswitch_12
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/firebase-auth-api/t;->r(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/p;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_5

    :pswitch_13
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/firebase-auth-api/t;->p(I)Lcom/google/android/gms/internal/firebase-auth-api/A;

    move-result-object v4

    invoke-static {v11, v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/B;->F(ILjava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/A;)I

    move-result v3

    goto/16 :goto_2

    :pswitch_14
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/android/gms/internal/firebase-auth-api/B;->P(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_4

    invoke-static {v11}, Lcom/google/android/gms/internal/firebase-auth-api/f5;->Z(I)I

    move-result v4

    invoke-static {v3, v4, v3, v6}, LB/f;->s(IIII)I

    move-result v6

    goto/16 :goto_5

    :pswitch_15
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/android/gms/internal/firebase-auth-api/B;->N(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_4

    invoke-static {v11}, Lcom/google/android/gms/internal/firebase-auth-api/f5;->Z(I)I

    move-result v4

    invoke-static {v3, v4, v3, v6}, LB/f;->s(IIII)I

    move-result v6

    goto/16 :goto_5

    :pswitch_16
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/android/gms/internal/firebase-auth-api/B;->E(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_4

    invoke-static {v11}, Lcom/google/android/gms/internal/firebase-auth-api/f5;->Z(I)I

    move-result v4

    invoke-static {v3, v4, v3, v6}, LB/f;->s(IIII)I

    move-result v6

    goto/16 :goto_5

    :pswitch_17
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/android/gms/internal/firebase-auth-api/B;->C(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_4

    invoke-static {v11}, Lcom/google/android/gms/internal/firebase-auth-api/f5;->Z(I)I

    move-result v4

    invoke-static {v3, v4, v3, v6}, LB/f;->s(IIII)I

    move-result v6

    goto/16 :goto_5

    :pswitch_18
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/android/gms/internal/firebase-auth-api/B;->A(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_4

    invoke-static {v11}, Lcom/google/android/gms/internal/firebase-auth-api/f5;->Z(I)I

    move-result v4

    invoke-static {v3, v4, v3, v6}, LB/f;->s(IIII)I

    move-result v6

    goto/16 :goto_5

    :pswitch_19
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/android/gms/internal/firebase-auth-api/B;->S(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_4

    invoke-static {v11}, Lcom/google/android/gms/internal/firebase-auth-api/f5;->Z(I)I

    move-result v4

    invoke-static {v3, v4, v3, v6}, LB/f;->s(IIII)I

    move-result v6

    goto/16 :goto_5

    :pswitch_1a
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/android/gms/internal/firebase-auth-api/B;->x(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_4

    invoke-static {v11}, Lcom/google/android/gms/internal/firebase-auth-api/f5;->Z(I)I

    move-result v4

    invoke-static {v3, v4, v3, v6}, LB/f;->s(IIII)I

    move-result v6

    goto/16 :goto_5

    :pswitch_1b
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/android/gms/internal/firebase-auth-api/B;->C(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_4

    invoke-static {v11}, Lcom/google/android/gms/internal/firebase-auth-api/f5;->Z(I)I

    move-result v4

    invoke-static {v3, v4, v3, v6}, LB/f;->s(IIII)I

    move-result v6

    goto/16 :goto_5

    :pswitch_1c
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/android/gms/internal/firebase-auth-api/B;->E(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_4

    invoke-static {v11}, Lcom/google/android/gms/internal/firebase-auth-api/f5;->Z(I)I

    move-result v4

    invoke-static {v3, v4, v3, v6}, LB/f;->s(IIII)I

    move-result v6

    goto/16 :goto_5

    :pswitch_1d
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/android/gms/internal/firebase-auth-api/B;->H(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_4

    invoke-static {v11}, Lcom/google/android/gms/internal/firebase-auth-api/f5;->Z(I)I

    move-result v4

    invoke-static {v3, v4, v3, v6}, LB/f;->s(IIII)I

    move-result v6

    goto/16 :goto_5

    :pswitch_1e
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/android/gms/internal/firebase-auth-api/B;->U(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_4

    invoke-static {v11}, Lcom/google/android/gms/internal/firebase-auth-api/f5;->Z(I)I

    move-result v4

    invoke-static {v3, v4, v3, v6}, LB/f;->s(IIII)I

    move-result v6

    goto/16 :goto_5

    :pswitch_1f
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/android/gms/internal/firebase-auth-api/B;->J(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_4

    invoke-static {v11}, Lcom/google/android/gms/internal/firebase-auth-api/f5;->Z(I)I

    move-result v4

    invoke-static {v3, v4, v3, v6}, LB/f;->s(IIII)I

    move-result v6

    goto/16 :goto_5

    :pswitch_20
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/android/gms/internal/firebase-auth-api/B;->C(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_4

    invoke-static {v11}, Lcom/google/android/gms/internal/firebase-auth-api/f5;->Z(I)I

    move-result v4

    invoke-static {v3, v4, v3, v6}, LB/f;->s(IIII)I

    move-result v6

    goto/16 :goto_5

    :pswitch_21
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/android/gms/internal/firebase-auth-api/B;->E(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_4

    invoke-static {v11}, Lcom/google/android/gms/internal/firebase-auth-api/f5;->Z(I)I

    move-result v4

    invoke-static {v3, v4, v3, v6}, LB/f;->s(IIII)I

    move-result v6

    goto/16 :goto_5

    :pswitch_22
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v11, v3}, Lcom/google/android/gms/internal/firebase-auth-api/B;->O(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_2

    :pswitch_23
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v11, v3}, Lcom/google/android/gms/internal/firebase-auth-api/B;->M(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_2

    :pswitch_24
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v11, v3}, Lcom/google/android/gms/internal/firebase-auth-api/B;->D(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_2

    :pswitch_25
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v11, v3}, Lcom/google/android/gms/internal/firebase-auth-api/B;->B(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_2

    :pswitch_26
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v11, v3}, Lcom/google/android/gms/internal/firebase-auth-api/B;->z(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_2

    :pswitch_27
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v11, v3}, Lcom/google/android/gms/internal/firebase-auth-api/B;->R(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_2

    :pswitch_28
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v11, v3}, Lcom/google/android/gms/internal/firebase-auth-api/B;->y(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_2

    :pswitch_29
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/firebase-auth-api/t;->p(I)Lcom/google/android/gms/internal/firebase-auth-api/A;

    move-result-object v4

    invoke-static {v11, v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/B;->L(ILjava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/A;)I

    move-result v3

    goto/16 :goto_2

    :pswitch_2a
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v11, v3}, Lcom/google/android/gms/internal/firebase-auth-api/B;->Q(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_2

    :pswitch_2b
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v11, v3}, Lcom/google/android/gms/internal/firebase-auth-api/B;->u(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_2

    :pswitch_2c
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v11, v3}, Lcom/google/android/gms/internal/firebase-auth-api/B;->B(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_2

    :pswitch_2d
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v11, v3}, Lcom/google/android/gms/internal/firebase-auth-api/B;->D(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_2

    :pswitch_2e
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v11, v3}, Lcom/google/android/gms/internal/firebase-auth-api/B;->G(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_2

    :pswitch_2f
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v11, v3}, Lcom/google/android/gms/internal/firebase-auth-api/B;->T(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_2

    :pswitch_30
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v11, v3}, Lcom/google/android/gms/internal/firebase-auth-api/B;->I(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_2

    :pswitch_31
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v11, v3}, Lcom/google/android/gms/internal/firebase-auth-api/B;->B(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_2

    :pswitch_32
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v11, v3}, Lcom/google/android/gms/internal/firebase-auth-api/B;->D(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_2

    :pswitch_33
    and-int/2addr v9, v7

    if-eqz v9, :cond_4

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/firebase-auth-api/U4;

    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/firebase-auth-api/t;->p(I)Lcom/google/android/gms/internal/firebase-auth-api/A;

    move-result-object v4

    invoke-static {v11, v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/f5;->t0(ILcom/google/android/gms/internal/firebase-auth-api/U4;Lcom/google/android/gms/internal/firebase-auth-api/A;)I

    move-result v3

    goto/16 :goto_2

    :pswitch_34
    and-int/2addr v9, v7

    if-eqz v9, :cond_4

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v3

    shl-int/lit8 v9, v11, 0x3

    invoke-static {v9}, Lcom/google/android/gms/internal/firebase-auth-api/f5;->a0(I)I

    move-result v9

    add-long v11, v3, v3

    shr-long/2addr v3, v10

    xor-long/2addr v3, v11

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/f5;->b0(J)I

    move-result v3

    goto/16 :goto_3

    :pswitch_35
    and-int/2addr v9, v7

    if-eqz v9, :cond_4

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    shl-int/lit8 v4, v11, 0x3

    invoke-static {v4}, Lcom/google/android/gms/internal/firebase-auth-api/f5;->a0(I)I

    move-result v4

    add-int v9, v3, v3

    shr-int/lit8 v3, v3, 0x1f

    xor-int/2addr v3, v9

    invoke-static {v3, v4, v6}, LB/f;->r(III)I

    move-result v6

    goto/16 :goto_5

    :pswitch_36
    and-int v3, v7, v9

    if-eqz v3, :cond_4

    shl-int/lit8 v3, v11, 0x3

    invoke-static {v3, v15, v6}, LB/f;->r(III)I

    move-result v6

    goto/16 :goto_5

    :pswitch_37
    and-int v3, v7, v9

    if-eqz v3, :cond_4

    shl-int/lit8 v3, v11, 0x3

    invoke-static {v3, v13, v6}, LB/f;->r(III)I

    move-result v6

    goto/16 :goto_5

    :pswitch_38
    and-int/2addr v9, v7

    if-eqz v9, :cond_4

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    shl-int/lit8 v4, v11, 0x3

    invoke-static {v4}, Lcom/google/android/gms/internal/firebase-auth-api/f5;->a0(I)I

    move-result v4

    invoke-static {v3}, Lcom/google/android/gms/internal/firebase-auth-api/f5;->u0(I)I

    move-result v3

    goto/16 :goto_4

    :pswitch_39
    and-int/2addr v9, v7

    if-eqz v9, :cond_4

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    shl-int/lit8 v4, v11, 0x3

    invoke-static {v4}, Lcom/google/android/gms/internal/firebase-auth-api/f5;->a0(I)I

    move-result v4

    invoke-static {v3, v4, v6}, LB/f;->r(III)I

    move-result v6

    goto/16 :goto_5

    :pswitch_3a
    and-int/2addr v9, v7

    if-eqz v9, :cond_4

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/firebase-auth-api/Z4;

    shl-int/lit8 v4, v11, 0x3

    invoke-static {v4}, Lcom/google/android/gms/internal/firebase-auth-api/f5;->a0(I)I

    move-result v4

    invoke-virtual {v3}, Lcom/google/android/gms/internal/firebase-auth-api/Z4;->n()I

    move-result v3

    invoke-static {v3, v3, v4, v6}, LB/f;->s(IIII)I

    move-result v6

    goto/16 :goto_5

    :pswitch_3b
    and-int/2addr v9, v7

    if-eqz v9, :cond_4

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/firebase-auth-api/t;->p(I)Lcom/google/android/gms/internal/firebase-auth-api/A;

    move-result-object v4

    invoke-static {v11, v4, v3}, Lcom/google/android/gms/internal/firebase-auth-api/B;->K(ILcom/google/android/gms/internal/firebase-auth-api/A;Ljava/lang/Object;)I

    move-result v3

    goto/16 :goto_2

    :pswitch_3c
    and-int/2addr v9, v7

    if-eqz v9, :cond_4

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lcom/google/android/gms/internal/firebase-auth-api/Z4;

    if-eqz v4, :cond_3

    check-cast v3, Lcom/google/android/gms/internal/firebase-auth-api/Z4;

    shl-int/lit8 v4, v11, 0x3

    invoke-static {v4}, Lcom/google/android/gms/internal/firebase-auth-api/f5;->a0(I)I

    move-result v4

    invoke-virtual {v3}, Lcom/google/android/gms/internal/firebase-auth-api/Z4;->n()I

    move-result v3

    invoke-static {v3, v3, v4, v6}, LB/f;->s(IIII)I

    move-result v6

    goto/16 :goto_5

    :cond_3
    check-cast v3, Ljava/lang/String;

    shl-int/lit8 v4, v11, 0x3

    invoke-static {v4}, Lcom/google/android/gms/internal/firebase-auth-api/f5;->a0(I)I

    move-result v4

    invoke-static {v3}, Lcom/google/android/gms/internal/firebase-auth-api/f5;->Y(Ljava/lang/String;)I

    move-result v3

    goto/16 :goto_4

    :pswitch_3d
    and-int v3, v7, v9

    if-eqz v3, :cond_4

    shl-int/lit8 v3, v11, 0x3

    invoke-static {v3, v14, v6}, LB/f;->r(III)I

    move-result v6

    goto :goto_5

    :pswitch_3e
    and-int v3, v7, v9

    if-eqz v3, :cond_4

    shl-int/lit8 v3, v11, 0x3

    invoke-static {v3, v13, v6}, LB/f;->r(III)I

    move-result v6

    goto :goto_5

    :pswitch_3f
    and-int v3, v7, v9

    if-eqz v3, :cond_4

    shl-int/lit8 v3, v11, 0x3

    invoke-static {v3, v15, v6}, LB/f;->r(III)I

    move-result v6

    goto :goto_5

    :pswitch_40
    and-int/2addr v9, v7

    if-eqz v9, :cond_4

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    shl-int/lit8 v4, v11, 0x3

    invoke-static {v4}, Lcom/google/android/gms/internal/firebase-auth-api/f5;->a0(I)I

    move-result v4

    invoke-static {v3}, Lcom/google/android/gms/internal/firebase-auth-api/f5;->u0(I)I

    move-result v3

    goto/16 :goto_4

    :pswitch_41
    and-int/2addr v9, v7

    if-eqz v9, :cond_4

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v3

    shl-int/lit8 v9, v11, 0x3

    invoke-static {v9}, Lcom/google/android/gms/internal/firebase-auth-api/f5;->a0(I)I

    move-result v9

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/f5;->b0(J)I

    move-result v3

    goto/16 :goto_3

    :pswitch_42
    and-int/2addr v9, v7

    if-eqz v9, :cond_4

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v3

    shl-int/lit8 v9, v11, 0x3

    invoke-static {v9}, Lcom/google/android/gms/internal/firebase-auth-api/f5;->a0(I)I

    move-result v9

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/f5;->b0(J)I

    move-result v3

    goto/16 :goto_3

    :pswitch_43
    and-int v3, v7, v9

    if-eqz v3, :cond_4

    shl-int/lit8 v3, v11, 0x3

    invoke-static {v3, v13, v6}, LB/f;->r(III)I

    move-result v6

    goto :goto_5

    :pswitch_44
    and-int v3, v7, v9

    if-eqz v3, :cond_4

    shl-int/lit8 v3, v11, 0x3

    invoke-static {v3, v15, v6}, LB/f;->r(III)I

    move-result v6

    :cond_4
    :goto_5
    add-int/lit8 v5, v5, 0x3

    const v4, 0xfffff

    goto/16 :goto_0

    :cond_5
    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/t;->l:Lcom/google/android/gms/internal/firebase-auth-api/E;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/firebase-auth-api/E;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase-auth-api/D;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/E;->a(Lcom/google/android/gms/internal/firebase-auth-api/D;)I

    move-result v0

    add-int/2addr v0, v6

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
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

.method public final I(Ljava/lang/Object;)I
    .locals 11

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/t;->n:Lsun/misc/Unsafe;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/t;->a:[I

    array-length v4, v3

    if-ge v1, v4, :cond_4

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/t;->m(I)I

    move-result v4

    invoke-static {v4}, Lcom/google/android/gms/internal/firebase-auth-api/t;->l(I)I

    move-result v5

    aget v6, v3, v1

    const v7, 0xfffff

    and-int/2addr v4, v7

    int-to-long v7, v4

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/j5;->d:Lcom/google/android/gms/internal/firebase-auth-api/j5;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/firebase-auth-api/j5;->a()I

    move-result v4

    if-lt v5, v4, :cond_0

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/j5;->e:Lcom/google/android/gms/internal/firebase-auth-api/j5;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/firebase-auth-api/j5;->a()I

    move-result v4

    if-gt v5, v4, :cond_0

    add-int/lit8 v4, v1, 0x2

    aget v3, v3, v4

    :cond_0
    const/4 v3, 0x1

    const/16 v4, 0x3f

    const/4 v9, 0x4

    const/16 v10, 0x8

    packed-switch v5, :pswitch_data_0

    goto/16 :goto_5

    :pswitch_0
    invoke-virtual {p0, v6, p1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/t;->B(ILjava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/firebase-auth-api/L;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/firebase-auth-api/U4;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/t;->p(I)Lcom/google/android/gms/internal/firebase-auth-api/A;

    move-result-object v4

    invoke-static {v6, v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/f5;->t0(ILcom/google/android/gms/internal/firebase-auth-api/U4;Lcom/google/android/gms/internal/firebase-auth-api/A;)I

    move-result v3

    :goto_1
    add-int/2addr v3, v2

    move v2, v3

    goto/16 :goto_5

    :pswitch_1
    invoke-virtual {p0, v6, p1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/t;->B(ILjava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/firebase-auth-api/t;->n(JLjava/lang/Object;)J

    move-result-wide v7

    shl-int/lit8 v3, v6, 0x3

    invoke-static {v3}, Lcom/google/android/gms/internal/firebase-auth-api/f5;->a0(I)I

    move-result v3

    add-long v5, v7, v7

    shr-long/2addr v7, v4

    xor-long v4, v5, v7

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/firebase-auth-api/f5;->b0(J)I

    move-result v4

    :goto_2
    add-int/2addr v4, v3

    add-int/2addr v4, v2

    move v2, v4

    goto/16 :goto_5

    :pswitch_2
    invoke-virtual {p0, v6, p1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/t;->B(ILjava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/firebase-auth-api/t;->J(JLjava/lang/Object;)I

    move-result v3

    shl-int/lit8 v4, v6, 0x3

    invoke-static {v4}, Lcom/google/android/gms/internal/firebase-auth-api/f5;->a0(I)I

    move-result v4

    add-int v5, v3, v3

    shr-int/lit8 v3, v3, 0x1f

    xor-int/2addr v3, v5

    invoke-static {v3, v4, v2}, LB/f;->r(III)I

    move-result v2

    goto/16 :goto_5

    :pswitch_3
    invoke-virtual {p0, v6, p1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/t;->B(ILjava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    shl-int/lit8 v3, v6, 0x3

    invoke-static {v3, v10, v2}, LB/f;->r(III)I

    move-result v2

    goto/16 :goto_5

    :pswitch_4
    invoke-virtual {p0, v6, p1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/t;->B(ILjava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    shl-int/lit8 v3, v6, 0x3

    invoke-static {v3, v9, v2}, LB/f;->r(III)I

    move-result v2

    goto/16 :goto_5

    :pswitch_5
    invoke-virtual {p0, v6, p1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/t;->B(ILjava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/firebase-auth-api/t;->J(JLjava/lang/Object;)I

    move-result v3

    shl-int/lit8 v4, v6, 0x3

    invoke-static {v4}, Lcom/google/android/gms/internal/firebase-auth-api/f5;->a0(I)I

    move-result v4

    invoke-static {v3}, Lcom/google/android/gms/internal/firebase-auth-api/f5;->u0(I)I

    move-result v3

    :goto_3
    add-int/2addr v3, v4

    goto :goto_1

    :pswitch_6
    invoke-virtual {p0, v6, p1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/t;->B(ILjava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/firebase-auth-api/t;->J(JLjava/lang/Object;)I

    move-result v3

    shl-int/lit8 v4, v6, 0x3

    invoke-static {v4}, Lcom/google/android/gms/internal/firebase-auth-api/f5;->a0(I)I

    move-result v4

    invoke-static {v3, v4, v2}, LB/f;->r(III)I

    move-result v2

    goto/16 :goto_5

    :pswitch_7
    invoke-virtual {p0, v6, p1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/t;->B(ILjava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/firebase-auth-api/L;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/firebase-auth-api/Z4;

    shl-int/lit8 v4, v6, 0x3

    invoke-static {v4}, Lcom/google/android/gms/internal/firebase-auth-api/f5;->a0(I)I

    move-result v4

    invoke-virtual {v3}, Lcom/google/android/gms/internal/firebase-auth-api/Z4;->n()I

    move-result v3

    invoke-static {v3, v3, v4, v2}, LB/f;->s(IIII)I

    move-result v2

    goto/16 :goto_5

    :pswitch_8
    invoke-virtual {p0, v6, p1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/t;->B(ILjava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/firebase-auth-api/L;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/t;->p(I)Lcom/google/android/gms/internal/firebase-auth-api/A;

    move-result-object v4

    invoke-static {v6, v4, v3}, Lcom/google/android/gms/internal/firebase-auth-api/B;->K(ILcom/google/android/gms/internal/firebase-auth-api/A;Ljava/lang/Object;)I

    move-result v3

    goto/16 :goto_1

    :pswitch_9
    invoke-virtual {p0, v6, p1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/t;->B(ILjava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/firebase-auth-api/L;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lcom/google/android/gms/internal/firebase-auth-api/Z4;

    if-eqz v4, :cond_1

    check-cast v3, Lcom/google/android/gms/internal/firebase-auth-api/Z4;

    shl-int/lit8 v4, v6, 0x3

    invoke-static {v4}, Lcom/google/android/gms/internal/firebase-auth-api/f5;->a0(I)I

    move-result v4

    invoke-virtual {v3}, Lcom/google/android/gms/internal/firebase-auth-api/Z4;->n()I

    move-result v3

    invoke-static {v3, v3, v4, v2}, LB/f;->s(IIII)I

    move-result v2

    goto/16 :goto_5

    :cond_1
    check-cast v3, Ljava/lang/String;

    shl-int/lit8 v4, v6, 0x3

    invoke-static {v4}, Lcom/google/android/gms/internal/firebase-auth-api/f5;->a0(I)I

    move-result v4

    invoke-static {v3}, Lcom/google/android/gms/internal/firebase-auth-api/f5;->Y(Ljava/lang/String;)I

    move-result v3

    goto :goto_3

    :pswitch_a
    invoke-virtual {p0, v6, p1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/t;->B(ILjava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    shl-int/lit8 v4, v6, 0x3

    invoke-static {v4, v3, v2}, LB/f;->r(III)I

    move-result v2

    goto/16 :goto_5

    :pswitch_b
    invoke-virtual {p0, v6, p1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/t;->B(ILjava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    shl-int/lit8 v3, v6, 0x3

    invoke-static {v3, v9, v2}, LB/f;->r(III)I

    move-result v2

    goto/16 :goto_5

    :pswitch_c
    invoke-virtual {p0, v6, p1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/t;->B(ILjava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    shl-int/lit8 v3, v6, 0x3

    invoke-static {v3, v10, v2}, LB/f;->r(III)I

    move-result v2

    goto/16 :goto_5

    :pswitch_d
    invoke-virtual {p0, v6, p1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/t;->B(ILjava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/firebase-auth-api/t;->J(JLjava/lang/Object;)I

    move-result v3

    shl-int/lit8 v4, v6, 0x3

    invoke-static {v4}, Lcom/google/android/gms/internal/firebase-auth-api/f5;->a0(I)I

    move-result v4

    invoke-static {v3}, Lcom/google/android/gms/internal/firebase-auth-api/f5;->u0(I)I

    move-result v3

    goto/16 :goto_3

    :pswitch_e
    invoke-virtual {p0, v6, p1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/t;->B(ILjava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/firebase-auth-api/t;->n(JLjava/lang/Object;)J

    move-result-wide v3

    shl-int/lit8 v5, v6, 0x3

    invoke-static {v5}, Lcom/google/android/gms/internal/firebase-auth-api/f5;->a0(I)I

    move-result v5

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/f5;->b0(J)I

    move-result v3

    :goto_4
    add-int/2addr v3, v5

    goto/16 :goto_1

    :pswitch_f
    invoke-virtual {p0, v6, p1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/t;->B(ILjava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/firebase-auth-api/t;->n(JLjava/lang/Object;)J

    move-result-wide v3

    shl-int/lit8 v5, v6, 0x3

    invoke-static {v5}, Lcom/google/android/gms/internal/firebase-auth-api/f5;->a0(I)I

    move-result v5

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/f5;->b0(J)I

    move-result v3

    goto :goto_4

    :pswitch_10
    invoke-virtual {p0, v6, p1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/t;->B(ILjava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    shl-int/lit8 v3, v6, 0x3

    invoke-static {v3, v9, v2}, LB/f;->r(III)I

    move-result v2

    goto/16 :goto_5

    :pswitch_11
    invoke-virtual {p0, v6, p1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/t;->B(ILjava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    shl-int/lit8 v3, v6, 0x3

    invoke-static {v3, v10, v2}, LB/f;->r(III)I

    move-result v2

    goto/16 :goto_5

    :pswitch_12
    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/firebase-auth-api/L;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/t;->r(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/p;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_5

    :pswitch_13
    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/firebase-auth-api/L;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/t;->p(I)Lcom/google/android/gms/internal/firebase-auth-api/A;

    move-result-object v4

    invoke-static {v6, v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/B;->F(ILjava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/A;)I

    move-result v3

    goto/16 :goto_1

    :pswitch_14
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/android/gms/internal/firebase-auth-api/B;->P(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    invoke-static {v6}, Lcom/google/android/gms/internal/firebase-auth-api/f5;->Z(I)I

    move-result v4

    invoke-static {v3, v4, v3, v2}, LB/f;->s(IIII)I

    move-result v2

    goto/16 :goto_5

    :pswitch_15
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/android/gms/internal/firebase-auth-api/B;->N(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    invoke-static {v6}, Lcom/google/android/gms/internal/firebase-auth-api/f5;->Z(I)I

    move-result v4

    invoke-static {v3, v4, v3, v2}, LB/f;->s(IIII)I

    move-result v2

    goto/16 :goto_5

    :pswitch_16
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/android/gms/internal/firebase-auth-api/B;->E(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    invoke-static {v6}, Lcom/google/android/gms/internal/firebase-auth-api/f5;->Z(I)I

    move-result v4

    invoke-static {v3, v4, v3, v2}, LB/f;->s(IIII)I

    move-result v2

    goto/16 :goto_5

    :pswitch_17
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/android/gms/internal/firebase-auth-api/B;->C(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    invoke-static {v6}, Lcom/google/android/gms/internal/firebase-auth-api/f5;->Z(I)I

    move-result v4

    invoke-static {v3, v4, v3, v2}, LB/f;->s(IIII)I

    move-result v2

    goto/16 :goto_5

    :pswitch_18
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/android/gms/internal/firebase-auth-api/B;->A(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    invoke-static {v6}, Lcom/google/android/gms/internal/firebase-auth-api/f5;->Z(I)I

    move-result v4

    invoke-static {v3, v4, v3, v2}, LB/f;->s(IIII)I

    move-result v2

    goto/16 :goto_5

    :pswitch_19
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/android/gms/internal/firebase-auth-api/B;->S(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    invoke-static {v6}, Lcom/google/android/gms/internal/firebase-auth-api/f5;->Z(I)I

    move-result v4

    invoke-static {v3, v4, v3, v2}, LB/f;->s(IIII)I

    move-result v2

    goto/16 :goto_5

    :pswitch_1a
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/android/gms/internal/firebase-auth-api/B;->x(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    invoke-static {v6}, Lcom/google/android/gms/internal/firebase-auth-api/f5;->Z(I)I

    move-result v4

    invoke-static {v3, v4, v3, v2}, LB/f;->s(IIII)I

    move-result v2

    goto/16 :goto_5

    :pswitch_1b
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/android/gms/internal/firebase-auth-api/B;->C(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    invoke-static {v6}, Lcom/google/android/gms/internal/firebase-auth-api/f5;->Z(I)I

    move-result v4

    invoke-static {v3, v4, v3, v2}, LB/f;->s(IIII)I

    move-result v2

    goto/16 :goto_5

    :pswitch_1c
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/android/gms/internal/firebase-auth-api/B;->E(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    invoke-static {v6}, Lcom/google/android/gms/internal/firebase-auth-api/f5;->Z(I)I

    move-result v4

    invoke-static {v3, v4, v3, v2}, LB/f;->s(IIII)I

    move-result v2

    goto/16 :goto_5

    :pswitch_1d
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/android/gms/internal/firebase-auth-api/B;->H(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    invoke-static {v6}, Lcom/google/android/gms/internal/firebase-auth-api/f5;->Z(I)I

    move-result v4

    invoke-static {v3, v4, v3, v2}, LB/f;->s(IIII)I

    move-result v2

    goto/16 :goto_5

    :pswitch_1e
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/android/gms/internal/firebase-auth-api/B;->U(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    invoke-static {v6}, Lcom/google/android/gms/internal/firebase-auth-api/f5;->Z(I)I

    move-result v4

    invoke-static {v3, v4, v3, v2}, LB/f;->s(IIII)I

    move-result v2

    goto/16 :goto_5

    :pswitch_1f
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/android/gms/internal/firebase-auth-api/B;->J(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    invoke-static {v6}, Lcom/google/android/gms/internal/firebase-auth-api/f5;->Z(I)I

    move-result v4

    invoke-static {v3, v4, v3, v2}, LB/f;->s(IIII)I

    move-result v2

    goto/16 :goto_5

    :pswitch_20
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/android/gms/internal/firebase-auth-api/B;->C(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    invoke-static {v6}, Lcom/google/android/gms/internal/firebase-auth-api/f5;->Z(I)I

    move-result v4

    invoke-static {v3, v4, v3, v2}, LB/f;->s(IIII)I

    move-result v2

    goto/16 :goto_5

    :pswitch_21
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/android/gms/internal/firebase-auth-api/B;->E(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    invoke-static {v6}, Lcom/google/android/gms/internal/firebase-auth-api/f5;->Z(I)I

    move-result v4

    invoke-static {v3, v4, v3, v2}, LB/f;->s(IIII)I

    move-result v2

    goto/16 :goto_5

    :pswitch_22
    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/firebase-auth-api/L;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v6, v3}, Lcom/google/android/gms/internal/firebase-auth-api/B;->O(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_1

    :pswitch_23
    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/firebase-auth-api/L;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v6, v3}, Lcom/google/android/gms/internal/firebase-auth-api/B;->M(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_1

    :pswitch_24
    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/firebase-auth-api/L;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v6, v3}, Lcom/google/android/gms/internal/firebase-auth-api/B;->D(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_1

    :pswitch_25
    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/firebase-auth-api/L;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v6, v3}, Lcom/google/android/gms/internal/firebase-auth-api/B;->B(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_1

    :pswitch_26
    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/firebase-auth-api/L;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v6, v3}, Lcom/google/android/gms/internal/firebase-auth-api/B;->z(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_1

    :pswitch_27
    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/firebase-auth-api/L;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v6, v3}, Lcom/google/android/gms/internal/firebase-auth-api/B;->R(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_1

    :pswitch_28
    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/firebase-auth-api/L;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v6, v3}, Lcom/google/android/gms/internal/firebase-auth-api/B;->y(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_1

    :pswitch_29
    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/firebase-auth-api/L;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/t;->p(I)Lcom/google/android/gms/internal/firebase-auth-api/A;

    move-result-object v4

    invoke-static {v6, v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/B;->L(ILjava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/A;)I

    move-result v3

    goto/16 :goto_1

    :pswitch_2a
    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/firebase-auth-api/L;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v6, v3}, Lcom/google/android/gms/internal/firebase-auth-api/B;->Q(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_1

    :pswitch_2b
    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/firebase-auth-api/L;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v6, v3}, Lcom/google/android/gms/internal/firebase-auth-api/B;->u(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_1

    :pswitch_2c
    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/firebase-auth-api/L;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v6, v3}, Lcom/google/android/gms/internal/firebase-auth-api/B;->B(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_1

    :pswitch_2d
    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/firebase-auth-api/L;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v6, v3}, Lcom/google/android/gms/internal/firebase-auth-api/B;->D(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_1

    :pswitch_2e
    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/firebase-auth-api/L;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v6, v3}, Lcom/google/android/gms/internal/firebase-auth-api/B;->G(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_1

    :pswitch_2f
    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/firebase-auth-api/L;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v6, v3}, Lcom/google/android/gms/internal/firebase-auth-api/B;->T(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_1

    :pswitch_30
    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/firebase-auth-api/L;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v6, v3}, Lcom/google/android/gms/internal/firebase-auth-api/B;->I(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_1

    :pswitch_31
    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/firebase-auth-api/L;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v6, v3}, Lcom/google/android/gms/internal/firebase-auth-api/B;->B(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_1

    :pswitch_32
    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/firebase-auth-api/L;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v6, v3}, Lcom/google/android/gms/internal/firebase-auth-api/B;->D(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_1

    :pswitch_33
    invoke-virtual {p0, v1, p1}, Lcom/google/android/gms/internal/firebase-auth-api/t;->z(ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/firebase-auth-api/L;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/firebase-auth-api/U4;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/t;->p(I)Lcom/google/android/gms/internal/firebase-auth-api/A;

    move-result-object v4

    invoke-static {v6, v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/f5;->t0(ILcom/google/android/gms/internal/firebase-auth-api/U4;Lcom/google/android/gms/internal/firebase-auth-api/A;)I

    move-result v3

    goto/16 :goto_1

    :pswitch_34
    invoke-virtual {p0, v1, p1}, Lcom/google/android/gms/internal/firebase-auth-api/t;->z(ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/firebase-auth-api/L;->g(JLjava/lang/Object;)J

    move-result-wide v7

    shl-int/lit8 v3, v6, 0x3

    invoke-static {v3}, Lcom/google/android/gms/internal/firebase-auth-api/f5;->a0(I)I

    move-result v3

    add-long v5, v7, v7

    shr-long/2addr v7, v4

    xor-long v4, v5, v7

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/firebase-auth-api/f5;->b0(J)I

    move-result v4

    goto/16 :goto_2

    :pswitch_35
    invoke-virtual {p0, v1, p1}, Lcom/google/android/gms/internal/firebase-auth-api/t;->z(ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/firebase-auth-api/L;->f(JLjava/lang/Object;)I

    move-result v3

    shl-int/lit8 v4, v6, 0x3

    invoke-static {v4}, Lcom/google/android/gms/internal/firebase-auth-api/f5;->a0(I)I

    move-result v4

    add-int v5, v3, v3

    shr-int/lit8 v3, v3, 0x1f

    xor-int/2addr v3, v5

    invoke-static {v3, v4, v2}, LB/f;->r(III)I

    move-result v2

    goto/16 :goto_5

    :pswitch_36
    invoke-virtual {p0, v1, p1}, Lcom/google/android/gms/internal/firebase-auth-api/t;->z(ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    shl-int/lit8 v3, v6, 0x3

    invoke-static {v3, v10, v2}, LB/f;->r(III)I

    move-result v2

    goto/16 :goto_5

    :pswitch_37
    invoke-virtual {p0, v1, p1}, Lcom/google/android/gms/internal/firebase-auth-api/t;->z(ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    shl-int/lit8 v3, v6, 0x3

    invoke-static {v3, v9, v2}, LB/f;->r(III)I

    move-result v2

    goto/16 :goto_5

    :pswitch_38
    invoke-virtual {p0, v1, p1}, Lcom/google/android/gms/internal/firebase-auth-api/t;->z(ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/firebase-auth-api/L;->f(JLjava/lang/Object;)I

    move-result v3

    shl-int/lit8 v4, v6, 0x3

    invoke-static {v4}, Lcom/google/android/gms/internal/firebase-auth-api/f5;->a0(I)I

    move-result v4

    invoke-static {v3}, Lcom/google/android/gms/internal/firebase-auth-api/f5;->u0(I)I

    move-result v3

    goto/16 :goto_3

    :pswitch_39
    invoke-virtual {p0, v1, p1}, Lcom/google/android/gms/internal/firebase-auth-api/t;->z(ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/firebase-auth-api/L;->f(JLjava/lang/Object;)I

    move-result v3

    shl-int/lit8 v4, v6, 0x3

    invoke-static {v4}, Lcom/google/android/gms/internal/firebase-auth-api/f5;->a0(I)I

    move-result v4

    invoke-static {v3, v4, v2}, LB/f;->r(III)I

    move-result v2

    goto/16 :goto_5

    :pswitch_3a
    invoke-virtual {p0, v1, p1}, Lcom/google/android/gms/internal/firebase-auth-api/t;->z(ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/firebase-auth-api/L;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/firebase-auth-api/Z4;

    shl-int/lit8 v4, v6, 0x3

    invoke-static {v4}, Lcom/google/android/gms/internal/firebase-auth-api/f5;->a0(I)I

    move-result v4

    invoke-virtual {v3}, Lcom/google/android/gms/internal/firebase-auth-api/Z4;->n()I

    move-result v3

    invoke-static {v3, v3, v4, v2}, LB/f;->s(IIII)I

    move-result v2

    goto/16 :goto_5

    :pswitch_3b
    invoke-virtual {p0, v1, p1}, Lcom/google/android/gms/internal/firebase-auth-api/t;->z(ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/firebase-auth-api/L;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/t;->p(I)Lcom/google/android/gms/internal/firebase-auth-api/A;

    move-result-object v4

    invoke-static {v6, v4, v3}, Lcom/google/android/gms/internal/firebase-auth-api/B;->K(ILcom/google/android/gms/internal/firebase-auth-api/A;Ljava/lang/Object;)I

    move-result v3

    goto/16 :goto_1

    :pswitch_3c
    invoke-virtual {p0, v1, p1}, Lcom/google/android/gms/internal/firebase-auth-api/t;->z(ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/firebase-auth-api/L;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lcom/google/android/gms/internal/firebase-auth-api/Z4;

    if-eqz v4, :cond_2

    check-cast v3, Lcom/google/android/gms/internal/firebase-auth-api/Z4;

    shl-int/lit8 v4, v6, 0x3

    invoke-static {v4}, Lcom/google/android/gms/internal/firebase-auth-api/f5;->a0(I)I

    move-result v4

    invoke-virtual {v3}, Lcom/google/android/gms/internal/firebase-auth-api/Z4;->n()I

    move-result v3

    invoke-static {v3, v3, v4, v2}, LB/f;->s(IIII)I

    move-result v2

    goto/16 :goto_5

    :cond_2
    check-cast v3, Ljava/lang/String;

    shl-int/lit8 v4, v6, 0x3

    invoke-static {v4}, Lcom/google/android/gms/internal/firebase-auth-api/f5;->a0(I)I

    move-result v4

    invoke-static {v3}, Lcom/google/android/gms/internal/firebase-auth-api/f5;->Y(Ljava/lang/String;)I

    move-result v3

    goto/16 :goto_3

    :pswitch_3d
    invoke-virtual {p0, v1, p1}, Lcom/google/android/gms/internal/firebase-auth-api/t;->z(ILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    shl-int/lit8 v4, v6, 0x3

    invoke-static {v4, v3, v2}, LB/f;->r(III)I

    move-result v2

    goto/16 :goto_5

    :pswitch_3e
    invoke-virtual {p0, v1, p1}, Lcom/google/android/gms/internal/firebase-auth-api/t;->z(ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    shl-int/lit8 v3, v6, 0x3

    invoke-static {v3, v9, v2}, LB/f;->r(III)I

    move-result v2

    goto :goto_5

    :pswitch_3f
    invoke-virtual {p0, v1, p1}, Lcom/google/android/gms/internal/firebase-auth-api/t;->z(ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    shl-int/lit8 v3, v6, 0x3

    invoke-static {v3, v10, v2}, LB/f;->r(III)I

    move-result v2

    goto :goto_5

    :pswitch_40
    invoke-virtual {p0, v1, p1}, Lcom/google/android/gms/internal/firebase-auth-api/t;->z(ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/firebase-auth-api/L;->f(JLjava/lang/Object;)I

    move-result v3

    shl-int/lit8 v4, v6, 0x3

    invoke-static {v4}, Lcom/google/android/gms/internal/firebase-auth-api/f5;->a0(I)I

    move-result v4

    invoke-static {v3}, Lcom/google/android/gms/internal/firebase-auth-api/f5;->u0(I)I

    move-result v3

    goto/16 :goto_3

    :pswitch_41
    invoke-virtual {p0, v1, p1}, Lcom/google/android/gms/internal/firebase-auth-api/t;->z(ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/firebase-auth-api/L;->g(JLjava/lang/Object;)J

    move-result-wide v3

    shl-int/lit8 v5, v6, 0x3

    invoke-static {v5}, Lcom/google/android/gms/internal/firebase-auth-api/f5;->a0(I)I

    move-result v5

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/f5;->b0(J)I

    move-result v3

    goto/16 :goto_4

    :pswitch_42
    invoke-virtual {p0, v1, p1}, Lcom/google/android/gms/internal/firebase-auth-api/t;->z(ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/firebase-auth-api/L;->g(JLjava/lang/Object;)J

    move-result-wide v3

    shl-int/lit8 v5, v6, 0x3

    invoke-static {v5}, Lcom/google/android/gms/internal/firebase-auth-api/f5;->a0(I)I

    move-result v5

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/f5;->b0(J)I

    move-result v3

    goto/16 :goto_4

    :pswitch_43
    invoke-virtual {p0, v1, p1}, Lcom/google/android/gms/internal/firebase-auth-api/t;->z(ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    shl-int/lit8 v3, v6, 0x3

    invoke-static {v3, v9, v2}, LB/f;->r(III)I

    move-result v2

    goto :goto_5

    :pswitch_44
    invoke-virtual {p0, v1, p1}, Lcom/google/android/gms/internal/firebase-auth-api/t;->z(ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    shl-int/lit8 v3, v6, 0x3

    invoke-static {v3, v10, v2}, LB/f;->r(III)I

    move-result v2

    :cond_3
    :goto_5
    add-int/lit8 v1, v1, 0x3

    goto/16 :goto_0

    :cond_4
    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/t;->l:Lcom/google/android/gms/internal/firebase-auth-api/E;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/E;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase-auth-api/D;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/E;->a(Lcom/google/android/gms/internal/firebase-auth-api/D;)I

    move-result p0

    add-int/2addr p0, v2

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
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

.method public final K(IJLjava/lang/Object;)V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/t;->n:Lsun/misc/Unsafe;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/t;->r(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p4, p2, p3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/p;->b(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/o;->a()Lcom/google/android/gms/internal/firebase-auth-api/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/o;->b()Lcom/google/android/gms/internal/firebase-auth-api/o;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/firebase-auth-api/p;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase-auth-api/o;

    invoke-virtual {v0, p4, p2, p3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_0
    invoke-static {p0}, LB/f;->F(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final L(Ljava/lang/Object;[BIIIIIIIJILJ0/b;)I
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v8, p6

    move/from16 v2, p7

    move-wide/from16 v9, p10

    move/from16 v5, p12

    move-object/from16 v11, p13

    sget-object v12, Lcom/google/android/gms/internal/firebase-auth-api/t;->n:Lsun/misc/Unsafe;

    add-int/lit8 v6, v5, 0x2

    iget-object v7, v0, Lcom/google/android/gms/internal/firebase-auth-api/t;->a:[I

    aget v6, v7, v6

    const v7, 0xfffff

    and-int/2addr v6, v7

    int-to-long v13, v6

    const/4 v6, 0x2

    const/4 v7, 0x5

    const/4 v15, 0x1

    packed-switch p9, :pswitch_data_0

    goto/16 :goto_7

    :pswitch_0
    const/4 v6, 0x3

    if-ne v2, v6, :cond_10

    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/firebase-auth-api/t;->p(I)Lcom/google/android/gms/internal/firebase-auth-api/A;

    move-result-object v2

    and-int/lit8 v0, p5, -0x8

    or-int/lit8 v6, v0, 0x4

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v7, p13

    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/firebase-auth-api/s;->y(Lcom/google/android/gms/internal/firebase-auth-api/A;[BIIILJ0/b;)I

    move-result v0

    invoke-virtual {v12, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v2

    if-ne v2, v8, :cond_0

    invoke-virtual {v12, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v15

    goto :goto_0

    :cond_0
    const/4 v15, 0x0

    :goto_0
    if-nez v15, :cond_1

    iget-object v2, v11, LJ0/b;->c:Ljava/lang/Object;

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_1

    :cond_1
    iget-object v2, v11, LJ0/b;->c:Ljava/lang/Object;

    invoke-static {v15, v2}, Lcom/google/android/gms/internal/firebase-auth-api/d;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase-auth-api/m5;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_1
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_8

    :pswitch_1
    if-eqz v2, :cond_2

    goto/16 :goto_7

    :cond_2
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/firebase-auth-api/s;->W([BILJ0/b;)I

    move-result v0

    iget-wide v2, v11, LJ0/b;->b:J

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->l(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v0

    :pswitch_2
    if-eqz v2, :cond_3

    goto/16 :goto_7

    :cond_3
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/firebase-auth-api/s;->T([BILJ0/b;)I

    move-result v0

    iget v2, v11, LJ0/b;->a:I

    invoke-static {v2}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->k(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v0

    :pswitch_3
    if-nez v2, :cond_10

    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/firebase-auth-api/s;->T([BILJ0/b;)I

    move-result v2

    iget v3, v11, LJ0/b;->a:I

    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/firebase-auth-api/t;->o(I)V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v1, v9, v10, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move v0, v2

    goto/16 :goto_8

    :pswitch_4
    if-eq v2, v6, :cond_4

    goto/16 :goto_7

    :cond_4
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/firebase-auth-api/s;->a([BILJ0/b;)I

    move-result v0

    iget-object v2, v11, LJ0/b;->c:Ljava/lang/Object;

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v0

    :pswitch_5
    if-ne v2, v6, :cond_10

    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/firebase-auth-api/t;->p(I)Lcom/google/android/gms/internal/firebase-auth-api/A;

    move-result-object v0

    move/from16 v2, p4

    invoke-static {v0, v3, v4, v2, v11}, Lcom/google/android/gms/internal/firebase-auth-api/s;->E(Lcom/google/android/gms/internal/firebase-auth-api/A;[BIILJ0/b;)I

    move-result v0

    invoke-virtual {v12, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v2

    if-ne v2, v8, :cond_5

    invoke-virtual {v12, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v15

    goto :goto_2

    :cond_5
    const/4 v15, 0x0

    :goto_2
    if-nez v15, :cond_6

    iget-object v2, v11, LJ0/b;->c:Ljava/lang/Object;

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_3

    :cond_6
    iget-object v2, v11, LJ0/b;->c:Ljava/lang/Object;

    invoke-static {v15, v2}, Lcom/google/android/gms/internal/firebase-auth-api/d;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase-auth-api/m5;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_3
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_8

    :pswitch_6
    if-ne v2, v6, :cond_10

    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/firebase-auth-api/s;->T([BILJ0/b;)I

    move-result v0

    iget v2, v11, LJ0/b;->a:I

    if-nez v2, :cond_7

    const-string v2, ""

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_5

    :cond_7
    const/high16 v4, 0x20000000

    and-int v4, p8, v4

    if-eqz v4, :cond_9

    add-int v4, v0, v2

    invoke-static {v3, v0, v4}, Lcom/google/android/gms/internal/firebase-auth-api/O;->e([BII)Z

    move-result v4

    if-eqz v4, :cond_8

    goto :goto_4

    :cond_8
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/f;->b()Lcom/google/android/gms/internal/firebase-auth-api/f;

    move-result-object v0

    throw v0

    :cond_9
    :goto_4
    new-instance v4, Ljava/lang/String;

    sget-object v5, Lcom/google/android/gms/internal/firebase-auth-api/d;->a:Ljava/nio/charset/Charset;

    invoke-direct {v4, v3, v0, v2, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v12, v1, v9, v10, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/2addr v0, v2

    :goto_5
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_8

    :pswitch_7
    if-nez v2, :cond_10

    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/firebase-auth-api/s;->W([BILJ0/b;)I

    move-result v0

    iget-wide v2, v11, LJ0/b;->b:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_a

    goto :goto_6

    :cond_a
    const/4 v15, 0x0

    :goto_6
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v0

    :pswitch_8
    if-eq v2, v7, :cond_b

    goto :goto_7

    :cond_b
    invoke-static {v4, v3}, Lcom/google/android/gms/internal/firebase-auth-api/s;->o(I[B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v1, v9, v10, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v0, v4, 0x4

    return v0

    :pswitch_9
    if-eq v2, v15, :cond_c

    goto :goto_7

    :cond_c
    invoke-static {v4, v3}, Lcom/google/android/gms/internal/firebase-auth-api/s;->X(I[B)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v12, v1, v9, v10, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v0, v4, 0x8

    return v0

    :pswitch_a
    if-eqz v2, :cond_d

    goto :goto_7

    :cond_d
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/firebase-auth-api/s;->T([BILJ0/b;)I

    move-result v0

    iget v2, v11, LJ0/b;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v0

    :pswitch_b
    if-eqz v2, :cond_e

    goto :goto_7

    :cond_e
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/firebase-auth-api/s;->W([BILJ0/b;)I

    move-result v0

    iget-wide v2, v11, LJ0/b;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v0

    :pswitch_c
    if-eq v2, v7, :cond_f

    goto :goto_7

    :cond_f
    invoke-static {v4, v3}, Lcom/google/android/gms/internal/firebase-auth-api/s;->o(I[B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v12, v1, v9, v10, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v0, v4, 0x4

    return v0

    :pswitch_d
    if-eq v2, v15, :cond_11

    :cond_10
    :goto_7
    move v0, v4

    :goto_8
    return v0

    :cond_11
    invoke-static {v4, v3}, Lcom/google/android/gms/internal/firebase-auth-api/s;->X(I[B)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v12, v1, v9, v10, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v0, v4, 0x8

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x33
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final M(Ljava/lang/Object;[BIILJ0/b;)V
    .locals 31

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    sget-object v9, Lcom/google/android/gms/internal/firebase-auth-api/t;->n:Lsun/misc/Unsafe;

    const/4 v8, 0x0

    move/from16 v0, p3

    move v2, v8

    move v5, v2

    const/4 v1, -0x1

    const v6, 0xfffff

    :goto_0
    if-ge v0, v13, :cond_1a

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, v12, v0

    if-gez v0, :cond_0

    invoke-static {v0, v12, v3, v11}, Lcom/google/android/gms/internal/firebase-auth-api/s;->U(I[BILJ0/b;)I

    move-result v0

    iget v3, v11, LJ0/b;->a:I

    move v4, v0

    move/from16 v16, v3

    goto :goto_1

    :cond_0
    move/from16 v16, v0

    move v4, v3

    :goto_1
    ushr-int/lit8 v3, v16, 0x3

    and-int/lit8 v0, v16, 0x7

    iget v10, v15, Lcom/google/android/gms/internal/firebase-auth-api/t;->d:I

    iget v7, v15, Lcom/google/android/gms/internal/firebase-auth-api/t;->c:I

    if-le v3, v1, :cond_2

    div-int/lit8 v2, v2, 0x3

    if-lt v3, v7, :cond_1

    if-gt v3, v10, :cond_1

    invoke-virtual {v15, v3, v2}, Lcom/google/android/gms/internal/firebase-auth-api/t;->k(II)I

    move-result v1

    goto :goto_2

    :cond_1
    const/4 v1, -0x1

    :goto_2
    move v10, v1

    const/4 v7, -0x1

    goto :goto_3

    :cond_2
    if-lt v3, v7, :cond_1

    if-gt v3, v10, :cond_1

    invoke-virtual {v15, v3, v8}, Lcom/google/android/gms/internal/firebase-auth-api/t;->k(II)I

    move-result v1

    goto :goto_2

    :goto_3
    if-ne v10, v7, :cond_3

    move/from16 v19, v3

    move v2, v4

    move/from16 v26, v5

    move/from16 v27, v7

    move/from16 v18, v8

    move/from16 v28, v18

    move-object/from16 v29, v9

    move-object v15, v14

    goto/16 :goto_15

    :cond_3
    add-int/lit8 v1, v10, 0x1

    iget-object v2, v15, Lcom/google/android/gms/internal/firebase-auth-api/t;->a:[I

    aget v1, v2, v1

    invoke-static {v1}, Lcom/google/android/gms/internal/firebase-auth-api/t;->l(I)I

    move-result v8

    const v17, 0xfffff

    and-int v7, v1, v17

    move/from16 v20, v3

    move/from16 v19, v4

    int-to-long v3, v7

    const/16 v7, 0x11

    move/from16 v21, v1

    if-gt v8, v7, :cond_f

    add-int/lit8 v7, v10, 0x2

    aget v2, v2, v7

    ushr-int/lit8 v7, v2, 0x14

    const/4 v1, 0x1

    shl-int v7, v1, v7

    const v13, 0xfffff

    and-int/2addr v2, v13

    if-eq v2, v6, :cond_6

    if-eq v6, v13, :cond_4

    move/from16 v23, v2

    int-to-long v1, v6

    invoke-virtual {v9, v14, v1, v2, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move/from16 v1, v23

    goto :goto_4

    :cond_4
    move v1, v2

    :goto_4
    if-eq v1, v13, :cond_5

    int-to-long v5, v1

    invoke-virtual {v9, v14, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    :cond_5
    move/from16 v23, v1

    :goto_5
    move v6, v5

    goto :goto_6

    :cond_6
    move/from16 v23, v6

    goto :goto_5

    :goto_6
    const/4 v1, 0x5

    packed-switch v8, :pswitch_data_0

    move/from16 v8, v19

    move/from16 v19, v20

    :goto_7
    move/from16 v20, v13

    move/from16 v13, p4

    goto/16 :goto_10

    :pswitch_0
    if-nez v0, :cond_7

    move/from16 v5, v19

    invoke-static {v12, v5, v11}, Lcom/google/android/gms/internal/firebase-auth-api/s;->W([BILJ0/b;)I

    move-result v8

    iget-wide v0, v11, LJ0/b;->b:J

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->l(J)J

    move-result-wide v16

    move-object v0, v9

    move-object/from16 v1, p1

    move/from16 v19, v20

    move-wide v2, v3

    move-wide/from16 v4, v16

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    or-int v5, v6, v7

    move/from16 v13, p4

    :goto_8
    move v0, v8

    :goto_9
    move v2, v10

    move/from16 v1, v19

    move/from16 v6, v23

    :goto_a
    const/4 v8, 0x0

    goto/16 :goto_0

    :cond_7
    move/from16 v5, v19

    move/from16 v19, v20

    :cond_8
    move v8, v5

    goto :goto_7

    :pswitch_1
    move/from16 v5, v19

    move/from16 v19, v20

    if-nez v0, :cond_8

    invoke-static {v12, v5, v11}, Lcom/google/android/gms/internal/firebase-auth-api/s;->T([BILJ0/b;)I

    move-result v0

    iget v1, v11, LJ0/b;->a:I

    invoke-static {v1}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->k(I)I

    move-result v1

    invoke-virtual {v9, v14, v3, v4, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_b
    or-int v5, v6, v7

    move/from16 v13, p4

    goto :goto_9

    :pswitch_2
    move/from16 v5, v19

    move/from16 v19, v20

    if-nez v0, :cond_8

    invoke-static {v12, v5, v11}, Lcom/google/android/gms/internal/firebase-auth-api/s;->T([BILJ0/b;)I

    move-result v0

    iget v1, v11, LJ0/b;->a:I

    invoke-virtual {v9, v14, v3, v4, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_b

    :pswitch_3
    move/from16 v5, v19

    move/from16 v19, v20

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    invoke-static {v12, v5, v11}, Lcom/google/android/gms/internal/firebase-auth-api/s;->a([BILJ0/b;)I

    move-result v0

    iget-object v1, v11, LJ0/b;->c:Ljava/lang/Object;

    invoke-virtual {v9, v14, v3, v4, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_b

    :pswitch_4
    move/from16 v5, v19

    move/from16 v19, v20

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    invoke-virtual {v15, v10}, Lcom/google/android/gms/internal/firebase-auth-api/t;->p(I)Lcom/google/android/gms/internal/firebase-auth-api/A;

    move-result-object v0

    move/from16 v20, v13

    move/from16 v13, p4

    invoke-static {v0, v12, v5, v13, v11}, Lcom/google/android/gms/internal/firebase-auth-api/s;->E(Lcom/google/android/gms/internal/firebase-auth-api/A;[BIILJ0/b;)I

    move-result v0

    invoke-virtual {v9, v14, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_9

    iget-object v1, v11, LJ0/b;->c:Ljava/lang/Object;

    invoke-virtual {v9, v14, v3, v4, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_c

    :cond_9
    iget-object v2, v11, LJ0/b;->c:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/d;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase-auth-api/m5;

    move-result-object v1

    invoke-virtual {v9, v14, v3, v4, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_c
    or-int v5, v6, v7

    goto :goto_9

    :cond_a
    move/from16 v20, v13

    move/from16 v13, p4

    :cond_b
    move v8, v5

    goto/16 :goto_10

    :pswitch_5
    move/from16 v5, v19

    move/from16 v19, v20

    const/4 v1, 0x2

    move/from16 v20, v13

    move/from16 v13, p4

    if-ne v0, v1, :cond_b

    const/high16 v0, 0x20000000

    and-int v0, v21, v0

    if-nez v0, :cond_c

    invoke-static {v12, v5, v11}, Lcom/google/android/gms/internal/firebase-auth-api/s;->P([BILJ0/b;)I

    move-result v0

    goto :goto_d

    :cond_c
    invoke-static {v12, v5, v11}, Lcom/google/android/gms/internal/firebase-auth-api/s;->R([BILJ0/b;)I

    move-result v0

    :goto_d
    iget-object v1, v11, LJ0/b;->c:Ljava/lang/Object;

    invoke-virtual {v9, v14, v3, v4, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_c

    :pswitch_6
    move/from16 v5, v19

    move/from16 v19, v20

    move/from16 v20, v13

    move/from16 v13, p4

    if-nez v0, :cond_b

    invoke-static {v12, v5, v11}, Lcom/google/android/gms/internal/firebase-auth-api/s;->W([BILJ0/b;)I

    move-result v0

    iget-wide v1, v11, LJ0/b;->b:J

    const-wide/16 v21, 0x0

    cmp-long v1, v1, v21

    if-eqz v1, :cond_d

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    invoke-static {v14, v3, v4, v1}, Lcom/google/android/gms/internal/firebase-auth-api/L;->l(Ljava/lang/Object;JZ)V

    goto :goto_c

    :pswitch_7
    move/from16 v5, v19

    move/from16 v19, v20

    move/from16 v20, v13

    move/from16 v13, p4

    if-ne v0, v1, :cond_b

    invoke-static {v5, v12}, Lcom/google/android/gms/internal/firebase-auth-api/s;->o(I[B)I

    move-result v0

    invoke-virtual {v9, v14, v3, v4, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v0, v5, 0x4

    goto :goto_c

    :pswitch_8
    move/from16 v5, v19

    move/from16 v19, v20

    const/4 v1, 0x1

    move/from16 v20, v13

    move/from16 v13, p4

    if-ne v0, v1, :cond_b

    invoke-static {v5, v12}, Lcom/google/android/gms/internal/firebase-auth-api/s;->X(I[B)J

    move-result-wide v16

    move-object v0, v9

    move-object/from16 v1, p1

    move-wide v2, v3

    move v8, v5

    move-wide/from16 v4, v16

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    :goto_f
    add-int/lit8 v0, v8, 0x8

    goto :goto_c

    :pswitch_9
    move/from16 v8, v19

    move/from16 v19, v20

    move/from16 v20, v13

    move/from16 v13, p4

    if-nez v0, :cond_e

    invoke-static {v12, v8, v11}, Lcom/google/android/gms/internal/firebase-auth-api/s;->T([BILJ0/b;)I

    move-result v0

    iget v1, v11, LJ0/b;->a:I

    invoke-virtual {v9, v14, v3, v4, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_c

    :pswitch_a
    move/from16 v8, v19

    move/from16 v19, v20

    move/from16 v20, v13

    move/from16 v13, p4

    if-nez v0, :cond_e

    invoke-static {v12, v8, v11}, Lcom/google/android/gms/internal/firebase-auth-api/s;->W([BILJ0/b;)I

    move-result v8

    iget-wide v1, v11, LJ0/b;->b:J

    move-object v0, v9

    move-wide/from16 v16, v1

    move-object/from16 v1, p1

    move-wide v2, v3

    move-wide/from16 v4, v16

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    or-int v5, v6, v7

    goto/16 :goto_8

    :pswitch_b
    move/from16 v8, v19

    move/from16 v19, v20

    move/from16 v20, v13

    move/from16 v13, p4

    if-ne v0, v1, :cond_e

    invoke-static {v8, v12}, Lcom/google/android/gms/internal/firebase-auth-api/s;->o(I[B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-static {v14, v3, v4, v0}, Lcom/google/android/gms/internal/firebase-auth-api/L;->o(Ljava/lang/Object;JF)V

    add-int/lit8 v0, v8, 0x4

    goto/16 :goto_c

    :pswitch_c
    move/from16 v8, v19

    move/from16 v19, v20

    const/4 v1, 0x1

    move/from16 v20, v13

    move/from16 v13, p4

    if-ne v0, v1, :cond_e

    invoke-static {v8, v12}, Lcom/google/android/gms/internal/firebase-auth-api/s;->X(I[B)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    invoke-static {v14, v3, v4, v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/L;->n(Ljava/lang/Object;JD)V

    goto :goto_f

    :cond_e
    :goto_10
    move/from16 v26, v6

    move v2, v8

    move-object/from16 v29, v9

    move/from16 v28, v10

    move-object v15, v14

    move/from16 v6, v23

    const/16 v18, 0x0

    const/16 v27, -0x1

    goto/16 :goto_15

    :cond_f
    move/from16 v7, v19

    move/from16 v19, v20

    const v20, 0xfffff

    const/16 v1, 0x1b

    if-ne v8, v1, :cond_13

    const/4 v1, 0x2

    if-ne v0, v1, :cond_12

    invoke-virtual {v9, v14, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/c;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/V4;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/V4;->m()Z

    move-result v1

    if-nez v1, :cond_11

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_10

    const/16 v1, 0xa

    goto :goto_11

    :cond_10
    add-int/2addr v1, v1

    :goto_11
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/c;->d(I)Lcom/google/android/gms/internal/firebase-auth-api/c;

    move-result-object v0

    invoke-virtual {v9, v14, v3, v4, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_11
    move-object v8, v0

    invoke-virtual {v15, v10}, Lcom/google/android/gms/internal/firebase-auth-api/t;->p(I)Lcom/google/android/gms/internal/firebase-auth-api/A;

    move-result-object v0

    move/from16 v1, v16

    move-object/from16 v2, p2

    move v3, v7

    move/from16 v4, p4

    move v7, v5

    move-object v5, v8

    move v8, v6

    move-object/from16 v6, p5

    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/firebase-auth-api/s;->K(Lcom/google/android/gms/internal/firebase-auth-api/A;I[BIILcom/google/android/gms/internal/firebase-auth-api/c;LJ0/b;)I

    move-result v0

    move v5, v7

    move v6, v8

    move v2, v10

    move/from16 v1, v19

    goto/16 :goto_a

    :cond_12
    move/from16 v26, v5

    move/from16 v25, v6

    move v15, v7

    move-object/from16 v29, v9

    move/from16 v28, v10

    const/16 v18, 0x0

    const/16 v27, -0x1

    goto/16 :goto_13

    :cond_13
    move/from16 v30, v6

    move v6, v5

    move/from16 v5, v30

    const/16 v1, 0x31

    if-gt v8, v1, :cond_15

    move/from16 v1, v21

    int-to-long v1, v1

    move/from16 v17, v0

    move-object/from16 v0, p0

    move-wide/from16 v21, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v23, v3

    move v3, v7

    move/from16 v4, p4

    move/from16 v25, v5

    move/from16 v5, v16

    move/from16 v26, v6

    move/from16 v6, v19

    move v15, v7

    const/16 v27, -0x1

    move/from16 v7, v17

    move/from16 p3, v8

    const/16 v18, 0x0

    move v8, v10

    move-object/from16 v29, v9

    move/from16 v28, v10

    move-wide/from16 v9, v21

    move/from16 v11, p3

    move-wide/from16 v12, v23

    move-object/from16 v14, p5

    invoke-virtual/range {v0 .. v14}, Lcom/google/android/gms/internal/firebase-auth-api/t;->N(Ljava/lang/Object;[BIIIIIIJIJLJ0/b;)I

    move-result v0

    if-eq v0, v15, :cond_14

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    move/from16 v8, v18

    move/from16 v1, v19

    move/from16 v6, v25

    move/from16 v5, v26

    move/from16 v2, v28

    move-object/from16 v9, v29

    goto/16 :goto_0

    :cond_14
    move-object/from16 v15, p1

    move v2, v0

    :goto_12
    move/from16 v6, v25

    goto/16 :goto_15

    :cond_15
    move/from16 v17, v0

    move-wide/from16 v23, v3

    move/from16 v25, v5

    move/from16 v26, v6

    move v15, v7

    move/from16 p3, v8

    move-object/from16 v29, v9

    move/from16 v28, v10

    move/from16 v1, v21

    const/16 v18, 0x0

    const/16 v27, -0x1

    const/16 v0, 0x32

    move/from16 v9, p3

    if-ne v9, v0, :cond_17

    move/from16 v7, v17

    const/4 v0, 0x2

    if-eq v7, v0, :cond_16

    :goto_13
    move v2, v15

    move/from16 v6, v25

    move-object/from16 v15, p1

    goto :goto_15

    :cond_16
    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move-wide/from16 v10, v23

    move/from16 v13, v28

    invoke-virtual {v14, v13, v10, v11, v15}, Lcom/google/android/gms/internal/firebase-auth-api/t;->K(IJLjava/lang/Object;)V

    const/4 v0, 0x0

    throw v0

    :cond_17
    move-object/from16 v14, p0

    move v12, v15

    move/from16 v7, v17

    move-wide/from16 v10, v23

    move/from16 v13, v28

    move-object/from16 v15, p1

    move-object/from16 v0, p0

    move v8, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v12

    move/from16 v4, p4

    move/from16 v5, v16

    move/from16 v6, v19

    move v14, v12

    move v12, v13

    move/from16 v17, v13

    move-object/from16 v13, p5

    invoke-virtual/range {v0 .. v13}, Lcom/google/android/gms/internal/firebase-auth-api/t;->L(Ljava/lang/Object;[BIIIIIIIJILJ0/b;)I

    move-result v0

    if-eq v0, v14, :cond_18

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    move-object v14, v15

    move/from16 v2, v17

    move/from16 v8, v18

    move/from16 v1, v19

    move/from16 v6, v25

    move/from16 v5, v26

    :goto_14
    move-object/from16 v9, v29

    move-object/from16 v15, p0

    goto/16 :goto_0

    :cond_18
    move v2, v0

    move/from16 v28, v17

    goto :goto_12

    :goto_15
    move-object v0, v15

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/m5;

    iget-object v1, v0, Lcom/google/android/gms/internal/firebase-auth-api/m5;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/D;

    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/D;->f:Lcom/google/android/gms/internal/firebase-auth-api/D;

    if-ne v1, v3, :cond_19

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/D;->b()Lcom/google/android/gms/internal/firebase-auth-api/D;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/firebase-auth-api/m5;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/D;

    :cond_19
    move-object v4, v1

    move/from16 v0, v16

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v5, p5

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/firebase-auth-api/s;->S(I[BIILcom/google/android/gms/internal/firebase-auth-api/D;LJ0/b;)I

    move-result v0

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    move-object v14, v15

    move/from16 v8, v18

    move/from16 v1, v19

    move/from16 v5, v26

    move/from16 v2, v28

    goto :goto_14

    :cond_1a
    move/from16 v26, v5

    move v10, v6

    move-object/from16 v29, v9

    move-object v15, v14

    const v1, 0xfffff

    if-eq v10, v1, :cond_1b

    int-to-long v1, v10

    move/from16 v5, v26

    move-object/from16 v3, v29

    invoke-virtual {v3, v15, v1, v2, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_1b
    move/from16 v1, p4

    if-ne v0, v1, :cond_1c

    return-void

    :cond_1c
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/f;->d()Lcom/google/android/gms/internal/firebase-auth-api/f;

    move-result-object v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final N(Ljava/lang/Object;[BIIIIIIJIJLJ0/b;)I
    .locals 14

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p7

    move/from16 v7, p8

    move-wide/from16 v8, p12

    move-object/from16 v10, p14

    sget-object v11, Lcom/google/android/gms/internal/firebase-auth-api/t;->n:Lsun/misc/Unsafe;

    invoke-virtual {v11, p1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/firebase-auth-api/c;

    check-cast v12, Lcom/google/android/gms/internal/firebase-auth-api/V4;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/firebase-auth-api/V4;->m()Z

    move-result v13

    if-nez v13, :cond_1

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    if-nez v13, :cond_0

    const/16 v13, 0xa

    goto :goto_0

    :cond_0
    add-int/2addr v13, v13

    :goto_0
    invoke-interface {v12, v13}, Lcom/google/android/gms/internal/firebase-auth-api/c;->d(I)Lcom/google/android/gms/internal/firebase-auth-api/c;

    move-result-object v12

    invoke-virtual {v11, p1, v8, v9, v12}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_1
    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v11, 0x5

    const/4 v13, 0x2

    packed-switch p11, :pswitch_data_0

    const/4 v1, 0x3

    if-ne v6, v1, :cond_3e

    invoke-virtual {p0, v7}, Lcom/google/android/gms/internal/firebase-auth-api/t;->p(I)Lcom/google/android/gms/internal/firebase-auth-api/A;

    move-result-object v0

    and-int/lit8 v1, v5, -0x8

    or-int/lit8 v1, v1, 0x4

    move-object/from16 p6, v0

    move-object/from16 p7, p2

    move/from16 p8, p3

    move/from16 p9, p4

    move/from16 p10, v1

    move-object/from16 p11, p14

    invoke-static/range {p6 .. p11}, Lcom/google/android/gms/internal/firebase-auth-api/s;->y(Lcom/google/android/gms/internal/firebase-auth-api/A;[BIIILJ0/b;)I

    move-result v3

    iget-object v6, v10, LJ0/b;->c:Ljava/lang/Object;

    invoke-interface {v12, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    if-ge v3, v4, :cond_3

    invoke-static {v2, v3, v10}, Lcom/google/android/gms/internal/firebase-auth-api/s;->T([BILJ0/b;)I

    move-result v6

    iget v7, v10, LJ0/b;->a:I

    if-eq v5, v7, :cond_2

    goto :goto_2

    :cond_2
    move-object/from16 p6, v0

    move-object/from16 p7, p2

    move/from16 p8, v6

    move/from16 p9, p4

    move/from16 p10, v1

    move-object/from16 p11, p14

    invoke-static/range {p6 .. p11}, Lcom/google/android/gms/internal/firebase-auth-api/s;->y(Lcom/google/android/gms/internal/firebase-auth-api/A;[BIIILJ0/b;)I

    move-result v3

    iget-object v6, v10, LJ0/b;->c:Ljava/lang/Object;

    invoke-interface {v12, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    :goto_2
    return v3

    :pswitch_0
    if-ne v6, v13, :cond_6

    invoke-static {v12}, LB/f;->A(Lcom/google/android/gms/internal/firebase-auth-api/c;)V

    invoke-static {v2, v3, v10}, Lcom/google/android/gms/internal/firebase-auth-api/s;->T([BILJ0/b;)I

    move-result v0

    iget v1, v10, LJ0/b;->a:I

    add-int/2addr v1, v0

    if-lt v0, v1, :cond_5

    if-ne v0, v1, :cond_4

    goto/16 :goto_b

    :cond_4
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/f;->e()Lcom/google/android/gms/internal/firebase-auth-api/f;

    move-result-object v0

    throw v0

    :cond_5
    invoke-static {v2, v0, v10}, Lcom/google/android/gms/internal/firebase-auth-api/s;->W([BILJ0/b;)I

    throw v8

    :cond_6
    if-eqz v6, :cond_7

    goto/16 :goto_a

    :cond_7
    invoke-static {v12}, LB/f;->A(Lcom/google/android/gms/internal/firebase-auth-api/c;)V

    invoke-static {v2, v3, v10}, Lcom/google/android/gms/internal/firebase-auth-api/s;->W([BILJ0/b;)I

    throw v8

    :pswitch_1
    if-ne v6, v13, :cond_a

    invoke-static {v12}, LB/f;->A(Lcom/google/android/gms/internal/firebase-auth-api/c;)V

    invoke-static {v2, v3, v10}, Lcom/google/android/gms/internal/firebase-auth-api/s;->T([BILJ0/b;)I

    move-result v0

    iget v1, v10, LJ0/b;->a:I

    add-int/2addr v1, v0

    if-lt v0, v1, :cond_9

    if-ne v0, v1, :cond_8

    goto/16 :goto_b

    :cond_8
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/f;->e()Lcom/google/android/gms/internal/firebase-auth-api/f;

    move-result-object v0

    throw v0

    :cond_9
    invoke-static {v2, v0, v10}, Lcom/google/android/gms/internal/firebase-auth-api/s;->T([BILJ0/b;)I

    throw v8

    :cond_a
    if-eqz v6, :cond_b

    goto/16 :goto_a

    :cond_b
    invoke-static {v12}, LB/f;->A(Lcom/google/android/gms/internal/firebase-auth-api/c;)V

    invoke-static {v2, v3, v10}, Lcom/google/android/gms/internal/firebase-auth-api/s;->T([BILJ0/b;)I

    throw v8

    :pswitch_2
    if-ne v6, v13, :cond_e

    invoke-static {v2, v3, v12, v10}, Lcom/google/android/gms/internal/firebase-auth-api/s;->N([BILcom/google/android/gms/internal/firebase-auth-api/c;LJ0/b;)I

    move-result v2

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/m5;

    iget-object v3, v1, Lcom/google/android/gms/internal/firebase-auth-api/m5;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/D;

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/D;->f:Lcom/google/android/gms/internal/firebase-auth-api/D;

    if-ne v3, v4, :cond_c

    goto :goto_3

    :cond_c
    move-object v8, v3

    :goto_3
    invoke-virtual {p0, v7}, Lcom/google/android/gms/internal/firebase-auth-api/t;->o(I)V

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/t;->l:Lcom/google/android/gms/internal/firebase-auth-api/E;

    move/from16 v3, p6

    invoke-static {v3, v12, v8, v0}, Lcom/google/android/gms/internal/firebase-auth-api/B;->a(ILjava/util/List;Ljava/lang/Object;Lcom/google/android/gms/internal/firebase-auth-api/E;)Ljava/lang/Object;

    if-nez v8, :cond_d

    move v0, v2

    goto/16 :goto_b

    :cond_d
    iput-object v8, v1, Lcom/google/android/gms/internal/firebase-auth-api/m5;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/D;

    return v2

    :cond_e
    if-eqz v6, :cond_f

    goto/16 :goto_a

    :cond_f
    invoke-static {v2, v3, v12, v10}, Lcom/google/android/gms/internal/firebase-auth-api/s;->V([BILcom/google/android/gms/internal/firebase-auth-api/c;LJ0/b;)V

    throw v8

    :pswitch_3
    if-ne v6, v13, :cond_3e

    invoke-static {v2, v3, v10}, Lcom/google/android/gms/internal/firebase-auth-api/s;->T([BILJ0/b;)I

    move-result v0

    iget v1, v10, LJ0/b;->a:I

    if-ltz v1, :cond_17

    array-length v3, v2

    sub-int/2addr v3, v0

    if-gt v1, v3, :cond_16

    if-nez v1, :cond_10

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/Z4;->d:Lcom/google/android/gms/internal/firebase-auth-api/Y4;

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_10
    invoke-static {v2, v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/Z4;->q([BII)Lcom/google/android/gms/internal/firebase-auth-api/Y4;

    move-result-object v3

    invoke-interface {v12, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4
    add-int/2addr v0, v1

    :goto_5
    if-ge v0, v4, :cond_15

    invoke-static {v2, v0, v10}, Lcom/google/android/gms/internal/firebase-auth-api/s;->T([BILJ0/b;)I

    move-result v1

    iget v3, v10, LJ0/b;->a:I

    if-eq v5, v3, :cond_11

    goto :goto_6

    :cond_11
    invoke-static {v2, v1, v10}, Lcom/google/android/gms/internal/firebase-auth-api/s;->T([BILJ0/b;)I

    move-result v0

    iget v1, v10, LJ0/b;->a:I

    if-ltz v1, :cond_14

    array-length v3, v2

    sub-int/2addr v3, v0

    if-gt v1, v3, :cond_13

    if-nez v1, :cond_12

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/Z4;->d:Lcom/google/android/gms/internal/firebase-auth-api/Y4;

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_12
    invoke-static {v2, v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/Z4;->q([BII)Lcom/google/android/gms/internal/firebase-auth-api/Y4;

    move-result-object v3

    invoke-interface {v12, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_13
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/f;->e()Lcom/google/android/gms/internal/firebase-auth-api/f;

    move-result-object v0

    throw v0

    :cond_14
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/f;->c()Lcom/google/android/gms/internal/firebase-auth-api/f;

    move-result-object v0

    throw v0

    :cond_15
    :goto_6
    return v0

    :cond_16
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/f;->e()Lcom/google/android/gms/internal/firebase-auth-api/f;

    move-result-object v0

    throw v0

    :cond_17
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/f;->c()Lcom/google/android/gms/internal/firebase-auth-api/f;

    move-result-object v0

    throw v0

    :pswitch_4
    if-eq v6, v13, :cond_18

    goto/16 :goto_a

    :cond_18
    invoke-virtual {p0, v7}, Lcom/google/android/gms/internal/firebase-auth-api/t;->p(I)Lcom/google/android/gms/internal/firebase-auth-api/A;

    move-result-object v0

    move-object/from16 p6, v0

    move/from16 p7, p5

    move-object/from16 p8, p2

    move/from16 p9, p3

    move/from16 p10, p4

    move-object/from16 p11, v12

    move-object/from16 p12, p14

    invoke-static/range {p6 .. p12}, Lcom/google/android/gms/internal/firebase-auth-api/s;->K(Lcom/google/android/gms/internal/firebase-auth-api/A;I[BIILcom/google/android/gms/internal/firebase-auth-api/c;LJ0/b;)I

    move-result v0

    return v0

    :pswitch_5
    if-ne v6, v13, :cond_3e

    const-wide/32 v0, 0x20000000

    and-long v0, p9, v0

    const-wide/16 v6, 0x0

    cmp-long v0, v0, v6

    const-string v1, ""

    if-nez v0, :cond_1d

    invoke-static {v2, v3, v10}, Lcom/google/android/gms/internal/firebase-auth-api/s;->T([BILJ0/b;)I

    move-result v0

    iget v3, v10, LJ0/b;->a:I

    if-ltz v3, :cond_1c

    if-nez v3, :cond_19

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_19
    new-instance v6, Ljava/lang/String;

    sget-object v7, Lcom/google/android/gms/internal/firebase-auth-api/d;->a:Ljava/nio/charset/Charset;

    invoke-direct {v6, v2, v0, v3, v7}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v12, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_7
    add-int/2addr v0, v3

    :goto_8
    if-ge v0, v4, :cond_3f

    invoke-static {v2, v0, v10}, Lcom/google/android/gms/internal/firebase-auth-api/s;->T([BILJ0/b;)I

    move-result v3

    iget v6, v10, LJ0/b;->a:I

    if-ne v5, v6, :cond_3f

    invoke-static {v2, v3, v10}, Lcom/google/android/gms/internal/firebase-auth-api/s;->T([BILJ0/b;)I

    move-result v0

    iget v3, v10, LJ0/b;->a:I

    if-ltz v3, :cond_1b

    if-nez v3, :cond_1a

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_1a
    new-instance v6, Ljava/lang/String;

    sget-object v7, Lcom/google/android/gms/internal/firebase-auth-api/d;->a:Ljava/nio/charset/Charset;

    invoke-direct {v6, v2, v0, v3, v7}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v12, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_1b
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/f;->c()Lcom/google/android/gms/internal/firebase-auth-api/f;

    move-result-object v0

    throw v0

    :cond_1c
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/f;->c()Lcom/google/android/gms/internal/firebase-auth-api/f;

    move-result-object v0

    throw v0

    :cond_1d
    invoke-static {v2, v3, v10}, Lcom/google/android/gms/internal/firebase-auth-api/s;->T([BILJ0/b;)I

    move-result v0

    iget v3, v10, LJ0/b;->a:I

    if-ltz v3, :cond_24

    if-nez v3, :cond_1e

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v6, v0

    goto :goto_9

    :cond_1e
    add-int v6, v0, v3

    invoke-static {v2, v0, v6}, Lcom/google/android/gms/internal/firebase-auth-api/O;->e([BII)Z

    move-result v7

    if-eqz v7, :cond_23

    new-instance v7, Ljava/lang/String;

    sget-object v8, Lcom/google/android/gms/internal/firebase-auth-api/d;->a:Ljava/nio/charset/Charset;

    invoke-direct {v7, v2, v0, v3, v8}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v12, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_9
    if-ge v6, v4, :cond_22

    invoke-static {v2, v6, v10}, Lcom/google/android/gms/internal/firebase-auth-api/s;->T([BILJ0/b;)I

    move-result v0

    iget v3, v10, LJ0/b;->a:I

    if-ne v5, v3, :cond_22

    invoke-static {v2, v0, v10}, Lcom/google/android/gms/internal/firebase-auth-api/s;->T([BILJ0/b;)I

    move-result v6

    iget v0, v10, LJ0/b;->a:I

    if-ltz v0, :cond_21

    if-nez v0, :cond_1f

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_1f
    add-int v3, v6, v0

    invoke-static {v2, v6, v3}, Lcom/google/android/gms/internal/firebase-auth-api/O;->e([BII)Z

    move-result v7

    if-eqz v7, :cond_20

    new-instance v7, Ljava/lang/String;

    sget-object v8, Lcom/google/android/gms/internal/firebase-auth-api/d;->a:Ljava/nio/charset/Charset;

    invoke-direct {v7, v2, v6, v0, v8}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v12, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v6, v3

    goto :goto_9

    :cond_20
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/f;->b()Lcom/google/android/gms/internal/firebase-auth-api/f;

    move-result-object v0

    throw v0

    :cond_21
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/f;->c()Lcom/google/android/gms/internal/firebase-auth-api/f;

    move-result-object v0

    throw v0

    :cond_22
    move v0, v6

    goto/16 :goto_b

    :cond_23
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/f;->b()Lcom/google/android/gms/internal/firebase-auth-api/f;

    move-result-object v0

    throw v0

    :cond_24
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/f;->c()Lcom/google/android/gms/internal/firebase-auth-api/f;

    move-result-object v0

    throw v0

    :pswitch_6
    if-ne v6, v13, :cond_27

    invoke-static {v12}, LB/f;->A(Lcom/google/android/gms/internal/firebase-auth-api/c;)V

    invoke-static {v2, v3, v10}, Lcom/google/android/gms/internal/firebase-auth-api/s;->T([BILJ0/b;)I

    move-result v0

    iget v1, v10, LJ0/b;->a:I

    add-int/2addr v1, v0

    if-lt v0, v1, :cond_26

    if-ne v0, v1, :cond_25

    goto/16 :goto_b

    :cond_25
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/f;->e()Lcom/google/android/gms/internal/firebase-auth-api/f;

    move-result-object v0

    throw v0

    :cond_26
    invoke-static {v2, v0, v10}, Lcom/google/android/gms/internal/firebase-auth-api/s;->W([BILJ0/b;)I

    throw v8

    :cond_27
    if-eqz v6, :cond_28

    goto/16 :goto_a

    :cond_28
    invoke-static {v12}, LB/f;->A(Lcom/google/android/gms/internal/firebase-auth-api/c;)V

    invoke-static {v2, v3, v10}, Lcom/google/android/gms/internal/firebase-auth-api/s;->W([BILJ0/b;)I

    throw v8

    :pswitch_7
    if-ne v6, v13, :cond_2b

    invoke-static {v12}, LB/f;->A(Lcom/google/android/gms/internal/firebase-auth-api/c;)V

    invoke-static {v2, v3, v10}, Lcom/google/android/gms/internal/firebase-auth-api/s;->T([BILJ0/b;)I

    move-result v0

    iget v1, v10, LJ0/b;->a:I

    add-int/2addr v1, v0

    if-lt v0, v1, :cond_2a

    if-ne v0, v1, :cond_29

    goto/16 :goto_b

    :cond_29
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/f;->e()Lcom/google/android/gms/internal/firebase-auth-api/f;

    move-result-object v0

    throw v0

    :cond_2a
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/s;->o(I[B)I

    throw v8

    :cond_2b
    if-eq v6, v11, :cond_2c

    goto/16 :goto_a

    :cond_2c
    invoke-static {v12}, LB/f;->A(Lcom/google/android/gms/internal/firebase-auth-api/c;)V

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/firebase-auth-api/s;->o(I[B)I

    throw v8

    :pswitch_8
    if-ne v6, v13, :cond_2f

    invoke-static {v12}, LB/f;->A(Lcom/google/android/gms/internal/firebase-auth-api/c;)V

    invoke-static {v2, v3, v10}, Lcom/google/android/gms/internal/firebase-auth-api/s;->T([BILJ0/b;)I

    move-result v0

    iget v1, v10, LJ0/b;->a:I

    add-int/2addr v1, v0

    if-lt v0, v1, :cond_2e

    if-ne v0, v1, :cond_2d

    goto/16 :goto_b

    :cond_2d
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/f;->e()Lcom/google/android/gms/internal/firebase-auth-api/f;

    move-result-object v0

    throw v0

    :cond_2e
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/s;->X(I[B)J

    throw v8

    :cond_2f
    if-eq v6, v9, :cond_30

    goto/16 :goto_a

    :cond_30
    invoke-static {v12}, LB/f;->A(Lcom/google/android/gms/internal/firebase-auth-api/c;)V

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/firebase-auth-api/s;->X(I[B)J

    throw v8

    :pswitch_9
    if-ne v6, v13, :cond_31

    invoke-static {v2, v3, v12, v10}, Lcom/google/android/gms/internal/firebase-auth-api/s;->N([BILcom/google/android/gms/internal/firebase-auth-api/c;LJ0/b;)I

    move-result v0

    goto/16 :goto_b

    :cond_31
    if-eqz v6, :cond_32

    goto/16 :goto_a

    :cond_32
    invoke-static {v2, v3, v12, v10}, Lcom/google/android/gms/internal/firebase-auth-api/s;->V([BILcom/google/android/gms/internal/firebase-auth-api/c;LJ0/b;)V

    throw v8

    :pswitch_a
    if-ne v6, v13, :cond_35

    invoke-static {v12}, LB/f;->A(Lcom/google/android/gms/internal/firebase-auth-api/c;)V

    invoke-static {v2, v3, v10}, Lcom/google/android/gms/internal/firebase-auth-api/s;->T([BILJ0/b;)I

    move-result v0

    iget v1, v10, LJ0/b;->a:I

    add-int/2addr v1, v0

    if-lt v0, v1, :cond_34

    if-ne v0, v1, :cond_33

    goto :goto_b

    :cond_33
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/f;->e()Lcom/google/android/gms/internal/firebase-auth-api/f;

    move-result-object v0

    throw v0

    :cond_34
    invoke-static {v2, v0, v10}, Lcom/google/android/gms/internal/firebase-auth-api/s;->W([BILJ0/b;)I

    throw v8

    :cond_35
    if-eqz v6, :cond_36

    goto :goto_a

    :cond_36
    invoke-static {v12}, LB/f;->A(Lcom/google/android/gms/internal/firebase-auth-api/c;)V

    invoke-static {v2, v3, v10}, Lcom/google/android/gms/internal/firebase-auth-api/s;->W([BILJ0/b;)I

    throw v8

    :pswitch_b
    if-ne v6, v13, :cond_39

    invoke-static {v12}, LB/f;->A(Lcom/google/android/gms/internal/firebase-auth-api/c;)V

    invoke-static {v2, v3, v10}, Lcom/google/android/gms/internal/firebase-auth-api/s;->T([BILJ0/b;)I

    move-result v0

    iget v1, v10, LJ0/b;->a:I

    add-int/2addr v1, v0

    if-lt v0, v1, :cond_38

    if-ne v0, v1, :cond_37

    goto :goto_b

    :cond_37
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/f;->e()Lcom/google/android/gms/internal/firebase-auth-api/f;

    move-result-object v0

    throw v0

    :cond_38
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/s;->o(I[B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    throw v8

    :cond_39
    if-eq v6, v11, :cond_3a

    goto :goto_a

    :cond_3a
    invoke-static {v12}, LB/f;->A(Lcom/google/android/gms/internal/firebase-auth-api/c;)V

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/firebase-auth-api/s;->o(I[B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    throw v8

    :pswitch_c
    if-ne v6, v13, :cond_3d

    invoke-static {v12}, LB/f;->A(Lcom/google/android/gms/internal/firebase-auth-api/c;)V

    invoke-static {v2, v3, v10}, Lcom/google/android/gms/internal/firebase-auth-api/s;->T([BILJ0/b;)I

    move-result v0

    iget v1, v10, LJ0/b;->a:I

    add-int/2addr v1, v0

    if-lt v0, v1, :cond_3c

    if-ne v0, v1, :cond_3b

    goto :goto_b

    :cond_3b
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/f;->e()Lcom/google/android/gms/internal/firebase-auth-api/f;

    move-result-object v0

    throw v0

    :cond_3c
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/s;->X(I[B)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    throw v8

    :cond_3d
    if-eq v6, v9, :cond_40

    :cond_3e
    :goto_a
    move v0, v3

    :cond_3f
    :goto_b
    return v0

    :cond_40
    invoke-static {v12}, LB/f;->A(Lcom/google/android/gms/internal/firebase-auth-api/c;)V

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/firebase-auth-api/s;->X(I[B)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    throw v8

    nop

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_9
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a()Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/t;->e:Lcom/google/android/gms/internal/firebase-auth-api/U4;

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/m5;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/m5;->h(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 7

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/t;->i:I

    :goto_0
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/t;->h:[I

    iget v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/t;->j:I

    if-ge v0, v3, :cond_1

    aget v2, v2, v0

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/t;->m(I)I

    move-result v2

    const v3, 0xfffff

    and-int/2addr v2, v3

    int-to-long v2, v2

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v4, v2, v3, p1}, Lcom/google/android/gms/internal/firebase-auth-api/K;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    move-object v5, v4

    check-cast v5, Lcom/google/android/gms/internal/firebase-auth-api/o;

    iput-boolean v1, v5, Lcom/google/android/gms/internal/firebase-auth-api/o;->c:Z

    invoke-static {v2, v3, p1, v4}, Lcom/google/android/gms/internal/firebase-auth-api/L;->r(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    array-length v0, v2

    :goto_1
    if-ge v3, v0, :cond_2

    aget v4, v2, v3

    int-to-long v4, v4

    iget-object v6, p0, Lcom/google/android/gms/internal/firebase-auth-api/t;->k:Lcom/google/android/gms/internal/firebase-auth-api/l;

    invoke-virtual {v6, v4, v5, p1}, Lcom/google/android/gms/internal/firebase-auth-api/l;->b(JLjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/t;->l:Lcom/google/android/gms/internal/firebase-auth-api/E;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/m5;

    iget-object p0, p1, Lcom/google/android/gms/internal/firebase-auth-api/m5;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/D;

    iput-boolean v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/D;->e:Z

    return-void
.end method

.method public final c(Ljava/lang/Object;Lcom/google/android/gms/internal/firebase-auth-api/b5;Lcom/google/android/gms/internal/firebase-auth-api/g5;)V
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p2

    move-object/from16 v3, p3

    iget-object v4, v1, Lcom/google/android/gms/internal/firebase-auth-api/t;->h:[I

    iget v5, v1, Lcom/google/android/gms/internal/firebase-auth-api/t;->j:I

    iget v6, v1, Lcom/google/android/gms/internal/firebase-auth-api/t;->i:I

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, v1, Lcom/google/android/gms/internal/firebase-auth-api/t;->l:Lcom/google/android/gms/internal/firebase-auth-api/E;

    const/4 v9, 0x0

    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/firebase-auth-api/b5;->u()I

    move-result v10

    iget v11, v1, Lcom/google/android/gms/internal/firebase-auth-api/t;->c:I

    const/4 v12, 0x0

    if-lt v10, v11, :cond_1

    iget v11, v1, Lcom/google/android/gms/internal/firebase-auth-api/t;->d:I

    if-gt v10, v11, :cond_1

    invoke-virtual {v1, v10, v12}, Lcom/google/android/gms/internal/firebase-auth-api/t;->k(II)I

    move-result v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    goto :goto_1

    :cond_1
    const/4 v11, -0x1

    :goto_1
    sget-object v13, Lcom/google/android/gms/internal/firebase-auth-api/D;->f:Lcom/google/android/gms/internal/firebase-auth-api/D;

    if-gez v11, :cond_7

    const v11, 0x7fffffff

    if-ne v10, v11, :cond_3

    :goto_2
    if-ge v6, v5, :cond_2

    aget v0, v4, v6

    invoke-virtual {v1, v2, v0, v9}, Lcom/google/android/gms/internal/firebase-auth-api/t;->q(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_2
    if-eqz v9, :cond_17

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, v2

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/m5;

    iput-object v9, v0, Lcom/google/android/gms/internal/firebase-auth-api/m5;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/D;

    return-void

    :cond_3
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v9, :cond_5

    move-object v10, v2

    check-cast v10, Lcom/google/android/gms/internal/firebase-auth-api/m5;

    iget-object v11, v10, Lcom/google/android/gms/internal/firebase-auth-api/m5;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/D;

    if-ne v11, v13, :cond_4

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/D;->b()Lcom/google/android/gms/internal/firebase-auth-api/D;

    move-result-object v11

    iput-object v11, v10, Lcom/google/android/gms/internal/firebase-auth-api/m5;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/D;

    :cond_4
    move-object v9, v11

    :cond_5
    invoke-static {v9, v0}, Lcom/google/android/gms/internal/firebase-auth-api/E;->c(Ljava/lang/Object;Lcom/google/android/gms/internal/firebase-auth-api/b5;)Z

    move-result v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-nez v10, :cond_0

    :goto_3
    if-ge v6, v5, :cond_6

    aget v0, v4, v6

    invoke-virtual {v1, v2, v0, v9}, Lcom/google/android/gms/internal/firebase-auth-api/t;->q(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_6
    if-eqz v9, :cond_17

    move-object v0, v2

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/m5;

    iput-object v9, v0, Lcom/google/android/gms/internal/firebase-auth-api/m5;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/D;

    return-void

    :goto_4
    move/from16 v21, v6

    :goto_5
    move-object v8, v7

    goto/16 :goto_10

    :cond_7
    :try_start_2
    invoke-virtual {v1, v11}, Lcom/google/android/gms/internal/firebase-auth-api/t;->m(I)I

    move-result v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-static {v14}, Lcom/google/android/gms/internal/firebase-auth-api/t;->l(I)I

    move-result v15
    :try_end_3
    .catch Lcom/google/android/gms/internal/firebase-auth-api/e; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const-wide/16 v16, 0x0

    iget-object v12, v0, Lcom/google/android/gms/internal/firebase-auth-api/b5;->d:Ljava/lang/Object;

    check-cast v12, Lcom/google/android/gms/internal/firebase-auth-api/a5;

    iget-object v8, v1, Lcom/google/android/gms/internal/firebase-auth-api/t;->k:Lcom/google/android/gms/internal/firebase-auth-api/l;

    const v20, 0xfffff

    packed-switch v15, :pswitch_data_0

    if-nez v9, :cond_8

    :try_start_4
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/D;->b()Lcom/google/android/gms/internal/firebase-auth-api/D;

    move-result-object v9

    :cond_8
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v9, v0}, Lcom/google/android/gms/internal/firebase-auth-api/E;->c(Ljava/lang/Object;Lcom/google/android/gms/internal/firebase-auth-api/b5;)Z

    move-result v8
    :try_end_4
    .catch Lcom/google/android/gms/internal/firebase-auth-api/e; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-nez v8, :cond_a

    :goto_6
    if-ge v6, v5, :cond_9

    aget v0, v4, v6

    invoke-virtual {v1, v2, v0, v9}, Lcom/google/android/gms/internal/firebase-auth-api/t;->q(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_9
    move-object v0, v2

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/m5;

    iput-object v9, v0, Lcom/google/android/gms/internal/firebase-auth-api/m5;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/D;

    return-void

    :cond_a
    :goto_7
    move/from16 v21, v6

    :goto_8
    move-object v8, v7

    goto/16 :goto_d

    :catch_0
    move/from16 v21, v6

    :catch_1
    move-object v8, v7

    goto/16 :goto_e

    :pswitch_0
    and-int v8, v14, v20

    int-to-long v14, v8

    :try_start_5
    invoke-virtual {v1, v11}, Lcom/google/android/gms/internal/firebase-auth-api/t;->p(I)Lcom/google/android/gms/internal/firebase-auth-api/A;

    move-result-object v8

    const/4 v12, 0x3

    invoke-virtual {v0, v12}, Lcom/google/android/gms/internal/firebase-auth-api/b5;->t(I)V

    invoke-virtual {v0, v8, v3}, Lcom/google/android/gms/internal/firebase-auth-api/b5;->q(Lcom/google/android/gms/internal/firebase-auth-api/A;Lcom/google/android/gms/internal/firebase-auth-api/g5;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v14, v15, v2, v8}, Lcom/google/android/gms/internal/firebase-auth-api/L;->r(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v10, v2, v11}, Lcom/google/android/gms/internal/firebase-auth-api/t;->x(ILjava/lang/Object;I)V

    goto :goto_7

    :pswitch_1
    and-int v8, v14, v20

    int-to-long v14, v8

    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/firebase-auth-api/b5;->t(I)V

    invoke-virtual {v12}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->h()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->l(J)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v14, v15, v2, v8}, Lcom/google/android/gms/internal/firebase-auth-api/L;->r(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v10, v2, v11}, Lcom/google/android/gms/internal/firebase-auth-api/t;->x(ILjava/lang/Object;I)V

    goto :goto_7

    :pswitch_2
    and-int v8, v14, v20

    int-to-long v14, v8

    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/firebase-auth-api/b5;->t(I)V

    invoke-virtual {v12}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->e()I

    move-result v8

    invoke-static {v8}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->k(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v14, v15, v2, v8}, Lcom/google/android/gms/internal/firebase-auth-api/L;->r(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v10, v2, v11}, Lcom/google/android/gms/internal/firebase-auth-api/t;->x(ILjava/lang/Object;I)V

    goto :goto_7

    :pswitch_3
    and-int v8, v14, v20

    int-to-long v14, v8

    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/firebase-auth-api/b5;->t(I)V

    invoke-virtual {v12}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->g()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v14, v15, v2, v8}, Lcom/google/android/gms/internal/firebase-auth-api/L;->r(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v10, v2, v11}, Lcom/google/android/gms/internal/firebase-auth-api/t;->x(ILjava/lang/Object;I)V

    goto :goto_7

    :pswitch_4
    and-int v8, v14, v20

    int-to-long v14, v8

    const/4 v8, 0x5

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/firebase-auth-api/b5;->t(I)V

    invoke-virtual {v12}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->d()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v14, v15, v2, v8}, Lcom/google/android/gms/internal/firebase-auth-api/L;->r(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v10, v2, v11}, Lcom/google/android/gms/internal/firebase-auth-api/t;->x(ILjava/lang/Object;I)V

    goto :goto_7

    :pswitch_5
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/firebase-auth-api/b5;->t(I)V

    invoke-virtual {v12}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->e()I

    move-result v8

    invoke-virtual {v1, v11}, Lcom/google/android/gms/internal/firebase-auth-api/t;->o(I)V

    and-int v12, v14, v20

    int-to-long v14, v12

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v14, v15, v2, v8}, Lcom/google/android/gms/internal/firebase-auth-api/L;->r(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v10, v2, v11}, Lcom/google/android/gms/internal/firebase-auth-api/t;->x(ILjava/lang/Object;I)V

    goto/16 :goto_7

    :pswitch_6
    and-int v8, v14, v20

    int-to-long v14, v8

    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/firebase-auth-api/b5;->t(I)V

    invoke-virtual {v12}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->e()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v14, v15, v2, v8}, Lcom/google/android/gms/internal/firebase-auth-api/L;->r(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v10, v2, v11}, Lcom/google/android/gms/internal/firebase-auth-api/t;->x(ILjava/lang/Object;I)V

    goto/16 :goto_7

    :pswitch_7
    and-int v8, v14, v20

    int-to-long v14, v8

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/firebase-auth-api/b5;->v()Lcom/google/android/gms/internal/firebase-auth-api/Y4;

    move-result-object v8

    invoke-static {v14, v15, v2, v8}, Lcom/google/android/gms/internal/firebase-auth-api/L;->r(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v10, v2, v11}, Lcom/google/android/gms/internal/firebase-auth-api/t;->x(ILjava/lang/Object;I)V

    goto/16 :goto_7

    :pswitch_8
    invoke-virtual {v1, v10, v2, v11}, Lcom/google/android/gms/internal/firebase-auth-api/t;->B(ILjava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_b

    and-int v8, v14, v20

    int-to-long v14, v8

    invoke-static {v14, v15, v2}, Lcom/google/android/gms/internal/firebase-auth-api/L;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v1, v11}, Lcom/google/android/gms/internal/firebase-auth-api/t;->p(I)Lcom/google/android/gms/internal/firebase-auth-api/A;

    move-result-object v12
    :try_end_5
    .catch Lcom/google/android/gms/internal/firebase-auth-api/e; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move/from16 v21, v6

    const/4 v6, 0x2

    :try_start_6
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/firebase-auth-api/b5;->t(I)V

    invoke-virtual {v0, v12, v3}, Lcom/google/android/gms/internal/firebase-auth-api/b5;->r(Lcom/google/android/gms/internal/firebase-auth-api/A;Lcom/google/android/gms/internal/firebase-auth-api/g5;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v8, v6}, Lcom/google/android/gms/internal/firebase-auth-api/d;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase-auth-api/m5;

    move-result-object v6

    invoke-static {v14, v15, v2, v6}, Lcom/google/android/gms/internal/firebase-auth-api/L;->r(JLjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_9

    :cond_b
    move/from16 v21, v6

    and-int v6, v14, v20

    int-to-long v14, v6

    invoke-virtual {v1, v11}, Lcom/google/android/gms/internal/firebase-auth-api/t;->p(I)Lcom/google/android/gms/internal/firebase-auth-api/A;

    move-result-object v6

    const/4 v8, 0x2

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/firebase-auth-api/b5;->t(I)V

    invoke-virtual {v0, v6, v3}, Lcom/google/android/gms/internal/firebase-auth-api/b5;->r(Lcom/google/android/gms/internal/firebase-auth-api/A;Lcom/google/android/gms/internal/firebase-auth-api/g5;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v14, v15, v2, v6}, Lcom/google/android/gms/internal/firebase-auth-api/L;->r(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v11, v2}, Lcom/google/android/gms/internal/firebase-auth-api/t;->w(ILjava/lang/Object;)V

    :goto_9
    invoke-virtual {v1, v10, v2, v11}, Lcom/google/android/gms/internal/firebase-auth-api/t;->x(ILjava/lang/Object;I)V

    goto/16 :goto_8

    :pswitch_9
    move/from16 v21, v6

    invoke-virtual {v1, v2, v14, v0}, Lcom/google/android/gms/internal/firebase-auth-api/t;->v(Ljava/lang/Object;ILcom/google/android/gms/internal/firebase-auth-api/b5;)V

    invoke-virtual {v1, v10, v2, v11}, Lcom/google/android/gms/internal/firebase-auth-api/t;->x(ILjava/lang/Object;I)V

    goto/16 :goto_8

    :pswitch_a
    move/from16 v21, v6

    and-int v6, v14, v20

    int-to-long v14, v6

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/firebase-auth-api/b5;->t(I)V

    invoke-virtual {v12}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->h()J

    move-result-wide v18

    cmp-long v6, v18, v16

    if-eqz v6, :cond_c

    const/4 v12, 0x1

    goto :goto_a

    :cond_c
    const/4 v12, 0x0

    :goto_a
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v14, v15, v2, v6}, Lcom/google/android/gms/internal/firebase-auth-api/L;->r(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v10, v2, v11}, Lcom/google/android/gms/internal/firebase-auth-api/t;->x(ILjava/lang/Object;I)V

    goto/16 :goto_8

    :pswitch_b
    move/from16 v21, v6

    and-int v6, v14, v20

    int-to-long v14, v6

    const/4 v6, 0x5

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/firebase-auth-api/b5;->t(I)V

    invoke-virtual {v12}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->d()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v14, v15, v2, v6}, Lcom/google/android/gms/internal/firebase-auth-api/L;->r(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v10, v2, v11}, Lcom/google/android/gms/internal/firebase-auth-api/t;->x(ILjava/lang/Object;I)V

    goto/16 :goto_8

    :pswitch_c
    move/from16 v21, v6

    and-int v6, v14, v20

    int-to-long v14, v6

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/firebase-auth-api/b5;->t(I)V

    invoke-virtual {v12}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->g()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v14, v15, v2, v6}, Lcom/google/android/gms/internal/firebase-auth-api/L;->r(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v10, v2, v11}, Lcom/google/android/gms/internal/firebase-auth-api/t;->x(ILjava/lang/Object;I)V

    goto/16 :goto_8

    :pswitch_d
    move/from16 v21, v6

    and-int v6, v14, v20

    int-to-long v14, v6

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/firebase-auth-api/b5;->t(I)V

    invoke-virtual {v12}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->e()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v14, v15, v2, v6}, Lcom/google/android/gms/internal/firebase-auth-api/L;->r(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v10, v2, v11}, Lcom/google/android/gms/internal/firebase-auth-api/t;->x(ILjava/lang/Object;I)V

    goto/16 :goto_8

    :pswitch_e
    move/from16 v21, v6

    and-int v6, v14, v20

    int-to-long v14, v6

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/firebase-auth-api/b5;->t(I)V

    invoke-virtual {v12}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->h()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v14, v15, v2, v6}, Lcom/google/android/gms/internal/firebase-auth-api/L;->r(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v10, v2, v11}, Lcom/google/android/gms/internal/firebase-auth-api/t;->x(ILjava/lang/Object;I)V

    goto/16 :goto_8

    :pswitch_f
    move/from16 v21, v6

    and-int v6, v14, v20

    int-to-long v14, v6

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/firebase-auth-api/b5;->t(I)V

    invoke-virtual {v12}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->h()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v14, v15, v2, v6}, Lcom/google/android/gms/internal/firebase-auth-api/L;->r(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v10, v2, v11}, Lcom/google/android/gms/internal/firebase-auth-api/t;->x(ILjava/lang/Object;I)V

    goto/16 :goto_8

    :pswitch_10
    move/from16 v21, v6

    and-int v6, v14, v20

    int-to-long v14, v6

    const/4 v6, 0x5

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/firebase-auth-api/b5;->t(I)V

    invoke-virtual {v12}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->d()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-static {v14, v15, v2, v6}, Lcom/google/android/gms/internal/firebase-auth-api/L;->r(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v10, v2, v11}, Lcom/google/android/gms/internal/firebase-auth-api/t;->x(ILjava/lang/Object;I)V

    goto/16 :goto_8

    :pswitch_11
    move/from16 v21, v6

    and-int v6, v14, v20

    int-to-long v14, v6

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/firebase-auth-api/b5;->t(I)V

    invoke-virtual {v12}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->g()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-static {v14, v15, v2, v6}, Lcom/google/android/gms/internal/firebase-auth-api/L;->r(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v10, v2, v11}, Lcom/google/android/gms/internal/firebase-auth-api/t;->x(ILjava/lang/Object;I)V

    goto/16 :goto_8

    :pswitch_12
    move/from16 v21, v6

    invoke-virtual {v1, v11}, Lcom/google/android/gms/internal/firebase-auth-api/t;->r(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v11}, Lcom/google/android/gms/internal/firebase-auth-api/t;->m(I)I

    move-result v8

    and-int v8, v8, v20

    int-to-long v10, v8

    invoke-static {v10, v11, v2}, Lcom/google/android/gms/internal/firebase-auth-api/L;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_d

    invoke-static {v8}, Lcom/google/android/gms/internal/firebase-auth-api/p;->b(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/o;->a()Lcom/google/android/gms/internal/firebase-auth-api/o;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/gms/internal/firebase-auth-api/o;->b()Lcom/google/android/gms/internal/firebase-auth-api/o;

    move-result-object v12

    invoke-static {v12, v8}, Lcom/google/android/gms/internal/firebase-auth-api/p;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase-auth-api/o;

    invoke-static {v10, v11, v2, v12}, Lcom/google/android/gms/internal/firebase-auth-api/L;->r(JLjava/lang/Object;Ljava/lang/Object;)V

    move-object v8, v12

    goto :goto_b

    :cond_d
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/o;->a()Lcom/google/android/gms/internal/firebase-auth-api/o;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/firebase-auth-api/o;->b()Lcom/google/android/gms/internal/firebase-auth-api/o;

    move-result-object v8

    invoke-static {v10, v11, v2, v8}, Lcom/google/android/gms/internal/firebase-auth-api/L;->r(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_e
    :goto_b
    check-cast v8, Lcom/google/android/gms/internal/firebase-auth-api/o;

    invoke-static {v6}, LB/f;->F(Ljava/lang/Object;)V

    const/4 v6, 0x0

    throw v6

    :pswitch_13
    move/from16 v21, v6

    const/4 v6, 0x0

    and-int v10, v14, v20

    int-to-long v14, v10

    invoke-virtual {v1, v11}, Lcom/google/android/gms/internal/firebase-auth-api/t;->p(I)Lcom/google/android/gms/internal/firebase-auth-api/A;

    move-result-object v10

    invoke-virtual {v8, v14, v15, v2}, Lcom/google/android/gms/internal/firebase-auth-api/l;->a(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v0, v8, v10, v3}, Lcom/google/android/gms/internal/firebase-auth-api/b5;->f(Ljava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/A;Lcom/google/android/gms/internal/firebase-auth-api/g5;)V

    goto/16 :goto_8

    :pswitch_14
    move/from16 v21, v6

    const/4 v6, 0x0

    and-int v10, v14, v20

    int-to-long v10, v10

    invoke-virtual {v8, v10, v11, v2}, Lcom/google/android/gms/internal/firebase-auth-api/l;->a(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/firebase-auth-api/b5;->m(Ljava/util/List;)V

    goto/16 :goto_8

    :pswitch_15
    move/from16 v21, v6

    const/4 v6, 0x0

    and-int v10, v14, v20

    int-to-long v10, v10

    invoke-virtual {v8, v10, v11, v2}, Lcom/google/android/gms/internal/firebase-auth-api/l;->a(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/firebase-auth-api/b5;->l(Ljava/util/List;)V

    goto/16 :goto_8

    :pswitch_16
    move/from16 v21, v6

    const/4 v6, 0x0

    and-int v10, v14, v20

    int-to-long v10, v10

    invoke-virtual {v8, v10, v11, v2}, Lcom/google/android/gms/internal/firebase-auth-api/l;->a(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/firebase-auth-api/b5;->k(Ljava/util/List;)V

    goto/16 :goto_8

    :pswitch_17
    move/from16 v21, v6

    const/4 v6, 0x0

    and-int v10, v14, v20

    int-to-long v10, v10

    invoke-virtual {v8, v10, v11, v2}, Lcom/google/android/gms/internal/firebase-auth-api/l;->a(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/firebase-auth-api/b5;->j(Ljava/util/List;)V

    goto/16 :goto_8

    :pswitch_18
    move/from16 v21, v6

    const/4 v6, 0x0

    and-int v12, v14, v20

    int-to-long v14, v12

    invoke-virtual {v8, v14, v15, v2}, Lcom/google/android/gms/internal/firebase-auth-api/l;->a(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/firebase-auth-api/b5;->B(Ljava/util/List;)V

    invoke-virtual {v1, v11}, Lcom/google/android/gms/internal/firebase-auth-api/t;->o(I)V

    invoke-static {v10, v8, v9, v7}, Lcom/google/android/gms/internal/firebase-auth-api/B;->a(ILjava/util/List;Ljava/lang/Object;Lcom/google/android/gms/internal/firebase-auth-api/E;)Ljava/lang/Object;

    goto/16 :goto_8

    :pswitch_19
    move/from16 v21, v6

    const/4 v6, 0x0

    and-int v10, v14, v20

    int-to-long v10, v10

    invoke-virtual {v8, v10, v11, v2}, Lcom/google/android/gms/internal/firebase-auth-api/l;->a(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/firebase-auth-api/b5;->o(Ljava/util/List;)V

    goto/16 :goto_8

    :pswitch_1a
    move/from16 v21, v6

    const/4 v6, 0x0

    and-int v10, v14, v20

    int-to-long v10, v10

    invoke-virtual {v8, v10, v11, v2}, Lcom/google/android/gms/internal/firebase-auth-api/l;->a(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/firebase-auth-api/b5;->y(Ljava/util/List;)V

    goto/16 :goto_8

    :pswitch_1b
    move/from16 v21, v6

    const/4 v6, 0x0

    and-int v10, v14, v20

    int-to-long v10, v10

    invoke-virtual {v8, v10, v11, v2}, Lcom/google/android/gms/internal/firebase-auth-api/l;->a(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/firebase-auth-api/b5;->C(Ljava/util/List;)V

    goto/16 :goto_8

    :pswitch_1c
    move/from16 v21, v6

    const/4 v6, 0x0

    and-int v10, v14, v20

    int-to-long v10, v10

    invoke-virtual {v8, v10, v11, v2}, Lcom/google/android/gms/internal/firebase-auth-api/l;->a(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/firebase-auth-api/b5;->d(Ljava/util/List;)V

    goto/16 :goto_8

    :pswitch_1d
    move/from16 v21, v6

    const/4 v6, 0x0

    and-int v10, v14, v20

    int-to-long v10, v10

    invoke-virtual {v8, v10, v11, v2}, Lcom/google/android/gms/internal/firebase-auth-api/l;->a(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/firebase-auth-api/b5;->g(Ljava/util/List;)V

    goto/16 :goto_8

    :pswitch_1e
    move/from16 v21, v6

    const/4 v6, 0x0

    and-int v10, v14, v20

    int-to-long v10, v10

    invoke-virtual {v8, v10, v11, v2}, Lcom/google/android/gms/internal/firebase-auth-api/l;->a(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/firebase-auth-api/b5;->p(Ljava/util/List;)V

    goto/16 :goto_8

    :pswitch_1f
    move/from16 v21, v6

    const/4 v6, 0x0

    and-int v10, v14, v20

    int-to-long v10, v10

    invoke-virtual {v8, v10, v11, v2}, Lcom/google/android/gms/internal/firebase-auth-api/l;->a(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/firebase-auth-api/b5;->h(Ljava/util/List;)V

    goto/16 :goto_8

    :pswitch_20
    move/from16 v21, v6

    const/4 v6, 0x0

    and-int v10, v14, v20

    int-to-long v10, v10

    invoke-virtual {v8, v10, v11, v2}, Lcom/google/android/gms/internal/firebase-auth-api/l;->a(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/firebase-auth-api/b5;->e(Ljava/util/List;)V

    goto/16 :goto_8

    :pswitch_21
    move/from16 v21, v6

    const/4 v6, 0x0

    and-int v10, v14, v20

    int-to-long v10, v10

    invoke-virtual {v8, v10, v11, v2}, Lcom/google/android/gms/internal/firebase-auth-api/l;->a(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/firebase-auth-api/b5;->A(Ljava/util/List;)V

    goto/16 :goto_8

    :pswitch_22
    move/from16 v21, v6

    const/4 v6, 0x0

    and-int v10, v14, v20

    int-to-long v10, v10

    invoke-virtual {v8, v10, v11, v2}, Lcom/google/android/gms/internal/firebase-auth-api/l;->a(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/firebase-auth-api/b5;->m(Ljava/util/List;)V

    goto/16 :goto_8

    :pswitch_23
    move/from16 v21, v6

    const/4 v6, 0x0

    and-int v10, v14, v20

    int-to-long v10, v10

    invoke-virtual {v8, v10, v11, v2}, Lcom/google/android/gms/internal/firebase-auth-api/l;->a(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/firebase-auth-api/b5;->l(Ljava/util/List;)V

    goto/16 :goto_8

    :pswitch_24
    move/from16 v21, v6

    const/4 v6, 0x0

    and-int v10, v14, v20

    int-to-long v10, v10

    invoke-virtual {v8, v10, v11, v2}, Lcom/google/android/gms/internal/firebase-auth-api/l;->a(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/firebase-auth-api/b5;->k(Ljava/util/List;)V

    goto/16 :goto_8

    :pswitch_25
    move/from16 v21, v6

    const/4 v6, 0x0

    and-int v10, v14, v20

    int-to-long v10, v10

    invoke-virtual {v8, v10, v11, v2}, Lcom/google/android/gms/internal/firebase-auth-api/l;->a(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/firebase-auth-api/b5;->j(Ljava/util/List;)V

    goto/16 :goto_8

    :pswitch_26
    move/from16 v21, v6

    const/4 v6, 0x0

    and-int v12, v14, v20

    int-to-long v14, v12

    invoke-virtual {v8, v14, v15, v2}, Lcom/google/android/gms/internal/firebase-auth-api/l;->a(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/firebase-auth-api/b5;->B(Ljava/util/List;)V

    invoke-virtual {v1, v11}, Lcom/google/android/gms/internal/firebase-auth-api/t;->o(I)V

    invoke-static {v10, v8, v9, v7}, Lcom/google/android/gms/internal/firebase-auth-api/B;->a(ILjava/util/List;Ljava/lang/Object;Lcom/google/android/gms/internal/firebase-auth-api/E;)Ljava/lang/Object;

    goto/16 :goto_8

    :pswitch_27
    move/from16 v21, v6

    const/4 v6, 0x0

    and-int v10, v14, v20

    int-to-long v10, v10

    invoke-virtual {v8, v10, v11, v2}, Lcom/google/android/gms/internal/firebase-auth-api/l;->a(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/firebase-auth-api/b5;->o(Ljava/util/List;)V

    goto/16 :goto_8

    :pswitch_28
    move/from16 v21, v6

    const/4 v6, 0x0

    and-int v10, v14, v20

    int-to-long v10, v10

    invoke-virtual {v8, v10, v11, v2}, Lcom/google/android/gms/internal/firebase-auth-api/l;->a(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/firebase-auth-api/b5;->z(Ljava/util/List;)V

    goto/16 :goto_8

    :pswitch_29
    move/from16 v21, v6

    const/4 v6, 0x0

    invoke-virtual {v1, v11}, Lcom/google/android/gms/internal/firebase-auth-api/t;->p(I)Lcom/google/android/gms/internal/firebase-auth-api/A;

    move-result-object v10

    and-int v11, v14, v20

    int-to-long v11, v11

    invoke-virtual {v8, v11, v12, v2}, Lcom/google/android/gms/internal/firebase-auth-api/l;->a(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v0, v8, v10, v3}, Lcom/google/android/gms/internal/firebase-auth-api/b5;->i(Ljava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/A;Lcom/google/android/gms/internal/firebase-auth-api/g5;)V

    goto/16 :goto_8

    :pswitch_2a
    move/from16 v21, v6

    const/4 v6, 0x0

    const/high16 v10, 0x20000000

    and-int/2addr v10, v14

    if-eqz v10, :cond_f

    and-int v10, v14, v20

    int-to-long v10, v10

    invoke-virtual {v8, v10, v11, v2}, Lcom/google/android/gms/internal/firebase-auth-api/l;->a(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v8

    const/4 v10, 0x1

    invoke-virtual {v0, v8, v10}, Lcom/google/android/gms/internal/firebase-auth-api/b5;->n(Ljava/util/List;Z)V

    goto/16 :goto_8

    :cond_f
    and-int v10, v14, v20

    int-to-long v10, v10

    invoke-virtual {v8, v10, v11, v2}, Lcom/google/android/gms/internal/firebase-auth-api/l;->a(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v8

    const/4 v10, 0x0

    invoke-virtual {v0, v8, v10}, Lcom/google/android/gms/internal/firebase-auth-api/b5;->n(Ljava/util/List;Z)V

    goto/16 :goto_8

    :pswitch_2b
    move/from16 v21, v6

    const/4 v6, 0x0

    and-int v10, v14, v20

    int-to-long v10, v10

    invoke-virtual {v8, v10, v11, v2}, Lcom/google/android/gms/internal/firebase-auth-api/l;->a(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/firebase-auth-api/b5;->y(Ljava/util/List;)V

    goto/16 :goto_8

    :pswitch_2c
    move/from16 v21, v6

    const/4 v6, 0x0

    and-int v10, v14, v20

    int-to-long v10, v10

    invoke-virtual {v8, v10, v11, v2}, Lcom/google/android/gms/internal/firebase-auth-api/l;->a(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/firebase-auth-api/b5;->C(Ljava/util/List;)V

    goto/16 :goto_8

    :pswitch_2d
    move/from16 v21, v6

    const/4 v6, 0x0

    and-int v10, v14, v20

    int-to-long v10, v10

    invoke-virtual {v8, v10, v11, v2}, Lcom/google/android/gms/internal/firebase-auth-api/l;->a(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/firebase-auth-api/b5;->d(Ljava/util/List;)V

    goto/16 :goto_8

    :pswitch_2e
    move/from16 v21, v6

    const/4 v6, 0x0

    and-int v10, v14, v20

    int-to-long v10, v10

    invoke-virtual {v8, v10, v11, v2}, Lcom/google/android/gms/internal/firebase-auth-api/l;->a(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/firebase-auth-api/b5;->g(Ljava/util/List;)V

    goto/16 :goto_8

    :pswitch_2f
    move/from16 v21, v6

    const/4 v6, 0x0

    and-int v10, v14, v20

    int-to-long v10, v10

    invoke-virtual {v8, v10, v11, v2}, Lcom/google/android/gms/internal/firebase-auth-api/l;->a(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/firebase-auth-api/b5;->p(Ljava/util/List;)V

    goto/16 :goto_8

    :pswitch_30
    move/from16 v21, v6

    const/4 v6, 0x0

    and-int v10, v14, v20

    int-to-long v10, v10

    invoke-virtual {v8, v10, v11, v2}, Lcom/google/android/gms/internal/firebase-auth-api/l;->a(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/firebase-auth-api/b5;->h(Ljava/util/List;)V

    goto/16 :goto_8

    :pswitch_31
    move/from16 v21, v6

    const/4 v6, 0x0

    and-int v10, v14, v20

    int-to-long v10, v10

    invoke-virtual {v8, v10, v11, v2}, Lcom/google/android/gms/internal/firebase-auth-api/l;->a(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/firebase-auth-api/b5;->e(Ljava/util/List;)V

    goto/16 :goto_8

    :pswitch_32
    move/from16 v21, v6

    const/4 v6, 0x0

    and-int v10, v14, v20

    int-to-long v10, v10

    invoke-virtual {v8, v10, v11, v2}, Lcom/google/android/gms/internal/firebase-auth-api/l;->a(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/firebase-auth-api/b5;->A(Ljava/util/List;)V

    goto/16 :goto_8

    :pswitch_33
    move/from16 v21, v6

    const/4 v6, 0x0

    invoke-virtual {v1, v11, v2}, Lcom/google/android/gms/internal/firebase-auth-api/t;->z(ILjava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    and-int v8, v14, v20

    int-to-long v14, v8

    invoke-static {v14, v15, v2}, Lcom/google/android/gms/internal/firebase-auth-api/L;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v1, v11}, Lcom/google/android/gms/internal/firebase-auth-api/t;->p(I)Lcom/google/android/gms/internal/firebase-auth-api/A;

    move-result-object v10

    const/4 v11, 0x3

    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/firebase-auth-api/b5;->t(I)V

    invoke-virtual {v0, v10, v3}, Lcom/google/android/gms/internal/firebase-auth-api/b5;->q(Lcom/google/android/gms/internal/firebase-auth-api/A;Lcom/google/android/gms/internal/firebase-auth-api/g5;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/google/android/gms/internal/firebase-auth-api/d;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase-auth-api/m5;

    move-result-object v8

    invoke-static {v14, v15, v2, v8}, Lcom/google/android/gms/internal/firebase-auth-api/L;->r(JLjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_8

    :cond_10
    and-int v8, v14, v20

    int-to-long v14, v8

    invoke-virtual {v1, v11}, Lcom/google/android/gms/internal/firebase-auth-api/t;->p(I)Lcom/google/android/gms/internal/firebase-auth-api/A;

    move-result-object v8

    const/4 v10, 0x3

    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/firebase-auth-api/b5;->t(I)V

    invoke-virtual {v0, v8, v3}, Lcom/google/android/gms/internal/firebase-auth-api/b5;->q(Lcom/google/android/gms/internal/firebase-auth-api/A;Lcom/google/android/gms/internal/firebase-auth-api/g5;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v14, v15, v2, v8}, Lcom/google/android/gms/internal/firebase-auth-api/L;->r(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v11, v2}, Lcom/google/android/gms/internal/firebase-auth-api/t;->w(ILjava/lang/Object;)V

    goto/16 :goto_8

    :pswitch_34
    move/from16 v21, v6

    const/4 v6, 0x0

    and-int v8, v14, v20

    int-to-long v14, v8

    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/firebase-auth-api/b5;->t(I)V

    invoke-virtual {v12}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->h()J

    move-result-wide v16
    :try_end_6
    .catch Lcom/google/android/gms/internal/firebase-auth-api/e; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object v8, v7

    :try_start_7
    invoke-static/range {v16 .. v17}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->l(J)J

    move-result-wide v6

    invoke-static {v2, v14, v15, v6, v7}, Lcom/google/android/gms/internal/firebase-auth-api/L;->q(Ljava/lang/Object;JJ)V

    invoke-virtual {v1, v11, v2}, Lcom/google/android/gms/internal/firebase-auth-api/t;->w(ILjava/lang/Object;)V

    goto/16 :goto_d

    :catchall_0
    move-exception v0

    goto/16 :goto_10

    :catchall_1
    move-exception v0

    goto/16 :goto_5

    :pswitch_35
    move/from16 v21, v6

    move-object v8, v7

    and-int v6, v14, v20

    int-to-long v6, v6

    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/firebase-auth-api/b5;->t(I)V

    invoke-virtual {v12}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->e()I

    move-result v10

    invoke-static {v10}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->k(I)I

    move-result v10

    invoke-static {v10, v6, v7, v2}, Lcom/google/android/gms/internal/firebase-auth-api/L;->p(IJLjava/lang/Object;)V

    invoke-virtual {v1, v11, v2}, Lcom/google/android/gms/internal/firebase-auth-api/t;->w(ILjava/lang/Object;)V

    goto/16 :goto_d

    :pswitch_36
    move/from16 v21, v6

    move-object v8, v7

    and-int v6, v14, v20

    int-to-long v6, v6

    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/firebase-auth-api/b5;->t(I)V

    invoke-virtual {v12}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->g()J

    move-result-wide v14

    invoke-static {v2, v6, v7, v14, v15}, Lcom/google/android/gms/internal/firebase-auth-api/L;->q(Ljava/lang/Object;JJ)V

    invoke-virtual {v1, v11, v2}, Lcom/google/android/gms/internal/firebase-auth-api/t;->w(ILjava/lang/Object;)V

    goto/16 :goto_d

    :pswitch_37
    move/from16 v21, v6

    move-object v8, v7

    and-int v6, v14, v20

    int-to-long v6, v6

    const/4 v10, 0x5

    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/firebase-auth-api/b5;->t(I)V

    invoke-virtual {v12}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->d()I

    move-result v10

    invoke-static {v10, v6, v7, v2}, Lcom/google/android/gms/internal/firebase-auth-api/L;->p(IJLjava/lang/Object;)V

    invoke-virtual {v1, v11, v2}, Lcom/google/android/gms/internal/firebase-auth-api/t;->w(ILjava/lang/Object;)V

    goto/16 :goto_d

    :pswitch_38
    move/from16 v21, v6

    move-object v8, v7

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/firebase-auth-api/b5;->t(I)V

    invoke-virtual {v12}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->e()I

    move-result v6

    invoke-virtual {v1, v11}, Lcom/google/android/gms/internal/firebase-auth-api/t;->o(I)V

    and-int v7, v14, v20

    int-to-long v14, v7

    invoke-static {v6, v14, v15, v2}, Lcom/google/android/gms/internal/firebase-auth-api/L;->p(IJLjava/lang/Object;)V

    invoke-virtual {v1, v11, v2}, Lcom/google/android/gms/internal/firebase-auth-api/t;->w(ILjava/lang/Object;)V

    goto/16 :goto_d

    :pswitch_39
    move/from16 v21, v6

    move-object v8, v7

    and-int v6, v14, v20

    int-to-long v6, v6

    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/firebase-auth-api/b5;->t(I)V

    invoke-virtual {v12}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->e()I

    move-result v10

    invoke-static {v10, v6, v7, v2}, Lcom/google/android/gms/internal/firebase-auth-api/L;->p(IJLjava/lang/Object;)V

    invoke-virtual {v1, v11, v2}, Lcom/google/android/gms/internal/firebase-auth-api/t;->w(ILjava/lang/Object;)V

    goto/16 :goto_d

    :pswitch_3a
    move/from16 v21, v6

    move-object v8, v7

    and-int v6, v14, v20

    int-to-long v6, v6

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/firebase-auth-api/b5;->v()Lcom/google/android/gms/internal/firebase-auth-api/Y4;

    move-result-object v10

    invoke-static {v6, v7, v2, v10}, Lcom/google/android/gms/internal/firebase-auth-api/L;->r(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v11, v2}, Lcom/google/android/gms/internal/firebase-auth-api/t;->w(ILjava/lang/Object;)V

    goto/16 :goto_d

    :pswitch_3b
    move/from16 v21, v6

    move-object v8, v7

    invoke-virtual {v1, v11, v2}, Lcom/google/android/gms/internal/firebase-auth-api/t;->z(ILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    and-int v6, v14, v20

    int-to-long v6, v6

    invoke-static {v6, v7, v2}, Lcom/google/android/gms/internal/firebase-auth-api/L;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v1, v11}, Lcom/google/android/gms/internal/firebase-auth-api/t;->p(I)Lcom/google/android/gms/internal/firebase-auth-api/A;

    move-result-object v11

    const/4 v12, 0x2

    invoke-virtual {v0, v12}, Lcom/google/android/gms/internal/firebase-auth-api/b5;->t(I)V

    invoke-virtual {v0, v11, v3}, Lcom/google/android/gms/internal/firebase-auth-api/b5;->r(Lcom/google/android/gms/internal/firebase-auth-api/A;Lcom/google/android/gms/internal/firebase-auth-api/g5;)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/google/android/gms/internal/firebase-auth-api/d;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase-auth-api/m5;

    move-result-object v10

    invoke-static {v6, v7, v2, v10}, Lcom/google/android/gms/internal/firebase-auth-api/L;->r(JLjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_d

    :cond_11
    and-int v6, v14, v20

    int-to-long v6, v6

    invoke-virtual {v1, v11}, Lcom/google/android/gms/internal/firebase-auth-api/t;->p(I)Lcom/google/android/gms/internal/firebase-auth-api/A;

    move-result-object v10

    const/4 v12, 0x2

    invoke-virtual {v0, v12}, Lcom/google/android/gms/internal/firebase-auth-api/b5;->t(I)V

    invoke-virtual {v0, v10, v3}, Lcom/google/android/gms/internal/firebase-auth-api/b5;->r(Lcom/google/android/gms/internal/firebase-auth-api/A;Lcom/google/android/gms/internal/firebase-auth-api/g5;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v6, v7, v2, v10}, Lcom/google/android/gms/internal/firebase-auth-api/L;->r(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v11, v2}, Lcom/google/android/gms/internal/firebase-auth-api/t;->w(ILjava/lang/Object;)V

    goto/16 :goto_d

    :pswitch_3c
    move/from16 v21, v6

    move-object v8, v7

    invoke-virtual {v1, v2, v14, v0}, Lcom/google/android/gms/internal/firebase-auth-api/t;->v(Ljava/lang/Object;ILcom/google/android/gms/internal/firebase-auth-api/b5;)V

    invoke-virtual {v1, v11, v2}, Lcom/google/android/gms/internal/firebase-auth-api/t;->w(ILjava/lang/Object;)V

    goto/16 :goto_d

    :pswitch_3d
    move/from16 v21, v6

    move-object v8, v7

    and-int v6, v14, v20

    int-to-long v6, v6

    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/firebase-auth-api/b5;->t(I)V

    invoke-virtual {v12}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->h()J

    move-result-wide v14

    cmp-long v10, v14, v16

    if-eqz v10, :cond_12

    const/4 v12, 0x1

    goto :goto_c

    :cond_12
    const/4 v12, 0x0

    :goto_c
    invoke-static {v2, v6, v7, v12}, Lcom/google/android/gms/internal/firebase-auth-api/L;->l(Ljava/lang/Object;JZ)V

    invoke-virtual {v1, v11, v2}, Lcom/google/android/gms/internal/firebase-auth-api/t;->w(ILjava/lang/Object;)V

    goto/16 :goto_d

    :pswitch_3e
    move/from16 v21, v6

    move-object v8, v7

    and-int v6, v14, v20

    int-to-long v6, v6

    const/4 v10, 0x5

    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/firebase-auth-api/b5;->t(I)V

    invoke-virtual {v12}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->d()I

    move-result v10

    invoke-static {v10, v6, v7, v2}, Lcom/google/android/gms/internal/firebase-auth-api/L;->p(IJLjava/lang/Object;)V

    invoke-virtual {v1, v11, v2}, Lcom/google/android/gms/internal/firebase-auth-api/t;->w(ILjava/lang/Object;)V

    goto/16 :goto_d

    :pswitch_3f
    move/from16 v21, v6

    move-object v8, v7

    and-int v6, v14, v20

    int-to-long v6, v6

    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/firebase-auth-api/b5;->t(I)V

    invoke-virtual {v12}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->g()J

    move-result-wide v14

    invoke-static {v2, v6, v7, v14, v15}, Lcom/google/android/gms/internal/firebase-auth-api/L;->q(Ljava/lang/Object;JJ)V

    invoke-virtual {v1, v11, v2}, Lcom/google/android/gms/internal/firebase-auth-api/t;->w(ILjava/lang/Object;)V

    goto/16 :goto_d

    :pswitch_40
    move/from16 v21, v6

    move-object v8, v7

    and-int v6, v14, v20

    int-to-long v6, v6

    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/firebase-auth-api/b5;->t(I)V

    invoke-virtual {v12}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->e()I

    move-result v10

    invoke-static {v10, v6, v7, v2}, Lcom/google/android/gms/internal/firebase-auth-api/L;->p(IJLjava/lang/Object;)V

    invoke-virtual {v1, v11, v2}, Lcom/google/android/gms/internal/firebase-auth-api/t;->w(ILjava/lang/Object;)V

    goto :goto_d

    :pswitch_41
    move/from16 v21, v6

    move-object v8, v7

    and-int v6, v14, v20

    int-to-long v6, v6

    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/firebase-auth-api/b5;->t(I)V

    invoke-virtual {v12}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->h()J

    move-result-wide v14

    invoke-static {v2, v6, v7, v14, v15}, Lcom/google/android/gms/internal/firebase-auth-api/L;->q(Ljava/lang/Object;JJ)V

    invoke-virtual {v1, v11, v2}, Lcom/google/android/gms/internal/firebase-auth-api/t;->w(ILjava/lang/Object;)V

    goto :goto_d

    :pswitch_42
    move/from16 v21, v6

    move-object v8, v7

    and-int v6, v14, v20

    int-to-long v6, v6

    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/firebase-auth-api/b5;->t(I)V

    invoke-virtual {v12}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->h()J

    move-result-wide v14

    invoke-static {v2, v6, v7, v14, v15}, Lcom/google/android/gms/internal/firebase-auth-api/L;->q(Ljava/lang/Object;JJ)V

    invoke-virtual {v1, v11, v2}, Lcom/google/android/gms/internal/firebase-auth-api/t;->w(ILjava/lang/Object;)V

    goto :goto_d

    :pswitch_43
    move/from16 v21, v6

    move-object v8, v7

    and-int v6, v14, v20

    int-to-long v6, v6

    const/4 v10, 0x5

    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/firebase-auth-api/b5;->t(I)V

    invoke-virtual {v12}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->d()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v10

    invoke-static {v2, v6, v7, v10}, Lcom/google/android/gms/internal/firebase-auth-api/L;->o(Ljava/lang/Object;JF)V

    invoke-virtual {v1, v11, v2}, Lcom/google/android/gms/internal/firebase-auth-api/t;->w(ILjava/lang/Object;)V

    goto :goto_d

    :pswitch_44
    move/from16 v21, v6

    move-object v8, v7

    and-int v6, v14, v20

    int-to-long v6, v6

    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/firebase-auth-api/b5;->t(I)V

    invoke-virtual {v12}, Lcom/google/android/gms/internal/firebase-auth-api/a5;->g()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v14

    invoke-static {v2, v6, v7, v14, v15}, Lcom/google/android/gms/internal/firebase-auth-api/L;->n(Ljava/lang/Object;JD)V

    invoke-virtual {v1, v11, v2}, Lcom/google/android/gms/internal/firebase-auth-api/t;->w(ILjava/lang/Object;)V
    :try_end_7
    .catch Lcom/google/android/gms/internal/firebase-auth-api/e; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_13
    :goto_d
    move-object v7, v8

    move/from16 v6, v21

    goto/16 :goto_0

    :catch_2
    :goto_e
    :try_start_8
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v9, :cond_15

    move-object v6, v2

    check-cast v6, Lcom/google/android/gms/internal/firebase-auth-api/m5;

    iget-object v7, v6, Lcom/google/android/gms/internal/firebase-auth-api/m5;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/D;

    if-ne v7, v13, :cond_14

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/D;->b()Lcom/google/android/gms/internal/firebase-auth-api/D;

    move-result-object v7

    iput-object v7, v6, Lcom/google/android/gms/internal/firebase-auth-api/m5;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/D;

    :cond_14
    move-object v9, v7

    :cond_15
    invoke-static {v9, v0}, Lcom/google/android/gms/internal/firebase-auth-api/E;->c(Ljava/lang/Object;Lcom/google/android/gms/internal/firebase-auth-api/b5;)Z

    move-result v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-nez v6, :cond_13

    move/from16 v6, v21

    :goto_f
    if-ge v6, v5, :cond_16

    aget v0, v4, v6

    invoke-virtual {v1, v2, v0, v9}, Lcom/google/android/gms/internal/firebase-auth-api/t;->q(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_f

    :cond_16
    if-eqz v9, :cond_17

    move-object v0, v2

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/m5;

    iput-object v9, v0, Lcom/google/android/gms/internal/firebase-auth-api/m5;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/D;

    :cond_17
    return-void

    :catchall_2
    move-exception v0

    goto/16 :goto_4

    :goto_10
    move/from16 v6, v21

    :goto_11
    if-ge v6, v5, :cond_18

    aget v3, v4, v6

    invoke-virtual {v1, v2, v3, v9}, Lcom/google/android/gms/internal/firebase-auth-api/t;->q(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_11

    :cond_18
    if-eqz v9, :cond_19

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v1, v2

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/m5;

    iput-object v9, v1, Lcom/google/android/gms/internal/firebase-auth-api/m5;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/D;

    :cond_19
    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
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

.method public final d(Ljava/lang/Object;[BIILJ0/b;)V
    .locals 8

    iget-boolean v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/t;->g:Z

    if-eqz v0, :cond_0

    invoke-virtual/range {p0 .. p5}, Lcom/google/android/gms/internal/firebase-auth-api/t;->M(Ljava/lang/Object;[BIILJ0/b;)V

    return-void

    :cond_0
    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/internal/firebase-auth-api/t;->E(Ljava/lang/Object;[BIIILJ0/b;)I

    return-void
.end method

.method public final e(Ljava/lang/Object;)I
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/t;->g:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/t;->I(Ljava/lang/Object;)I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/t;->H(Ljava/lang/Object;)I

    move-result p0

    :goto_0
    return p0
.end method

.method public final f(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/t;->a:[I

    array-length v2, v1

    if-ge v0, v2, :cond_1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/t;->m(I)I

    move-result v2

    const v3, 0xfffff

    and-int/2addr v3, v2

    int-to-long v3, v3

    aget v1, v1, v0

    invoke-static {v2}, Lcom/google/android/gms/internal/firebase-auth-api/t;->l(I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/t;->u(Ljava/lang/Object;ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_1
    invoke-virtual {p0, v1, p2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/t;->B(ILjava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v2, v3, v4, p2}, Lcom/google/android/gms/internal/firebase-auth-api/K;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v4, p1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/L;->r(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v1, p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/t;->x(ILjava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/t;->u(Ljava/lang/Object;ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_3
    invoke-virtual {p0, v1, p2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/t;->B(ILjava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v2, v3, v4, p2}, Lcom/google/android/gms/internal/firebase-auth-api/K;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v4, p1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/L;->r(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v1, p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/t;->x(ILjava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_4
    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/B;->a:Ljava/lang/Class;

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v1, v3, v4, p1}, Lcom/google/android/gms/internal/firebase-auth-api/K;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v3, v4, p2}, Lcom/google/android/gms/internal/firebase-auth-api/K;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/p;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase-auth-api/o;

    move-result-object v1

    invoke-static {v3, v4, p1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/L;->r(JLjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_5
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/t;->k:Lcom/google/android/gms/internal/firebase-auth-api/l;

    invoke-virtual {v1, v3, v4, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/l;->c(JLjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_6
    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/t;->t(Ljava/lang/Object;ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_7
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/t;->z(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v1, v3, v4, p2}, Lcom/google/android/gms/internal/firebase-auth-api/K;->k(JLjava/lang/Object;)J

    move-result-wide v1

    invoke-static {p1, v3, v4, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/L;->q(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/t;->w(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_8
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/t;->z(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v1, v3, v4, p2}, Lcom/google/android/gms/internal/firebase-auth-api/K;->j(JLjava/lang/Object;)I

    move-result v1

    invoke-static {v1, v3, v4, p1}, Lcom/google/android/gms/internal/firebase-auth-api/L;->p(IJLjava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/t;->w(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_9
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/t;->z(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v1, v3, v4, p2}, Lcom/google/android/gms/internal/firebase-auth-api/K;->k(JLjava/lang/Object;)J

    move-result-wide v1

    invoke-static {p1, v3, v4, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/L;->q(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/t;->w(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_a
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/t;->z(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v1, v3, v4, p2}, Lcom/google/android/gms/internal/firebase-auth-api/K;->j(JLjava/lang/Object;)I

    move-result v1

    invoke-static {v1, v3, v4, p1}, Lcom/google/android/gms/internal/firebase-auth-api/L;->p(IJLjava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/t;->w(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_b
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/t;->z(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v1, v3, v4, p2}, Lcom/google/android/gms/internal/firebase-auth-api/K;->j(JLjava/lang/Object;)I

    move-result v1

    invoke-static {v1, v3, v4, p1}, Lcom/google/android/gms/internal/firebase-auth-api/L;->p(IJLjava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/t;->w(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_c
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/t;->z(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v1, v3, v4, p2}, Lcom/google/android/gms/internal/firebase-auth-api/K;->j(JLjava/lang/Object;)I

    move-result v1

    invoke-static {v1, v3, v4, p1}, Lcom/google/android/gms/internal/firebase-auth-api/L;->p(IJLjava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/t;->w(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_d
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/t;->z(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v1, v3, v4, p2}, Lcom/google/android/gms/internal/firebase-auth-api/K;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v3, v4, p1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/L;->r(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/t;->w(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_e
    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/t;->t(Ljava/lang/Object;ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_f
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/t;->z(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v1, v3, v4, p2}, Lcom/google/android/gms/internal/firebase-auth-api/K;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v3, v4, p1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/L;->r(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/t;->w(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_10
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/t;->z(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v1, v3, v4, p2}, Lcom/google/android/gms/internal/firebase-auth-api/K;->g(JLjava/lang/Object;)Z

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/firebase-auth-api/L;->l(Ljava/lang/Object;JZ)V

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/t;->w(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_11
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/t;->z(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v1, v3, v4, p2}, Lcom/google/android/gms/internal/firebase-auth-api/K;->j(JLjava/lang/Object;)I

    move-result v1

    invoke-static {v1, v3, v4, p1}, Lcom/google/android/gms/internal/firebase-auth-api/L;->p(IJLjava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/t;->w(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_12
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/t;->z(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v1, v3, v4, p2}, Lcom/google/android/gms/internal/firebase-auth-api/K;->k(JLjava/lang/Object;)J

    move-result-wide v1

    invoke-static {p1, v3, v4, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/L;->q(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/t;->w(ILjava/lang/Object;)V

    goto :goto_1

    :pswitch_13
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/t;->z(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v1, v3, v4, p2}, Lcom/google/android/gms/internal/firebase-auth-api/K;->j(JLjava/lang/Object;)I

    move-result v1

    invoke-static {v1, v3, v4, p1}, Lcom/google/android/gms/internal/firebase-auth-api/L;->p(IJLjava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/t;->w(ILjava/lang/Object;)V

    goto :goto_1

    :pswitch_14
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/t;->z(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v1, v3, v4, p2}, Lcom/google/android/gms/internal/firebase-auth-api/K;->k(JLjava/lang/Object;)J

    move-result-wide v1

    invoke-static {p1, v3, v4, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/L;->q(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/t;->w(ILjava/lang/Object;)V

    goto :goto_1

    :pswitch_15
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/t;->z(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v1, v3, v4, p2}, Lcom/google/android/gms/internal/firebase-auth-api/K;->k(JLjava/lang/Object;)J

    move-result-wide v1

    invoke-static {p1, v3, v4, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/L;->q(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/t;->w(ILjava/lang/Object;)V

    goto :goto_1

    :pswitch_16
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/t;->z(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v1, v3, v4, p2}, Lcom/google/android/gms/internal/firebase-auth-api/K;->b(JLjava/lang/Object;)F

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/firebase-auth-api/L;->o(Ljava/lang/Object;JF)V

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/t;->w(ILjava/lang/Object;)V

    goto :goto_1

    :pswitch_17
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/t;->z(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v1, v3, v4, p2}, Lcom/google/android/gms/internal/firebase-auth-api/K;->a(JLjava/lang/Object;)D

    move-result-wide v1

    invoke-static {p1, v3, v4, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/L;->n(Ljava/lang/Object;JD)V

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/t;->w(ILjava/lang/Object;)V

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x3

    goto/16 :goto_0

    :cond_1
    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/t;->l:Lcom/google/android/gms/internal/firebase-auth-api/E;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/B;->b(Lcom/google/android/gms/internal/firebase-auth-api/E;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final g(Ljava/lang/Object;Lcom/google/android/gms/internal/firebase-auth-api/n;)V
    .locals 10

    iget-boolean v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/t;->g:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/t;->a:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/firebase-auth-api/t;->m(I)I

    move-result v4

    aget v5, v0, v3

    invoke-static {v4}, Lcom/google/android/gms/internal/firebase-auth-api/t;->l(I)I

    move-result v6

    const/4 v7, 0x1

    const v8, 0xfffff

    packed-switch v6, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    invoke-virtual {p0, v5, p1, v3}, Lcom/google/android/gms/internal/firebase-auth-api/t;->B(ILjava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_1

    and-int/2addr v4, v8

    int-to-long v6, v4

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/firebase-auth-api/K;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/firebase-auth-api/t;->p(I)Lcom/google/android/gms/internal/firebase-auth-api/A;

    move-result-object v6

    invoke-virtual {p2, v5, v6, v4}, Lcom/google/android/gms/internal/firebase-auth-api/n;->C(ILcom/google/android/gms/internal/firebase-auth-api/A;Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_1
    invoke-virtual {p0, v5, p1, v3}, Lcom/google/android/gms/internal/firebase-auth-api/t;->B(ILjava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_1

    and-int/2addr v4, v8

    int-to-long v6, v4

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/firebase-auth-api/t;->n(JLjava/lang/Object;)J

    move-result-wide v6

    invoke-virtual {p2, v5, v6, v7}, Lcom/google/android/gms/internal/firebase-auth-api/n;->e(IJ)V

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual {p0, v5, p1, v3}, Lcom/google/android/gms/internal/firebase-auth-api/t;->B(ILjava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_1

    and-int/2addr v4, v8

    int-to-long v6, v4

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/firebase-auth-api/t;->J(JLjava/lang/Object;)I

    move-result v4

    invoke-virtual {p2, v5, v4}, Lcom/google/android/gms/internal/firebase-auth-api/n;->d(II)V

    goto/16 :goto_1

    :pswitch_3
    invoke-virtual {p0, v5, p1, v3}, Lcom/google/android/gms/internal/firebase-auth-api/t;->B(ILjava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_1

    and-int/2addr v4, v8

    int-to-long v6, v4

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/firebase-auth-api/t;->n(JLjava/lang/Object;)J

    move-result-wide v6

    invoke-virtual {p2, v5, v6, v7}, Lcom/google/android/gms/internal/firebase-auth-api/n;->H(IJ)V

    goto/16 :goto_1

    :pswitch_4
    invoke-virtual {p0, v5, p1, v3}, Lcom/google/android/gms/internal/firebase-auth-api/t;->B(ILjava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_1

    and-int/2addr v4, v8

    int-to-long v6, v4

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/firebase-auth-api/t;->J(JLjava/lang/Object;)I

    move-result v4

    invoke-virtual {p2, v5, v4}, Lcom/google/android/gms/internal/firebase-auth-api/n;->G(II)V

    goto/16 :goto_1

    :pswitch_5
    invoke-virtual {p0, v5, p1, v3}, Lcom/google/android/gms/internal/firebase-auth-api/t;->B(ILjava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_1

    and-int/2addr v4, v8

    int-to-long v6, v4

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/firebase-auth-api/t;->J(JLjava/lang/Object;)I

    move-result v4

    invoke-virtual {p2, v5, v4}, Lcom/google/android/gms/internal/firebase-auth-api/n;->y(II)V

    goto/16 :goto_1

    :pswitch_6
    invoke-virtual {p0, v5, p1, v3}, Lcom/google/android/gms/internal/firebase-auth-api/t;->B(ILjava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_1

    and-int/2addr v4, v8

    int-to-long v6, v4

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/firebase-auth-api/t;->J(JLjava/lang/Object;)I

    move-result v4

    invoke-virtual {p2, v5, v4}, Lcom/google/android/gms/internal/firebase-auth-api/n;->f(II)V

    goto/16 :goto_1

    :pswitch_7
    invoke-virtual {p0, v5, p1, v3}, Lcom/google/android/gms/internal/firebase-auth-api/t;->B(ILjava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_1

    and-int/2addr v4, v8

    int-to-long v6, v4

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/firebase-auth-api/K;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/firebase-auth-api/Z4;

    invoke-virtual {p2, v5, v4}, Lcom/google/android/gms/internal/firebase-auth-api/n;->r(ILcom/google/android/gms/internal/firebase-auth-api/Z4;)V

    goto/16 :goto_1

    :pswitch_8
    invoke-virtual {p0, v5, p1, v3}, Lcom/google/android/gms/internal/firebase-auth-api/t;->B(ILjava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_1

    and-int/2addr v4, v8

    int-to-long v6, v4

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/firebase-auth-api/K;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/firebase-auth-api/t;->p(I)Lcom/google/android/gms/internal/firebase-auth-api/A;

    move-result-object v6

    invoke-virtual {p2, v5, v6, v4}, Lcom/google/android/gms/internal/firebase-auth-api/n;->F(ILcom/google/android/gms/internal/firebase-auth-api/A;Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_9
    invoke-virtual {p0, v5, p1, v3}, Lcom/google/android/gms/internal/firebase-auth-api/t;->B(ILjava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_1

    and-int/2addr v4, v8

    int-to-long v6, v4

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/firebase-auth-api/K;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v5, v4, p2}, Lcom/google/android/gms/internal/firebase-auth-api/t;->D(ILjava/lang/Object;Lcom/google/android/gms/internal/firebase-auth-api/n;)V

    goto/16 :goto_1

    :pswitch_a
    invoke-virtual {p0, v5, p1, v3}, Lcom/google/android/gms/internal/firebase-auth-api/t;->B(ILjava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_1

    and-int/2addr v4, v8

    int-to-long v6, v4

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/firebase-auth-api/K;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {p2, v5, v4}, Lcom/google/android/gms/internal/firebase-auth-api/n;->l(IZ)V

    goto/16 :goto_1

    :pswitch_b
    invoke-virtual {p0, v5, p1, v3}, Lcom/google/android/gms/internal/firebase-auth-api/t;->B(ILjava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_1

    and-int/2addr v4, v8

    int-to-long v6, v4

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/firebase-auth-api/t;->J(JLjava/lang/Object;)I

    move-result v4

    invoke-virtual {p2, v5, v4}, Lcom/google/android/gms/internal/firebase-auth-api/n;->z(II)V

    goto/16 :goto_1

    :pswitch_c
    invoke-virtual {p0, v5, p1, v3}, Lcom/google/android/gms/internal/firebase-auth-api/t;->B(ILjava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_1

    and-int/2addr v4, v8

    int-to-long v6, v4

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/firebase-auth-api/t;->n(JLjava/lang/Object;)J

    move-result-wide v6

    invoke-virtual {p2, v5, v6, v7}, Lcom/google/android/gms/internal/firebase-auth-api/n;->A(IJ)V

    goto/16 :goto_1

    :pswitch_d
    invoke-virtual {p0, v5, p1, v3}, Lcom/google/android/gms/internal/firebase-auth-api/t;->B(ILjava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_1

    and-int/2addr v4, v8

    int-to-long v6, v4

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/firebase-auth-api/t;->J(JLjava/lang/Object;)I

    move-result v4

    invoke-virtual {p2, v5, v4}, Lcom/google/android/gms/internal/firebase-auth-api/n;->D(II)V

    goto/16 :goto_1

    :pswitch_e
    invoke-virtual {p0, v5, p1, v3}, Lcom/google/android/gms/internal/firebase-auth-api/t;->B(ILjava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_1

    and-int/2addr v4, v8

    int-to-long v6, v4

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/firebase-auth-api/t;->n(JLjava/lang/Object;)J

    move-result-wide v6

    invoke-virtual {p2, v5, v6, v7}, Lcom/google/android/gms/internal/firebase-auth-api/n;->g(IJ)V

    goto/16 :goto_1

    :pswitch_f
    invoke-virtual {p0, v5, p1, v3}, Lcom/google/android/gms/internal/firebase-auth-api/t;->B(ILjava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_1

    and-int/2addr v4, v8

    int-to-long v6, v4

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/firebase-auth-api/t;->n(JLjava/lang/Object;)J

    move-result-wide v6

    invoke-virtual {p2, v5, v6, v7}, Lcom/google/android/gms/internal/firebase-auth-api/n;->E(IJ)V

    goto/16 :goto_1

    :pswitch_10
    invoke-virtual {p0, v5, p1, v3}, Lcom/google/android/gms/internal/firebase-auth-api/t;->B(ILjava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_1

    and-int/2addr v4, v8

    int-to-long v6, v4

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/firebase-auth-api/K;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {p2, v5, v4}, Lcom/google/android/gms/internal/firebase-auth-api/n;->B(IF)V

    goto/16 :goto_1

    :pswitch_11
    invoke-virtual {p0, v5, p1, v3}, Lcom/google/android/gms/internal/firebase-auth-api/t;->B(ILjava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_1

    and-int/2addr v4, v8

    int-to-long v6, v4

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/firebase-auth-api/K;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-virtual {p2, v5, v6, v7}, Lcom/google/android/gms/internal/firebase-auth-api/n;->u(ID)V

    goto/16 :goto_1

    :pswitch_12
    and-int/2addr v4, v8

    int-to-long v4, v4

    sget-object v6, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v6, v4, v5, p1}, Lcom/google/android/gms/internal/firebase-auth-api/K;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/firebase-auth-api/t;->r(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, LB/f;->F(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0

    :pswitch_13
    aget v5, v0, v3

    and-int/2addr v4, v8

    int-to-long v6, v4

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/firebase-auth-api/K;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/firebase-auth-api/t;->p(I)Lcom/google/android/gms/internal/firebase-auth-api/A;

    move-result-object v6

    invoke-static {v5, v4, p2, v6}, Lcom/google/android/gms/internal/firebase-auth-api/B;->k(ILjava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/n;Lcom/google/android/gms/internal/firebase-auth-api/A;)V

    goto/16 :goto_1

    :pswitch_14
    aget v5, v0, v3

    and-int/2addr v4, v8

    int-to-long v8, v4

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v4, v8, v9, p1}, Lcom/google/android/gms/internal/firebase-auth-api/K;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v7}, Lcom/google/android/gms/internal/firebase-auth-api/B;->r(ILjava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/n;Z)V

    goto/16 :goto_1

    :pswitch_15
    aget v5, v0, v3

    and-int/2addr v4, v8

    int-to-long v8, v4

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v4, v8, v9, p1}, Lcom/google/android/gms/internal/firebase-auth-api/K;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v7}, Lcom/google/android/gms/internal/firebase-auth-api/B;->q(ILjava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/n;Z)V

    goto/16 :goto_1

    :pswitch_16
    aget v5, v0, v3

    and-int/2addr v4, v8

    int-to-long v8, v4

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v4, v8, v9, p1}, Lcom/google/android/gms/internal/firebase-auth-api/K;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v7}, Lcom/google/android/gms/internal/firebase-auth-api/B;->p(ILjava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/n;Z)V

    goto/16 :goto_1

    :pswitch_17
    aget v5, v0, v3

    and-int/2addr v4, v8

    int-to-long v8, v4

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v4, v8, v9, p1}, Lcom/google/android/gms/internal/firebase-auth-api/K;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v7}, Lcom/google/android/gms/internal/firebase-auth-api/B;->o(ILjava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/n;Z)V

    goto/16 :goto_1

    :pswitch_18
    aget v5, v0, v3

    and-int/2addr v4, v8

    int-to-long v8, v4

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v4, v8, v9, p1}, Lcom/google/android/gms/internal/firebase-auth-api/K;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v7}, Lcom/google/android/gms/internal/firebase-auth-api/B;->g(ILjava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/n;Z)V

    goto/16 :goto_1

    :pswitch_19
    aget v5, v0, v3

    and-int/2addr v4, v8

    int-to-long v8, v4

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v4, v8, v9, p1}, Lcom/google/android/gms/internal/firebase-auth-api/K;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v7}, Lcom/google/android/gms/internal/firebase-auth-api/B;->t(ILjava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/n;Z)V

    goto/16 :goto_1

    :pswitch_1a
    aget v5, v0, v3

    and-int/2addr v4, v8

    int-to-long v8, v4

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v4, v8, v9, p1}, Lcom/google/android/gms/internal/firebase-auth-api/K;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v7}, Lcom/google/android/gms/internal/firebase-auth-api/B;->d(ILjava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/n;Z)V

    goto/16 :goto_1

    :pswitch_1b
    aget v5, v0, v3

    and-int/2addr v4, v8

    int-to-long v8, v4

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v4, v8, v9, p1}, Lcom/google/android/gms/internal/firebase-auth-api/K;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v7}, Lcom/google/android/gms/internal/firebase-auth-api/B;->h(ILjava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/n;Z)V

    goto/16 :goto_1

    :pswitch_1c
    aget v5, v0, v3

    and-int/2addr v4, v8

    int-to-long v8, v4

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v4, v8, v9, p1}, Lcom/google/android/gms/internal/firebase-auth-api/K;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v7}, Lcom/google/android/gms/internal/firebase-auth-api/B;->i(ILjava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/n;Z)V

    goto/16 :goto_1

    :pswitch_1d
    aget v5, v0, v3

    and-int/2addr v4, v8

    int-to-long v8, v4

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v4, v8, v9, p1}, Lcom/google/android/gms/internal/firebase-auth-api/K;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v7}, Lcom/google/android/gms/internal/firebase-auth-api/B;->l(ILjava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/n;Z)V

    goto/16 :goto_1

    :pswitch_1e
    aget v5, v0, v3

    and-int/2addr v4, v8

    int-to-long v8, v4

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v4, v8, v9, p1}, Lcom/google/android/gms/internal/firebase-auth-api/K;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v7}, Lcom/google/android/gms/internal/firebase-auth-api/B;->v(ILjava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/n;Z)V

    goto/16 :goto_1

    :pswitch_1f
    aget v5, v0, v3

    and-int/2addr v4, v8

    int-to-long v8, v4

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v4, v8, v9, p1}, Lcom/google/android/gms/internal/firebase-auth-api/K;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v7}, Lcom/google/android/gms/internal/firebase-auth-api/B;->m(ILjava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/n;Z)V

    goto/16 :goto_1

    :pswitch_20
    aget v5, v0, v3

    and-int/2addr v4, v8

    int-to-long v8, v4

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v4, v8, v9, p1}, Lcom/google/android/gms/internal/firebase-auth-api/K;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v7}, Lcom/google/android/gms/internal/firebase-auth-api/B;->j(ILjava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/n;Z)V

    goto/16 :goto_1

    :pswitch_21
    aget v5, v0, v3

    and-int/2addr v4, v8

    int-to-long v8, v4

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v4, v8, v9, p1}, Lcom/google/android/gms/internal/firebase-auth-api/K;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v7}, Lcom/google/android/gms/internal/firebase-auth-api/B;->f(ILjava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/n;Z)V

    goto/16 :goto_1

    :pswitch_22
    aget v5, v0, v3

    and-int/2addr v4, v8

    int-to-long v6, v4

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/firebase-auth-api/K;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v2}, Lcom/google/android/gms/internal/firebase-auth-api/B;->r(ILjava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/n;Z)V

    goto/16 :goto_1

    :pswitch_23
    aget v5, v0, v3

    and-int/2addr v4, v8

    int-to-long v6, v4

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/firebase-auth-api/K;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v2}, Lcom/google/android/gms/internal/firebase-auth-api/B;->q(ILjava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/n;Z)V

    goto/16 :goto_1

    :pswitch_24
    aget v5, v0, v3

    and-int/2addr v4, v8

    int-to-long v6, v4

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/firebase-auth-api/K;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v2}, Lcom/google/android/gms/internal/firebase-auth-api/B;->p(ILjava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/n;Z)V

    goto/16 :goto_1

    :pswitch_25
    aget v5, v0, v3

    and-int/2addr v4, v8

    int-to-long v6, v4

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/firebase-auth-api/K;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v2}, Lcom/google/android/gms/internal/firebase-auth-api/B;->o(ILjava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/n;Z)V

    goto/16 :goto_1

    :pswitch_26
    aget v5, v0, v3

    and-int/2addr v4, v8

    int-to-long v6, v4

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/firebase-auth-api/K;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v2}, Lcom/google/android/gms/internal/firebase-auth-api/B;->g(ILjava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/n;Z)V

    goto/16 :goto_1

    :pswitch_27
    aget v5, v0, v3

    and-int/2addr v4, v8

    int-to-long v6, v4

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/firebase-auth-api/K;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v2}, Lcom/google/android/gms/internal/firebase-auth-api/B;->t(ILjava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/n;Z)V

    goto/16 :goto_1

    :pswitch_28
    aget v5, v0, v3

    and-int/2addr v4, v8

    int-to-long v6, v4

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/firebase-auth-api/K;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2}, Lcom/google/android/gms/internal/firebase-auth-api/B;->e(ILjava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/n;)V

    goto/16 :goto_1

    :pswitch_29
    aget v5, v0, v3

    and-int/2addr v4, v8

    int-to-long v6, v4

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/firebase-auth-api/K;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/firebase-auth-api/t;->p(I)Lcom/google/android/gms/internal/firebase-auth-api/A;

    move-result-object v6

    invoke-static {v5, v4, p2, v6}, Lcom/google/android/gms/internal/firebase-auth-api/B;->n(ILjava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/n;Lcom/google/android/gms/internal/firebase-auth-api/A;)V

    goto/16 :goto_1

    :pswitch_2a
    aget v5, v0, v3

    and-int/2addr v4, v8

    int-to-long v6, v4

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/firebase-auth-api/K;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2}, Lcom/google/android/gms/internal/firebase-auth-api/B;->s(ILjava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/n;)V

    goto/16 :goto_1

    :pswitch_2b
    aget v5, v0, v3

    and-int/2addr v4, v8

    int-to-long v6, v4

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/firebase-auth-api/K;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v2}, Lcom/google/android/gms/internal/firebase-auth-api/B;->d(ILjava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/n;Z)V

    goto/16 :goto_1

    :pswitch_2c
    aget v5, v0, v3

    and-int/2addr v4, v8

    int-to-long v6, v4

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/firebase-auth-api/K;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v2}, Lcom/google/android/gms/internal/firebase-auth-api/B;->h(ILjava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/n;Z)V

    goto/16 :goto_1

    :pswitch_2d
    aget v5, v0, v3

    and-int/2addr v4, v8

    int-to-long v6, v4

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/firebase-auth-api/K;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v2}, Lcom/google/android/gms/internal/firebase-auth-api/B;->i(ILjava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/n;Z)V

    goto/16 :goto_1

    :pswitch_2e
    aget v5, v0, v3

    and-int/2addr v4, v8

    int-to-long v6, v4

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/firebase-auth-api/K;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v2}, Lcom/google/android/gms/internal/firebase-auth-api/B;->l(ILjava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/n;Z)V

    goto/16 :goto_1

    :pswitch_2f
    aget v5, v0, v3

    and-int/2addr v4, v8

    int-to-long v6, v4

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/firebase-auth-api/K;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v2}, Lcom/google/android/gms/internal/firebase-auth-api/B;->v(ILjava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/n;Z)V

    goto/16 :goto_1

    :pswitch_30
    aget v5, v0, v3

    and-int/2addr v4, v8

    int-to-long v6, v4

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/firebase-auth-api/K;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v2}, Lcom/google/android/gms/internal/firebase-auth-api/B;->m(ILjava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/n;Z)V

    goto/16 :goto_1

    :pswitch_31
    aget v5, v0, v3

    and-int/2addr v4, v8

    int-to-long v6, v4

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/firebase-auth-api/K;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v2}, Lcom/google/android/gms/internal/firebase-auth-api/B;->j(ILjava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/n;Z)V

    goto/16 :goto_1

    :pswitch_32
    aget v5, v0, v3

    and-int/2addr v4, v8

    int-to-long v6, v4

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/firebase-auth-api/K;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v2}, Lcom/google/android/gms/internal/firebase-auth-api/B;->f(ILjava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/n;Z)V

    goto/16 :goto_1

    :pswitch_33
    invoke-virtual {p0, v3, p1}, Lcom/google/android/gms/internal/firebase-auth-api/t;->z(ILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    and-int/2addr v4, v8

    int-to-long v6, v4

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/firebase-auth-api/K;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/firebase-auth-api/t;->p(I)Lcom/google/android/gms/internal/firebase-auth-api/A;

    move-result-object v6

    invoke-virtual {p2, v5, v6, v4}, Lcom/google/android/gms/internal/firebase-auth-api/n;->C(ILcom/google/android/gms/internal/firebase-auth-api/A;Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_34
    invoke-virtual {p0, v3, p1}, Lcom/google/android/gms/internal/firebase-auth-api/t;->z(ILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    and-int/2addr v4, v8

    int-to-long v6, v4

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/firebase-auth-api/K;->k(JLjava/lang/Object;)J

    move-result-wide v6

    invoke-virtual {p2, v5, v6, v7}, Lcom/google/android/gms/internal/firebase-auth-api/n;->e(IJ)V

    goto/16 :goto_1

    :pswitch_35
    invoke-virtual {p0, v3, p1}, Lcom/google/android/gms/internal/firebase-auth-api/t;->z(ILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    and-int/2addr v4, v8

    int-to-long v6, v4

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/firebase-auth-api/K;->j(JLjava/lang/Object;)I

    move-result v4

    invoke-virtual {p2, v5, v4}, Lcom/google/android/gms/internal/firebase-auth-api/n;->d(II)V

    goto/16 :goto_1

    :pswitch_36
    invoke-virtual {p0, v3, p1}, Lcom/google/android/gms/internal/firebase-auth-api/t;->z(ILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    and-int/2addr v4, v8

    int-to-long v6, v4

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/firebase-auth-api/K;->k(JLjava/lang/Object;)J

    move-result-wide v6

    invoke-virtual {p2, v5, v6, v7}, Lcom/google/android/gms/internal/firebase-auth-api/n;->H(IJ)V

    goto/16 :goto_1

    :pswitch_37
    invoke-virtual {p0, v3, p1}, Lcom/google/android/gms/internal/firebase-auth-api/t;->z(ILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    and-int/2addr v4, v8

    int-to-long v6, v4

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/firebase-auth-api/K;->j(JLjava/lang/Object;)I

    move-result v4

    invoke-virtual {p2, v5, v4}, Lcom/google/android/gms/internal/firebase-auth-api/n;->G(II)V

    goto/16 :goto_1

    :pswitch_38
    invoke-virtual {p0, v3, p1}, Lcom/google/android/gms/internal/firebase-auth-api/t;->z(ILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    and-int/2addr v4, v8

    int-to-long v6, v4

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/firebase-auth-api/K;->j(JLjava/lang/Object;)I

    move-result v4

    invoke-virtual {p2, v5, v4}, Lcom/google/android/gms/internal/firebase-auth-api/n;->y(II)V

    goto/16 :goto_1

    :pswitch_39
    invoke-virtual {p0, v3, p1}, Lcom/google/android/gms/internal/firebase-auth-api/t;->z(ILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    and-int/2addr v4, v8

    int-to-long v6, v4

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/firebase-auth-api/K;->j(JLjava/lang/Object;)I

    move-result v4

    invoke-virtual {p2, v5, v4}, Lcom/google/android/gms/internal/firebase-auth-api/n;->f(II)V

    goto/16 :goto_1

    :pswitch_3a
    invoke-virtual {p0, v3, p1}, Lcom/google/android/gms/internal/firebase-auth-api/t;->z(ILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    and-int/2addr v4, v8

    int-to-long v6, v4

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/firebase-auth-api/K;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/firebase-auth-api/Z4;

    invoke-virtual {p2, v5, v4}, Lcom/google/android/gms/internal/firebase-auth-api/n;->r(ILcom/google/android/gms/internal/firebase-auth-api/Z4;)V

    goto/16 :goto_1

    :pswitch_3b
    invoke-virtual {p0, v3, p1}, Lcom/google/android/gms/internal/firebase-auth-api/t;->z(ILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    and-int/2addr v4, v8

    int-to-long v6, v4

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/firebase-auth-api/K;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/firebase-auth-api/t;->p(I)Lcom/google/android/gms/internal/firebase-auth-api/A;

    move-result-object v6

    invoke-virtual {p2, v5, v6, v4}, Lcom/google/android/gms/internal/firebase-auth-api/n;->F(ILcom/google/android/gms/internal/firebase-auth-api/A;Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_3c
    invoke-virtual {p0, v3, p1}, Lcom/google/android/gms/internal/firebase-auth-api/t;->z(ILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    and-int/2addr v4, v8

    int-to-long v6, v4

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/firebase-auth-api/K;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v5, v4, p2}, Lcom/google/android/gms/internal/firebase-auth-api/t;->D(ILjava/lang/Object;Lcom/google/android/gms/internal/firebase-auth-api/n;)V

    goto/16 :goto_1

    :pswitch_3d
    invoke-virtual {p0, v3, p1}, Lcom/google/android/gms/internal/firebase-auth-api/t;->z(ILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    and-int/2addr v4, v8

    int-to-long v6, v4

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/firebase-auth-api/K;->g(JLjava/lang/Object;)Z

    move-result v4

    invoke-virtual {p2, v5, v4}, Lcom/google/android/gms/internal/firebase-auth-api/n;->l(IZ)V

    goto/16 :goto_1

    :pswitch_3e
    invoke-virtual {p0, v3, p1}, Lcom/google/android/gms/internal/firebase-auth-api/t;->z(ILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    and-int/2addr v4, v8

    int-to-long v6, v4

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/firebase-auth-api/K;->j(JLjava/lang/Object;)I

    move-result v4

    invoke-virtual {p2, v5, v4}, Lcom/google/android/gms/internal/firebase-auth-api/n;->z(II)V

    goto :goto_1

    :pswitch_3f
    invoke-virtual {p0, v3, p1}, Lcom/google/android/gms/internal/firebase-auth-api/t;->z(ILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    and-int/2addr v4, v8

    int-to-long v6, v4

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/firebase-auth-api/K;->k(JLjava/lang/Object;)J

    move-result-wide v6

    invoke-virtual {p2, v5, v6, v7}, Lcom/google/android/gms/internal/firebase-auth-api/n;->A(IJ)V

    goto :goto_1

    :pswitch_40
    invoke-virtual {p0, v3, p1}, Lcom/google/android/gms/internal/firebase-auth-api/t;->z(ILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    and-int/2addr v4, v8

    int-to-long v6, v4

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/firebase-auth-api/K;->j(JLjava/lang/Object;)I

    move-result v4

    invoke-virtual {p2, v5, v4}, Lcom/google/android/gms/internal/firebase-auth-api/n;->D(II)V

    goto :goto_1

    :pswitch_41
    invoke-virtual {p0, v3, p1}, Lcom/google/android/gms/internal/firebase-auth-api/t;->z(ILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    and-int/2addr v4, v8

    int-to-long v6, v4

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/firebase-auth-api/K;->k(JLjava/lang/Object;)J

    move-result-wide v6

    invoke-virtual {p2, v5, v6, v7}, Lcom/google/android/gms/internal/firebase-auth-api/n;->g(IJ)V

    goto :goto_1

    :pswitch_42
    invoke-virtual {p0, v3, p1}, Lcom/google/android/gms/internal/firebase-auth-api/t;->z(ILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    and-int/2addr v4, v8

    int-to-long v6, v4

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/firebase-auth-api/K;->k(JLjava/lang/Object;)J

    move-result-wide v6

    invoke-virtual {p2, v5, v6, v7}, Lcom/google/android/gms/internal/firebase-auth-api/n;->E(IJ)V

    goto :goto_1

    :pswitch_43
    invoke-virtual {p0, v3, p1}, Lcom/google/android/gms/internal/firebase-auth-api/t;->z(ILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    and-int/2addr v4, v8

    int-to-long v6, v4

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/firebase-auth-api/K;->b(JLjava/lang/Object;)F

    move-result v4

    invoke-virtual {p2, v5, v4}, Lcom/google/android/gms/internal/firebase-auth-api/n;->B(IF)V

    goto :goto_1

    :pswitch_44
    invoke-virtual {p0, v3, p1}, Lcom/google/android/gms/internal/firebase-auth-api/t;->z(ILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    and-int/2addr v4, v8

    int-to-long v6, v4

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/firebase-auth-api/K;->a(JLjava/lang/Object;)D

    move-result-wide v6

    invoke-virtual {p2, v5, v6, v7}, Lcom/google/android/gms/internal/firebase-auth-api/n;->u(ID)V

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x3

    goto/16 :goto_0

    :cond_2
    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/t;->l:Lcom/google/android/gms/internal/firebase-auth-api/E;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/m5;

    iget-object p0, p1, Lcom/google/android/gms/internal/firebase-auth-api/m5;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/D;

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/D;->d(Lcom/google/android/gms/internal/firebase-auth-api/n;)V

    return-void

    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/t;->C(Ljava/lang/Object;Lcom/google/android/gms/internal/firebase-auth-api/n;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
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

.method public final h(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 10

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/t;->a:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/firebase-auth-api/t;->m(I)I

    move-result v4

    const v5, 0xfffff

    and-int v6, v4, v5

    int-to-long v6, v6

    invoke-static {v4}, Lcom/google/android/gms/internal/firebase-auth-api/t;->l(I)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    add-int/lit8 v4, v3, 0x2

    aget v4, v0, v4

    and-int/2addr v4, v5

    int-to-long v4, v4

    sget-object v8, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v8, v4, v5, p1}, Lcom/google/android/gms/internal/firebase-auth-api/K;->j(JLjava/lang/Object;)I

    move-result v9

    invoke-virtual {v8, v4, v5, p2}, Lcom/google/android/gms/internal/firebase-auth-api/K;->j(JLjava/lang/Object;)I

    move-result v4

    if-ne v9, v4, :cond_1

    invoke-virtual {v8, v6, v7, p1}, Lcom/google/android/gms/internal/firebase-auth-api/K;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v8, v6, v7, p2}, Lcom/google/android/gms/internal/firebase-auth-api/K;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/firebase-auth-api/B;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_3

    :pswitch_1
    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/firebase-auth-api/K;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v6, v7, p2}, Lcom/google/android/gms/internal/firebase-auth-api/K;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/google/android/gms/internal/firebase-auth-api/B;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    goto :goto_1

    :pswitch_2
    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/firebase-auth-api/K;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v6, v7, p2}, Lcom/google/android/gms/internal/firebase-auth-api/K;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/google/android/gms/internal/firebase-auth-api/B;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    :goto_1
    if-nez v4, :cond_0

    goto/16 :goto_3

    :pswitch_3
    invoke-virtual {p0, p1, v3, p2}, Lcom/google/android/gms/internal/firebase-auth-api/t;->y(Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/firebase-auth-api/K;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v6, v7, p2}, Lcom/google/android/gms/internal/firebase-auth-api/K;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/google/android/gms/internal/firebase-auth-api/B;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_2

    :pswitch_4
    invoke-virtual {p0, p1, v3, p2}, Lcom/google/android/gms/internal/firebase-auth-api/t;->y(Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/firebase-auth-api/K;->k(JLjava/lang/Object;)J

    move-result-wide v8

    invoke-virtual {v4, v6, v7, p2}, Lcom/google/android/gms/internal/firebase-auth-api/K;->k(JLjava/lang/Object;)J

    move-result-wide v4

    cmp-long v4, v8, v4

    if-nez v4, :cond_1

    goto/16 :goto_2

    :pswitch_5
    invoke-virtual {p0, p1, v3, p2}, Lcom/google/android/gms/internal/firebase-auth-api/t;->y(Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/firebase-auth-api/K;->j(JLjava/lang/Object;)I

    move-result v5

    invoke-virtual {v4, v6, v7, p2}, Lcom/google/android/gms/internal/firebase-auth-api/K;->j(JLjava/lang/Object;)I

    move-result v4

    if-ne v5, v4, :cond_1

    goto/16 :goto_2

    :pswitch_6
    invoke-virtual {p0, p1, v3, p2}, Lcom/google/android/gms/internal/firebase-auth-api/t;->y(Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/firebase-auth-api/K;->k(JLjava/lang/Object;)J

    move-result-wide v8

    invoke-virtual {v4, v6, v7, p2}, Lcom/google/android/gms/internal/firebase-auth-api/K;->k(JLjava/lang/Object;)J

    move-result-wide v4

    cmp-long v4, v8, v4

    if-nez v4, :cond_1

    goto/16 :goto_2

    :pswitch_7
    invoke-virtual {p0, p1, v3, p2}, Lcom/google/android/gms/internal/firebase-auth-api/t;->y(Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/firebase-auth-api/K;->j(JLjava/lang/Object;)I

    move-result v5

    invoke-virtual {v4, v6, v7, p2}, Lcom/google/android/gms/internal/firebase-auth-api/K;->j(JLjava/lang/Object;)I

    move-result v4

    if-ne v5, v4, :cond_1

    goto/16 :goto_2

    :pswitch_8
    invoke-virtual {p0, p1, v3, p2}, Lcom/google/android/gms/internal/firebase-auth-api/t;->y(Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/firebase-auth-api/K;->j(JLjava/lang/Object;)I

    move-result v5

    invoke-virtual {v4, v6, v7, p2}, Lcom/google/android/gms/internal/firebase-auth-api/K;->j(JLjava/lang/Object;)I

    move-result v4

    if-ne v5, v4, :cond_1

    goto/16 :goto_2

    :pswitch_9
    invoke-virtual {p0, p1, v3, p2}, Lcom/google/android/gms/internal/firebase-auth-api/t;->y(Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/firebase-auth-api/K;->j(JLjava/lang/Object;)I

    move-result v5

    invoke-virtual {v4, v6, v7, p2}, Lcom/google/android/gms/internal/firebase-auth-api/K;->j(JLjava/lang/Object;)I

    move-result v4

    if-ne v5, v4, :cond_1

    goto/16 :goto_2

    :pswitch_a
    invoke-virtual {p0, p1, v3, p2}, Lcom/google/android/gms/internal/firebase-auth-api/t;->y(Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/firebase-auth-api/K;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v6, v7, p2}, Lcom/google/android/gms/internal/firebase-auth-api/K;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/google/android/gms/internal/firebase-auth-api/B;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_2

    :pswitch_b
    invoke-virtual {p0, p1, v3, p2}, Lcom/google/android/gms/internal/firebase-auth-api/t;->y(Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/firebase-auth-api/K;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v6, v7, p2}, Lcom/google/android/gms/internal/firebase-auth-api/K;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/google/android/gms/internal/firebase-auth-api/B;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_2

    :pswitch_c
    invoke-virtual {p0, p1, v3, p2}, Lcom/google/android/gms/internal/firebase-auth-api/t;->y(Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/firebase-auth-api/K;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v6, v7, p2}, Lcom/google/android/gms/internal/firebase-auth-api/K;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/google/android/gms/internal/firebase-auth-api/B;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_2

    :pswitch_d
    invoke-virtual {p0, p1, v3, p2}, Lcom/google/android/gms/internal/firebase-auth-api/t;->y(Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/firebase-auth-api/K;->g(JLjava/lang/Object;)Z

    move-result v5

    invoke-virtual {v4, v6, v7, p2}, Lcom/google/android/gms/internal/firebase-auth-api/K;->g(JLjava/lang/Object;)Z

    move-result v4

    if-ne v5, v4, :cond_1

    goto/16 :goto_2

    :pswitch_e
    invoke-virtual {p0, p1, v3, p2}, Lcom/google/android/gms/internal/firebase-auth-api/t;->y(Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/firebase-auth-api/K;->j(JLjava/lang/Object;)I

    move-result v5

    invoke-virtual {v4, v6, v7, p2}, Lcom/google/android/gms/internal/firebase-auth-api/K;->j(JLjava/lang/Object;)I

    move-result v4

    if-ne v5, v4, :cond_1

    goto/16 :goto_2

    :pswitch_f
    invoke-virtual {p0, p1, v3, p2}, Lcom/google/android/gms/internal/firebase-auth-api/t;->y(Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/firebase-auth-api/K;->k(JLjava/lang/Object;)J

    move-result-wide v8

    invoke-virtual {v4, v6, v7, p2}, Lcom/google/android/gms/internal/firebase-auth-api/K;->k(JLjava/lang/Object;)J

    move-result-wide v4

    cmp-long v4, v8, v4

    if-nez v4, :cond_1

    goto/16 :goto_2

    :pswitch_10
    invoke-virtual {p0, p1, v3, p2}, Lcom/google/android/gms/internal/firebase-auth-api/t;->y(Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/firebase-auth-api/K;->j(JLjava/lang/Object;)I

    move-result v5

    invoke-virtual {v4, v6, v7, p2}, Lcom/google/android/gms/internal/firebase-auth-api/K;->j(JLjava/lang/Object;)I

    move-result v4

    if-ne v5, v4, :cond_1

    goto :goto_2

    :pswitch_11
    invoke-virtual {p0, p1, v3, p2}, Lcom/google/android/gms/internal/firebase-auth-api/t;->y(Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/firebase-auth-api/K;->k(JLjava/lang/Object;)J

    move-result-wide v8

    invoke-virtual {v4, v6, v7, p2}, Lcom/google/android/gms/internal/firebase-auth-api/K;->k(JLjava/lang/Object;)J

    move-result-wide v4

    cmp-long v4, v8, v4

    if-nez v4, :cond_1

    goto :goto_2

    :pswitch_12
    invoke-virtual {p0, p1, v3, p2}, Lcom/google/android/gms/internal/firebase-auth-api/t;->y(Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/firebase-auth-api/K;->k(JLjava/lang/Object;)J

    move-result-wide v8

    invoke-virtual {v4, v6, v7, p2}, Lcom/google/android/gms/internal/firebase-auth-api/K;->k(JLjava/lang/Object;)J

    move-result-wide v4

    cmp-long v4, v8, v4

    if-nez v4, :cond_1

    goto :goto_2

    :pswitch_13
    invoke-virtual {p0, p1, v3, p2}, Lcom/google/android/gms/internal/firebase-auth-api/t;->y(Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/firebase-auth-api/K;->b(JLjava/lang/Object;)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v5

    invoke-virtual {v4, v6, v7, p2}, Lcom/google/android/gms/internal/firebase-auth-api/K;->b(JLjava/lang/Object;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    if-ne v5, v4, :cond_1

    goto :goto_2

    :pswitch_14
    invoke-virtual {p0, p1, v3, p2}, Lcom/google/android/gms/internal/firebase-auth-api/t;->y(Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/firebase-auth-api/K;->a(JLjava/lang/Object;)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v8

    invoke-virtual {v4, v6, v7, p2}, Lcom/google/android/gms/internal/firebase-auth-api/K;->a(JLjava/lang/Object;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v4, v8, v4

    if-nez v4, :cond_1

    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x3

    goto/16 :goto_0

    :cond_1
    :goto_3
    return v2

    :cond_2
    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/t;->l:Lcom/google/android/gms/internal/firebase-auth-api/E;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/m5;

    iget-object p0, p1, Lcom/google/android/gms/internal/firebase-auth-api/m5;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/D;

    check-cast p2, Lcom/google/android/gms/internal/firebase-auth-api/m5;

    iget-object p1, p2, Lcom/google/android/gms/internal/firebase-auth-api/m5;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/D;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/D;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
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
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final i(Ljava/lang/Object;)Z
    .locals 13

    const v0, 0xfffff

    const/4 v1, 0x0

    move v3, v0

    move v2, v1

    move v4, v2

    :goto_0
    iget v5, p0, Lcom/google/android/gms/internal/firebase-auth-api/t;->i:I

    const/4 v6, 0x1

    if-ge v2, v5, :cond_f

    iget-object v5, p0, Lcom/google/android/gms/internal/firebase-auth-api/t;->h:[I

    aget v5, v5, v2

    iget-object v7, p0, Lcom/google/android/gms/internal/firebase-auth-api/t;->a:[I

    aget v8, v7, v5

    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/firebase-auth-api/t;->m(I)I

    move-result v9

    add-int/lit8 v10, v5, 0x2

    aget v7, v7, v10

    and-int v10, v7, v0

    ushr-int/lit8 v7, v7, 0x14

    shl-int v7, v6, v7

    if-eq v10, v3, :cond_1

    if-eq v10, v0, :cond_0

    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/t;->n:Lsun/misc/Unsafe;

    int-to-long v11, v10

    invoke-virtual {v3, p1, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    :cond_0
    move v3, v10

    :cond_1
    const/high16 v10, 0x10000000

    and-int/2addr v10, v9

    if-eqz v10, :cond_5

    if-ne v3, v0, :cond_2

    invoke-virtual {p0, v5, p1}, Lcom/google/android/gms/internal/firebase-auth-api/t;->z(ILjava/lang/Object;)Z

    move-result v10

    goto :goto_1

    :cond_2
    and-int v10, v4, v7

    if-eqz v10, :cond_3

    move v10, v6

    goto :goto_1

    :cond_3
    move v10, v1

    :goto_1
    if-eqz v10, :cond_4

    goto :goto_2

    :cond_4
    return v1

    :cond_5
    :goto_2
    invoke-static {v9}, Lcom/google/android/gms/internal/firebase-auth-api/t;->l(I)I

    move-result v10

    const/16 v11, 0x9

    if-eq v10, v11, :cond_b

    const/16 v11, 0x11

    if-eq v10, v11, :cond_b

    const/16 v6, 0x1b

    if-eq v10, v6, :cond_9

    const/16 v6, 0x3c

    if-eq v10, v6, :cond_8

    const/16 v6, 0x44

    if-eq v10, v6, :cond_8

    const/16 v6, 0x31

    if-eq v10, v6, :cond_9

    const/16 v6, 0x32

    if-eq v10, v6, :cond_6

    goto/16 :goto_5

    :cond_6
    and-int v6, v9, v0

    int-to-long v6, v6

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/firebase-auth-api/L;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/firebase-auth-api/o;

    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_7

    goto :goto_5

    :cond_7
    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/firebase-auth-api/t;->r(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, LB/f;->F(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0

    :cond_8
    invoke-virtual {p0, v8, p1, v5}, Lcom/google/android/gms/internal/firebase-auth-api/t;->B(ILjava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/firebase-auth-api/t;->p(I)Lcom/google/android/gms/internal/firebase-auth-api/A;

    move-result-object v5

    invoke-static {v9, v5, p1}, Lcom/google/android/gms/internal/firebase-auth-api/t;->A(ILcom/google/android/gms/internal/firebase-auth-api/A;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    return v1

    :cond_9
    and-int v6, v9, v0

    int-to-long v6, v6

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/firebase-auth-api/L;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_e

    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/firebase-auth-api/t;->p(I)Lcom/google/android/gms/internal/firebase-auth-api/A;

    move-result-object v5

    move v7, v1

    :goto_3
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_e

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v5, v8}, Lcom/google/android/gms/internal/firebase-auth-api/A;->i(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a

    return v1

    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_b
    if-ne v3, v0, :cond_c

    invoke-virtual {p0, v5, p1}, Lcom/google/android/gms/internal/firebase-auth-api/t;->z(ILjava/lang/Object;)Z

    move-result v6

    goto :goto_4

    :cond_c
    and-int/2addr v7, v4

    if-eqz v7, :cond_d

    goto :goto_4

    :cond_d
    move v6, v1

    :goto_4
    if-eqz v6, :cond_e

    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/firebase-auth-api/t;->p(I)Lcom/google/android/gms/internal/firebase-auth-api/A;

    move-result-object v5

    invoke-static {v9, v5, p1}, Lcom/google/android/gms/internal/firebase-auth-api/t;->A(ILcom/google/android/gms/internal/firebase-auth-api/A;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    return v1

    :cond_e
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_f
    return v6
.end method

.method public final j(Ljava/lang/Object;)I
    .locals 11

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/t;->a:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_3

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/t;->m(I)I

    move-result v4

    aget v5, v0, v2

    const v6, 0xfffff

    and-int/2addr v6, v4

    int-to-long v6, v6

    invoke-static {v4}, Lcom/google/android/gms/internal/firebase-auth-api/t;->l(I)I

    move-result v4

    const/16 v8, 0x4d5

    const/16 v9, 0x4cf

    const/16 v10, 0x25

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    invoke-virtual {p0, v5, p1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/t;->B(ILjava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/firebase-auth-api/K;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    :goto_1
    add-int/2addr v4, v3

    move v3, v4

    goto/16 :goto_4

    :pswitch_1
    invoke-virtual {p0, v5, p1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/t;->B(ILjava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/firebase-auth-api/t;->n(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/firebase-auth-api/d;->a(J)I

    move-result v4

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0, v5, p1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/t;->B(ILjava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/firebase-auth-api/t;->J(JLjava/lang/Object;)I

    move-result v4

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0, v5, p1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/t;->B(ILjava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/firebase-auth-api/t;->n(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/firebase-auth-api/d;->a(J)I

    move-result v4

    goto :goto_1

    :pswitch_4
    invoke-virtual {p0, v5, p1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/t;->B(ILjava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/firebase-auth-api/t;->J(JLjava/lang/Object;)I

    move-result v4

    goto :goto_1

    :pswitch_5
    invoke-virtual {p0, v5, p1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/t;->B(ILjava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/firebase-auth-api/t;->J(JLjava/lang/Object;)I

    move-result v4

    goto :goto_1

    :pswitch_6
    invoke-virtual {p0, v5, p1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/t;->B(ILjava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/firebase-auth-api/t;->J(JLjava/lang/Object;)I

    move-result v4

    goto :goto_1

    :pswitch_7
    invoke-virtual {p0, v5, p1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/t;->B(ILjava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/firebase-auth-api/K;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto :goto_1

    :pswitch_8
    invoke-virtual {p0, v5, p1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/t;->B(ILjava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/firebase-auth-api/K;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto :goto_1

    :pswitch_9
    invoke-virtual {p0, v5, p1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/t;->B(ILjava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/firebase-auth-api/K;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    goto/16 :goto_1

    :pswitch_a
    invoke-virtual {p0, v5, p1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/t;->B(ILjava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/firebase-auth-api/K;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    sget-object v5, Lcom/google/android/gms/internal/firebase-auth-api/d;->a:Ljava/nio/charset/Charset;

    if-eqz v4, :cond_0

    :goto_2
    move v8, v9

    :cond_0
    add-int/2addr v8, v3

    move v3, v8

    goto/16 :goto_4

    :pswitch_b
    invoke-virtual {p0, v5, p1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/t;->B(ILjava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/firebase-auth-api/t;->J(JLjava/lang/Object;)I

    move-result v4

    goto/16 :goto_1

    :pswitch_c
    invoke-virtual {p0, v5, p1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/t;->B(ILjava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/firebase-auth-api/t;->n(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/firebase-auth-api/d;->a(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_d
    invoke-virtual {p0, v5, p1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/t;->B(ILjava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/firebase-auth-api/t;->J(JLjava/lang/Object;)I

    move-result v4

    goto/16 :goto_1

    :pswitch_e
    invoke-virtual {p0, v5, p1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/t;->B(ILjava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/firebase-auth-api/t;->n(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/firebase-auth-api/d;->a(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_f
    invoke-virtual {p0, v5, p1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/t;->B(ILjava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/firebase-auth-api/t;->n(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/firebase-auth-api/d;->a(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_10
    invoke-virtual {p0, v5, p1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/t;->B(ILjava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/firebase-auth-api/K;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    goto/16 :goto_1

    :pswitch_11
    invoke-virtual {p0, v5, p1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/t;->B(ILjava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/firebase-auth-api/K;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/firebase-auth-api/d;->a(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_12
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/firebase-auth-api/K;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto/16 :goto_1

    :pswitch_13
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/firebase-auth-api/K;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto/16 :goto_1

    :pswitch_14
    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/firebase-auth-api/K;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v10

    :cond_1
    :goto_3
    mul-int/lit8 v3, v3, 0x35

    add-int/2addr v3, v10

    goto/16 :goto_4

    :pswitch_15
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/firebase-auth-api/K;->k(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/firebase-auth-api/d;->a(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_16
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/firebase-auth-api/K;->j(JLjava/lang/Object;)I

    move-result v4

    goto/16 :goto_1

    :pswitch_17
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/firebase-auth-api/K;->k(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/firebase-auth-api/d;->a(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_18
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/firebase-auth-api/K;->j(JLjava/lang/Object;)I

    move-result v4

    goto/16 :goto_1

    :pswitch_19
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/firebase-auth-api/K;->j(JLjava/lang/Object;)I

    move-result v4

    goto/16 :goto_1

    :pswitch_1a
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/firebase-auth-api/K;->j(JLjava/lang/Object;)I

    move-result v4

    goto/16 :goto_1

    :pswitch_1b
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/firebase-auth-api/K;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto/16 :goto_1

    :pswitch_1c
    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/firebase-auth-api/K;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v10

    goto :goto_3

    :pswitch_1d
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/firebase-auth-api/K;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    goto/16 :goto_1

    :pswitch_1e
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/firebase-auth-api/K;->g(JLjava/lang/Object;)Z

    move-result v4

    sget-object v5, Lcom/google/android/gms/internal/firebase-auth-api/d;->a:Ljava/nio/charset/Charset;

    if-eqz v4, :cond_0

    goto/16 :goto_2

    :pswitch_1f
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/firebase-auth-api/K;->j(JLjava/lang/Object;)I

    move-result v4

    goto/16 :goto_1

    :pswitch_20
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/firebase-auth-api/K;->k(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/firebase-auth-api/d;->a(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_21
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/firebase-auth-api/K;->j(JLjava/lang/Object;)I

    move-result v4

    goto/16 :goto_1

    :pswitch_22
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/firebase-auth-api/K;->k(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/firebase-auth-api/d;->a(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_23
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/firebase-auth-api/K;->k(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/firebase-auth-api/d;->a(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_24
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/firebase-auth-api/K;->b(JLjava/lang/Object;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    goto/16 :goto_1

    :pswitch_25
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/firebase-auth-api/K;->a(JLjava/lang/Object;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/firebase-auth-api/d;->a(J)I

    move-result v4

    goto/16 :goto_1

    :cond_2
    :goto_4
    add-int/lit8 v2, v2, 0x3

    goto/16 :goto_0

    :cond_3
    mul-int/lit8 v3, v3, 0x35

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/t;->l:Lcom/google/android/gms/internal/firebase-auth-api/E;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/m5;

    iget-object p0, p1, Lcom/google/android/gms/internal/firebase-auth-api/m5;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/D;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/D;->hashCode()I

    move-result p0

    add-int/2addr p0, v3

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
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

.method public final k(II)I
    .locals 5

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/t;->a:[I

    array-length v0, p0

    div-int/lit8 v0, v0, 0x3

    const/4 v1, -0x1

    add-int/2addr v0, v1

    :goto_0
    if-gt p2, v0, :cond_2

    add-int v2, v0, p2

    ushr-int/lit8 v2, v2, 0x1

    mul-int/lit8 v3, v2, 0x3

    aget v4, p0, v3

    if-ne p1, v4, :cond_0

    return v3

    :cond_0
    if-ge p1, v4, :cond_1

    add-int/lit8 v2, v2, -0x1

    move v0, v2

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    move p2, v2

    goto :goto_0

    :cond_2
    return v1
.end method

.method public final m(I)I
    .locals 0

    add-int/lit8 p1, p1, 0x1

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/t;->a:[I

    aget p0, p0, p1

    return p0
.end method

.method public final o(I)V
    .locals 0

    div-int/lit8 p1, p1, 0x3

    add-int/2addr p1, p1

    add-int/lit8 p1, p1, 0x1

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/t;->b:[Ljava/lang/Object;

    aget-object p0, p0, p1

    invoke-static {p0}, LB/f;->F(Ljava/lang/Object;)V

    return-void
.end method

.method public final p(I)Lcom/google/android/gms/internal/firebase-auth-api/A;
    .locals 2

    div-int/lit8 p1, p1, 0x3

    add-int/2addr p1, p1

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/t;->b:[Ljava/lang/Object;

    aget-object v0, p0, p1

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/A;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/x;->c:Lcom/google/android/gms/internal/firebase-auth-api/x;

    add-int/lit8 v1, p1, 0x1

    aget-object v1, p0, v1

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/x;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/firebase-auth-api/A;

    move-result-object v0

    aput-object v0, p0, p1

    return-object v0
.end method

.method public final q(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 2

    iget-object p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/t;->a:[I

    aget p3, p3, p2

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/t;->m(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    sget-object p3, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {p3, v0, v1, p1}, Lcom/google/android/gms/internal/firebase-auth-api/K;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/t;->o(I)V

    return-void
.end method

.method public final r(I)Ljava/lang/Object;
    .locals 0

    div-int/lit8 p1, p1, 0x3

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/t;->b:[Ljava/lang/Object;

    add-int/2addr p1, p1

    aget-object p0, p0, p1

    return-object p0
.end method

.method public final t(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 4

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/t;->m(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v0, v1

    int-to-long v0, v0

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/firebase-auth-api/t;->z(ILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v2, v0, v1, p1}, Lcom/google/android/gms/internal/firebase-auth-api/K;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v0, v1, p3}, Lcom/google/android/gms/internal/firebase-auth-api/K;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-eqz v3, :cond_2

    if-nez p3, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v3, p3}, Lcom/google/android/gms/internal/firebase-auth-api/d;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase-auth-api/m5;

    move-result-object p3

    invoke-static {v0, v1, p1, p3}, Lcom/google/android/gms/internal/firebase-auth-api/L;->r(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/t;->w(ILjava/lang/Object;)V

    return-void

    :cond_2
    :goto_0
    if-eqz p3, :cond_3

    invoke-static {v0, v1, p1, p3}, Lcom/google/android/gms/internal/firebase-auth-api/L;->r(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/t;->w(ILjava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public final u(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 5

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/t;->m(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/t;->a:[I

    aget v1, v1, p2

    const v2, 0xfffff

    and-int/2addr v0, v2

    int-to-long v2, v0

    invoke-virtual {p0, v1, p3, p2}, Lcom/google/android/gms/internal/firebase-auth-api/t;->B(ILjava/lang/Object;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v1, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/t;->B(ILjava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v0, v2, v3, p1}, Lcom/google/android/gms/internal/firebase-auth-api/K;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {v4, v2, v3, p3}, Lcom/google/android/gms/internal/firebase-auth-api/K;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-eqz v0, :cond_3

    if-nez p3, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {v0, p3}, Lcom/google/android/gms/internal/firebase-auth-api/d;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase-auth-api/m5;

    move-result-object p3

    invoke-static {v2, v3, p1, p3}, Lcom/google/android/gms/internal/firebase-auth-api/L;->r(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v1, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/t;->x(ILjava/lang/Object;I)V

    return-void

    :cond_3
    :goto_1
    if-eqz p3, :cond_4

    invoke-static {v2, v3, p1, p3}, Lcom/google/android/gms/internal/firebase-auth-api/L;->r(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v1, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/t;->x(ILjava/lang/Object;I)V

    :cond_4
    return-void
.end method

.method public final v(Ljava/lang/Object;ILcom/google/android/gms/internal/firebase-auth-api/b5;)V
    .locals 2

    const/high16 v0, 0x20000000

    and-int/2addr v0, p2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const v1, 0xfffff

    if-eqz v0, :cond_1

    and-int p0, p2, v1

    int-to-long v0, p0

    invoke-virtual {p3}, Lcom/google/android/gms/internal/firebase-auth-api/b5;->x()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/L;->r(JLjava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_1
    iget-boolean p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/t;->f:Z

    if-eqz p0, :cond_2

    and-int p0, p2, v1

    int-to-long v0, p0

    invoke-virtual {p3}, Lcom/google/android/gms/internal/firebase-auth-api/b5;->w()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/L;->r(JLjava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_2
    and-int p0, p2, v1

    int-to-long v0, p0

    invoke-virtual {p3}, Lcom/google/android/gms/internal/firebase-auth-api/b5;->v()Lcom/google/android/gms/internal/firebase-auth-api/Y4;

    move-result-object p0

    invoke-static {v0, v1, p1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/L;->r(JLjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final w(ILjava/lang/Object;)V
    .locals 4

    add-int/lit8 p1, p1, 0x2

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/t;->a:[I

    aget p0, p0, p1

    const p1, 0xfffff

    and-int/2addr p1, p0

    int-to-long v0, p1

    const-wide/32 v2, 0xfffff

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {p1, v0, v1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/K;->j(JLjava/lang/Object;)I

    move-result p1

    ushr-int/lit8 p0, p0, 0x14

    const/4 v2, 0x1

    shl-int p0, v2, p0

    or-int/2addr p0, p1

    invoke-static {p0, v0, v1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/L;->p(IJLjava/lang/Object;)V

    return-void
.end method

.method public final x(ILjava/lang/Object;I)V
    .locals 2

    add-int/lit8 p3, p3, 0x2

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/t;->a:[I

    aget p0, p0, p3

    const p3, 0xfffff

    and-int/2addr p0, p3

    int-to-long v0, p0

    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/L;->p(IJLjava/lang/Object;)V

    return-void
.end method

.method public final y(Ljava/lang/Object;ILjava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/t;->z(ILjava/lang/Object;)Z

    move-result p1

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/firebase-auth-api/t;->z(ILjava/lang/Object;)Z

    move-result p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final z(ILjava/lang/Object;)Z
    .locals 7

    add-int/lit8 v0, p1, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/t;->a:[I

    aget v0, v1, v0

    const v1, 0xfffff

    and-int v2, v0, v1

    int-to-long v2, v2

    const-wide/32 v4, 0xfffff

    cmp-long v4, v2, v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_14

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/t;->m(I)I

    move-result p0

    and-int p1, p0, v1

    int-to-long v0, p1

    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/t;->l(I)I

    move-result p0

    const-wide/16 v2, 0x0

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :pswitch_0
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/K;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    return v6

    :cond_0
    return v5

    :pswitch_1
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/K;->k(JLjava/lang/Object;)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_1

    return v6

    :cond_1
    return v5

    :pswitch_2
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/K;->j(JLjava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_2

    return v6

    :cond_2
    return v5

    :pswitch_3
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/K;->k(JLjava/lang/Object;)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_3

    return v6

    :cond_3
    return v5

    :pswitch_4
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/K;->j(JLjava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_4

    return v6

    :cond_4
    return v5

    :pswitch_5
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/K;->j(JLjava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_5

    return v6

    :cond_5
    return v5

    :pswitch_6
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/K;->j(JLjava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_6

    return v6

    :cond_6
    return v5

    :pswitch_7
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/Z4;->d:Lcom/google/android/gms/internal/firebase-auth-api/Y4;

    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {p1, v0, v1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/K;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/Y4;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    return v6

    :cond_7
    return v5

    :pswitch_8
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/K;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_8

    return v6

    :cond_8
    return v5

    :pswitch_9
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/K;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Ljava/lang/String;

    if-eqz p1, :cond_a

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_9

    return v6

    :cond_9
    return v5

    :cond_a
    instance-of p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/Z4;

    if-eqz p1, :cond_c

    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/Z4;->d:Lcom/google/android/gms/internal/firebase-auth-api/Y4;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/Y4;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    return v6

    :cond_b
    return v5

    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :pswitch_a
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/K;->g(JLjava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_b
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/K;->j(JLjava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_d

    return v6

    :cond_d
    return v5

    :pswitch_c
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/K;->k(JLjava/lang/Object;)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_e

    return v6

    :cond_e
    return v5

    :pswitch_d
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/K;->j(JLjava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_f

    return v6

    :cond_f
    return v5

    :pswitch_e
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/K;->k(JLjava/lang/Object;)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_10

    return v6

    :cond_10
    return v5

    :pswitch_f
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/K;->k(JLjava/lang/Object;)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_11

    return v6

    :cond_11
    return v5

    :pswitch_10
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/K;->b(JLjava/lang/Object;)F

    move-result p0

    const/4 p1, 0x0

    cmpl-float p0, p0, p1

    if-eqz p0, :cond_12

    return v6

    :cond_12
    return v5

    :pswitch_11
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/K;->a(JLjava/lang/Object;)D

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmpl-double p0, p0, v0

    if-eqz p0, :cond_13

    return v6

    :cond_13
    return v5

    :cond_14
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/L;->c:Lcom/google/android/gms/internal/firebase-auth-api/K;

    invoke-virtual {p0, v2, v3, p2}, Lcom/google/android/gms/internal/firebase-auth-api/K;->j(JLjava/lang/Object;)I

    move-result p0

    ushr-int/lit8 p1, v0, 0x14

    shl-int p1, v6, p1

    and-int/2addr p0, p1

    if-eqz p0, :cond_15

    return v6

    :cond_15
    return v5

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
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
