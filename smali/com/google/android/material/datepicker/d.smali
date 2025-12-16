.class public final Lcom/google/android/material/datepicker/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/datepicker/d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 6

    iget p0, p0, Lcom/google/android/material/datepicker/d;->a:I

    packed-switch p0, :pswitch_data_0

    invoke-static {p1}, Lf1/a;->q0(Landroid/os/Parcel;)I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v1

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, p0, :cond_3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    const v4, 0xffff

    and-int/2addr v4, v3

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    invoke-static {p1, v3}, Lf1/a;->n0(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    sget-object v2, Lc1/u;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v3, v2}, Lf1/a;->l(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lc1/u;

    goto :goto_0

    :cond_1
    sget-object v1, LZ0/a;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v3, v1}, Lf1/a;->l(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, LZ0/a;

    goto :goto_0

    :cond_2
    invoke-static {p1, v3}, Lf1/a;->d0(Landroid/os/Parcel;I)I

    move-result v0

    goto :goto_0

    :cond_3
    invoke-static {p1, p0}, Lf1/a;->u(Landroid/os/Parcel;I)V

    new-instance p0, Ls1/g;

    invoke-direct {p0, v0, v1, v2}, Ls1/g;-><init>(ILZ0/a;Lc1/u;)V

    return-object p0

    :pswitch_0
    invoke-static {p1}, Lf1/a;->q0(Landroid/os/Parcel;)I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, p0, :cond_6

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const v3, 0xffff

    and-int/2addr v3, v2

    const/4 v4, 0x1

    if-eq v3, v4, :cond_5

    const/4 v4, 0x2

    if-eq v3, v4, :cond_4

    invoke-static {p1, v2}, Lf1/a;->n0(Landroid/os/Parcel;I)V

    goto :goto_1

    :cond_4
    sget-object v1, Lc1/t;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v2, v1}, Lf1/a;->l(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lc1/t;

    goto :goto_1

    :cond_5
    invoke-static {p1, v2}, Lf1/a;->d0(Landroid/os/Parcel;I)I

    move-result v0

    goto :goto_1

    :cond_6
    invoke-static {p1, p0}, Lf1/a;->u(Landroid/os/Parcel;I)V

    new-instance p0, Ls1/f;

    invoke-direct {p0, v0, v1}, Ls1/f;-><init>(ILc1/t;)V

    return-object p0

    :pswitch_1
    invoke-static {p1}, Lf1/a;->q0(Landroid/os/Parcel;)I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v1

    move v1, v0

    :goto_2
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, p0, :cond_a

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    const v4, 0xffff

    and-int/2addr v4, v3

    const/4 v5, 0x1

    if-eq v4, v5, :cond_9

    const/4 v5, 0x2

    if-eq v4, v5, :cond_8

    const/4 v5, 0x3

    if-eq v4, v5, :cond_7

    invoke-static {p1, v3}, Lf1/a;->n0(Landroid/os/Parcel;I)V

    goto :goto_2

    :cond_7
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v3, v2}, Lf1/a;->l(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    goto :goto_2

    :cond_8
    invoke-static {p1, v3}, Lf1/a;->d0(Landroid/os/Parcel;I)I

    move-result v1

    goto :goto_2

    :cond_9
    invoke-static {p1, v3}, Lf1/a;->d0(Landroid/os/Parcel;I)I

    move-result v0

    goto :goto_2

    :cond_a
    invoke-static {p1, p0}, Lf1/a;->u(Landroid/os/Parcel;I)V

    new-instance p0, Ls1/b;

    invoke-direct {p0, v0, v1, v2}, Ls1/b;-><init>(IILandroid/content/Intent;)V

    return-object p0

    :pswitch_2
    new-instance p0, Lk/n1;

    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lk/n1;->c:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lk/n1;->d:I

    return-object p0

    :pswitch_3
    new-instance p0, Lk/Z0;

    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lk/Z0;->c:Z

    return-object p0

    :pswitch_4
    new-instance p0, Lk/N;

    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_b

    const/4 p1, 0x1

    goto :goto_3

    :cond_b
    const/4 p1, 0x0

    :goto_3
    iput-boolean p1, p0, Lk/N;->c:Z

    return-object p0

    :pswitch_5
    new-instance p0, Lj0/j0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lj0/j0;->c:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lj0/j0;->d:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lj0/j0;->e:I

    if-lez v0, :cond_c

    new-array v0, v0, [I

    iput-object v0, p0, Lj0/j0;->f:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    :cond_c
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lj0/j0;->g:I

    if-lez v0, :cond_d

    new-array v0, v0, [I

    iput-object v0, p0, Lj0/j0;->h:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    :cond_d
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_e

    move v0, v2

    goto :goto_4

    :cond_e
    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lj0/j0;->j:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_f

    move v0, v2

    goto :goto_5

    :cond_f
    move v0, v1

    :goto_5
    iput-boolean v0, p0, Lj0/j0;->k:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_10

    move v1, v2

    :cond_10
    iput-boolean v1, p0, Lj0/j0;->l:Z

    const-class v0, Lj0/i0;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lj0/j0;->i:Ljava/util/List;

    return-object p0

    :pswitch_6
    new-instance p0, Lj0/i0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lj0/i0;->c:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lj0/i0;->d:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    goto :goto_6

    :cond_11
    const/4 v1, 0x0

    :goto_6
    iput-boolean v1, p0, Lj0/i0;->f:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_12

    new-array v0, v0, [I

    iput-object v0, p0, Lj0/i0;->e:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    :cond_12
    return-object p0

    :pswitch_7
    new-instance p0, Lj0/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lj0/u;->c:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lj0/u;->d:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_13

    goto :goto_7

    :cond_13
    const/4 v0, 0x0

    :goto_7
    iput-boolean v0, p0, Lj0/u;->e:Z

    return-object p0

    :pswitch_8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p0, p1}, Lcom/google/android/material/datepicker/o;->a(II)Lcom/google/android/material/datepicker/o;

    move-result-object p0

    return-object p0

    :pswitch_9
    new-instance p0, Lcom/google/android/material/datepicker/e;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/material/datepicker/e;-><init>(J)V

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

.method public final newArray(I)[Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lcom/google/android/material/datepicker/d;->a:I

    packed-switch p0, :pswitch_data_0

    new-array p0, p1, [Ls1/g;

    return-object p0

    :pswitch_0
    new-array p0, p1, [Ls1/f;

    return-object p0

    :pswitch_1
    new-array p0, p1, [Ls1/b;

    return-object p0

    :pswitch_2
    new-array p0, p1, [Lk/n1;

    return-object p0

    :pswitch_3
    new-array p0, p1, [Lk/Z0;

    return-object p0

    :pswitch_4
    new-array p0, p1, [Lk/N;

    return-object p0

    :pswitch_5
    new-array p0, p1, [Lj0/j0;

    return-object p0

    :pswitch_6
    new-array p0, p1, [Lj0/i0;

    return-object p0

    :pswitch_7
    new-array p0, p1, [Lj0/u;

    return-object p0

    :pswitch_8
    new-array p0, p1, [Lcom/google/android/material/datepicker/o;

    return-object p0

    :pswitch_9
    new-array p0, p1, [Lcom/google/android/material/datepicker/e;

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
