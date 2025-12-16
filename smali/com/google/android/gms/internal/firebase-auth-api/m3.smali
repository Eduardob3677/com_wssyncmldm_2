.class public final Lcom/google/android/gms/internal/firebase-auth-api/m3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/m3;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/m3;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-static/range {p1 .. p1}, Lf1/a;->q0(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move v6, v5

    move-wide v4, v3

    move-object v3, v2

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v7

    if-ge v7, v0, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    const v8, 0xffff

    and-int/2addr v8, v7

    const/4 v9, 0x2

    if-eq v8, v9, :cond_3

    const/4 v9, 0x3

    if-eq v8, v9, :cond_2

    const/4 v9, 0x4

    if-eq v8, v9, :cond_1

    const/4 v9, 0x5

    if-eq v8, v9, :cond_0

    invoke-static {v1, v7}, Lf1/a;->n0(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    invoke-static {v1, v7}, Lf1/a;->c0(Landroid/os/Parcel;I)Z

    move-result v6

    goto :goto_0

    :cond_1
    invoke-static {v1, v7}, Lf1/a;->e0(Landroid/os/Parcel;I)J

    move-result-wide v4

    goto :goto_0

    :cond_2
    invoke-static {v1, v7}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_3
    invoke-static {v1, v7}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_4
    invoke-static {v1, v0}, Lf1/a;->u(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/P4;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, Lcom/google/android/gms/internal/firebase-auth-api/P4;->c:Ljava/lang/String;

    iput-object v3, v0, Lcom/google/android/gms/internal/firebase-auth-api/P4;->d:Ljava/lang/String;

    iput-wide v4, v0, Lcom/google/android/gms/internal/firebase-auth-api/P4;->e:J

    iput-boolean v6, v0, Lcom/google/android/gms/internal/firebase-auth-api/P4;->f:Z

    return-object v0

    :pswitch_0
    invoke-static/range {p1 .. p1}, Lf1/a;->q0(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 p0, v2

    move-object/from16 v4, p0

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    move-object/from16 v17, v12

    move v14, v3

    move v15, v14

    move/from16 v16, v15

    move-object/from16 v3, v17

    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v13

    if-ge v13, v0, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    const v18, 0xffff

    and-int v18, v13, v18

    packed-switch v18, :pswitch_data_1

    invoke-static {v1, v13}, Lf1/a;->n0(Landroid/os/Parcel;I)V

    :goto_2
    move-object/from16 v13, p0

    goto :goto_3

    :pswitch_1
    invoke-static {v1, v13}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v13

    goto :goto_3

    :pswitch_2
    invoke-static {v1, v13}, Lf1/a;->c0(Landroid/os/Parcel;I)Z

    move-result v13

    move/from16 v16, v13

    goto :goto_2

    :pswitch_3
    invoke-static {v1, v13}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v17, v13

    goto :goto_2

    :pswitch_4
    invoke-static {v1, v13}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v12

    goto :goto_2

    :pswitch_5
    invoke-static {v1, v13}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v11

    goto :goto_2

    :pswitch_6
    invoke-static {v1, v13}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v10

    goto :goto_2

    :pswitch_7
    invoke-static {v1, v13}, Lf1/a;->c0(Landroid/os/Parcel;I)Z

    move-result v13

    move v14, v13

    goto :goto_2

    :pswitch_8
    invoke-static {v1, v13}, Lf1/a;->c0(Landroid/os/Parcel;I)Z

    move-result v13

    move v15, v13

    goto :goto_2

    :pswitch_9
    invoke-static {v1, v13}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    :pswitch_a
    invoke-static {v1, v13}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    :pswitch_b
    invoke-static {v1, v13}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :pswitch_c
    invoke-static {v1, v13}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :pswitch_d
    invoke-static {v1, v13}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :pswitch_e
    invoke-static {v1, v13}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :pswitch_f
    invoke-static {v1, v13}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :pswitch_10
    invoke-static {v1, v13}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :goto_3
    move-object/from16 p0, v13

    goto :goto_1

    :cond_5
    invoke-static {v1, v0}, Lf1/a;->u(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/N4;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, Lcom/google/android/gms/internal/firebase-auth-api/N4;->c:Ljava/lang/String;

    iput-object v3, v0, Lcom/google/android/gms/internal/firebase-auth-api/N4;->d:Ljava/lang/String;

    iput-object v4, v0, Lcom/google/android/gms/internal/firebase-auth-api/N4;->e:Ljava/lang/String;

    iput-object v5, v0, Lcom/google/android/gms/internal/firebase-auth-api/N4;->f:Ljava/lang/String;

    iput-object v6, v0, Lcom/google/android/gms/internal/firebase-auth-api/N4;->g:Ljava/lang/String;

    iput-object v7, v0, Lcom/google/android/gms/internal/firebase-auth-api/N4;->h:Ljava/lang/String;

    iput-object v8, v0, Lcom/google/android/gms/internal/firebase-auth-api/N4;->i:Ljava/lang/String;

    iput-object v9, v0, Lcom/google/android/gms/internal/firebase-auth-api/N4;->j:Ljava/lang/String;

    iput-boolean v15, v0, Lcom/google/android/gms/internal/firebase-auth-api/N4;->k:Z

    iput-boolean v14, v0, Lcom/google/android/gms/internal/firebase-auth-api/N4;->l:Z

    iput-object v10, v0, Lcom/google/android/gms/internal/firebase-auth-api/N4;->m:Ljava/lang/String;

    iput-object v11, v0, Lcom/google/android/gms/internal/firebase-auth-api/N4;->n:Ljava/lang/String;

    iput-object v12, v0, Lcom/google/android/gms/internal/firebase-auth-api/N4;->o:Ljava/lang/String;

    move-object/from16 v2, v17

    iput-object v2, v0, Lcom/google/android/gms/internal/firebase-auth-api/N4;->p:Ljava/lang/String;

    move/from16 v3, v16

    iput-boolean v3, v0, Lcom/google/android/gms/internal/firebase-auth-api/N4;->q:Z

    move-object/from16 v2, p0

    iput-object v2, v0, Lcom/google/android/gms/internal/firebase-auth-api/N4;->r:Ljava/lang/String;

    return-object v0

    :pswitch_11
    invoke-static/range {p1 .. p1}, Lf1/a;->q0(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-ge v4, v0, :cond_8

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    const v5, 0xffff

    and-int/2addr v5, v4

    const/4 v6, 0x1

    if-eq v5, v6, :cond_7

    const/4 v6, 0x2

    if-eq v5, v6, :cond_6

    invoke-static {v1, v4}, Lf1/a;->n0(Landroid/os/Parcel;I)V

    goto :goto_4

    :cond_6
    invoke-static {v1, v4}, Lf1/a;->o(Landroid/os/Parcel;I)Ljava/util/ArrayList;

    move-result-object v3

    goto :goto_4

    :cond_7
    invoke-static {v1, v4}, Lf1/a;->d0(Landroid/os/Parcel;I)I

    move-result v2

    goto :goto_4

    :cond_8
    invoke-static {v1, v0}, Lf1/a;->u(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/M4;

    invoke-direct {v0, v3, v2}, Lcom/google/android/gms/internal/firebase-auth-api/M4;-><init>(Ljava/util/ArrayList;I)V

    return-object v0

    :pswitch_12
    invoke-static/range {p1 .. p1}, Lf1/a;->q0(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-object v7, v2

    move-object v11, v7

    move-object v12, v11

    move-object v13, v12

    move-object v15, v13

    move-wide v8, v3

    move v10, v5

    move v14, v10

    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v0, :cond_9

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const v3, 0xffff

    and-int/2addr v3, v2

    packed-switch v3, :pswitch_data_2

    invoke-static {v1, v2}, Lf1/a;->n0(Landroid/os/Parcel;I)V

    goto :goto_5

    :pswitch_13
    invoke-static {v1, v2}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    move-object v15, v2

    goto :goto_5

    :pswitch_14
    invoke-static {v1, v2}, Lf1/a;->c0(Landroid/os/Parcel;I)Z

    move-result v2

    move v14, v2

    goto :goto_5

    :pswitch_15
    invoke-static {v1, v2}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    move-object v13, v2

    goto :goto_5

    :pswitch_16
    invoke-static {v1, v2}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    move-object v12, v2

    goto :goto_5

    :pswitch_17
    invoke-static {v1, v2}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    move-object v11, v2

    goto :goto_5

    :pswitch_18
    invoke-static {v1, v2}, Lf1/a;->c0(Landroid/os/Parcel;I)Z

    move-result v2

    move v10, v2

    goto :goto_5

    :pswitch_19
    invoke-static {v1, v2}, Lf1/a;->e0(Landroid/os/Parcel;I)J

    move-result-wide v2

    move-wide v8, v2

    goto :goto_5

    :pswitch_1a
    invoke-static {v1, v2}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    move-object v7, v2

    goto :goto_5

    :cond_9
    invoke-static {v1, v0}, Lf1/a;->u(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/E4;

    move-object v6, v0

    invoke-direct/range {v6 .. v15}, Lcom/google/android/gms/internal/firebase-auth-api/E4;-><init>(Ljava/lang/String;JZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    return-object v0

    :pswitch_1b
    invoke-static/range {p1 .. p1}, Lf1/a;->q0(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    move-object v3, v2

    move-object v4, v3

    move-object v5, v4

    :goto_6
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v6

    if-ge v6, v0, :cond_e

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    const v7, 0xffff

    and-int/2addr v7, v6

    const/4 v8, 0x2

    if-eq v7, v8, :cond_d

    const/4 v8, 0x3

    if-eq v7, v8, :cond_c

    const/4 v8, 0x4

    if-eq v7, v8, :cond_b

    const/4 v8, 0x5

    if-eq v7, v8, :cond_a

    invoke-static {v1, v6}, Lf1/a;->n0(Landroid/os/Parcel;I)V

    goto :goto_6

    :cond_a
    sget-object v5, Lcom/google/android/gms/internal/firebase-auth-api/z4;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v6, v5}, Lf1/a;->l(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/firebase-auth-api/z4;

    goto :goto_6

    :cond_b
    invoke-static {v1, v6}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v4

    goto :goto_6

    :cond_c
    invoke-static {v1, v6}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_6

    :cond_d
    invoke-static {v1, v6}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    :cond_e
    invoke-static {v1, v0}, Lf1/a;->u(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/D4;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, Lcom/google/android/gms/internal/firebase-auth-api/D4;->c:Ljava/lang/String;

    iput-object v3, v0, Lcom/google/android/gms/internal/firebase-auth-api/D4;->d:Ljava/lang/String;

    iput-object v4, v0, Lcom/google/android/gms/internal/firebase-auth-api/D4;->e:Ljava/lang/String;

    iput-object v5, v0, Lcom/google/android/gms/internal/firebase-auth-api/D4;->f:Lcom/google/android/gms/internal/firebase-auth-api/z4;

    return-object v0

    :pswitch_1c
    invoke-static/range {p1 .. p1}, Lf1/a;->q0(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    :goto_7
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v0, :cond_10

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    const v4, 0xffff

    and-int/2addr v4, v3

    const/4 v5, 0x2

    if-eq v4, v5, :cond_f

    invoke-static {v1, v3}, Lf1/a;->n0(Landroid/os/Parcel;I)V

    goto :goto_7

    :cond_f
    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/A4;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v3, v2}, Lf1/a;->q(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_7

    :cond_10
    invoke-static {v1, v0}, Lf1/a;->u(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/B4;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/B4;-><init>(Ljava/util/ArrayList;)V

    return-object v0

    :pswitch_1d
    invoke-static/range {p1 .. p1}, Lf1/a;->q0(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    move-object v4, v2

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    :goto_8
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v0, :cond_11

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const v3, 0xffff

    and-int/2addr v3, v2

    packed-switch v3, :pswitch_data_3

    invoke-static {v1, v2}, Lf1/a;->n0(Landroid/os/Parcel;I)V

    goto :goto_8

    :pswitch_1e
    invoke-static {v1, v2}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    move-object v10, v2

    goto :goto_8

    :pswitch_1f
    invoke-static {v1, v2}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    move-object v9, v2

    goto :goto_8

    :pswitch_20
    invoke-static {v1, v2}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    move-object v8, v2

    goto :goto_8

    :pswitch_21
    invoke-static {v1, v2}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    move-object v7, v2

    goto :goto_8

    :pswitch_22
    invoke-static {v1, v2}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    move-object v6, v2

    goto :goto_8

    :pswitch_23
    invoke-static {v1, v2}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    move-object v5, v2

    goto :goto_8

    :pswitch_24
    invoke-static {v1, v2}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    move-object v4, v2

    goto :goto_8

    :cond_11
    invoke-static {v1, v0}, Lf1/a;->u(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/A4;

    move-object v3, v0

    invoke-direct/range {v3 .. v10}, Lcom/google/android/gms/internal/firebase-auth-api/A4;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :pswitch_25
    invoke-static/range {p1 .. p1}, Lf1/a;->q0(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    move-object v8, v2

    move-object v9, v8

    move-object v10, v9

    move-wide v6, v3

    :goto_9
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v0, :cond_16

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const v3, 0xffff

    and-int/2addr v3, v2

    const/4 v4, 0x1

    if-eq v3, v4, :cond_15

    const/4 v4, 0x2

    if-eq v3, v4, :cond_14

    const/4 v4, 0x3

    if-eq v3, v4, :cond_13

    const/4 v4, 0x4

    if-eq v3, v4, :cond_12

    invoke-static {v1, v2}, Lf1/a;->n0(Landroid/os/Parcel;I)V

    goto :goto_9

    :cond_12
    invoke-static {v1, v2}, Lf1/a;->e0(Landroid/os/Parcel;I)J

    move-result-wide v2

    move-wide v6, v2

    goto :goto_9

    :cond_13
    invoke-static {v1, v2}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    move-object v10, v2

    goto :goto_9

    :cond_14
    invoke-static {v1, v2}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    move-object v9, v2

    goto :goto_9

    :cond_15
    invoke-static {v1, v2}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    move-object v8, v2

    goto :goto_9

    :cond_16
    invoke-static {v1, v0}, Lf1/a;->u(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/z4;

    move-object v5, v0

    invoke-direct/range {v5 .. v10}, Lcom/google/android/gms/internal/firebase-auth-api/z4;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :pswitch_26
    invoke-static/range {p1 .. p1}, Lf1/a;->q0(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    move-object v4, v2

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    :goto_a
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v0, :cond_1e

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    const v9, 0xffff

    and-int/2addr v9, v3

    const/4 v10, 0x2

    if-eq v9, v10, :cond_1d

    const/4 v10, 0x3

    if-eq v9, v10, :cond_1c

    const/4 v10, 0x4

    const/16 v11, 0x8

    if-eq v9, v10, :cond_1a

    const/4 v10, 0x5

    if-eq v9, v10, :cond_19

    const/4 v10, 0x6

    if-eq v9, v10, :cond_17

    invoke-static {v1, v3}, Lf1/a;->n0(Landroid/os/Parcel;I)V

    goto :goto_a

    :cond_17
    invoke-static {v1, v3}, Lf1/a;->f0(Landroid/os/Parcel;I)I

    move-result v3

    if-nez v3, :cond_18

    move-object v8, v2

    goto :goto_a

    :cond_18
    invoke-static {v1, v3, v11}, Lf1/a;->v0(Landroid/os/Parcel;II)V

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object v8, v3

    goto :goto_a

    :cond_19
    invoke-static {v1, v3}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v7

    goto :goto_a

    :cond_1a
    invoke-static {v1, v3}, Lf1/a;->f0(Landroid/os/Parcel;I)I

    move-result v3

    if-nez v3, :cond_1b

    move-object v6, v2

    goto :goto_a

    :cond_1b
    invoke-static {v1, v3, v11}, Lf1/a;->v0(Landroid/os/Parcel;II)V

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object v6, v3

    goto :goto_a

    :cond_1c
    invoke-static {v1, v3}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v5

    goto :goto_a

    :cond_1d
    invoke-static {v1, v3}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v4

    goto :goto_a

    :cond_1e
    invoke-static {v1, v0}, Lf1/a;->u(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/y4;

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/firebase-auth-api/y4;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;)V

    return-object v0

    :pswitch_27
    invoke-static/range {p1 .. p1}, Lf1/a;->q0(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    :goto_b
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v0, :cond_20

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    const v4, 0xffff

    and-int/2addr v4, v3

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1f

    invoke-static {v1, v3}, Lf1/a;->n0(Landroid/os/Parcel;I)V

    goto :goto_b

    :cond_1f
    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/v4;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v3, v2}, Lf1/a;->q(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_b

    :cond_20
    invoke-static {v1, v0}, Lf1/a;->u(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/w4;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/w4;-><init>(Ljava/util/ArrayList;)V

    return-object v0

    :pswitch_28
    invoke-static/range {p1 .. p1}, Lf1/a;->q0(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v7, v2

    move-object v8, v7

    move-object v10, v8

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-object/from16 v20, v14

    move-object/from16 v21, v20

    move v9, v3

    move/from16 v19, v9

    move-wide v15, v4

    move-wide/from16 v17, v15

    :goto_c
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v0, :cond_21

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const v3, 0xffff

    and-int/2addr v3, v2

    packed-switch v3, :pswitch_data_4

    invoke-static {v1, v2}, Lf1/a;->n0(Landroid/os/Parcel;I)V

    goto :goto_c

    :pswitch_29
    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/z4;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, Lf1/a;->q(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v21, v2

    goto :goto_c

    :pswitch_2a
    sget-object v3, LY1/r;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, Lf1/a;->l(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, LY1/r;

    move-object/from16 v20, v2

    goto :goto_c

    :pswitch_2b
    invoke-static {v1, v2}, Lf1/a;->c0(Landroid/os/Parcel;I)Z

    move-result v2

    move/from16 v19, v2

    goto :goto_c

    :pswitch_2c
    invoke-static {v1, v2}, Lf1/a;->e0(Landroid/os/Parcel;I)J

    move-result-wide v2

    move-wide/from16 v17, v2

    goto :goto_c

    :pswitch_2d
    invoke-static {v1, v2}, Lf1/a;->e0(Landroid/os/Parcel;I)J

    move-result-wide v2

    move-wide v15, v2

    goto :goto_c

    :pswitch_2e
    invoke-static {v1, v2}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    move-object v14, v2

    goto :goto_c

    :pswitch_2f
    invoke-static {v1, v2}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    move-object v13, v2

    goto :goto_c

    :pswitch_30
    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/B4;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, Lf1/a;->l(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/firebase-auth-api/B4;

    move-object v12, v2

    goto :goto_c

    :pswitch_31
    invoke-static {v1, v2}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    move-object v11, v2

    goto :goto_c

    :pswitch_32
    invoke-static {v1, v2}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    move-object v10, v2

    goto :goto_c

    :pswitch_33
    invoke-static {v1, v2}, Lf1/a;->c0(Landroid/os/Parcel;I)Z

    move-result v2

    move v9, v2

    goto :goto_c

    :pswitch_34
    invoke-static {v1, v2}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    move-object v8, v2

    goto :goto_c

    :pswitch_35
    invoke-static {v1, v2}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    move-object v7, v2

    goto :goto_c

    :cond_21
    invoke-static {v1, v0}, Lf1/a;->u(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/v4;

    move-object v6, v0

    invoke-direct/range {v6 .. v21}, Lcom/google/android/gms/internal/firebase-auth-api/v4;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/B4;Ljava/lang/String;Ljava/lang/String;JJZLY1/r;Ljava/util/ArrayList;)V

    return-object v0

    :pswitch_36
    invoke-static/range {p1 .. p1}, Lf1/a;->q0(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    :goto_d
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v0, :cond_23

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    const v4, 0xffff

    and-int/2addr v4, v3

    const/4 v5, 0x2

    if-eq v4, v5, :cond_22

    invoke-static {v1, v3}, Lf1/a;->n0(Landroid/os/Parcel;I)V

    goto :goto_d

    :cond_22
    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/w4;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v3, v2}, Lf1/a;->l(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/firebase-auth-api/w4;

    goto :goto_d

    :cond_23
    invoke-static {v1, v0}, Lf1/a;->u(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/u4;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    if-nez v2, :cond_24

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/w4;

    invoke-direct {v1}, Lcom/google/android/gms/internal/firebase-auth-api/w4;-><init>()V

    goto :goto_e

    :cond_24
    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/w4;

    invoke-direct {v1}, Lcom/google/android/gms/internal/firebase-auth-api/w4;-><init>()V

    iget-object v2, v2, Lcom/google/android/gms/internal/firebase-auth-api/w4;->c:Ljava/util/List;

    if-eqz v2, :cond_25

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_25

    iget-object v3, v1, Lcom/google/android/gms/internal/firebase-auth-api/w4;->c:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_25
    :goto_e
    iput-object v1, v0, Lcom/google/android/gms/internal/firebase-auth-api/u4;->c:Lcom/google/android/gms/internal/firebase-auth-api/w4;

    return-object v0

    :pswitch_37
    invoke-static/range {p1 .. p1}, Lf1/a;->q0(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v5, v2

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move v4, v3

    :goto_f
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v9

    if-ge v9, v0, :cond_26

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    const v10, 0xffff

    and-int/2addr v10, v9

    packed-switch v10, :pswitch_data_5

    invoke-static {v1, v9}, Lf1/a;->n0(Landroid/os/Parcel;I)V

    goto :goto_f

    :pswitch_38
    invoke-static {v1, v9}, Lf1/a;->o(Landroid/os/Parcel;I)Ljava/util/ArrayList;

    move-result-object v8

    goto :goto_f

    :pswitch_39
    sget-object v7, Lcom/google/android/gms/internal/firebase-auth-api/M4;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v9, v7}, Lf1/a;->l(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/firebase-auth-api/M4;

    goto :goto_f

    :pswitch_3a
    invoke-static {v1, v9}, Lf1/a;->c0(Landroid/os/Parcel;I)Z

    move-result v4

    goto :goto_f

    :pswitch_3b
    invoke-static {v1, v9}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v6

    goto :goto_f

    :pswitch_3c
    invoke-static {v1, v9}, Lf1/a;->c0(Landroid/os/Parcel;I)Z

    move-result v3

    goto :goto_f

    :pswitch_3d
    invoke-static {v1, v9}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v5

    goto :goto_f

    :cond_26
    invoke-static {v1, v0}, Lf1/a;->u(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/p4;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v5, v0, Lcom/google/android/gms/internal/firebase-auth-api/p4;->c:Ljava/lang/String;

    iput-boolean v3, v0, Lcom/google/android/gms/internal/firebase-auth-api/p4;->d:Z

    iput-object v6, v0, Lcom/google/android/gms/internal/firebase-auth-api/p4;->e:Ljava/lang/String;

    iput-boolean v4, v0, Lcom/google/android/gms/internal/firebase-auth-api/p4;->f:Z

    if-nez v7, :cond_27

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/M4;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/M4;-><init>(Ljava/util/List;)V

    goto :goto_10

    :cond_27
    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/M4;

    iget-object v2, v7, Lcom/google/android/gms/internal/firebase-auth-api/M4;->d:Ljava/util/List;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/M4;-><init>(Ljava/util/List;)V

    :goto_10
    iput-object v1, v0, Lcom/google/android/gms/internal/firebase-auth-api/p4;->g:Lcom/google/android/gms/internal/firebase-auth-api/M4;

    iput-object v8, v0, Lcom/google/android/gms/internal/firebase-auth-api/p4;->h:Ljava/util/List;

    return-object v0

    :pswitch_3e
    invoke-static/range {p1 .. p1}, Lf1/a;->q0(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    move-object v3, v2

    move-object v4, v3

    :goto_11
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    if-ge v5, v0, :cond_2b

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    const v6, 0xffff

    and-int/2addr v6, v5

    const/4 v7, 0x1

    if-eq v6, v7, :cond_2a

    const/4 v7, 0x2

    if-eq v6, v7, :cond_29

    const/4 v7, 0x3

    if-eq v6, v7, :cond_28

    invoke-static {v1, v5}, Lf1/a;->n0(Landroid/os/Parcel;I)V

    goto :goto_11

    :cond_28
    sget-object v4, LY1/r;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v5, v4}, Lf1/a;->l(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, LY1/r;

    goto :goto_11

    :cond_29
    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/z4;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v5, v3}, Lf1/a;->q(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    goto :goto_11

    :cond_2a
    invoke-static {v1, v5}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_11

    :cond_2b
    invoke-static {v1, v0}, Lf1/a;->u(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/p3;

    invoke-direct {v0, v2, v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/p3;-><init>(Ljava/lang/String;Ljava/util/ArrayList;LY1/r;)V

    return-object v0

    :pswitch_3f
    invoke-static/range {p1 .. p1}, Lf1/a;->q0(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    move-object v3, v2

    move-object v4, v3

    move-object v5, v4

    :goto_12
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v6

    if-ge v6, v0, :cond_30

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    const v7, 0xffff

    and-int/2addr v7, v6

    const/4 v8, 0x1

    if-eq v7, v8, :cond_2f

    const/4 v8, 0x2

    if-eq v7, v8, :cond_2e

    const/4 v8, 0x3

    if-eq v7, v8, :cond_2d

    const/4 v8, 0x4

    if-eq v7, v8, :cond_2c

    invoke-static {v1, v6}, Lf1/a;->n0(Landroid/os/Parcel;I)V

    goto :goto_12

    :cond_2c
    invoke-static {v1, v6}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v5

    goto :goto_12

    :cond_2d
    invoke-static {v1, v6}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v4

    goto :goto_12

    :cond_2e
    sget-object v3, LY1/r;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v6, v3}, Lf1/a;->l(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, LY1/r;

    goto :goto_12

    :cond_2f
    sget-object v2, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v6, v2}, Lf1/a;->l(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/Status;

    goto :goto_12

    :cond_30
    invoke-static {v1, v0}, Lf1/a;->u(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/o3;

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/android/gms/internal/firebase-auth-api/o3;-><init>(Lcom/google/android/gms/common/api/Status;LY1/r;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :pswitch_40
    invoke-static/range {p1 .. p1}, Lf1/a;->q0(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    move-object v3, v2

    move-object v4, v3

    :goto_13
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    if-ge v5, v0, :cond_34

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    const v6, 0xffff

    and-int/2addr v6, v5

    const/4 v7, 0x1

    if-eq v6, v7, :cond_33

    const/4 v7, 0x2

    if-eq v6, v7, :cond_32

    const/4 v7, 0x3

    if-eq v6, v7, :cond_31

    invoke-static {v1, v5}, Lf1/a;->n0(Landroid/os/Parcel;I)V

    goto :goto_13

    :cond_31
    sget-object v4, LY1/a;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v5, v4}, Lf1/a;->l(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, LY1/a;

    goto :goto_13

    :cond_32
    invoke-static {v1, v5}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_13

    :cond_33
    invoke-static {v1, v5}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_13

    :cond_34
    invoke-static {v1, v0}, Lf1/a;->u(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/n3;

    invoke-direct {v0, v4, v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/n3;-><init>(LY1/a;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :pswitch_41
    invoke-static/range {p1 .. p1}, Lf1/a;->q0(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    move-object v3, v2

    :goto_14
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-ge v4, v0, :cond_37

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    const v5, 0xffff

    and-int/2addr v5, v4

    const/4 v6, 0x1

    if-eq v5, v6, :cond_36

    const/4 v6, 0x2

    if-eq v5, v6, :cond_35

    invoke-static {v1, v4}, Lf1/a;->n0(Landroid/os/Parcel;I)V

    goto :goto_14

    :cond_35
    invoke-static {v1, v4}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_14

    :cond_36
    sget-object v2, LY1/o;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v4, v2}, Lf1/a;->l(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, LY1/o;

    goto :goto_14

    :cond_37
    invoke-static {v1, v0}, Lf1/a;->u(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/l3;

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/l3;-><init>(LY1/o;Ljava/lang/String;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_37
        :pswitch_36
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_12
        :pswitch_11
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
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
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x2
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x2
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
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x2
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
    .end packed-switch
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/m3;->a:I

    packed-switch p0, :pswitch_data_0

    new-array p0, p1, [Lcom/google/android/gms/internal/firebase-auth-api/P4;

    return-object p0

    :pswitch_0
    new-array p0, p1, [Lcom/google/android/gms/internal/firebase-auth-api/N4;

    return-object p0

    :pswitch_1
    new-array p0, p1, [Lcom/google/android/gms/internal/firebase-auth-api/M4;

    return-object p0

    :pswitch_2
    new-array p0, p1, [Lcom/google/android/gms/internal/firebase-auth-api/E4;

    return-object p0

    :pswitch_3
    new-array p0, p1, [Lcom/google/android/gms/internal/firebase-auth-api/D4;

    return-object p0

    :pswitch_4
    new-array p0, p1, [Lcom/google/android/gms/internal/firebase-auth-api/B4;

    return-object p0

    :pswitch_5
    new-array p0, p1, [Lcom/google/android/gms/internal/firebase-auth-api/A4;

    return-object p0

    :pswitch_6
    new-array p0, p1, [Lcom/google/android/gms/internal/firebase-auth-api/z4;

    return-object p0

    :pswitch_7
    new-array p0, p1, [Lcom/google/android/gms/internal/firebase-auth-api/y4;

    return-object p0

    :pswitch_8
    new-array p0, p1, [Lcom/google/android/gms/internal/firebase-auth-api/w4;

    return-object p0

    :pswitch_9
    new-array p0, p1, [Lcom/google/android/gms/internal/firebase-auth-api/v4;

    return-object p0

    :pswitch_a
    new-array p0, p1, [Lcom/google/android/gms/internal/firebase-auth-api/u4;

    return-object p0

    :pswitch_b
    new-array p0, p1, [Lcom/google/android/gms/internal/firebase-auth-api/p4;

    return-object p0

    :pswitch_c
    new-array p0, p1, [Lcom/google/android/gms/internal/firebase-auth-api/p3;

    return-object p0

    :pswitch_d
    new-array p0, p1, [Lcom/google/android/gms/internal/firebase-auth-api/o3;

    return-object p0

    :pswitch_e
    new-array p0, p1, [Lcom/google/android/gms/internal/firebase-auth-api/n3;

    return-object p0

    :pswitch_f
    new-array p0, p1, [Lcom/google/android/gms/internal/firebase-auth-api/l3;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
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
