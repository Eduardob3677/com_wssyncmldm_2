.class public final Lcom/google/android/gms/internal/firebase-auth-api/H2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/H2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/H2;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-static/range {p1 .. p1}, Lf1/a;->q0(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    move-object v3, v2

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-ge v4, v0, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    const v5, 0xffff

    and-int/2addr v5, v4

    const/4 v6, 0x1

    if-eq v5, v6, :cond_1

    const/4 v6, 0x2

    if-eq v5, v6, :cond_0

    invoke-static {v1, v4}, Lf1/a;->n0(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    invoke-static {v1, v4}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    invoke-static {v1, v4}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    invoke-static {v1, v0}, Lf1/a;->u(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/k3;

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/k3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :pswitch_0
    invoke-static/range {p1 .. p1}, Lf1/a;->q0(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v0, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    const v4, 0xffff

    and-int/2addr v4, v3

    const/4 v5, 0x1

    if-eq v4, v5, :cond_3

    invoke-static {v1, v3}, Lf1/a;->n0(Landroid/os/Parcel;I)V

    goto :goto_1

    :cond_3
    invoke-static {v1, v3}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_4
    invoke-static {v1, v0}, Lf1/a;->u(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/j3;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/j3;-><init>(Ljava/lang/String;)V

    return-object v0

    :pswitch_1
    invoke-static/range {p1 .. p1}, Lf1/a;->q0(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    move-object v3, v2

    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-ge v4, v0, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    const v5, 0xffff

    and-int/2addr v5, v4

    const/4 v6, 0x1

    if-eq v5, v6, :cond_6

    const/4 v6, 0x2

    if-eq v5, v6, :cond_5

    invoke-static {v1, v4}, Lf1/a;->n0(Landroid/os/Parcel;I)V

    goto :goto_2

    :cond_5
    invoke-static {v1, v4}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_6
    invoke-static {v1, v4}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_7
    invoke-static {v1, v0}, Lf1/a;->u(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/i3;

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/i3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :pswitch_2
    invoke-static/range {p1 .. p1}, Lf1/a;->q0(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-object v7, v2

    move-object v8, v7

    move-object v9, v8

    move-object v14, v9

    move-object v15, v14

    move-wide v10, v3

    move v12, v5

    move v13, v12

    move/from16 v16, v13

    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v0, :cond_8

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const v3, 0xffff

    and-int/2addr v3, v2

    packed-switch v3, :pswitch_data_1

    invoke-static {v1, v2}, Lf1/a;->n0(Landroid/os/Parcel;I)V

    goto :goto_3

    :pswitch_3
    invoke-static {v1, v2}, Lf1/a;->c0(Landroid/os/Parcel;I)Z

    move-result v2

    move/from16 v16, v2

    goto :goto_3

    :pswitch_4
    invoke-static {v1, v2}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    move-object v15, v2

    goto :goto_3

    :pswitch_5
    invoke-static {v1, v2}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    move-object v14, v2

    goto :goto_3

    :pswitch_6
    invoke-static {v1, v2}, Lf1/a;->c0(Landroid/os/Parcel;I)Z

    move-result v2

    move v13, v2

    goto :goto_3

    :pswitch_7
    invoke-static {v1, v2}, Lf1/a;->c0(Landroid/os/Parcel;I)Z

    move-result v2

    move v12, v2

    goto :goto_3

    :pswitch_8
    invoke-static {v1, v2}, Lf1/a;->e0(Landroid/os/Parcel;I)J

    move-result-wide v2

    move-wide v10, v2

    goto :goto_3

    :pswitch_9
    invoke-static {v1, v2}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    move-object v9, v2

    goto :goto_3

    :pswitch_a
    invoke-static {v1, v2}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    move-object v8, v2

    goto :goto_3

    :pswitch_b
    sget-object v3, LY1/k;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, Lf1/a;->l(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, LY1/k;

    move-object v7, v2

    goto :goto_3

    :cond_8
    invoke-static {v1, v0}, Lf1/a;->u(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/h3;

    move-object v6, v0

    invoke-direct/range {v6 .. v16}, Lcom/google/android/gms/internal/firebase-auth-api/h3;-><init>(LY1/k;Ljava/lang/String;Ljava/lang/String;JZZLjava/lang/String;Ljava/lang/String;Z)V

    return-object v0

    :pswitch_c
    invoke-static/range {p1 .. p1}, Lf1/a;->q0(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-object v7, v2

    move-object v8, v7

    move-object v9, v8

    move-object v14, v9

    move-object v15, v14

    move-wide v10, v3

    move v12, v5

    move v13, v12

    move/from16 v16, v13

    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v0, :cond_9

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const v3, 0xffff

    and-int/2addr v3, v2

    packed-switch v3, :pswitch_data_2

    invoke-static {v1, v2}, Lf1/a;->n0(Landroid/os/Parcel;I)V

    goto :goto_4

    :pswitch_d
    invoke-static {v1, v2}, Lf1/a;->c0(Landroid/os/Parcel;I)Z

    move-result v2

    move/from16 v16, v2

    goto :goto_4

    :pswitch_e
    invoke-static {v1, v2}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    move-object v15, v2

    goto :goto_4

    :pswitch_f
    invoke-static {v1, v2}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    move-object v14, v2

    goto :goto_4

    :pswitch_10
    invoke-static {v1, v2}, Lf1/a;->c0(Landroid/os/Parcel;I)Z

    move-result v2

    move v13, v2

    goto :goto_4

    :pswitch_11
    invoke-static {v1, v2}, Lf1/a;->c0(Landroid/os/Parcel;I)Z

    move-result v2

    move v12, v2

    goto :goto_4

    :pswitch_12
    invoke-static {v1, v2}, Lf1/a;->e0(Landroid/os/Parcel;I)J

    move-result-wide v2

    move-wide v10, v2

    goto :goto_4

    :pswitch_13
    invoke-static {v1, v2}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    move-object v9, v2

    goto :goto_4

    :pswitch_14
    invoke-static {v1, v2}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    move-object v8, v2

    goto :goto_4

    :pswitch_15
    invoke-static {v1, v2}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    move-object v7, v2

    goto :goto_4

    :cond_9
    invoke-static {v1, v0}, Lf1/a;->u(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/g3;

    move-object v6, v0

    invoke-direct/range {v6 .. v16}, Lcom/google/android/gms/internal/firebase-auth-api/g3;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZZLjava/lang/String;Ljava/lang/String;Z)V

    return-object v0

    :pswitch_16
    invoke-static/range {p1 .. p1}, Lf1/a;->q0(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    move-object v3, v2

    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-ge v4, v0, :cond_c

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    const v5, 0xffff

    and-int/2addr v5, v4

    const/4 v6, 0x1

    if-eq v5, v6, :cond_b

    const/4 v6, 0x2

    if-eq v5, v6, :cond_a

    invoke-static {v1, v4}, Lf1/a;->n0(Landroid/os/Parcel;I)V

    goto :goto_5

    :cond_a
    invoke-static {v1, v4}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    :cond_b
    sget-object v2, LY1/j;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v4, v2}, Lf1/a;->l(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, LY1/j;

    goto :goto_5

    :cond_c
    invoke-static {v1, v0}, Lf1/a;->u(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/f3;

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/f3;-><init>(LY1/j;Ljava/lang/String;)V

    return-object v0

    :pswitch_17
    invoke-static/range {p1 .. p1}, Lf1/a;->q0(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    :goto_6
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v0, :cond_e

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    const v4, 0xffff

    and-int/2addr v4, v3

    const/4 v5, 0x1

    if-eq v4, v5, :cond_d

    invoke-static {v1, v3}, Lf1/a;->n0(Landroid/os/Parcel;I)V

    goto :goto_6

    :cond_d
    sget-object v2, LY1/d;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v3, v2}, Lf1/a;->l(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, LY1/d;

    goto :goto_6

    :cond_e
    invoke-static {v1, v0}, Lf1/a;->u(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/e3;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/e3;-><init>(LY1/d;)V

    return-object v0

    :pswitch_18
    invoke-static/range {p1 .. p1}, Lf1/a;->q0(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    move-object v3, v2

    move-object v4, v3

    :goto_7
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    if-ge v5, v0, :cond_12

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    const v6, 0xffff

    and-int/2addr v6, v5

    const/4 v7, 0x1

    if-eq v6, v7, :cond_11

    const/4 v7, 0x2

    if-eq v6, v7, :cond_10

    const/4 v7, 0x3

    if-eq v6, v7, :cond_f

    invoke-static {v1, v5}, Lf1/a;->n0(Landroid/os/Parcel;I)V

    goto :goto_7

    :cond_f
    invoke-static {v1, v5}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v4

    goto :goto_7

    :cond_10
    invoke-static {v1, v5}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_7

    :cond_11
    invoke-static {v1, v5}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_7

    :cond_12
    invoke-static {v1, v0}, Lf1/a;->u(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/d3;

    invoke-direct {v0, v2, v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/d3;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :pswitch_19
    invoke-static/range {p1 .. p1}, Lf1/a;->q0(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    move-object v3, v2

    :goto_8
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-ge v4, v0, :cond_15

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    const v5, 0xffff

    and-int/2addr v5, v4

    const/4 v6, 0x1

    if-eq v5, v6, :cond_14

    const/4 v6, 0x2

    if-eq v5, v6, :cond_13

    invoke-static {v1, v4}, Lf1/a;->n0(Landroid/os/Parcel;I)V

    goto :goto_8

    :cond_13
    invoke-static {v1, v4}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_8

    :cond_14
    invoke-static {v1, v4}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_8

    :cond_15
    invoke-static {v1, v0}, Lf1/a;->u(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/c3;

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/c3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :pswitch_1a
    invoke-static/range {p1 .. p1}, Lf1/a;->q0(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    :goto_9
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v0, :cond_17

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    const v4, 0xffff

    and-int/2addr v4, v3

    const/4 v5, 0x1

    if-eq v4, v5, :cond_16

    invoke-static {v1, v3}, Lf1/a;->n0(Landroid/os/Parcel;I)V

    goto :goto_9

    :cond_16
    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/N4;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v3, v2}, Lf1/a;->l(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/firebase-auth-api/N4;

    goto :goto_9

    :cond_17
    invoke-static {v1, v0}, Lf1/a;->u(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/b3;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/b3;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/N4;)V

    return-object v0

    :pswitch_1b
    invoke-static/range {p1 .. p1}, Lf1/a;->q0(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    :goto_a
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v0, :cond_19

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    const v4, 0xffff

    and-int/2addr v4, v3

    const/4 v5, 0x1

    if-eq v4, v5, :cond_18

    invoke-static {v1, v3}, Lf1/a;->n0(Landroid/os/Parcel;I)V

    goto :goto_a

    :cond_18
    invoke-static {v1, v3}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_a

    :cond_19
    invoke-static {v1, v0}, Lf1/a;->u(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/a3;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/a3;-><init>(Ljava/lang/String;)V

    return-object v0

    :pswitch_1c
    invoke-static/range {p1 .. p1}, Lf1/a;->q0(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    :goto_b
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v0, :cond_1b

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    const v4, 0xffff

    and-int/2addr v4, v3

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1a

    invoke-static {v1, v3}, Lf1/a;->n0(Landroid/os/Parcel;I)V

    goto :goto_b

    :cond_1a
    invoke-static {v1, v3}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_b

    :cond_1b
    invoke-static {v1, v0}, Lf1/a;->u(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/Z2;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/Z2;-><init>(Ljava/lang/String;)V

    return-object v0

    :pswitch_1d
    invoke-static/range {p1 .. p1}, Lf1/a;->q0(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    :goto_c
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v0, :cond_1d

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    const v4, 0xffff

    and-int/2addr v4, v3

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1c

    invoke-static {v1, v3}, Lf1/a;->n0(Landroid/os/Parcel;I)V

    goto :goto_c

    :cond_1c
    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/E4;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v3, v2}, Lf1/a;->l(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/firebase-auth-api/E4;

    goto :goto_c

    :cond_1d
    invoke-static {v1, v0}, Lf1/a;->u(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/Y2;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/Y2;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/E4;)V

    return-object v0

    :pswitch_1e
    invoke-static/range {p1 .. p1}, Lf1/a;->q0(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    move-object v3, v2

    move-object v4, v3

    :goto_d
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    if-ge v5, v0, :cond_21

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    const v6, 0xffff

    and-int/2addr v6, v5

    const/4 v7, 0x1

    if-eq v6, v7, :cond_20

    const/4 v7, 0x2

    if-eq v6, v7, :cond_1f

    const/4 v7, 0x3

    if-eq v6, v7, :cond_1e

    invoke-static {v1, v5}, Lf1/a;->n0(Landroid/os/Parcel;I)V

    goto :goto_d

    :cond_1e
    invoke-static {v1, v5}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v4

    goto :goto_d

    :cond_1f
    sget-object v3, LY1/a;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v5, v3}, Lf1/a;->l(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, LY1/a;

    goto :goto_d

    :cond_20
    invoke-static {v1, v5}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_d

    :cond_21
    invoke-static {v1, v0}, Lf1/a;->u(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/X2;

    invoke-direct {v0, v3, v2, v4}, Lcom/google/android/gms/internal/firebase-auth-api/X2;-><init>(LY1/a;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :pswitch_1f
    invoke-static/range {p1 .. p1}, Lf1/a;->q0(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    move-object v3, v2

    :goto_e
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-ge v4, v0, :cond_24

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    const v5, 0xffff

    and-int/2addr v5, v4

    const/4 v6, 0x1

    if-eq v5, v6, :cond_23

    const/4 v6, 0x2

    if-eq v5, v6, :cond_22

    invoke-static {v1, v4}, Lf1/a;->n0(Landroid/os/Parcel;I)V

    goto :goto_e

    :cond_22
    sget-object v3, LY1/a;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v4, v3}, Lf1/a;->l(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, LY1/a;

    goto :goto_e

    :cond_23
    invoke-static {v1, v4}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_e

    :cond_24
    invoke-static {v1, v0}, Lf1/a;->u(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/W2;

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/W2;-><init>(Ljava/lang/String;LY1/a;)V

    return-object v0

    :pswitch_20
    invoke-static/range {p1 .. p1}, Lf1/a;->q0(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    :goto_f
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v0, :cond_26

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    const v4, 0xffff

    and-int/2addr v4, v3

    const/4 v5, 0x1

    if-eq v4, v5, :cond_25

    invoke-static {v1, v3}, Lf1/a;->n0(Landroid/os/Parcel;I)V

    goto :goto_f

    :cond_25
    invoke-static {v1, v3}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_f

    :cond_26
    invoke-static {v1, v0}, Lf1/a;->u(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/V2;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/V2;-><init>(Ljava/lang/String;)V

    return-object v0

    :pswitch_21
    invoke-static/range {p1 .. p1}, Lf1/a;->q0(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    move-object v3, v2

    :goto_10
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-ge v4, v0, :cond_29

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    const v5, 0xffff

    and-int/2addr v5, v4

    const/4 v6, 0x1

    if-eq v5, v6, :cond_28

    const/4 v6, 0x2

    if-eq v5, v6, :cond_27

    invoke-static {v1, v4}, Lf1/a;->n0(Landroid/os/Parcel;I)V

    goto :goto_10

    :cond_27
    sget-object v3, LY1/j;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v4, v3}, Lf1/a;->l(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, LY1/j;

    goto :goto_10

    :cond_28
    invoke-static {v1, v4}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_10

    :cond_29
    invoke-static {v1, v0}, Lf1/a;->u(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/U2;

    invoke-direct {v0, v3, v2}, Lcom/google/android/gms/internal/firebase-auth-api/U2;-><init>(LY1/j;Ljava/lang/String;)V

    return-object v0

    :pswitch_22
    invoke-static/range {p1 .. p1}, Lf1/a;->q0(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    move-object v3, v2

    :goto_11
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-ge v4, v0, :cond_2c

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    const v5, 0xffff

    and-int/2addr v5, v4

    const/4 v6, 0x1

    if-eq v5, v6, :cond_2b

    const/4 v6, 0x2

    if-eq v5, v6, :cond_2a

    invoke-static {v1, v4}, Lf1/a;->n0(Landroid/os/Parcel;I)V

    goto :goto_11

    :cond_2a
    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/N4;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v4, v3}, Lf1/a;->l(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/firebase-auth-api/N4;

    goto :goto_11

    :cond_2b
    invoke-static {v1, v4}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_11

    :cond_2c
    invoke-static {v1, v0}, Lf1/a;->u(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/T2;

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/T2;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/N4;)V

    return-object v0

    :pswitch_23
    invoke-static/range {p1 .. p1}, Lf1/a;->q0(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    move-object v3, v2

    move-object v4, v3

    :goto_12
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    if-ge v5, v0, :cond_30

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    const v6, 0xffff

    and-int/2addr v6, v5

    const/4 v7, 0x1

    if-eq v6, v7, :cond_2f

    const/4 v7, 0x2

    if-eq v6, v7, :cond_2e

    const/4 v7, 0x3

    if-eq v6, v7, :cond_2d

    invoke-static {v1, v5}, Lf1/a;->n0(Landroid/os/Parcel;I)V

    goto :goto_12

    :cond_2d
    invoke-static {v1, v5}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v4

    goto :goto_12

    :cond_2e
    invoke-static {v1, v5}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_12

    :cond_2f
    invoke-static {v1, v5}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_12

    :cond_30
    invoke-static {v1, v0}, Lf1/a;->u(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/S2;

    invoke-direct {v0, v2, v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/S2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :pswitch_24
    invoke-static/range {p1 .. p1}, Lf1/a;->q0(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    move-object v3, v2

    :goto_13
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-ge v4, v0, :cond_33

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    const v5, 0xffff

    and-int/2addr v5, v4

    const/4 v6, 0x1

    if-eq v5, v6, :cond_32

    const/4 v6, 0x2

    if-eq v5, v6, :cond_31

    invoke-static {v1, v4}, Lf1/a;->n0(Landroid/os/Parcel;I)V

    goto :goto_13

    :cond_31
    invoke-static {v1, v4}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_13

    :cond_32
    invoke-static {v1, v4}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_13

    :cond_33
    invoke-static {v1, v0}, Lf1/a;->u(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/R2;

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/R2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :pswitch_25
    invoke-static/range {p1 .. p1}, Lf1/a;->q0(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    :goto_14
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v0, :cond_35

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    const v4, 0xffff

    and-int/2addr v4, v3

    const/4 v5, 0x1

    if-eq v4, v5, :cond_34

    invoke-static {v1, v3}, Lf1/a;->n0(Landroid/os/Parcel;I)V

    goto :goto_14

    :cond_34
    invoke-static {v1, v3}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_14

    :cond_35
    invoke-static {v1, v0}, Lf1/a;->u(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/Q2;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/Q2;-><init>(Ljava/lang/String;)V

    return-object v0

    :pswitch_26
    invoke-static/range {p1 .. p1}, Lf1/a;->q0(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    move-object v3, v2

    :goto_15
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-ge v4, v0, :cond_38

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    const v5, 0xffff

    and-int/2addr v5, v4

    const/4 v6, 0x1

    if-eq v5, v6, :cond_37

    const/4 v6, 0x2

    if-eq v5, v6, :cond_36

    invoke-static {v1, v4}, Lf1/a;->n0(Landroid/os/Parcel;I)V

    goto :goto_15

    :cond_36
    invoke-static {v1, v4}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_15

    :cond_37
    sget-object v2, LY1/j;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v4, v2}, Lf1/a;->l(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, LY1/j;

    goto :goto_15

    :cond_38
    invoke-static {v1, v0}, Lf1/a;->u(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/P2;

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/P2;-><init>(LY1/j;Ljava/lang/String;)V

    return-object v0

    :pswitch_27
    invoke-static/range {p1 .. p1}, Lf1/a;->q0(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    move-object v3, v2

    move-object v4, v3

    :goto_16
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    if-ge v5, v0, :cond_3c

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    const v6, 0xffff

    and-int/2addr v6, v5

    const/4 v7, 0x1

    if-eq v6, v7, :cond_3b

    const/4 v7, 0x2

    if-eq v6, v7, :cond_3a

    const/4 v7, 0x3

    if-eq v6, v7, :cond_39

    invoke-static {v1, v5}, Lf1/a;->n0(Landroid/os/Parcel;I)V

    goto :goto_16

    :cond_39
    invoke-static {v1, v5}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v4

    goto :goto_16

    :cond_3a
    invoke-static {v1, v5}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_16

    :cond_3b
    sget-object v2, LY1/j;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v5, v2}, Lf1/a;->l(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, LY1/j;

    goto :goto_16

    :cond_3c
    invoke-static {v1, v0}, Lf1/a;->u(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/O2;

    invoke-direct {v0, v2, v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/O2;-><init>(LY1/j;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :pswitch_28
    invoke-static/range {p1 .. p1}, Lf1/a;->q0(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    :goto_17
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v0, :cond_3e

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    const v4, 0xffff

    and-int/2addr v4, v3

    const/4 v5, 0x1

    if-eq v4, v5, :cond_3d

    invoke-static {v1, v3}, Lf1/a;->n0(Landroid/os/Parcel;I)V

    goto :goto_17

    :cond_3d
    invoke-static {v1, v3}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_17

    :cond_3e
    invoke-static {v1, v0}, Lf1/a;->u(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/N2;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/N2;-><init>(Ljava/lang/String;)V

    return-object v0

    :pswitch_29
    invoke-static/range {p1 .. p1}, Lf1/a;->q0(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    move-object v3, v2

    move-object v4, v3

    :goto_18
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    if-ge v5, v0, :cond_42

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    const v6, 0xffff

    and-int/2addr v6, v5

    const/4 v7, 0x1

    if-eq v6, v7, :cond_41

    const/4 v7, 0x2

    if-eq v6, v7, :cond_40

    const/4 v7, 0x3

    if-eq v6, v7, :cond_3f

    invoke-static {v1, v5}, Lf1/a;->n0(Landroid/os/Parcel;I)V

    goto :goto_18

    :cond_3f
    invoke-static {v1, v5}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v4

    goto :goto_18

    :cond_40
    invoke-static {v1, v5}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_18

    :cond_41
    invoke-static {v1, v5}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_18

    :cond_42
    invoke-static {v1, v0}, Lf1/a;->u(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/M2;

    invoke-direct {v0, v2, v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/M2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :pswitch_2a
    invoke-static/range {p1 .. p1}, Lf1/a;->q0(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    move-object v3, v2

    move-object v4, v3

    :goto_19
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    if-ge v5, v0, :cond_46

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    const v6, 0xffff

    and-int/2addr v6, v5

    const/4 v7, 0x1

    if-eq v6, v7, :cond_45

    const/4 v7, 0x2

    if-eq v6, v7, :cond_44

    const/4 v7, 0x3

    if-eq v6, v7, :cond_43

    invoke-static {v1, v5}, Lf1/a;->n0(Landroid/os/Parcel;I)V

    goto :goto_19

    :cond_43
    invoke-static {v1, v5}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v4

    goto :goto_19

    :cond_44
    invoke-static {v1, v5}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_19

    :cond_45
    invoke-static {v1, v5}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_19

    :cond_46
    invoke-static {v1, v0}, Lf1/a;->u(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/L2;

    invoke-direct {v0, v2, v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/L2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :pswitch_2b
    invoke-static/range {p1 .. p1}, Lf1/a;->q0(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    move-object v3, v2

    :goto_1a
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-ge v4, v0, :cond_49

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    const v5, 0xffff

    and-int/2addr v5, v4

    const/4 v6, 0x1

    if-eq v5, v6, :cond_48

    const/4 v6, 0x2

    if-eq v5, v6, :cond_47

    invoke-static {v1, v4}, Lf1/a;->n0(Landroid/os/Parcel;I)V

    goto :goto_1a

    :cond_47
    invoke-static {v1, v4}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1a

    :cond_48
    invoke-static {v1, v4}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1a

    :cond_49
    invoke-static {v1, v0}, Lf1/a;->u(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/K2;

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/K2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :pswitch_2c
    invoke-static/range {p1 .. p1}, Lf1/a;->q0(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    move-object v3, v2

    :goto_1b
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-ge v4, v0, :cond_4c

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    const v5, 0xffff

    and-int/2addr v5, v4

    const/4 v6, 0x1

    if-eq v5, v6, :cond_4b

    const/4 v6, 0x2

    if-eq v5, v6, :cond_4a

    invoke-static {v1, v4}, Lf1/a;->n0(Landroid/os/Parcel;I)V

    goto :goto_1b

    :cond_4a
    invoke-static {v1, v4}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1b

    :cond_4b
    invoke-static {v1, v4}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1b

    :cond_4c
    invoke-static {v1, v0}, Lf1/a;->u(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/J2;

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/J2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :pswitch_2d
    invoke-static/range {p1 .. p1}, Lf1/a;->q0(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    move-object v3, v2

    :goto_1c
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-ge v4, v0, :cond_4f

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    const v5, 0xffff

    and-int/2addr v5, v4

    const/4 v6, 0x1

    if-eq v5, v6, :cond_4e

    const/4 v6, 0x2

    if-eq v5, v6, :cond_4d

    invoke-static {v1, v4}, Lf1/a;->n0(Landroid/os/Parcel;I)V

    goto :goto_1c

    :cond_4d
    invoke-static {v1, v4}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1c

    :cond_4e
    invoke-static {v1, v4}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1c

    :cond_4f
    invoke-static {v1, v0}, Lf1/a;->u(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/I2;

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/I2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :pswitch_2e
    invoke-static/range {p1 .. p1}, Lf1/a;->q0(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    move-object v3, v2

    :goto_1d
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-ge v4, v0, :cond_52

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    const v5, 0xffff

    and-int/2addr v5, v4

    const/4 v6, 0x1

    if-eq v5, v6, :cond_51

    const/4 v6, 0x2

    if-eq v5, v6, :cond_50

    invoke-static {v1, v4}, Lf1/a;->n0(Landroid/os/Parcel;I)V

    goto :goto_1d

    :cond_50
    invoke-static {v1, v4}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1d

    :cond_51
    invoke-static {v1, v4}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1d

    :cond_52
    invoke-static {v1, v0}, Lf1/a;->u(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/G2;

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/G2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_c
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/H2;->a:I

    packed-switch p0, :pswitch_data_0

    new-array p0, p1, [Lcom/google/android/gms/internal/firebase-auth-api/k3;

    return-object p0

    :pswitch_0
    new-array p0, p1, [Lcom/google/android/gms/internal/firebase-auth-api/j3;

    return-object p0

    :pswitch_1
    new-array p0, p1, [Lcom/google/android/gms/internal/firebase-auth-api/i3;

    return-object p0

    :pswitch_2
    new-array p0, p1, [Lcom/google/android/gms/internal/firebase-auth-api/h3;

    return-object p0

    :pswitch_3
    new-array p0, p1, [Lcom/google/android/gms/internal/firebase-auth-api/g3;

    return-object p0

    :pswitch_4
    new-array p0, p1, [Lcom/google/android/gms/internal/firebase-auth-api/f3;

    return-object p0

    :pswitch_5
    new-array p0, p1, [Lcom/google/android/gms/internal/firebase-auth-api/e3;

    return-object p0

    :pswitch_6
    new-array p0, p1, [Lcom/google/android/gms/internal/firebase-auth-api/d3;

    return-object p0

    :pswitch_7
    new-array p0, p1, [Lcom/google/android/gms/internal/firebase-auth-api/c3;

    return-object p0

    :pswitch_8
    new-array p0, p1, [Lcom/google/android/gms/internal/firebase-auth-api/b3;

    return-object p0

    :pswitch_9
    new-array p0, p1, [Lcom/google/android/gms/internal/firebase-auth-api/a3;

    return-object p0

    :pswitch_a
    new-array p0, p1, [Lcom/google/android/gms/internal/firebase-auth-api/Z2;

    return-object p0

    :pswitch_b
    new-array p0, p1, [Lcom/google/android/gms/internal/firebase-auth-api/Y2;

    return-object p0

    :pswitch_c
    new-array p0, p1, [Lcom/google/android/gms/internal/firebase-auth-api/X2;

    return-object p0

    :pswitch_d
    new-array p0, p1, [Lcom/google/android/gms/internal/firebase-auth-api/W2;

    return-object p0

    :pswitch_e
    new-array p0, p1, [Lcom/google/android/gms/internal/firebase-auth-api/V2;

    return-object p0

    :pswitch_f
    new-array p0, p1, [Lcom/google/android/gms/internal/firebase-auth-api/U2;

    return-object p0

    :pswitch_10
    new-array p0, p1, [Lcom/google/android/gms/internal/firebase-auth-api/T2;

    return-object p0

    :pswitch_11
    new-array p0, p1, [Lcom/google/android/gms/internal/firebase-auth-api/S2;

    return-object p0

    :pswitch_12
    new-array p0, p1, [Lcom/google/android/gms/internal/firebase-auth-api/R2;

    return-object p0

    :pswitch_13
    new-array p0, p1, [Lcom/google/android/gms/internal/firebase-auth-api/Q2;

    return-object p0

    :pswitch_14
    new-array p0, p1, [Lcom/google/android/gms/internal/firebase-auth-api/P2;

    return-object p0

    :pswitch_15
    new-array p0, p1, [Lcom/google/android/gms/internal/firebase-auth-api/O2;

    return-object p0

    :pswitch_16
    new-array p0, p1, [Lcom/google/android/gms/internal/firebase-auth-api/N2;

    return-object p0

    :pswitch_17
    new-array p0, p1, [Lcom/google/android/gms/internal/firebase-auth-api/M2;

    return-object p0

    :pswitch_18
    new-array p0, p1, [Lcom/google/android/gms/internal/firebase-auth-api/L2;

    return-object p0

    :pswitch_19
    new-array p0, p1, [Lcom/google/android/gms/internal/firebase-auth-api/K2;

    return-object p0

    :pswitch_1a
    new-array p0, p1, [Lcom/google/android/gms/internal/firebase-auth-api/J2;

    return-object p0

    :pswitch_1b
    new-array p0, p1, [Lcom/google/android/gms/internal/firebase-auth-api/I2;

    return-object p0

    :pswitch_1c
    new-array p0, p1, [Lcom/google/android/gms/internal/firebase-auth-api/G2;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
