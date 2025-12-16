.class public final LY1/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, LY1/p;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 13

    iget p0, p0, LY1/p;->a:I

    packed-switch p0, :pswitch_data_0

    invoke-static {p1}, Lf1/a;->q0(Landroid/os/Parcel;)I

    move-result p0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    if-ge v1, p0, :cond_1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const v2, 0xffff

    and-int/2addr v2, v1

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    invoke-static {p1, v1}, Lf1/a;->n0(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    invoke-static {p1, v1}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {p1, p0}, Lf1/a;->u(Landroid/os/Parcel;I)V

    new-instance p0, LY1/h;

    invoke-direct {p0, v0}, LY1/h;-><init>(Ljava/lang/String;)V

    return-object p0

    :pswitch_0
    invoke-static {p1}, Lf1/a;->q0(Landroid/os/Parcel;)I

    move-result p0

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    if-ge v1, p0, :cond_3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const v2, 0xffff

    and-int/2addr v2, v1

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    invoke-static {p1, v1}, Lf1/a;->n0(Landroid/os/Parcel;I)V

    goto :goto_1

    :cond_2
    invoke-static {p1, v1}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    invoke-static {p1, p0}, Lf1/a;->u(Landroid/os/Parcel;I)V

    new-instance p0, LY1/e;

    invoke-direct {p0, v0}, LY1/e;-><init>(Ljava/lang/String;)V

    return-object p0

    :pswitch_1
    invoke-static {p1}, Lf1/a;->q0(Landroid/os/Parcel;)I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v3, v0

    move-object v4, v3

    move-object v5, v4

    move-object v6, v5

    move v7, v1

    :goto_2
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-ge v0, p0, :cond_9

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const v1, 0xffff

    and-int/2addr v1, v0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_8

    const/4 v2, 0x2

    if-eq v1, v2, :cond_7

    const/4 v2, 0x3

    if-eq v1, v2, :cond_6

    const/4 v2, 0x4

    if-eq v1, v2, :cond_5

    const/4 v2, 0x5

    if-eq v1, v2, :cond_4

    invoke-static {p1, v0}, Lf1/a;->n0(Landroid/os/Parcel;I)V

    goto :goto_2

    :cond_4
    invoke-static {p1, v0}, Lf1/a;->c0(Landroid/os/Parcel;I)Z

    move-result v0

    move v7, v0

    goto :goto_2

    :cond_5
    invoke-static {p1, v0}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    goto :goto_2

    :cond_6
    invoke-static {p1, v0}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    goto :goto_2

    :cond_7
    invoke-static {p1, v0}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    goto :goto_2

    :cond_8
    invoke-static {p1, v0}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto :goto_2

    :cond_9
    invoke-static {p1, p0}, Lf1/a;->u(Landroid/os/Parcel;I)V

    new-instance p0, LY1/d;

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, LY1/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object p0

    :pswitch_2
    invoke-static {p1}, Lf1/a;->q0(Landroid/os/Parcel;)I

    move-result p0

    const/4 v0, 0x0

    move-object v2, v0

    move-object v3, v2

    move-object v4, v3

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    :goto_3
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-ge v0, p0, :cond_a

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const v1, 0xffff

    and-int/2addr v1, v0

    packed-switch v1, :pswitch_data_1

    invoke-static {p1, v0}, Lf1/a;->n0(Landroid/os/Parcel;I)V

    goto :goto_3

    :pswitch_3
    invoke-static {p1, v0}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    goto :goto_3

    :pswitch_4
    invoke-static {p1, v0}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    goto :goto_3

    :pswitch_5
    invoke-static {p1, v0}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    goto :goto_3

    :pswitch_6
    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/N4;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v0, v1}, Lf1/a;->l(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/N4;

    move-object v5, v0

    goto :goto_3

    :pswitch_7
    invoke-static {p1, v0}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    goto :goto_3

    :pswitch_8
    invoke-static {p1, v0}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto :goto_3

    :pswitch_9
    invoke-static {p1, v0}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_3

    :cond_a
    invoke-static {p1, p0}, Lf1/a;->u(Landroid/os/Parcel;I)V

    new-instance p0, LY1/r;

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, LY1/r;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/N4;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :pswitch_a
    invoke-static {p1}, Lf1/a;->q0(Landroid/os/Parcel;)I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v3, v0

    move-object v4, v3

    move-object v5, v4

    move-object v6, v5

    move-object v8, v6

    move-object v10, v8

    move-object v12, v10

    move v7, v1

    move v9, v7

    move v11, v9

    :goto_4
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-ge v0, p0, :cond_b

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const v1, 0xffff

    and-int/2addr v1, v0

    packed-switch v1, :pswitch_data_2

    invoke-static {p1, v0}, Lf1/a;->n0(Landroid/os/Parcel;I)V

    goto :goto_4

    :pswitch_b
    invoke-static {p1, v0}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    goto :goto_4

    :pswitch_c
    invoke-static {p1, v0}, Lf1/a;->d0(Landroid/os/Parcel;I)I

    move-result v0

    move v11, v0

    goto :goto_4

    :pswitch_d
    invoke-static {p1, v0}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    goto :goto_4

    :pswitch_e
    invoke-static {p1, v0}, Lf1/a;->c0(Landroid/os/Parcel;I)Z

    move-result v0

    move v9, v0

    goto :goto_4

    :pswitch_f
    invoke-static {p1, v0}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    goto :goto_4

    :pswitch_10
    invoke-static {p1, v0}, Lf1/a;->c0(Landroid/os/Parcel;I)Z

    move-result v0

    move v7, v0

    goto :goto_4

    :pswitch_11
    invoke-static {p1, v0}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    goto :goto_4

    :pswitch_12
    invoke-static {p1, v0}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    goto :goto_4

    :pswitch_13
    invoke-static {p1, v0}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    goto :goto_4

    :pswitch_14
    invoke-static {p1, v0}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto :goto_4

    :cond_b
    invoke-static {p1, p0}, Lf1/a;->u(Landroid/os/Parcel;I)V

    new-instance p0, LY1/a;

    move-object v2, p0

    invoke-direct/range {v2 .. v12}, LY1/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;ILjava/lang/String;)V

    return-object p0

    :pswitch_15
    invoke-static {p1}, Lf1/a;->q0(Landroid/os/Parcel;)I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v3, v0

    move-object v4, v3

    move v2, v1

    :goto_5
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    if-ge v5, p0, :cond_10

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    const v6, 0xffff

    and-int/2addr v6, v5

    const/4 v7, 0x2

    if-eq v6, v7, :cond_f

    const/4 v7, 0x3

    if-eq v6, v7, :cond_e

    const/4 v7, 0x4

    if-eq v6, v7, :cond_d

    const/4 v7, 0x5

    if-eq v6, v7, :cond_c

    invoke-static {p1, v5}, Lf1/a;->n0(Landroid/os/Parcel;I)V

    goto :goto_5

    :cond_c
    invoke-static {p1, v5}, Lf1/a;->c0(Landroid/os/Parcel;I)Z

    move-result v2

    goto :goto_5

    :cond_d
    invoke-static {p1, v5}, Lf1/a;->c0(Landroid/os/Parcel;I)Z

    move-result v1

    goto :goto_5

    :cond_e
    invoke-static {p1, v5}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    :cond_f
    invoke-static {p1, v5}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    :cond_10
    invoke-static {p1, p0}, Lf1/a;->u(Landroid/os/Parcel;I)V

    new-instance p0, LY1/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, LY1/o;->c:Ljava/lang/String;

    iput-object v4, p0, LY1/o;->d:Ljava/lang/String;

    iput-boolean v1, p0, LY1/o;->e:Z

    iput-boolean v2, p0, LY1/o;->f:Z

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_11

    goto :goto_6

    :cond_11
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_6
    iput-object v0, p0, LY1/o;->g:Landroid/net/Uri;

    return-object p0

    :pswitch_16
    invoke-static {p1}, Lf1/a;->q0(Landroid/os/Parcel;)I

    move-result p0

    const/4 v0, 0x0

    move-object v1, v0

    :goto_7
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, p0, :cond_14

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const v3, 0xffff

    and-int/2addr v3, v2

    const/4 v4, 0x1

    if-eq v3, v4, :cond_13

    const/4 v4, 0x2

    if-eq v3, v4, :cond_12

    invoke-static {p1, v2}, Lf1/a;->n0(Landroid/os/Parcel;I)V

    goto :goto_7

    :cond_12
    invoke-static {p1, v2}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    :cond_13
    invoke-static {p1, v2}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_14
    invoke-static {p1, p0}, Lf1/a;->u(Landroid/os/Parcel;I)V

    new-instance p0, LY1/m;

    invoke-direct {p0, v0, v1}, LY1/m;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :pswitch_17
    invoke-static {p1}, Lf1/a;->q0(Landroid/os/Parcel;)I

    move-result p0

    const/4 v0, 0x0

    :goto_8
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    if-ge v1, p0, :cond_16

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const v2, 0xffff

    and-int/2addr v2, v1

    const/4 v3, 0x1

    if-eq v2, v3, :cond_15

    invoke-static {p1, v1}, Lf1/a;->n0(Landroid/os/Parcel;I)V

    goto :goto_8

    :cond_15
    invoke-static {p1, v1}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_16
    invoke-static {p1, p0}, Lf1/a;->u(Landroid/os/Parcel;I)V

    new-instance p0, LY1/l;

    invoke-direct {p0, v0}, LY1/l;-><init>(Ljava/lang/String;)V

    return-object p0

    :pswitch_18
    invoke-static {p1}, Lf1/a;->q0(Landroid/os/Parcel;)I

    move-result p0

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    move-object v6, v0

    move-object v7, v6

    move-object v8, v7

    move-wide v4, v1

    :goto_9
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-ge v0, p0, :cond_1b

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const v1, 0xffff

    and-int/2addr v1, v0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1a

    const/4 v2, 0x2

    if-eq v1, v2, :cond_19

    const/4 v2, 0x3

    if-eq v1, v2, :cond_18

    const/4 v2, 0x4

    if-eq v1, v2, :cond_17

    invoke-static {p1, v0}, Lf1/a;->n0(Landroid/os/Parcel;I)V

    goto :goto_9

    :cond_17
    invoke-static {p1, v0}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    goto :goto_9

    :cond_18
    invoke-static {p1, v0}, Lf1/a;->e0(Landroid/os/Parcel;I)J

    move-result-wide v0

    move-wide v4, v0

    goto :goto_9

    :cond_19
    invoke-static {p1, v0}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    goto :goto_9

    :cond_1a
    invoke-static {p1, v0}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    goto :goto_9

    :cond_1b
    invoke-static {p1, p0}, Lf1/a;->u(Landroid/os/Parcel;I)V

    new-instance p0, LY1/k;

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, LY1/k;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :pswitch_19
    invoke-static {p1}, Lf1/a;->q0(Landroid/os/Parcel;)I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v3, v0

    move-object v4, v3

    move-object v6, v4

    move-object v8, v6

    move-object v9, v8

    move v5, v1

    move v7, v5

    :goto_a
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-ge v0, p0, :cond_1c

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const v1, 0xffff

    and-int/2addr v1, v0

    packed-switch v1, :pswitch_data_3

    invoke-static {p1, v0}, Lf1/a;->n0(Landroid/os/Parcel;I)V

    goto :goto_a

    :pswitch_1a
    invoke-static {p1, v0}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    goto :goto_a

    :pswitch_1b
    invoke-static {p1, v0}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    goto :goto_a

    :pswitch_1c
    invoke-static {p1, v0}, Lf1/a;->c0(Landroid/os/Parcel;I)Z

    move-result v0

    move v7, v0

    goto :goto_a

    :pswitch_1d
    invoke-static {p1, v0}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    goto :goto_a

    :pswitch_1e
    invoke-static {p1, v0}, Lf1/a;->c0(Landroid/os/Parcel;I)Z

    move-result v0

    move v5, v0

    goto :goto_a

    :pswitch_1f
    invoke-static {p1, v0}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    goto :goto_a

    :pswitch_20
    invoke-static {p1, v0}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto :goto_a

    :cond_1c
    invoke-static {p1, p0}, Lf1/a;->u(Landroid/os/Parcel;I)V

    new-instance p0, LY1/j;

    move-object v2, p0

    invoke-direct/range {v2 .. v9}, LY1/j;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-object p0

    :pswitch_21
    invoke-static {p1}, Lf1/a;->q0(Landroid/os/Parcel;)I

    move-result p0

    const/4 v0, 0x0

    move-object v1, v0

    :goto_b
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, p0, :cond_1f

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const v3, 0xffff

    and-int/2addr v3, v2

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1e

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1d

    invoke-static {p1, v2}, Lf1/a;->n0(Landroid/os/Parcel;I)V

    goto :goto_b

    :cond_1d
    invoke-static {p1, v2}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_b

    :cond_1e
    invoke-static {p1, v2}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_1f
    invoke-static {p1, p0}, Lf1/a;->u(Landroid/os/Parcel;I)V

    new-instance p0, LY1/i;

    invoke-direct {p0, v0, v1}, LY1/i;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_21
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_a
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
    .end packed-switch
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    iget p0, p0, LY1/p;->a:I

    packed-switch p0, :pswitch_data_0

    new-array p0, p1, [LY1/h;

    return-object p0

    :pswitch_0
    new-array p0, p1, [LY1/e;

    return-object p0

    :pswitch_1
    new-array p0, p1, [LY1/d;

    return-object p0

    :pswitch_2
    new-array p0, p1, [LY1/r;

    return-object p0

    :pswitch_3
    new-array p0, p1, [LY1/a;

    return-object p0

    :pswitch_4
    new-array p0, p1, [LY1/o;

    return-object p0

    :pswitch_5
    new-array p0, p1, [LY1/m;

    return-object p0

    :pswitch_6
    new-array p0, p1, [LY1/l;

    return-object p0

    :pswitch_7
    new-array p0, p1, [LY1/k;

    return-object p0

    :pswitch_8
    new-array p0, p1, [LY1/j;

    return-object p0

    :pswitch_9
    new-array p0, p1, [LY1/i;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
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
