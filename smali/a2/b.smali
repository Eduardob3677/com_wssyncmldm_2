.class public final La2/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, La2/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v0, v0, La2/b;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-static/range {p1 .. p1}, Lf1/a;->q0(Landroid/os/Parcel;)I

    move-result v0

    const/4 v3, 0x0

    move v14, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-ge v4, v0, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    const v17, 0xffff

    and-int v17, v4, v17

    packed-switch v17, :pswitch_data_1

    invoke-static {v1, v4}, Lf1/a;->n0(Landroid/os/Parcel;I)V

    goto :goto_0

    :pswitch_0
    sget-object v2, La2/f;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v4, v2}, Lf1/a;->l(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, La2/f;

    goto :goto_0

    :pswitch_1
    sget-object v2, LY1/r;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v4, v2}, Lf1/a;->l(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v15, v2

    check-cast v15, LY1/r;

    goto :goto_0

    :pswitch_2
    invoke-static {v1, v4}, Lf1/a;->c0(Landroid/os/Parcel;I)Z

    move-result v14

    goto :goto_0

    :pswitch_3
    sget-object v2, La2/t;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v4, v2}, Lf1/a;->l(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v13, v2

    check-cast v13, La2/t;

    goto :goto_0

    :pswitch_4
    invoke-static {v1, v4}, Lf1/a;->f0(Landroid/os/Parcel;I)I

    move-result v2

    if-nez v2, :cond_0

    const/4 v12, 0x0

    goto :goto_0

    :cond_0
    const/4 v4, 0x4

    invoke-static {v1, v2, v4}, Lf1/a;->v0(Landroid/os/Parcel;II)V

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object v12, v2

    goto :goto_0

    :pswitch_5
    invoke-static {v1, v4}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v11

    goto :goto_0

    :pswitch_6
    invoke-static {v1, v4}, Lf1/a;->o(Landroid/os/Parcel;I)Ljava/util/ArrayList;

    move-result-object v10

    goto :goto_0

    :pswitch_7
    sget-object v2, La2/q;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v4, v2}, Lf1/a;->q(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v9

    goto :goto_0

    :pswitch_8
    invoke-static {v1, v4}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    :pswitch_9
    invoke-static {v1, v4}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :pswitch_a
    sget-object v2, La2/q;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v4, v2}, Lf1/a;->l(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v6, v2

    check-cast v6, La2/q;

    goto :goto_0

    :pswitch_b
    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/y4;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v4, v2}, Lf1/a;->l(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/google/android/gms/internal/firebase-auth-api/y4;

    goto/16 :goto_0

    :cond_2
    invoke-static {v1, v0}, Lf1/a;->u(Landroid/os/Parcel;I)V

    new-instance v0, La2/s;

    move-object v4, v0

    invoke-direct/range {v4 .. v16}, La2/s;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/y4;La2/q;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Boolean;La2/t;ZLY1/r;La2/f;)V

    return-object v0

    :pswitch_c
    invoke-static/range {p1 .. p1}, Lf1/a;->q0(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v5, v2

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    move-object v12, v10

    move v11, v3

    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v0, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const v3, 0xffff

    and-int/2addr v3, v2

    packed-switch v3, :pswitch_data_2

    invoke-static {v1, v2}, Lf1/a;->n0(Landroid/os/Parcel;I)V

    goto :goto_2

    :pswitch_d
    invoke-static {v1, v2}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    move-object v12, v2

    goto :goto_2

    :pswitch_e
    invoke-static {v1, v2}, Lf1/a;->c0(Landroid/os/Parcel;I)Z

    move-result v2

    move v11, v2

    goto :goto_2

    :pswitch_f
    invoke-static {v1, v2}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    move-object v10, v2

    goto :goto_2

    :pswitch_10
    invoke-static {v1, v2}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    move-object v7, v2

    goto :goto_2

    :pswitch_11
    invoke-static {v1, v2}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    move-object v8, v2

    goto :goto_2

    :pswitch_12
    invoke-static {v1, v2}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    move-object v9, v2

    goto :goto_2

    :pswitch_13
    invoke-static {v1, v2}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    move-object v6, v2

    goto :goto_2

    :pswitch_14
    invoke-static {v1, v2}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    move-object v5, v2

    goto :goto_2

    :cond_3
    invoke-static {v1, v0}, Lf1/a;->u(Landroid/os/Parcel;I)V

    new-instance v0, La2/q;

    move-object v4, v0

    invoke-direct/range {v4 .. v12}, La2/q;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    return-object v0

    :pswitch_15
    invoke-static/range {p1 .. p1}, Lf1/a;->q0(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    move-object v3, v2

    move-object v4, v3

    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    if-ge v5, v0, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    const v6, 0xffff

    and-int/2addr v6, v5

    const/4 v7, 0x1

    if-eq v6, v7, :cond_6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_5

    const/4 v7, 0x3

    if-eq v6, v7, :cond_4

    invoke-static {v1, v5}, Lf1/a;->n0(Landroid/os/Parcel;I)V

    goto :goto_3

    :cond_4
    sget-object v4, LY1/r;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v5, v4}, Lf1/a;->l(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, LY1/r;

    goto :goto_3

    :cond_5
    sget-object v3, La2/o;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v5, v3}, Lf1/a;->l(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, La2/o;

    goto :goto_3

    :cond_6
    sget-object v2, La2/s;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v5, v2}, Lf1/a;->l(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, La2/s;

    goto :goto_3

    :cond_7
    invoke-static {v1, v0}, Lf1/a;->u(Landroid/os/Parcel;I)V

    new-instance v0, La2/p;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, La2/p;->c:La2/s;

    iput-object v3, v0, La2/p;->d:La2/o;

    iput-object v4, v0, La2/p;->e:LY1/r;

    return-object v0

    :pswitch_16
    invoke-static/range {p1 .. p1}, Lf1/a;->q0(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v3

    move-object v3, v2

    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    if-ge v5, v0, :cond_b

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    const v6, 0xffff

    and-int/2addr v6, v5

    const/4 v7, 0x1

    if-eq v6, v7, :cond_a

    const/4 v7, 0x2

    if-eq v6, v7, :cond_9

    const/4 v7, 0x3

    if-eq v6, v7, :cond_8

    invoke-static {v1, v5}, Lf1/a;->n0(Landroid/os/Parcel;I)V

    goto :goto_4

    :cond_8
    invoke-static {v1, v5}, Lf1/a;->c0(Landroid/os/Parcel;I)Z

    move-result v4

    goto :goto_4

    :cond_9
    invoke-static {v1, v5}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    :cond_a
    invoke-static {v1, v5}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_b
    invoke-static {v1, v0}, Lf1/a;->u(Landroid/os/Parcel;I)V

    new-instance v0, La2/o;

    invoke-direct {v0, v2, v3, v4}, La2/o;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0

    :pswitch_17
    invoke-static/range {p1 .. p1}, Lf1/a;->q0(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v0, :cond_d

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    const v4, 0xffff

    and-int/2addr v4, v3

    const/4 v5, 0x1

    if-eq v4, v5, :cond_c

    invoke-static {v1, v3}, Lf1/a;->n0(Landroid/os/Parcel;I)V

    goto :goto_5

    :cond_c
    sget-object v2, LY1/k;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v3, v2}, Lf1/a;->q(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_5

    :cond_d
    invoke-static {v1, v0}, Lf1/a;->u(Landroid/os/Parcel;I)V

    new-instance v0, La2/f;

    invoke-direct {v0, v2}, La2/f;-><init>(Ljava/util/ArrayList;)V

    return-object v0

    :pswitch_18
    invoke-static/range {p1 .. p1}, Lf1/a;->q0(Landroid/os/Parcel;)I

    move-result v0

    const-wide/16 v2, 0x0

    move-wide v4, v2

    :goto_6
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v6

    if-ge v6, v0, :cond_10

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    const v7, 0xffff

    and-int/2addr v7, v6

    const/4 v8, 0x1

    if-eq v7, v8, :cond_f

    const/4 v8, 0x2

    if-eq v7, v8, :cond_e

    invoke-static {v1, v6}, Lf1/a;->n0(Landroid/os/Parcel;I)V

    goto :goto_6

    :cond_e
    invoke-static {v1, v6}, Lf1/a;->e0(Landroid/os/Parcel;I)J

    move-result-wide v4

    goto :goto_6

    :cond_f
    invoke-static {v1, v6}, Lf1/a;->e0(Landroid/os/Parcel;I)J

    move-result-wide v2

    goto :goto_6

    :cond_10
    invoke-static {v1, v0}, Lf1/a;->u(Landroid/os/Parcel;I)V

    new-instance v0, La2/t;

    invoke-direct {v0, v2, v3, v4, v5}, La2/t;-><init>(JJ)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_c
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
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
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

    iget p0, p0, La2/b;->a:I

    packed-switch p0, :pswitch_data_0

    new-array p0, p1, [La2/s;

    return-object p0

    :pswitch_0
    new-array p0, p1, [La2/q;

    return-object p0

    :pswitch_1
    new-array p0, p1, [La2/p;

    return-object p0

    :pswitch_2
    new-array p0, p1, [La2/o;

    return-object p0

    :pswitch_3
    new-array p0, p1, [La2/f;

    return-object p0

    :pswitch_4
    new-array p0, p1, [La2/t;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
