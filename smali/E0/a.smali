.class public final LE0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, LE0/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v0, v0, LE0/a;->a:I

    packed-switch v0, :pswitch_data_0

    const-class v0, Lcom/google/android/material/datepicker/o;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/google/android/material/datepicker/o;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/google/android/material/datepicker/o;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/google/android/material/datepicker/o;

    const-class v0, Lcom/google/android/material/datepicker/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/google/android/material/datepicker/e;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    new-instance v0, Lcom/google/android/material/datepicker/b;

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/google/android/material/datepicker/b;-><init>(Lcom/google/android/material/datepicker/o;Lcom/google/android/material/datepicker/o;Lcom/google/android/material/datepicker/e;Lcom/google/android/material/datepicker/o;I)V

    return-object v0

    :pswitch_0
    invoke-static/range {p1 .. p1}, Lf1/a;->q0(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v0, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    const v4, 0xffff

    and-int/2addr v4, v3

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    invoke-static {v1, v3}, Lf1/a;->n0(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    invoke-static {v1, v3}, Lf1/a;->d0(Landroid/os/Parcel;I)I

    move-result v2

    goto :goto_0

    :cond_1
    invoke-static {v1, v0}, Lf1/a;->u(Landroid/os/Parcel;I)V

    new-instance v0, Lc1/E;

    invoke-direct {v0, v2}, Lc1/E;-><init>(I)V

    return-object v0

    :pswitch_1
    invoke-static/range {p1 .. p1}, Lf1/a;->q0(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v5, v2

    move v6, v5

    move v7, v6

    move v15, v7

    move/from16 v16, v15

    move-object v8, v3

    move-object v9, v8

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v0, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const v4, 0xffff

    and-int/2addr v4, v2

    packed-switch v4, :pswitch_data_1

    :pswitch_2
    invoke-static {v1, v2}, Lf1/a;->n0(Landroid/os/Parcel;I)V

    goto :goto_1

    :pswitch_3
    invoke-static {v1, v2}, Lf1/a;->d0(Landroid/os/Parcel;I)I

    move-result v16

    goto :goto_1

    :pswitch_4
    invoke-static {v1, v2}, Lf1/a;->c0(Landroid/os/Parcel;I)Z

    move-result v15

    goto :goto_1

    :pswitch_5
    sget-object v4, LZ0/c;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v4}, Lf1/a;->p(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, [LZ0/c;

    goto :goto_1

    :pswitch_6
    sget-object v4, LZ0/c;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v4}, Lf1/a;->p(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, [LZ0/c;

    goto :goto_1

    :pswitch_7
    sget-object v4, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v4}, Lf1/a;->l(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/accounts/Account;

    goto :goto_1

    :pswitch_8
    invoke-static {v1, v2}, Lf1/a;->h(Landroid/os/Parcel;I)Landroid/os/Bundle;

    move-result-object v11

    goto :goto_1

    :pswitch_9
    sget-object v4, Lcom/google/android/gms/common/api/Scope;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v4}, Lf1/a;->p(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, [Lcom/google/android/gms/common/api/Scope;

    goto :goto_1

    :pswitch_a
    invoke-static {v1, v2}, Lf1/a;->f0(Landroid/os/Parcel;I)I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-nez v2, :cond_2

    move-object v9, v3

    goto :goto_1

    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    add-int/2addr v4, v2

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    goto :goto_1

    :pswitch_b
    invoke-static {v1, v2}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :pswitch_c
    invoke-static {v1, v2}, Lf1/a;->d0(Landroid/os/Parcel;I)I

    move-result v7

    goto :goto_1

    :pswitch_d
    invoke-static {v1, v2}, Lf1/a;->d0(Landroid/os/Parcel;I)I

    move-result v6

    goto :goto_1

    :pswitch_e
    invoke-static {v1, v2}, Lf1/a;->d0(Landroid/os/Parcel;I)I

    move-result v5

    goto :goto_1

    :cond_3
    invoke-static {v1, v0}, Lf1/a;->u(Landroid/os/Parcel;I)V

    new-instance v0, Lc1/j;

    move-object v4, v0

    invoke-direct/range {v4 .. v16}, Lc1/j;-><init>(IIILjava/lang/String;Landroid/os/IBinder;[Lcom/google/android/gms/common/api/Scope;Landroid/os/Bundle;Landroid/accounts/Account;[LZ0/c;[LZ0/c;ZI)V

    return-object v0

    :pswitch_f
    invoke-static/range {p1 .. p1}, Lf1/a;->q0(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v3

    move-object v3, v2

    :goto_2
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

    goto :goto_2

    :cond_4
    invoke-static {v1, v5}, Lf1/a;->d0(Landroid/os/Parcel;I)I

    move-result v4

    goto :goto_2

    :cond_5
    sget-object v3, LZ0/c;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v5, v3}, Lf1/a;->p(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [LZ0/c;

    goto :goto_2

    :cond_6
    invoke-static {v1, v5}, Lf1/a;->h(Landroid/os/Parcel;I)Landroid/os/Bundle;

    move-result-object v2

    goto :goto_2

    :cond_7
    invoke-static {v1, v0}, Lf1/a;->u(Landroid/os/Parcel;I)V

    new-instance v0, Lc1/x;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, Lc1/x;->c:Landroid/os/Bundle;

    iput-object v3, v0, Lc1/x;->d:[LZ0/c;

    iput v4, v0, Lc1/x;->e:I

    return-object v0

    :pswitch_10
    invoke-static/range {p1 .. p1}, Lf1/a;->q0(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v5, v2

    move v8, v5

    move v9, v8

    move-object v6, v3

    move-object v7, v6

    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v0, :cond_e

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const v4, 0xffff

    and-int/2addr v4, v2

    const/4 v10, 0x1

    if-eq v4, v10, :cond_d

    const/4 v10, 0x2

    if-eq v4, v10, :cond_b

    const/4 v10, 0x3

    if-eq v4, v10, :cond_a

    const/4 v10, 0x4

    if-eq v4, v10, :cond_9

    const/4 v10, 0x5

    if-eq v4, v10, :cond_8

    invoke-static {v1, v2}, Lf1/a;->n0(Landroid/os/Parcel;I)V

    goto :goto_3

    :cond_8
    invoke-static {v1, v2}, Lf1/a;->c0(Landroid/os/Parcel;I)Z

    move-result v9

    goto :goto_3

    :cond_9
    invoke-static {v1, v2}, Lf1/a;->c0(Landroid/os/Parcel;I)Z

    move-result v8

    goto :goto_3

    :cond_a
    sget-object v4, LZ0/a;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v4}, Lf1/a;->l(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v7, v2

    check-cast v7, LZ0/a;

    goto :goto_3

    :cond_b
    invoke-static {v1, v2}, Lf1/a;->f0(Landroid/os/Parcel;I)I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-nez v2, :cond_c

    move-object v6, v3

    goto :goto_3

    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    add-int/2addr v4, v2

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    goto :goto_3

    :cond_d
    invoke-static {v1, v2}, Lf1/a;->d0(Landroid/os/Parcel;I)I

    move-result v5

    goto :goto_3

    :cond_e
    invoke-static {v1, v0}, Lf1/a;->u(Landroid/os/Parcel;I)V

    new-instance v0, Lc1/u;

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lc1/u;-><init>(ILandroid/os/IBinder;LZ0/a;ZZ)V

    return-object v0

    :pswitch_11
    invoke-static/range {p1 .. p1}, Lf1/a;->q0(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v3

    move-object v5, v4

    move v3, v2

    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v6

    if-ge v6, v0, :cond_13

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    const v7, 0xffff

    and-int/2addr v7, v6

    const/4 v8, 0x1

    if-eq v7, v8, :cond_12

    const/4 v8, 0x2

    if-eq v7, v8, :cond_11

    const/4 v8, 0x3

    if-eq v7, v8, :cond_10

    const/4 v8, 0x4

    if-eq v7, v8, :cond_f

    invoke-static {v1, v6}, Lf1/a;->n0(Landroid/os/Parcel;I)V

    goto :goto_4

    :cond_f
    sget-object v5, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v6, v5}, Lf1/a;->l(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    goto :goto_4

    :cond_10
    invoke-static {v1, v6}, Lf1/a;->d0(Landroid/os/Parcel;I)I

    move-result v3

    goto :goto_4

    :cond_11
    sget-object v4, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v6, v4}, Lf1/a;->l(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/accounts/Account;

    goto :goto_4

    :cond_12
    invoke-static {v1, v6}, Lf1/a;->d0(Landroid/os/Parcel;I)I

    move-result v2

    goto :goto_4

    :cond_13
    invoke-static {v1, v0}, Lf1/a;->u(Landroid/os/Parcel;I)V

    new-instance v0, Lc1/t;

    invoke-direct {v0, v2, v4, v3, v5}, Lc1/t;-><init>(ILandroid/accounts/Account;ILcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    return-object v0

    :pswitch_12
    new-instance v0, Landroidx/preference/M;

    invoke-direct {v0, v1}, Landroidx/preference/M;-><init>(Landroid/os/Parcel;)V

    return-object v0

    :pswitch_13
    new-instance v0, Landroidx/preference/L;

    invoke-direct {v0, v1}, Landroidx/preference/L;-><init>(Landroid/os/Parcel;)V

    return-object v0

    :pswitch_14
    new-instance v0, Landroidx/preference/A;

    invoke-direct {v0, v1}, Landroidx/preference/A;-><init>(Landroid/os/Parcel;)V

    return-object v0

    :pswitch_15
    new-instance v0, Landroidx/preference/m;

    invoke-direct {v0, v1}, Landroidx/preference/m;-><init>(Landroid/os/Parcel;)V

    return-object v0

    :pswitch_16
    new-instance v0, Landroidx/preference/i;

    invoke-direct {v0, v1}, Landroidx/preference/i;-><init>(Landroid/os/Parcel;)V

    return-object v0

    :pswitch_17
    new-instance v0, Landroidx/preference/f;

    invoke-direct {v0, v1}, Landroidx/preference/f;-><init>(Landroid/os/Parcel;)V

    return-object v0

    :pswitch_18
    new-instance v0, Landroidx/preference/c;

    invoke-direct {v0, v1}, Landroidx/preference/c;-><init>(Landroid/os/Parcel;)V

    return-object v0

    :pswitch_19
    new-instance v0, Landroidx/picker/widget/U;

    invoke-direct {v0, v1}, Landroidx/picker/widget/U;-><init>(Landroid/os/Parcel;)V

    return-object v0

    :pswitch_1a
    new-instance v0, Landroidx/picker/widget/l;

    invoke-direct {v0, v1}, Landroidx/picker/widget/l;-><init>(Landroid/os/Parcel;)V

    return-object v0

    :pswitch_1b
    new-instance v0, Landroidx/fragment/app/e0;

    invoke-direct {v0, v1}, Landroidx/fragment/app/e0;-><init>(Landroid/os/Parcel;)V

    return-object v0

    :pswitch_1c
    new-instance v0, Landroidx/fragment/app/b0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    iput-object v2, v0, Landroidx/fragment/app/b0;->g:Ljava/lang/String;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Landroidx/fragment/app/b0;->h:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Landroidx/fragment/app/b0;->i:Ljava/util/ArrayList;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v0, Landroidx/fragment/app/b0;->c:Ljava/util/ArrayList;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v0, Landroidx/fragment/app/b0;->d:Ljava/util/ArrayList;

    sget-object v2, Landroidx/fragment/app/b;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroidx/fragment/app/b;

    iput-object v2, v0, Landroidx/fragment/app/b0;->e:[Landroidx/fragment/app/b;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v0, Landroidx/fragment/app/b0;->f:I

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroidx/fragment/app/b0;->g:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v0, Landroidx/fragment/app/b0;->h:Ljava/util/ArrayList;

    sget-object v2, Landroidx/fragment/app/c;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v0, Landroidx/fragment/app/b0;->i:Ljava/util/ArrayList;

    sget-object v2, Landroidx/fragment/app/W;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Landroidx/fragment/app/b0;->j:Ljava/util/ArrayList;

    return-object v0

    :pswitch_1d
    new-instance v0, Landroidx/fragment/app/W;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroidx/fragment/app/W;->c:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroidx/fragment/app/W;->d:I

    return-object v0

    :pswitch_1e
    new-instance v0, Landroidx/fragment/app/c;

    invoke-direct {v0, v1}, Landroidx/fragment/app/c;-><init>(Landroid/os/Parcel;)V

    return-object v0

    :pswitch_1f
    new-instance v0, Landroidx/fragment/app/b;

    invoke-direct {v0, v1}, Landroidx/fragment/app/b;-><init>(Landroid/os/Parcel;)V

    return-object v0

    :pswitch_20
    const-string v0, "inParcel"

    invoke-static {v0, v1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Landroidx/activity/result/j;

    const-class v2, Landroid/content/IntentSender;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    invoke-static {v2}, Ld3/i;->b(Ljava/lang/Object;)V

    check-cast v2, Landroid/content/IntentSender;

    const-class v3, Landroid/content/Intent;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-direct {v0, v2, v3, v4, v1}, Landroidx/activity/result/j;-><init>(Landroid/content/IntentSender;Landroid/content/Intent;II)V

    return-object v0

    :pswitch_21
    new-instance v0, Landroidx/activity/result/a;

    invoke-direct {v0, v1}, Landroidx/activity/result/a;-><init>(Landroid/os/Parcel;)V

    return-object v0

    :pswitch_22
    invoke-static/range {p1 .. p1}, Lf1/a;->q0(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v3

    move-object v5, v4

    move v3, v2

    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v6

    if-ge v6, v0, :cond_18

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    const v7, 0xffff

    and-int/2addr v7, v6

    const/4 v8, 0x1

    if-eq v7, v8, :cond_17

    const/4 v8, 0x2

    if-eq v7, v8, :cond_16

    const/4 v8, 0x3

    if-eq v7, v8, :cond_15

    const/16 v8, 0x3e8

    if-eq v7, v8, :cond_14

    invoke-static {v1, v6}, Lf1/a;->n0(Landroid/os/Parcel;I)V

    goto :goto_5

    :cond_14
    invoke-static {v1, v6}, Lf1/a;->d0(Landroid/os/Parcel;I)I

    move-result v2

    goto :goto_5

    :cond_15
    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v6, v5}, Lf1/a;->l(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/app/PendingIntent;

    goto :goto_5

    :cond_16
    invoke-static {v1, v6}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    :cond_17
    invoke-static {v1, v6}, Lf1/a;->d0(Landroid/os/Parcel;I)I

    move-result v3

    goto :goto_5

    :cond_18
    invoke-static {v1, v0}, Lf1/a;->u(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    invoke-direct {v0, v2, v3, v5, v4}, Lcom/google/android/gms/common/api/Status;-><init>(IILandroid/app/PendingIntent;Ljava/lang/String;)V

    return-object v0

    :pswitch_23
    invoke-static/range {p1 .. p1}, Lf1/a;->q0(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_6
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-ge v4, v0, :cond_1b

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    const v5, 0xffff

    and-int/2addr v5, v4

    const/4 v6, 0x1

    if-eq v5, v6, :cond_1a

    const/4 v6, 0x2

    if-eq v5, v6, :cond_19

    invoke-static {v1, v4}, Lf1/a;->n0(Landroid/os/Parcel;I)V

    goto :goto_6

    :cond_19
    invoke-static {v1, v4}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_6

    :cond_1a
    invoke-static {v1, v4}, Lf1/a;->d0(Landroid/os/Parcel;I)I

    move-result v2

    goto :goto_6

    :cond_1b
    invoke-static {v1, v0}, Lf1/a;->u(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/common/api/Scope;-><init>(ILjava/lang/String;)V

    return-object v0

    :pswitch_24
    invoke-static/range {p1 .. p1}, Lf1/a;->q0(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    :goto_7
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v6

    if-ge v6, v0, :cond_1f

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    const v7, 0xffff

    and-int/2addr v7, v6

    const/4 v8, 0x1

    if-eq v7, v8, :cond_1e

    const/4 v8, 0x2

    if-eq v7, v8, :cond_1d

    const/4 v8, 0x3

    if-eq v7, v8, :cond_1c

    invoke-static {v1, v6}, Lf1/a;->n0(Landroid/os/Parcel;I)V

    goto :goto_7

    :cond_1c
    invoke-static {v1, v6}, Lf1/a;->e0(Landroid/os/Parcel;I)J

    move-result-wide v4

    goto :goto_7

    :cond_1d
    invoke-static {v1, v6}, Lf1/a;->d0(Landroid/os/Parcel;I)I

    move-result v3

    goto :goto_7

    :cond_1e
    invoke-static {v1, v6}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_7

    :cond_1f
    invoke-static {v1, v0}, Lf1/a;->u(Landroid/os/Parcel;I)V

    new-instance v0, LZ0/c;

    invoke-direct {v0, v4, v5, v3, v2}, LZ0/c;-><init>(JILjava/lang/String;)V

    return-object v0

    :pswitch_25
    invoke-static/range {p1 .. p1}, Lf1/a;->q0(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v3

    move-object v5, v4

    move v3, v2

    :goto_8
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v6

    if-ge v6, v0, :cond_24

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    const v7, 0xffff

    and-int/2addr v7, v6

    const/4 v8, 0x1

    if-eq v7, v8, :cond_23

    const/4 v8, 0x2

    if-eq v7, v8, :cond_22

    const/4 v8, 0x3

    if-eq v7, v8, :cond_21

    const/4 v8, 0x4

    if-eq v7, v8, :cond_20

    invoke-static {v1, v6}, Lf1/a;->n0(Landroid/os/Parcel;I)V

    goto :goto_8

    :cond_20
    invoke-static {v1, v6}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v5

    goto :goto_8

    :cond_21
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v6, v4}, Lf1/a;->l(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/app/PendingIntent;

    goto :goto_8

    :cond_22
    invoke-static {v1, v6}, Lf1/a;->d0(Landroid/os/Parcel;I)I

    move-result v3

    goto :goto_8

    :cond_23
    invoke-static {v1, v6}, Lf1/a;->d0(Landroid/os/Parcel;I)I

    move-result v2

    goto :goto_8

    :cond_24
    invoke-static {v1, v0}, Lf1/a;->u(Landroid/os/Parcel;I)V

    new-instance v0, LZ0/a;

    invoke-direct {v0, v2, v3, v4, v5}, LZ0/a;-><init>(IILandroid/app/PendingIntent;Ljava/lang/String;)V

    return-object v0

    :pswitch_26
    invoke-static/range {p1 .. p1}, Lf1/a;->q0(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move v7, v2

    move-object v8, v3

    move-object v9, v8

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move-object/from16 v16, v13

    move-object/from16 v17, v16

    move-object/from16 v18, v17

    move-object/from16 v19, v18

    move-wide v14, v4

    :goto_9
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v0, :cond_25

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const v3, 0xffff

    and-int/2addr v3, v2

    packed-switch v3, :pswitch_data_2

    invoke-static {v1, v2}, Lf1/a;->n0(Landroid/os/Parcel;I)V

    goto :goto_9

    :pswitch_27
    invoke-static {v1, v2}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v19

    goto :goto_9

    :pswitch_28
    invoke-static {v1, v2}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v18

    goto :goto_9

    :pswitch_29
    sget-object v3, Lcom/google/android/gms/common/api/Scope;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, Lf1/a;->q(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v17

    goto :goto_9

    :pswitch_2a
    invoke-static {v1, v2}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v16

    goto :goto_9

    :pswitch_2b
    invoke-static {v1, v2}, Lf1/a;->e0(Landroid/os/Parcel;I)J

    move-result-wide v14

    goto :goto_9

    :pswitch_2c
    invoke-static {v1, v2}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v13

    goto :goto_9

    :pswitch_2d
    sget-object v3, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, Lf1/a;->l(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/net/Uri;

    goto :goto_9

    :pswitch_2e
    invoke-static {v1, v2}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v11

    goto :goto_9

    :pswitch_2f
    invoke-static {v1, v2}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v10

    goto :goto_9

    :pswitch_30
    invoke-static {v1, v2}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v9

    goto :goto_9

    :pswitch_31
    invoke-static {v1, v2}, Lf1/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v8

    goto :goto_9

    :pswitch_32
    invoke-static {v1, v2}, Lf1/a;->d0(Landroid/os/Parcel;I)I

    move-result v7

    goto :goto_9

    :cond_25
    invoke-static {v1, v0}, Lf1/a;->u(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-object v6, v0

    invoke-direct/range {v6 .. v19}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;JLjava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :pswitch_33
    new-instance v0, LO/m;

    invoke-direct {v0, v1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, LO/m;->c:I

    return-object v0

    :pswitch_34
    new-instance v0, LE1/b;

    invoke-direct {v0, v1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    const-class v2, LE1/b;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, LE1/b;->c:I

    return-object v0

    :pswitch_35
    new-instance v0, Landroidx/versionedparcelable/ParcelImpl;

    invoke-direct {v0, v1}, Landroidx/versionedparcelable/ParcelImpl;-><init>(Landroid/os/Parcel;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_35
        :pswitch_34
        :pswitch_33
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
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_2
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
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
    .end packed-switch
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 0

    iget p0, p0, LE0/a;->a:I

    packed-switch p0, :pswitch_data_0

    new-array p0, p1, [Lcom/google/android/material/datepicker/b;

    return-object p0

    :pswitch_0
    new-array p0, p1, [Lc1/E;

    return-object p0

    :pswitch_1
    new-array p0, p1, [Lc1/j;

    return-object p0

    :pswitch_2
    new-array p0, p1, [Lc1/x;

    return-object p0

    :pswitch_3
    new-array p0, p1, [Lc1/u;

    return-object p0

    :pswitch_4
    new-array p0, p1, [Lc1/t;

    return-object p0

    :pswitch_5
    new-array p0, p1, [Landroidx/preference/M;

    return-object p0

    :pswitch_6
    new-array p0, p1, [Landroidx/preference/L;

    return-object p0

    :pswitch_7
    new-array p0, p1, [Landroidx/preference/A;

    return-object p0

    :pswitch_8
    new-array p0, p1, [Landroidx/preference/m;

    return-object p0

    :pswitch_9
    new-array p0, p1, [Landroidx/preference/i;

    return-object p0

    :pswitch_a
    new-array p0, p1, [Landroidx/preference/f;

    return-object p0

    :pswitch_b
    new-array p0, p1, [Landroidx/preference/c;

    return-object p0

    :pswitch_c
    new-array p0, p1, [Landroidx/picker/widget/U;

    return-object p0

    :pswitch_d
    new-array p0, p1, [Landroidx/picker/widget/l;

    return-object p0

    :pswitch_e
    new-array p0, p1, [Landroidx/fragment/app/e0;

    return-object p0

    :pswitch_f
    new-array p0, p1, [Landroidx/fragment/app/b0;

    return-object p0

    :pswitch_10
    new-array p0, p1, [Landroidx/fragment/app/W;

    return-object p0

    :pswitch_11
    new-array p0, p1, [Landroidx/fragment/app/c;

    return-object p0

    :pswitch_12
    new-array p0, p1, [Landroidx/fragment/app/b;

    return-object p0

    :pswitch_13
    new-array p0, p1, [Landroidx/activity/result/j;

    return-object p0

    :pswitch_14
    new-array p0, p1, [Landroidx/activity/result/a;

    return-object p0

    :pswitch_15
    new-array p0, p1, [Lcom/google/android/gms/common/api/Status;

    return-object p0

    :pswitch_16
    new-array p0, p1, [Lcom/google/android/gms/common/api/Scope;

    return-object p0

    :pswitch_17
    new-array p0, p1, [LZ0/c;

    return-object p0

    :pswitch_18
    new-array p0, p1, [LZ0/a;

    return-object p0

    :pswitch_19
    new-array p0, p1, [Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    return-object p0

    :pswitch_1a
    new-array p0, p1, [LO/m;

    return-object p0

    :pswitch_1b
    new-array p0, p1, [LE1/b;

    return-object p0

    :pswitch_1c
    new-array p0, p1, [Landroidx/versionedparcelable/ParcelImpl;

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
