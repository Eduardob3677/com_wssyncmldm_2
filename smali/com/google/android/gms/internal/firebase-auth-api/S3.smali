.class public abstract Lcom/google/android/gms/internal/firebase-auth-api/S3;
.super Lcom/google/android/gms/internal/firebase-auth-api/Z;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/U3;


# virtual methods
.method public final f(ILandroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 15

    move-object/from16 v0, p2

    const-class v1, Lcom/google/android/gms/internal/firebase-auth-api/I4;

    const-string v2, "/signupNewUser"

    const-class v3, Lcom/google/android/gms/internal/firebase-auth-api/D4;

    const-string v4, "/resetPassword"

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v7, "com.google.firebase.auth.api.internal.IFirebaseAuthCallbacks"

    const/4 v8, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    return v6

    :pswitch_1
    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/n3;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/r0;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/n3;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, v7}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    instance-of v3, v2, Lcom/google/android/gms/internal/firebase-auth-api/Q3;

    if-eqz v3, :cond_1

    move-object v8, v2

    check-cast v8, Lcom/google/android/gms/internal/firebase-auth-api/Q3;

    goto :goto_0

    :cond_1
    new-instance v8, Lcom/google/android/gms/internal/firebase-auth-api/P3;

    invoke-direct {v8, v0}, Lcom/google/android/gms/internal/firebase-auth-api/P3;-><init>(Landroid/os/IBinder;)V

    :goto_0
    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/K3;

    invoke-static {v1}, Lc1/D;->e(Ljava/lang/Object;)V

    iget-object v2, v1, Lcom/google/android/gms/internal/firebase-auth-api/n3;->c:Ljava/lang/String;

    invoke-static {v2}, Lc1/D;->c(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/google/android/gms/internal/firebase-auth-api/n3;->d:Ljava/lang/String;

    invoke-static {v3}, Lc1/D;->c(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/google/android/gms/internal/firebase-auth-api/n3;->e:LY1/a;

    invoke-static {v1}, Lc1/D;->e(Ljava/lang/Object;)V

    new-instance v4, LJ3/d;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    const-string v6, "VERIFY_AND_CHANGE_EMAIL"

    iput-object v6, v4, LJ3/d;->c:Ljava/lang/Object;

    iput-object v1, v4, LJ3/d;->g:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, v4, LJ3/d;->d:Ljava/lang/Object;

    iput-object v3, v4, LJ3/d;->e:Ljava/lang/Object;

    iput-object v2, v4, LJ3/d;->f:Ljava/lang/Object;

    iput-object v1, v4, LJ3/d;->h:Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/G3;

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/K3;->d:LA/d;

    invoke-direct {v1, v8, v2}, Lcom/google/android/gms/internal/firebase-auth-api/G3;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/Q3;LA/d;)V

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/K3;->b:Lcom/google/android/gms/internal/firebase-auth-api/n;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/google/android/gms/internal/firebase-auth-api/q3;

    const/16 v3, 0xd

    invoke-direct {v2, v1, v3}, Lcom/google/android/gms/internal/firebase-auth-api/q3;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/G3;I)V

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/n;->d:Ljava/lang/Object;

    check-cast v0, LJ3/c;

    invoke-virtual {v0, v4, v2}, LJ3/c;->s(LJ3/d;Lcom/google/android/gms/internal/firebase-auth-api/d4;)V

    goto/16 :goto_23

    :pswitch_2
    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/P2;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/r0;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/P2;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {v0, v7}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    instance-of v3, v2, Lcom/google/android/gms/internal/firebase-auth-api/Q3;

    if-eqz v3, :cond_3

    move-object v8, v2

    check-cast v8, Lcom/google/android/gms/internal/firebase-auth-api/Q3;

    goto :goto_1

    :cond_3
    new-instance v8, Lcom/google/android/gms/internal/firebase-auth-api/P3;

    invoke-direct {v8, v0}, Lcom/google/android/gms/internal/firebase-auth-api/P3;-><init>(Landroid/os/IBinder;)V

    :goto_1
    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/K3;

    invoke-static {v1}, Lc1/D;->e(Ljava/lang/Object;)V

    invoke-static {v8}, Lc1/D;->e(Ljava/lang/Object;)V

    iget-object v2, v1, Lcom/google/android/gms/internal/firebase-auth-api/P2;->c:LY1/j;

    iget-object v3, v2, LY1/j;->c:Ljava/lang/String;

    iget-object v2, v2, LY1/j;->d:Ljava/lang/String;

    invoke-static {v2}, Lc1/D;->c(Ljava/lang/String;)V

    invoke-static {v3}, Lc1/D;->c(Ljava/lang/String;)V

    new-instance v4, Lcom/google/firebase/messaging/p;

    iget-object v1, v1, Lcom/google/android/gms/internal/firebase-auth-api/P2;->d:Ljava/lang/String;

    invoke-direct {v4, v1, v3, v2}, Lcom/google/firebase/messaging/p;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/G3;

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/K3;->d:LA/d;

    invoke-direct {v1, v8, v2}, Lcom/google/android/gms/internal/firebase-auth-api/G3;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/Q3;LA/d;)V

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/K3;->b:Lcom/google/android/gms/internal/firebase-auth-api/n;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/google/android/gms/internal/firebase-auth-api/q3;

    const/16 v3, 0xb

    invoke-direct {v2, v0, v1, v3}, Lcom/google/android/gms/internal/firebase-auth-api/q3;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/n;Lcom/google/android/gms/internal/firebase-auth-api/G3;I)V

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/n;->d:Ljava/lang/Object;

    check-cast v0, LJ3/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, LJ3/c;->e:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/V3;

    const-string v3, "/mfaSignIn:finalize"

    iget-object v0, v0, LJ3/c;->i:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Lcom/google/android/gms/internal/firebase-auth-api/O3;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v3, Lcom/google/android/gms/internal/firebase-auth-api/t4;

    iget-object v1, v1, Lcom/google/android/gms/internal/firebase-auth-api/O3;->b:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/a4;

    invoke-static {v0, v4, v2, v3, v1}, Lcom/google/android/gms/internal/firebase-auth-api/s;->l(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/X3;Lcom/google/android/gms/internal/firebase-auth-api/d4;Ljava/lang/Class;Lcom/google/android/gms/internal/firebase-auth-api/a4;)V

    goto/16 :goto_23

    :pswitch_3
    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/h3;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/r0;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/h3;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    invoke-interface {v0, v7}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    instance-of v3, v2, Lcom/google/android/gms/internal/firebase-auth-api/Q3;

    if-eqz v3, :cond_5

    move-object v8, v2

    check-cast v8, Lcom/google/android/gms/internal/firebase-auth-api/Q3;

    goto :goto_2

    :cond_5
    new-instance v8, Lcom/google/android/gms/internal/firebase-auth-api/P3;

    invoke-direct {v8, v0}, Lcom/google/android/gms/internal/firebase-auth-api/P3;-><init>(Landroid/os/IBinder;)V

    :goto_2
    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/K3;

    invoke-static {v1}, Lc1/D;->e(Ljava/lang/Object;)V

    invoke-static {v8}, Lc1/D;->e(Ljava/lang/Object;)V

    iget-object v2, v1, Lcom/google/android/gms/internal/firebase-auth-api/h3;->c:LY1/k;

    iget-object v3, v2, LY1/k;->f:Ljava/lang/String;

    new-instance v4, Lcom/google/android/gms/internal/firebase-auth-api/G3;

    sget-object v6, Lcom/google/android/gms/internal/firebase-auth-api/K3;->d:LA/d;

    invoke-direct {v4, v8, v6}, Lcom/google/android/gms/internal/firebase-auth-api/G3;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/Q3;LA/d;)V

    iget-object v6, v0, Lcom/google/android/gms/internal/firebase-auth-api/K3;->c:Lcom/google/android/gms/internal/firebase-auth-api/k4;

    iget-object v7, v6, Lcom/google/android/gms/internal/firebase-auth-api/k4;->c:Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_7

    iget-boolean v7, v1, Lcom/google/android/gms/internal/firebase-auth-api/h3;->g:Z

    if-eqz v7, :cond_6

    invoke-virtual {v6, v3}, Lcom/google/android/gms/internal/firebase-auth-api/k4;->d(Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    invoke-virtual {v6, v4, v3}, Lcom/google/android/gms/internal/firebase-auth-api/k4;->c(Lcom/google/android/gms/internal/firebase-auth-api/G3;Ljava/lang/String;)V

    goto/16 :goto_23

    :cond_7
    :goto_3
    iget-object v11, v2, LY1/k;->f:Ljava/lang/String;

    invoke-static {v11}, Lc1/D;->c(Ljava/lang/String;)V

    new-instance v7, Lcom/google/android/gms/internal/firebase-auth-api/K4;

    iget-object v10, v2, LY1/k;->c:Ljava/lang/String;

    iget-object v12, v1, Lcom/google/android/gms/internal/firebase-auth-api/h3;->e:Ljava/lang/String;

    iget-object v9, v1, Lcom/google/android/gms/internal/firebase-auth-api/h3;->d:Ljava/lang/String;

    iget-object v13, v1, Lcom/google/android/gms/internal/firebase-auth-api/h3;->j:Ljava/lang/String;

    iget-object v14, v1, Lcom/google/android/gms/internal/firebase-auth-api/h3;->i:Ljava/lang/String;

    move-object v8, v7

    invoke-direct/range {v8 .. v14}, Lcom/google/android/gms/internal/firebase-auth-api/K4;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v12, v1, Lcom/google/android/gms/internal/firebase-auth-api/h3;->f:J

    iget-boolean v14, v1, Lcom/google/android/gms/internal/firebase-auth-api/h3;->k:Z

    invoke-static {v12, v13, v14}, Lcom/google/android/gms/internal/firebase-auth-api/K3;->q(JZ)Z

    move-result v1

    if-eqz v1, :cond_8

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/m4;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/firebase-auth-api/k4;->a()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x0

    invoke-direct {v1, v2, v8}, Lcom/google/android/gms/internal/firebase-auth-api/m4;-><init>(Ljava/lang/String;I)V

    iput-object v1, v7, Lcom/google/android/gms/internal/firebase-auth-api/K4;->j:Lcom/google/android/gms/internal/firebase-auth-api/m4;

    :cond_8
    iget-object v9, v0, Lcom/google/android/gms/internal/firebase-auth-api/K3;->c:Lcom/google/android/gms/internal/firebase-auth-api/k4;

    move-object v10, v3

    move-object v11, v4

    invoke-virtual/range {v9 .. v14}, Lcom/google/android/gms/internal/firebase-auth-api/k4;->e(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/G3;JZ)V

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/h4;

    invoke-direct {v1, v6, v4, v3}, Lcom/google/android/gms/internal/firebase-auth-api/h4;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/k4;Lcom/google/android/gms/internal/firebase-auth-api/G3;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/K3;->b:Lcom/google/android/gms/internal/firebase-auth-api/n;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/google/android/gms/internal/firebase-auth-api/q3;

    const/16 v3, 0xc

    invoke-direct {v2, v1, v3}, Lcom/google/android/gms/internal/firebase-auth-api/q3;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/G3;I)V

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/n;->d:Ljava/lang/Object;

    check-cast v0, LJ3/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v7, Lcom/google/android/gms/internal/firebase-auth-api/K4;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual {v0}, LJ3/c;->t()Lcom/google/android/gms/internal/firebase-auth-api/a4;

    move-result-object v3

    iput-object v1, v3, Lcom/google/android/gms/internal/firebase-auth-api/a4;->e:Ljava/lang/Object;

    :cond_9
    iget-object v1, v0, LJ3/c;->e:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/V3;

    const-string v3, "/mfaSignIn:start"

    iget-object v0, v0, LJ3/c;->i:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Lcom/google/android/gms/internal/firebase-auth-api/O3;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v3, Lcom/google/android/gms/internal/firebase-auth-api/L4;

    iget-object v1, v1, Lcom/google/android/gms/internal/firebase-auth-api/O3;->b:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/a4;

    invoke-static {v0, v7, v2, v3, v1}, Lcom/google/android/gms/internal/firebase-auth-api/s;->l(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/X3;Lcom/google/android/gms/internal/firebase-auth-api/d4;Ljava/lang/Class;Lcom/google/android/gms/internal/firebase-auth-api/a4;)V

    goto/16 :goto_23

    :pswitch_4
    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/O2;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/r0;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/O2;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_a

    goto :goto_4

    :cond_a
    invoke-interface {v0, v7}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    instance-of v3, v2, Lcom/google/android/gms/internal/firebase-auth-api/Q3;

    if-eqz v3, :cond_b

    move-object v8, v2

    check-cast v8, Lcom/google/android/gms/internal/firebase-auth-api/Q3;

    goto :goto_4

    :cond_b
    new-instance v8, Lcom/google/android/gms/internal/firebase-auth-api/P3;

    invoke-direct {v8, v0}, Lcom/google/android/gms/internal/firebase-auth-api/P3;-><init>(Landroid/os/IBinder;)V

    :goto_4
    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/K3;

    invoke-static {v1}, Lc1/D;->e(Ljava/lang/Object;)V

    invoke-static {v8}, Lc1/D;->e(Ljava/lang/Object;)V

    iget-object v2, v1, Lcom/google/android/gms/internal/firebase-auth-api/O2;->c:LY1/j;

    iget-object v3, v2, LY1/j;->c:Ljava/lang/String;

    iget-object v2, v2, LY1/j;->d:Ljava/lang/String;

    invoke-static {v2}, Lc1/D;->c(Ljava/lang/String;)V

    invoke-static {v3}, Lc1/D;->c(Ljava/lang/String;)V

    new-instance v4, La2/m;

    iget-object v6, v1, Lcom/google/android/gms/internal/firebase-auth-api/O2;->e:Ljava/lang/String;

    iget-object v1, v1, Lcom/google/android/gms/internal/firebase-auth-api/O2;->d:Ljava/lang/String;

    invoke-direct {v4, v1, v3, v2, v6}, La2/m;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/google/android/gms/internal/firebase-auth-api/G3;

    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/K3;->d:LA/d;

    invoke-direct {v2, v8, v3}, Lcom/google/android/gms/internal/firebase-auth-api/G3;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/Q3;LA/d;)V

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/K3;->b:Lcom/google/android/gms/internal/firebase-auth-api/n;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/google/android/gms/internal/firebase-auth-api/z2;

    const/4 v6, 0x6

    invoke-direct {v3, v0, v4, v2, v6}, Lcom/google/android/gms/internal/firebase-auth-api/z2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/firebase-auth-api/n;->h(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/d4;)V

    goto/16 :goto_23

    :pswitch_5
    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/i3;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/r0;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/i3;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_c

    goto :goto_5

    :cond_c
    invoke-interface {v0, v7}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    instance-of v3, v2, Lcom/google/android/gms/internal/firebase-auth-api/Q3;

    if-eqz v3, :cond_d

    move-object v8, v2

    check-cast v8, Lcom/google/android/gms/internal/firebase-auth-api/Q3;

    goto :goto_5

    :cond_d
    new-instance v8, Lcom/google/android/gms/internal/firebase-auth-api/P3;

    invoke-direct {v8, v0}, Lcom/google/android/gms/internal/firebase-auth-api/P3;-><init>(Landroid/os/IBinder;)V

    :goto_5
    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/K3;

    invoke-static {v1}, Lc1/D;->e(Ljava/lang/Object;)V

    invoke-static {v8}, Lc1/D;->e(Ljava/lang/Object;)V

    new-instance v2, Lcom/google/android/gms/internal/firebase-auth-api/G3;

    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/K3;->d:LA/d;

    invoke-direct {v2, v8, v3}, Lcom/google/android/gms/internal/firebase-auth-api/G3;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/Q3;LA/d;)V

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/K3;->b:Lcom/google/android/gms/internal/firebase-auth-api/n;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v1, Lcom/google/android/gms/internal/firebase-auth-api/i3;->c:Ljava/lang/String;

    invoke-static {v3}, Lc1/D;->c(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/google/android/gms/internal/firebase-auth-api/i3;->d:Ljava/lang/String;

    invoke-static {v1}, Lc1/D;->c(Ljava/lang/String;)V

    new-instance v4, Lcom/google/android/gms/internal/firebase-auth-api/t3;

    const/4 v6, 0x1

    invoke-direct {v4, v0, v1, v2, v6}, Lcom/google/android/gms/internal/firebase-auth-api/t3;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/n;Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/G3;I)V

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/n;->h(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/d4;)V

    goto/16 :goto_23

    :pswitch_6
    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/g3;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/r0;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/g3;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_e

    goto :goto_6

    :cond_e
    invoke-interface {v0, v7}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    instance-of v3, v2, Lcom/google/android/gms/internal/firebase-auth-api/Q3;

    if-eqz v3, :cond_f

    move-object v8, v2

    check-cast v8, Lcom/google/android/gms/internal/firebase-auth-api/Q3;

    goto :goto_6

    :cond_f
    new-instance v8, Lcom/google/android/gms/internal/firebase-auth-api/P3;

    invoke-direct {v8, v0}, Lcom/google/android/gms/internal/firebase-auth-api/P3;-><init>(Landroid/os/IBinder;)V

    :goto_6
    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/K3;

    invoke-static {v1}, Lc1/D;->e(Ljava/lang/Object;)V

    invoke-static {v8}, Lc1/D;->e(Ljava/lang/Object;)V

    new-instance v2, Lcom/google/android/gms/internal/firebase-auth-api/G3;

    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/K3;->d:LA/d;

    invoke-direct {v2, v8, v3}, Lcom/google/android/gms/internal/firebase-auth-api/G3;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/Q3;LA/d;)V

    iget-object v3, v0, Lcom/google/android/gms/internal/firebase-auth-api/K3;->c:Lcom/google/android/gms/internal/firebase-auth-api/k4;

    iget-object v4, v3, Lcom/google/android/gms/internal/firebase-auth-api/k4;->c:Ljava/util/HashMap;

    iget-object v6, v1, Lcom/google/android/gms/internal/firebase-auth-api/g3;->d:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_11

    iget-boolean v4, v1, Lcom/google/android/gms/internal/firebase-auth-api/g3;->g:Z

    if-eqz v4, :cond_10

    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/firebase-auth-api/k4;->d(Ljava/lang/String;)V

    goto :goto_7

    :cond_10
    invoke-virtual {v3, v2, v6}, Lcom/google/android/gms/internal/firebase-auth-api/k4;->c(Lcom/google/android/gms/internal/firebase-auth-api/G3;Ljava/lang/String;)V

    goto/16 :goto_23

    :cond_11
    :goto_7
    iget-object v9, v1, Lcom/google/android/gms/internal/firebase-auth-api/g3;->d:Ljava/lang/String;

    invoke-static {v9}, Lc1/D;->c(Ljava/lang/String;)V

    new-instance v4, LJ3/c;

    iget-object v8, v1, Lcom/google/android/gms/internal/firebase-auth-api/g3;->c:Ljava/lang/String;

    iget-object v10, v1, Lcom/google/android/gms/internal/firebase-auth-api/g3;->e:Ljava/lang/String;

    iget-object v11, v1, Lcom/google/android/gms/internal/firebase-auth-api/g3;->j:Ljava/lang/String;

    iget-object v12, v1, Lcom/google/android/gms/internal/firebase-auth-api/g3;->i:Ljava/lang/String;

    move-object v7, v4

    invoke-direct/range {v7 .. v12}, LJ3/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v12, v1, Lcom/google/android/gms/internal/firebase-auth-api/g3;->f:J

    iget-boolean v14, v1, Lcom/google/android/gms/internal/firebase-auth-api/g3;->k:Z

    invoke-static {v12, v13, v14}, Lcom/google/android/gms/internal/firebase-auth-api/K3;->q(JZ)Z

    move-result v1

    if-eqz v1, :cond_12

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/m4;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/firebase-auth-api/k4;->a()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v1, v7, v8}, Lcom/google/android/gms/internal/firebase-auth-api/m4;-><init>(Ljava/lang/String;I)V

    iput-object v1, v4, LJ3/c;->j:Ljava/lang/Object;

    :cond_12
    iget-object v9, v0, Lcom/google/android/gms/internal/firebase-auth-api/K3;->c:Lcom/google/android/gms/internal/firebase-auth-api/k4;

    move-object v10, v6

    move-object v11, v2

    invoke-virtual/range {v9 .. v14}, Lcom/google/android/gms/internal/firebase-auth-api/k4;->e(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/G3;JZ)V

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/h4;

    invoke-direct {v1, v3, v2, v6}, Lcom/google/android/gms/internal/firebase-auth-api/h4;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/k4;Lcom/google/android/gms/internal/firebase-auth-api/G3;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/K3;->b:Lcom/google/android/gms/internal/firebase-auth-api/n;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/google/android/gms/internal/firebase-auth-api/q3;

    const/16 v3, 0xa

    invoke-direct {v2, v1, v3}, Lcom/google/android/gms/internal/firebase-auth-api/q3;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/G3;I)V

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/n;->d:Ljava/lang/Object;

    check-cast v0, LJ3/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v4, LJ3/c;->g:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_13

    invoke-virtual {v0}, LJ3/c;->t()Lcom/google/android/gms/internal/firebase-auth-api/a4;

    move-result-object v3

    iput-object v1, v3, Lcom/google/android/gms/internal/firebase-auth-api/a4;->e:Ljava/lang/Object;

    :cond_13
    iget-object v1, v0, LJ3/c;->e:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/V3;

    const-string v3, "/mfaEnrollment:start"

    iget-object v0, v0, LJ3/c;->i:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Lcom/google/android/gms/internal/firebase-auth-api/O3;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v3, Lcom/google/android/gms/internal/firebase-auth-api/J4;

    iget-object v1, v1, Lcom/google/android/gms/internal/firebase-auth-api/O3;->b:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/a4;

    invoke-static {v0, v4, v2, v3, v1}, Lcom/google/android/gms/internal/firebase-auth-api/s;->l(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/X3;Lcom/google/android/gms/internal/firebase-auth-api/d4;Ljava/lang/Class;Lcom/google/android/gms/internal/firebase-auth-api/a4;)V

    goto/16 :goto_23

    :pswitch_7
    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/e3;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/r0;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/e3;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_14

    goto :goto_8

    :cond_14
    invoke-interface {v0, v7}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    instance-of v3, v2, Lcom/google/android/gms/internal/firebase-auth-api/Q3;

    if-eqz v3, :cond_15

    move-object v8, v2

    check-cast v8, Lcom/google/android/gms/internal/firebase-auth-api/Q3;

    goto :goto_8

    :cond_15
    new-instance v8, Lcom/google/android/gms/internal/firebase-auth-api/P3;

    invoke-direct {v8, v0}, Lcom/google/android/gms/internal/firebase-auth-api/P3;-><init>(Landroid/os/IBinder;)V

    :goto_8
    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/K3;

    invoke-virtual {v0, v1, v8}, Lcom/google/android/gms/internal/firebase-auth-api/K3;->b(Lcom/google/android/gms/internal/firebase-auth-api/e3;Lcom/google/android/gms/internal/firebase-auth-api/Q3;)V

    goto/16 :goto_23

    :pswitch_8
    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/X2;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/r0;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/X2;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_16

    goto :goto_9

    :cond_16
    invoke-interface {v0, v7}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    instance-of v3, v2, Lcom/google/android/gms/internal/firebase-auth-api/Q3;

    if-eqz v3, :cond_17

    move-object v8, v2

    check-cast v8, Lcom/google/android/gms/internal/firebase-auth-api/Q3;

    goto :goto_9

    :cond_17
    new-instance v8, Lcom/google/android/gms/internal/firebase-auth-api/P3;

    invoke-direct {v8, v0}, Lcom/google/android/gms/internal/firebase-auth-api/P3;-><init>(Landroid/os/IBinder;)V

    :goto_9
    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/K3;

    invoke-static {v1}, Lc1/D;->e(Ljava/lang/Object;)V

    iget-object v2, v1, Lcom/google/android/gms/internal/firebase-auth-api/X2;->c:Ljava/lang/String;

    invoke-static {v2}, Lc1/D;->c(Ljava/lang/String;)V

    invoke-static {v8}, Lc1/D;->e(Ljava/lang/Object;)V

    new-instance v3, Lcom/google/android/gms/internal/firebase-auth-api/G3;

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/K3;->d:LA/d;

    invoke-direct {v3, v8, v4}, Lcom/google/android/gms/internal/firebase-auth-api/G3;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/Q3;LA/d;)V

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/K3;->b:Lcom/google/android/gms/internal/firebase-auth-api/n;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lc1/D;->c(Ljava/lang/String;)V

    new-instance v4, LJ3/d;

    iget-object v6, v1, Lcom/google/android/gms/internal/firebase-auth-api/X2;->d:LY1/a;

    iget v7, v6, LY1/a;->k:I

    invoke-direct {v4, v7}, LJ3/d;-><init>(I)V

    invoke-static {v2}, Lc1/D;->c(Ljava/lang/String;)V

    iput-object v2, v4, LJ3/d;->d:Ljava/lang/Object;

    iput-object v6, v4, LJ3/d;->g:Ljava/lang/Object;

    iget-object v1, v1, Lcom/google/android/gms/internal/firebase-auth-api/X2;->e:Ljava/lang/String;

    iput-object v1, v4, LJ3/d;->h:Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/q3;

    const/4 v2, 0x4

    invoke-direct {v1, v3, v2}, Lcom/google/android/gms/internal/firebase-auth-api/q3;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/G3;I)V

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/n;->d:Ljava/lang/Object;

    check-cast v0, LJ3/c;

    invoke-virtual {v0, v4, v1}, LJ3/c;->s(LJ3/d;Lcom/google/android/gms/internal/firebase-auth-api/d4;)V

    goto/16 :goto_23

    :pswitch_9
    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/Z2;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/r0;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/Z2;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_18

    goto :goto_a

    :cond_18
    invoke-interface {v0, v7}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    instance-of v3, v2, Lcom/google/android/gms/internal/firebase-auth-api/Q3;

    if-eqz v3, :cond_19

    move-object v8, v2

    check-cast v8, Lcom/google/android/gms/internal/firebase-auth-api/Q3;

    goto :goto_a

    :cond_19
    new-instance v8, Lcom/google/android/gms/internal/firebase-auth-api/P3;

    invoke-direct {v8, v0}, Lcom/google/android/gms/internal/firebase-auth-api/P3;-><init>(Landroid/os/IBinder;)V

    :goto_a
    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/K3;

    invoke-static {v1}, Lc1/D;->e(Ljava/lang/Object;)V

    invoke-static {v8}, Lc1/D;->e(Ljava/lang/Object;)V

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/K3;->d:LA/d;

    invoke-static {v2}, Lc1/D;->e(Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/K3;->b:Lcom/google/android/gms/internal/firebase-auth-api/n;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/n;->d:Ljava/lang/Object;

    check-cast v0, LJ3/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, LJ3/c;->t()Lcom/google/android/gms/internal/firebase-auth-api/a4;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v1, Lcom/google/android/gms/internal/firebase-auth-api/Z2;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/2addr v1, v5

    iput-boolean v1, v0, Lcom/google/android/gms/internal/firebase-auth-api/a4;->a:Z

    :try_start_0
    invoke-interface {v8}, Lcom/google/android/gms/internal/firebase-auth-api/Q3;->h()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_23

    :catch_0
    move-exception v0

    move-object v1, v0

    new-array v0, v6, [Ljava/lang/Object;

    const-string v3, "RemoteException when setting FirebaseUI Version"

    invoke-virtual {v2, v3, v1, v0}, LA/d;->d(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    goto/16 :goto_23

    :pswitch_a
    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/W2;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/r0;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/W2;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_1a

    goto :goto_b

    :cond_1a
    invoke-interface {v0, v7}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    instance-of v3, v2, Lcom/google/android/gms/internal/firebase-auth-api/Q3;

    if-eqz v3, :cond_1b

    move-object v8, v2

    check-cast v8, Lcom/google/android/gms/internal/firebase-auth-api/Q3;

    goto :goto_b

    :cond_1b
    new-instance v8, Lcom/google/android/gms/internal/firebase-auth-api/P3;

    invoke-direct {v8, v0}, Lcom/google/android/gms/internal/firebase-auth-api/P3;-><init>(Landroid/os/IBinder;)V

    :goto_b
    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/K3;

    invoke-static {v1}, Lc1/D;->e(Ljava/lang/Object;)V

    iget-object v2, v1, Lcom/google/android/gms/internal/firebase-auth-api/W2;->c:Ljava/lang/String;

    invoke-static {v2}, Lc1/D;->c(Ljava/lang/String;)V

    invoke-static {v8}, Lc1/D;->e(Ljava/lang/Object;)V

    new-instance v3, Lcom/google/android/gms/internal/firebase-auth-api/G3;

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/K3;->d:LA/d;

    invoke-direct {v3, v8, v4}, Lcom/google/android/gms/internal/firebase-auth-api/G3;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/Q3;LA/d;)V

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/K3;->b:Lcom/google/android/gms/internal/firebase-auth-api/n;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lc1/D;->c(Ljava/lang/String;)V

    new-instance v4, LJ3/d;

    const/4 v6, 0x4

    invoke-direct {v4, v6}, LJ3/d;-><init>(I)V

    invoke-static {v2}, Lc1/D;->c(Ljava/lang/String;)V

    iput-object v2, v4, LJ3/d;->f:Ljava/lang/Object;

    iget-object v1, v1, Lcom/google/android/gms/internal/firebase-auth-api/W2;->d:LY1/a;

    if-eqz v1, :cond_1c

    iput-object v1, v4, LJ3/d;->g:Ljava/lang/Object;

    :cond_1c
    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/q3;

    const/16 v2, 0xd

    invoke-direct {v1, v3, v2}, Lcom/google/android/gms/internal/firebase-auth-api/q3;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/G3;I)V

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/n;->d:Ljava/lang/Object;

    check-cast v0, LJ3/c;

    invoke-virtual {v0, v4, v1}, LJ3/c;->s(LJ3/d;Lcom/google/android/gms/internal/firebase-auth-api/d4;)V

    goto/16 :goto_23

    :pswitch_b
    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/U2;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/r0;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/U2;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_1d

    goto :goto_c

    :cond_1d
    invoke-interface {v0, v7}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    instance-of v3, v2, Lcom/google/android/gms/internal/firebase-auth-api/Q3;

    if-eqz v3, :cond_1e

    move-object v8, v2

    check-cast v8, Lcom/google/android/gms/internal/firebase-auth-api/Q3;

    goto :goto_c

    :cond_1e
    new-instance v8, Lcom/google/android/gms/internal/firebase-auth-api/P3;

    invoke-direct {v8, v0}, Lcom/google/android/gms/internal/firebase-auth-api/P3;-><init>(Landroid/os/IBinder;)V

    :goto_c
    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/K3;

    invoke-virtual {v0, v1, v8}, Lcom/google/android/gms/internal/firebase-auth-api/K3;->x(Lcom/google/android/gms/internal/firebase-auth-api/U2;Lcom/google/android/gms/internal/firebase-auth-api/Q3;)V

    goto/16 :goto_23

    :pswitch_c
    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/f3;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/r0;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/f3;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_1f

    goto :goto_d

    :cond_1f
    invoke-interface {v0, v7}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    instance-of v3, v2, Lcom/google/android/gms/internal/firebase-auth-api/Q3;

    if-eqz v3, :cond_20

    move-object v8, v2

    check-cast v8, Lcom/google/android/gms/internal/firebase-auth-api/Q3;

    goto :goto_d

    :cond_20
    new-instance v8, Lcom/google/android/gms/internal/firebase-auth-api/P3;

    invoke-direct {v8, v0}, Lcom/google/android/gms/internal/firebase-auth-api/P3;-><init>(Landroid/os/IBinder;)V

    :goto_d
    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/K3;

    invoke-virtual {v0, v1, v8}, Lcom/google/android/gms/internal/firebase-auth-api/K3;->t(Lcom/google/android/gms/internal/firebase-auth-api/f3;Lcom/google/android/gms/internal/firebase-auth-api/Q3;)V

    goto/16 :goto_23

    :pswitch_d
    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/Y2;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/r0;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/Y2;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_21

    goto :goto_e

    :cond_21
    invoke-interface {v0, v7}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    instance-of v3, v2, Lcom/google/android/gms/internal/firebase-auth-api/Q3;

    if-eqz v3, :cond_22

    move-object v8, v2

    check-cast v8, Lcom/google/android/gms/internal/firebase-auth-api/Q3;

    goto :goto_e

    :cond_22
    new-instance v8, Lcom/google/android/gms/internal/firebase-auth-api/P3;

    invoke-direct {v8, v0}, Lcom/google/android/gms/internal/firebase-auth-api/P3;-><init>(Landroid/os/IBinder;)V

    :goto_e
    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/K3;

    invoke-static {v8}, Lc1/D;->e(Ljava/lang/Object;)V

    invoke-static {v1}, Lc1/D;->e(Ljava/lang/Object;)V

    iget-object v1, v1, Lcom/google/android/gms/internal/firebase-auth-api/Y2;->c:Lcom/google/android/gms/internal/firebase-auth-api/E4;

    invoke-static {v1}, Lc1/D;->e(Ljava/lang/Object;)V

    new-instance v2, Lcom/google/android/gms/internal/firebase-auth-api/G3;

    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/K3;->d:LA/d;

    invoke-direct {v2, v8, v3}, Lcom/google/android/gms/internal/firebase-auth-api/G3;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/Q3;LA/d;)V

    iget-object v3, v0, Lcom/google/android/gms/internal/firebase-auth-api/K3;->c:Lcom/google/android/gms/internal/firebase-auth-api/k4;

    iget-object v4, v3, Lcom/google/android/gms/internal/firebase-auth-api/k4;->c:Ljava/util/HashMap;

    iget-object v6, v1, Lcom/google/android/gms/internal/firebase-auth-api/E4;->c:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_24

    iget-boolean v4, v1, Lcom/google/android/gms/internal/firebase-auth-api/E4;->e:Z

    if-eqz v4, :cond_23

    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/firebase-auth-api/k4;->d(Ljava/lang/String;)V

    goto :goto_f

    :cond_23
    invoke-virtual {v3, v2, v6}, Lcom/google/android/gms/internal/firebase-auth-api/k4;->c(Lcom/google/android/gms/internal/firebase-auth-api/G3;Ljava/lang/String;)V

    goto/16 :goto_23

    :cond_24
    :goto_f
    iget-wide v12, v1, Lcom/google/android/gms/internal/firebase-auth-api/E4;->d:J

    iget-boolean v14, v1, Lcom/google/android/gms/internal/firebase-auth-api/E4;->i:Z

    invoke-static {v12, v13, v14}, Lcom/google/android/gms/internal/firebase-auth-api/K3;->q(JZ)Z

    move-result v4

    if-eqz v4, :cond_25

    new-instance v4, Lcom/google/android/gms/internal/firebase-auth-api/m4;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/firebase-auth-api/k4;->a()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v4, v7, v8}, Lcom/google/android/gms/internal/firebase-auth-api/m4;-><init>(Ljava/lang/String;I)V

    iput-object v4, v1, Lcom/google/android/gms/internal/firebase-auth-api/E4;->k:Lcom/google/android/gms/internal/firebase-auth-api/m4;

    :cond_25
    iget-object v9, v0, Lcom/google/android/gms/internal/firebase-auth-api/K3;->c:Lcom/google/android/gms/internal/firebase-auth-api/k4;

    move-object v10, v6

    move-object v11, v2

    invoke-virtual/range {v9 .. v14}, Lcom/google/android/gms/internal/firebase-auth-api/k4;->e(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/G3;JZ)V

    new-instance v4, Lcom/google/android/gms/internal/firebase-auth-api/h4;

    invoke-direct {v4, v3, v2, v6}, Lcom/google/android/gms/internal/firebase-auth-api/h4;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/k4;Lcom/google/android/gms/internal/firebase-auth-api/G3;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/K3;->b:Lcom/google/android/gms/internal/firebase-auth-api/n;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v1, Lcom/google/android/gms/internal/firebase-auth-api/E4;->c:Ljava/lang/String;

    invoke-static {v2}, Lc1/D;->c(Ljava/lang/String;)V

    new-instance v2, Lcom/google/android/gms/internal/firebase-auth-api/q3;

    const/16 v3, 0x8

    invoke-direct {v2, v4, v3}, Lcom/google/android/gms/internal/firebase-auth-api/q3;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/G3;I)V

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/n;->d:Ljava/lang/Object;

    check-cast v0, LJ3/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v1, Lcom/google/android/gms/internal/firebase-auth-api/E4;->f:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_26

    invoke-virtual {v0}, LJ3/c;->t()Lcom/google/android/gms/internal/firebase-auth-api/a4;

    move-result-object v4

    iput-object v3, v4, Lcom/google/android/gms/internal/firebase-auth-api/a4;->e:Ljava/lang/Object;

    :cond_26
    iget-object v3, v0, LJ3/c;->d:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/internal/firebase-auth-api/V3;

    const-string v4, "/sendVerificationCode"

    iget-object v0, v0, LJ3/c;->i:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Lcom/google/android/gms/internal/firebase-auth-api/O3;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v4, Lcom/google/android/gms/internal/firebase-auth-api/F4;

    iget-object v3, v3, Lcom/google/android/gms/internal/firebase-auth-api/O3;->b:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/internal/firebase-auth-api/a4;

    invoke-static {v0, v1, v2, v4, v3}, Lcom/google/android/gms/internal/firebase-auth-api/s;->l(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/X3;Lcom/google/android/gms/internal/firebase-auth-api/d4;Ljava/lang/Class;Lcom/google/android/gms/internal/firebase-auth-api/a4;)V

    goto/16 :goto_23

    :pswitch_e
    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/L2;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/r0;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/L2;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_27

    goto :goto_10

    :cond_27
    invoke-interface {v0, v7}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    instance-of v6, v2, Lcom/google/android/gms/internal/firebase-auth-api/Q3;

    if-eqz v6, :cond_28

    move-object v8, v2

    check-cast v8, Lcom/google/android/gms/internal/firebase-auth-api/Q3;

    goto :goto_10

    :cond_28
    new-instance v8, Lcom/google/android/gms/internal/firebase-auth-api/P3;

    invoke-direct {v8, v0}, Lcom/google/android/gms/internal/firebase-auth-api/P3;-><init>(Landroid/os/IBinder;)V

    :goto_10
    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/K3;

    invoke-static {v1}, Lc1/D;->e(Ljava/lang/Object;)V

    iget-object v2, v1, Lcom/google/android/gms/internal/firebase-auth-api/L2;->c:Ljava/lang/String;

    invoke-static {v2}, Lc1/D;->c(Ljava/lang/String;)V

    iget-object v6, v1, Lcom/google/android/gms/internal/firebase-auth-api/L2;->d:Ljava/lang/String;

    invoke-static {v6}, Lc1/D;->c(Ljava/lang/String;)V

    invoke-static {v8}, Lc1/D;->e(Ljava/lang/Object;)V

    new-instance v7, Lcom/google/android/gms/internal/firebase-auth-api/G3;

    sget-object v9, Lcom/google/android/gms/internal/firebase-auth-api/K3;->d:LA/d;

    invoke-direct {v7, v8, v9}, Lcom/google/android/gms/internal/firebase-auth-api/G3;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/Q3;LA/d;)V

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/K3;->b:Lcom/google/android/gms/internal/firebase-auth-api/n;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lc1/D;->c(Ljava/lang/String;)V

    invoke-static {v6}, Lc1/D;->c(Ljava/lang/String;)V

    new-instance v8, Lcom/google/android/gms/internal/firebase-auth-api/o4;

    iget-object v1, v1, Lcom/google/android/gms/internal/firebase-auth-api/L2;->e:Ljava/lang/String;

    const/4 v9, 0x1

    invoke-direct {v8, v9, v2, v6, v1}, Lcom/google/android/gms/internal/firebase-auth-api/o4;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/q3;

    const/4 v2, 0x7

    invoke-direct {v1, v7, v2}, Lcom/google/android/gms/internal/firebase-auth-api/q3;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/G3;I)V

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/n;->d:Ljava/lang/Object;

    check-cast v0, LJ3/c;

    iget-object v2, v0, LJ3/c;->d:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/firebase-auth-api/V3;

    iget-object v0, v0, LJ3/c;->i:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v4, v0}, Lcom/google/android/gms/internal/firebase-auth-api/O3;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v2, Lcom/google/android/gms/internal/firebase-auth-api/O3;->b:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/firebase-auth-api/a4;

    invoke-static {v0, v8, v1, v3, v2}, Lcom/google/android/gms/internal/firebase-auth-api/s;->l(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/X3;Lcom/google/android/gms/internal/firebase-auth-api/d4;Ljava/lang/Class;Lcom/google/android/gms/internal/firebase-auth-api/a4;)V

    goto/16 :goto_23

    :pswitch_f
    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/G2;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/r0;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/G2;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_29

    goto :goto_11

    :cond_29
    invoke-interface {v0, v7}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    instance-of v3, v2, Lcom/google/android/gms/internal/firebase-auth-api/Q3;

    if-eqz v3, :cond_2a

    move-object v8, v2

    check-cast v8, Lcom/google/android/gms/internal/firebase-auth-api/Q3;

    goto :goto_11

    :cond_2a
    new-instance v8, Lcom/google/android/gms/internal/firebase-auth-api/P3;

    invoke-direct {v8, v0}, Lcom/google/android/gms/internal/firebase-auth-api/P3;-><init>(Landroid/os/IBinder;)V

    :goto_11
    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/K3;

    invoke-static {v1}, Lc1/D;->e(Ljava/lang/Object;)V

    iget-object v2, v1, Lcom/google/android/gms/internal/firebase-auth-api/G2;->c:Ljava/lang/String;

    invoke-static {v2}, Lc1/D;->c(Ljava/lang/String;)V

    invoke-static {v8}, Lc1/D;->e(Ljava/lang/Object;)V

    new-instance v3, Lcom/google/android/gms/internal/firebase-auth-api/G3;

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/K3;->d:LA/d;

    invoke-direct {v3, v8, v4}, Lcom/google/android/gms/internal/firebase-auth-api/G3;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/Q3;LA/d;)V

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/K3;->b:Lcom/google/android/gms/internal/firebase-auth-api/n;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lc1/D;->c(Ljava/lang/String;)V

    new-instance v4, Lcom/google/android/gms/internal/firebase-auth-api/G4;

    invoke-direct {v4}, Lcom/google/android/gms/internal/firebase-auth-api/G4;-><init>()V

    invoke-static {v2}, Lc1/D;->c(Ljava/lang/String;)V

    iput-object v2, v4, Lcom/google/android/gms/internal/firebase-auth-api/G4;->g:Ljava/lang/Object;

    iget-object v1, v1, Lcom/google/android/gms/internal/firebase-auth-api/G2;->d:Ljava/lang/String;

    iput-object v1, v4, Lcom/google/android/gms/internal/firebase-auth-api/G4;->i:Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/q3;

    const/16 v2, 0x10

    invoke-direct {v1, v3, v2}, Lcom/google/android/gms/internal/firebase-auth-api/q3;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/G3;I)V

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/n;->d:Ljava/lang/Object;

    check-cast v0, LJ3/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, LJ3/c;->d:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/firebase-auth-api/V3;

    const-string v3, "/setAccountInfo"

    iget-object v0, v0, LJ3/c;->i:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/firebase-auth-api/O3;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v3, Lcom/google/android/gms/internal/firebase-auth-api/H4;

    iget-object v2, v2, Lcom/google/android/gms/internal/firebase-auth-api/O3;->b:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/firebase-auth-api/a4;

    invoke-static {v0, v4, v1, v3, v2}, Lcom/google/android/gms/internal/firebase-auth-api/s;->l(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/X3;Lcom/google/android/gms/internal/firebase-auth-api/d4;Ljava/lang/Class;Lcom/google/android/gms/internal/firebase-auth-api/a4;)V

    goto/16 :goto_23

    :pswitch_10
    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/K2;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/r0;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/K2;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_2b

    move-object v2, v8

    goto :goto_12

    :cond_2b
    invoke-interface {v0, v7}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    instance-of v6, v2, Lcom/google/android/gms/internal/firebase-auth-api/Q3;

    if-eqz v6, :cond_2c

    check-cast v2, Lcom/google/android/gms/internal/firebase-auth-api/Q3;

    goto :goto_12

    :cond_2c
    new-instance v2, Lcom/google/android/gms/internal/firebase-auth-api/P3;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/P3;-><init>(Landroid/os/IBinder;)V

    :goto_12
    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/K3;

    invoke-static {v1}, Lc1/D;->e(Ljava/lang/Object;)V

    iget-object v6, v1, Lcom/google/android/gms/internal/firebase-auth-api/K2;->c:Ljava/lang/String;

    invoke-static {v6}, Lc1/D;->c(Ljava/lang/String;)V

    invoke-static {v2}, Lc1/D;->e(Ljava/lang/Object;)V

    new-instance v7, Lcom/google/android/gms/internal/firebase-auth-api/G3;

    sget-object v9, Lcom/google/android/gms/internal/firebase-auth-api/K3;->d:LA/d;

    invoke-direct {v7, v2, v9}, Lcom/google/android/gms/internal/firebase-auth-api/G3;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/Q3;LA/d;)V

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/K3;->b:Lcom/google/android/gms/internal/firebase-auth-api/n;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6}, Lc1/D;->c(Ljava/lang/String;)V

    new-instance v2, Lcom/google/android/gms/internal/firebase-auth-api/o4;

    iget-object v1, v1, Lcom/google/android/gms/internal/firebase-auth-api/K2;->d:Ljava/lang/String;

    const/4 v9, 0x1

    invoke-direct {v2, v9, v6, v8, v1}, Lcom/google/android/gms/internal/firebase-auth-api/o4;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/q3;

    const/4 v6, 0x5

    invoke-direct {v1, v7, v6}, Lcom/google/android/gms/internal/firebase-auth-api/q3;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/G3;I)V

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/n;->d:Ljava/lang/Object;

    check-cast v0, LJ3/c;

    iget-object v6, v0, LJ3/c;->d:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/gms/internal/firebase-auth-api/V3;

    iget-object v0, v0, LJ3/c;->i:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v6, v4, v0}, Lcom/google/android/gms/internal/firebase-auth-api/O3;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, v6, Lcom/google/android/gms/internal/firebase-auth-api/O3;->b:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/gms/internal/firebase-auth-api/a4;

    invoke-static {v0, v2, v1, v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/s;->l(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/X3;Lcom/google/android/gms/internal/firebase-auth-api/d4;Ljava/lang/Class;Lcom/google/android/gms/internal/firebase-auth-api/a4;)V

    goto/16 :goto_23

    :pswitch_11
    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/N2;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/r0;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/N2;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_2d

    goto :goto_13

    :cond_2d
    invoke-interface {v0, v7}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    instance-of v3, v2, Lcom/google/android/gms/internal/firebase-auth-api/Q3;

    if-eqz v3, :cond_2e

    move-object v8, v2

    check-cast v8, Lcom/google/android/gms/internal/firebase-auth-api/Q3;

    goto :goto_13

    :cond_2e
    new-instance v8, Lcom/google/android/gms/internal/firebase-auth-api/P3;

    invoke-direct {v8, v0}, Lcom/google/android/gms/internal/firebase-auth-api/P3;-><init>(Landroid/os/IBinder;)V

    :goto_13
    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/K3;

    invoke-static {v1}, Lc1/D;->e(Ljava/lang/Object;)V

    iget-object v1, v1, Lcom/google/android/gms/internal/firebase-auth-api/N2;->c:Ljava/lang/String;

    invoke-static {v1}, Lc1/D;->c(Ljava/lang/String;)V

    invoke-static {v8}, Lc1/D;->e(Ljava/lang/Object;)V

    new-instance v2, Lcom/google/android/gms/internal/firebase-auth-api/G3;

    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/K3;->d:LA/d;

    invoke-direct {v2, v8, v3}, Lcom/google/android/gms/internal/firebase-auth-api/G3;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/Q3;LA/d;)V

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/K3;->b:Lcom/google/android/gms/internal/firebase-auth-api/n;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lc1/D;->c(Ljava/lang/String;)V

    new-instance v3, Lcom/google/android/gms/internal/firebase-auth-api/s3;

    const/4 v4, 0x3

    invoke-direct {v3, v0, v2, v4}, Lcom/google/android/gms/internal/firebase-auth-api/s3;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/n;Lcom/google/android/gms/internal/firebase-auth-api/G3;I)V

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/firebase-auth-api/n;->h(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/d4;)V

    goto/16 :goto_23

    :pswitch_12
    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/a3;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/firebase-auth-api/r0;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/firebase-auth-api/a3;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_2f

    goto :goto_14

    :cond_2f
    invoke-interface {v0, v7}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v4

    instance-of v6, v4, Lcom/google/android/gms/internal/firebase-auth-api/Q3;

    if-eqz v6, :cond_30

    move-object v8, v4

    check-cast v8, Lcom/google/android/gms/internal/firebase-auth-api/Q3;

    goto :goto_14

    :cond_30
    new-instance v8, Lcom/google/android/gms/internal/firebase-auth-api/P3;

    invoke-direct {v8, v0}, Lcom/google/android/gms/internal/firebase-auth-api/P3;-><init>(Landroid/os/IBinder;)V

    :goto_14
    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/K3;

    invoke-static {v3}, Lc1/D;->e(Ljava/lang/Object;)V

    invoke-static {v8}, Lc1/D;->e(Ljava/lang/Object;)V

    new-instance v4, Lcom/google/android/gms/internal/firebase-auth-api/G3;

    sget-object v6, Lcom/google/android/gms/internal/firebase-auth-api/K3;->d:LA/d;

    invoke-direct {v4, v8, v6}, Lcom/google/android/gms/internal/firebase-auth-api/G3;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/Q3;LA/d;)V

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/K3;->b:Lcom/google/android/gms/internal/firebase-auth-api/n;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lcom/google/android/gms/internal/firebase-auth-api/o4;

    iget-object v3, v3, Lcom/google/android/gms/internal/firebase-auth-api/a3;->c:Ljava/lang/String;

    invoke-direct {v6, v3}, Lcom/google/android/gms/internal/firebase-auth-api/o4;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/google/android/gms/internal/firebase-auth-api/q3;

    const/16 v7, 0xf

    invoke-direct {v3, v0, v4, v7}, Lcom/google/android/gms/internal/firebase-auth-api/q3;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/n;Lcom/google/android/gms/internal/firebase-auth-api/G3;I)V

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/n;->d:Ljava/lang/Object;

    check-cast v0, LJ3/c;

    iget-object v4, v0, LJ3/c;->d:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/gms/internal/firebase-auth-api/V3;

    iget-object v0, v0, LJ3/c;->i:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/O3;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v4, Lcom/google/android/gms/internal/firebase-auth-api/O3;->b:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/firebase-auth-api/a4;

    invoke-static {v0, v6, v3, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/s;->l(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/X3;Lcom/google/android/gms/internal/firebase-auth-api/d4;Ljava/lang/Class;Lcom/google/android/gms/internal/firebase-auth-api/a4;)V

    goto/16 :goto_23

    :pswitch_13
    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/V2;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/r0;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/V2;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_31

    goto :goto_15

    :cond_31
    invoke-interface {v0, v7}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    instance-of v3, v2, Lcom/google/android/gms/internal/firebase-auth-api/Q3;

    if-eqz v3, :cond_32

    move-object v8, v2

    check-cast v8, Lcom/google/android/gms/internal/firebase-auth-api/Q3;

    goto :goto_15

    :cond_32
    new-instance v8, Lcom/google/android/gms/internal/firebase-auth-api/P3;

    invoke-direct {v8, v0}, Lcom/google/android/gms/internal/firebase-auth-api/P3;-><init>(Landroid/os/IBinder;)V

    :goto_15
    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/K3;

    invoke-static {v1}, Lc1/D;->e(Ljava/lang/Object;)V

    iget-object v1, v1, Lcom/google/android/gms/internal/firebase-auth-api/V2;->c:Ljava/lang/String;

    invoke-static {v1}, Lc1/D;->c(Ljava/lang/String;)V

    invoke-static {v8}, Lc1/D;->e(Ljava/lang/Object;)V

    new-instance v2, Lcom/google/android/gms/internal/firebase-auth-api/G3;

    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/K3;->d:LA/d;

    invoke-direct {v2, v8, v3}, Lcom/google/android/gms/internal/firebase-auth-api/G3;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/Q3;LA/d;)V

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/K3;->b:Lcom/google/android/gms/internal/firebase-auth-api/n;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lc1/D;->c(Ljava/lang/String;)V

    new-instance v3, Lcom/google/android/gms/internal/firebase-auth-api/s3;

    const/4 v4, 0x2

    invoke-direct {v3, v0, v2, v4}, Lcom/google/android/gms/internal/firebase-auth-api/s3;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/n;Lcom/google/android/gms/internal/firebase-auth-api/G3;I)V

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/firebase-auth-api/n;->h(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/d4;)V

    goto/16 :goto_23

    :pswitch_14
    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/k3;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/r0;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/k3;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_33

    goto :goto_16

    :cond_33
    invoke-interface {v0, v7}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    instance-of v3, v2, Lcom/google/android/gms/internal/firebase-auth-api/Q3;

    if-eqz v3, :cond_34

    move-object v8, v2

    check-cast v8, Lcom/google/android/gms/internal/firebase-auth-api/Q3;

    goto :goto_16

    :cond_34
    new-instance v8, Lcom/google/android/gms/internal/firebase-auth-api/P3;

    invoke-direct {v8, v0}, Lcom/google/android/gms/internal/firebase-auth-api/P3;-><init>(Landroid/os/IBinder;)V

    :goto_16
    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/K3;

    invoke-static {v1}, Lc1/D;->e(Ljava/lang/Object;)V

    iget-object v2, v1, Lcom/google/android/gms/internal/firebase-auth-api/k3;->c:Ljava/lang/String;

    invoke-static {v2}, Lc1/D;->c(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/google/android/gms/internal/firebase-auth-api/k3;->d:Ljava/lang/String;

    invoke-static {v1}, Lc1/D;->c(Ljava/lang/String;)V

    invoke-static {v8}, Lc1/D;->e(Ljava/lang/Object;)V

    new-instance v3, Lcom/google/android/gms/internal/firebase-auth-api/G3;

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/K3;->d:LA/d;

    invoke-direct {v3, v8, v4}, Lcom/google/android/gms/internal/firebase-auth-api/G3;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/Q3;LA/d;)V

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/K3;->b:Lcom/google/android/gms/internal/firebase-auth-api/n;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lc1/D;->c(Ljava/lang/String;)V

    invoke-static {v1}, Lc1/D;->c(Ljava/lang/String;)V

    new-instance v4, Lcom/google/android/gms/internal/firebase-auth-api/t3;

    const/4 v6, 0x0

    invoke-direct {v4, v0, v2, v3, v6}, Lcom/google/android/gms/internal/firebase-auth-api/t3;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/n;Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/G3;I)V

    invoke-virtual {v0, v1, v4}, Lcom/google/android/gms/internal/firebase-auth-api/n;->h(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/d4;)V

    goto/16 :goto_23

    :pswitch_15
    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/j3;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/r0;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/j3;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_35

    goto :goto_17

    :cond_35
    invoke-interface {v0, v7}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    instance-of v3, v2, Lcom/google/android/gms/internal/firebase-auth-api/Q3;

    if-eqz v3, :cond_36

    move-object v8, v2

    check-cast v8, Lcom/google/android/gms/internal/firebase-auth-api/Q3;

    goto :goto_17

    :cond_36
    new-instance v8, Lcom/google/android/gms/internal/firebase-auth-api/P3;

    invoke-direct {v8, v0}, Lcom/google/android/gms/internal/firebase-auth-api/P3;-><init>(Landroid/os/IBinder;)V

    :goto_17
    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/K3;

    invoke-static {v1}, Lc1/D;->e(Ljava/lang/Object;)V

    iget-object v1, v1, Lcom/google/android/gms/internal/firebase-auth-api/j3;->c:Ljava/lang/String;

    invoke-static {v1}, Lc1/D;->c(Ljava/lang/String;)V

    invoke-static {v8}, Lc1/D;->e(Ljava/lang/Object;)V

    new-instance v2, Lcom/google/android/gms/internal/firebase-auth-api/G3;

    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/K3;->d:LA/d;

    invoke-direct {v2, v8, v3}, Lcom/google/android/gms/internal/firebase-auth-api/G3;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/Q3;LA/d;)V

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/K3;->b:Lcom/google/android/gms/internal/firebase-auth-api/n;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lc1/D;->c(Ljava/lang/String;)V

    new-instance v3, Lcom/google/android/gms/internal/firebase-auth-api/s3;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v2, v4}, Lcom/google/android/gms/internal/firebase-auth-api/s3;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/n;Lcom/google/android/gms/internal/firebase-auth-api/G3;I)V

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/firebase-auth-api/n;->h(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/d4;)V

    goto/16 :goto_23

    :pswitch_16
    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/T2;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/r0;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/T2;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_37

    goto :goto_18

    :cond_37
    invoke-interface {v0, v7}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    instance-of v3, v2, Lcom/google/android/gms/internal/firebase-auth-api/Q3;

    if-eqz v3, :cond_38

    move-object v8, v2

    check-cast v8, Lcom/google/android/gms/internal/firebase-auth-api/Q3;

    goto :goto_18

    :cond_38
    new-instance v8, Lcom/google/android/gms/internal/firebase-auth-api/P3;

    invoke-direct {v8, v0}, Lcom/google/android/gms/internal/firebase-auth-api/P3;-><init>(Landroid/os/IBinder;)V

    :goto_18
    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/K3;

    invoke-virtual {v0, v1, v8}, Lcom/google/android/gms/internal/firebase-auth-api/K3;->g(Lcom/google/android/gms/internal/firebase-auth-api/T2;Lcom/google/android/gms/internal/firebase-auth-api/Q3;)V

    goto/16 :goto_23

    :pswitch_17
    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/S2;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/r0;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/S2;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_39

    goto :goto_19

    :cond_39
    invoke-interface {v0, v7}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    instance-of v3, v2, Lcom/google/android/gms/internal/firebase-auth-api/Q3;

    if-eqz v3, :cond_3a

    move-object v8, v2

    check-cast v8, Lcom/google/android/gms/internal/firebase-auth-api/Q3;

    goto :goto_19

    :cond_3a
    new-instance v8, Lcom/google/android/gms/internal/firebase-auth-api/P3;

    invoke-direct {v8, v0}, Lcom/google/android/gms/internal/firebase-auth-api/P3;-><init>(Landroid/os/IBinder;)V

    :goto_19
    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/K3;

    invoke-virtual {v0, v1, v8}, Lcom/google/android/gms/internal/firebase-auth-api/K3;->k(Lcom/google/android/gms/internal/firebase-auth-api/S2;Lcom/google/android/gms/internal/firebase-auth-api/Q3;)V

    goto/16 :goto_23

    :pswitch_18
    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/R2;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/r0;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/R2;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_3b

    goto :goto_1a

    :cond_3b
    invoke-interface {v0, v7}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    instance-of v3, v2, Lcom/google/android/gms/internal/firebase-auth-api/Q3;

    if-eqz v3, :cond_3c

    move-object v8, v2

    check-cast v8, Lcom/google/android/gms/internal/firebase-auth-api/Q3;

    goto :goto_1a

    :cond_3c
    new-instance v8, Lcom/google/android/gms/internal/firebase-auth-api/P3;

    invoke-direct {v8, v0}, Lcom/google/android/gms/internal/firebase-auth-api/P3;-><init>(Landroid/os/IBinder;)V

    :goto_1a
    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/K3;

    invoke-static {v1}, Lc1/D;->e(Ljava/lang/Object;)V

    iget-object v2, v1, Lcom/google/android/gms/internal/firebase-auth-api/R2;->c:Ljava/lang/String;

    invoke-static {v2}, Lc1/D;->c(Ljava/lang/String;)V

    new-instance v3, Lcom/google/android/gms/internal/firebase-auth-api/G3;

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/K3;->d:LA/d;

    invoke-direct {v3, v8, v4}, Lcom/google/android/gms/internal/firebase-auth-api/G3;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/Q3;LA/d;)V

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/K3;->b:Lcom/google/android/gms/internal/firebase-auth-api/n;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lc1/D;->c(Ljava/lang/String;)V

    new-instance v4, Lcom/google/android/gms/internal/firebase-auth-api/o4;

    iget-object v1, v1, Lcom/google/android/gms/internal/firebase-auth-api/R2;->d:Ljava/lang/String;

    invoke-direct {v4, v2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/o4;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/q3;

    const/4 v2, 0x3

    invoke-direct {v1, v3, v2}, Lcom/google/android/gms/internal/firebase-auth-api/q3;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/G3;I)V

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/n;->d:Ljava/lang/Object;

    check-cast v0, LJ3/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, LJ3/c;->d:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/firebase-auth-api/V3;

    const-string v3, "/createAuthUri"

    iget-object v0, v0, LJ3/c;->i:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/firebase-auth-api/O3;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v3, Lcom/google/android/gms/internal/firebase-auth-api/p4;

    iget-object v2, v2, Lcom/google/android/gms/internal/firebase-auth-api/O3;->b:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/firebase-auth-api/a4;

    invoke-static {v0, v4, v1, v3, v2}, Lcom/google/android/gms/internal/firebase-auth-api/s;->l(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/X3;Lcom/google/android/gms/internal/firebase-auth-api/d4;Ljava/lang/Class;Lcom/google/android/gms/internal/firebase-auth-api/a4;)V

    goto/16 :goto_23

    :pswitch_19
    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/d3;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/r0;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/d3;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_3d

    goto :goto_1b

    :cond_3d
    invoke-interface {v0, v7}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    instance-of v3, v2, Lcom/google/android/gms/internal/firebase-auth-api/Q3;

    if-eqz v3, :cond_3e

    move-object v8, v2

    check-cast v8, Lcom/google/android/gms/internal/firebase-auth-api/Q3;

    goto :goto_1b

    :cond_3e
    new-instance v8, Lcom/google/android/gms/internal/firebase-auth-api/P3;

    invoke-direct {v8, v0}, Lcom/google/android/gms/internal/firebase-auth-api/P3;-><init>(Landroid/os/IBinder;)V

    :goto_1b
    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/K3;

    invoke-virtual {v0, v1, v8}, Lcom/google/android/gms/internal/firebase-auth-api/K3;->j(Lcom/google/android/gms/internal/firebase-auth-api/d3;Lcom/google/android/gms/internal/firebase-auth-api/Q3;)V

    goto/16 :goto_23

    :pswitch_1a
    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/M2;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/firebase-auth-api/r0;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/firebase-auth-api/M2;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_3f

    goto :goto_1c

    :cond_3f
    invoke-interface {v0, v7}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v4

    instance-of v6, v4, Lcom/google/android/gms/internal/firebase-auth-api/Q3;

    if-eqz v6, :cond_40

    move-object v8, v4

    check-cast v8, Lcom/google/android/gms/internal/firebase-auth-api/Q3;

    goto :goto_1c

    :cond_40
    new-instance v8, Lcom/google/android/gms/internal/firebase-auth-api/P3;

    invoke-direct {v8, v0}, Lcom/google/android/gms/internal/firebase-auth-api/P3;-><init>(Landroid/os/IBinder;)V

    :goto_1c
    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/K3;

    invoke-static {v3}, Lc1/D;->e(Ljava/lang/Object;)V

    iget-object v4, v3, Lcom/google/android/gms/internal/firebase-auth-api/M2;->c:Ljava/lang/String;

    invoke-static {v4}, Lc1/D;->c(Ljava/lang/String;)V

    iget-object v6, v3, Lcom/google/android/gms/internal/firebase-auth-api/M2;->d:Ljava/lang/String;

    invoke-static {v6}, Lc1/D;->c(Ljava/lang/String;)V

    invoke-static {v8}, Lc1/D;->e(Ljava/lang/Object;)V

    new-instance v7, Lcom/google/android/gms/internal/firebase-auth-api/G3;

    sget-object v9, Lcom/google/android/gms/internal/firebase-auth-api/K3;->d:LA/d;

    invoke-direct {v7, v8, v9}, Lcom/google/android/gms/internal/firebase-auth-api/G3;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/Q3;LA/d;)V

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/K3;->b:Lcom/google/android/gms/internal/firebase-auth-api/n;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Lc1/D;->c(Ljava/lang/String;)V

    invoke-static {v6}, Lc1/D;->c(Ljava/lang/String;)V

    new-instance v8, Lcom/google/android/gms/internal/firebase-auth-api/o4;

    iget-object v3, v3, Lcom/google/android/gms/internal/firebase-auth-api/M2;->e:Ljava/lang/String;

    const/4 v9, 0x2

    invoke-direct {v8, v9, v4, v6, v3}, Lcom/google/android/gms/internal/firebase-auth-api/o4;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/google/android/gms/internal/firebase-auth-api/q3;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v7, v4}, Lcom/google/android/gms/internal/firebase-auth-api/q3;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/n;Lcom/google/android/gms/internal/firebase-auth-api/G3;I)V

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/n;->d:Ljava/lang/Object;

    check-cast v0, LJ3/c;

    iget-object v4, v0, LJ3/c;->d:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/gms/internal/firebase-auth-api/V3;

    iget-object v0, v0, LJ3/c;->i:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/O3;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v4, Lcom/google/android/gms/internal/firebase-auth-api/O3;->b:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/firebase-auth-api/a4;

    invoke-static {v0, v8, v3, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/s;->l(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/X3;Lcom/google/android/gms/internal/firebase-auth-api/d4;Ljava/lang/Class;Lcom/google/android/gms/internal/firebase-auth-api/a4;)V

    goto/16 :goto_23

    :pswitch_1b
    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/J2;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/r0;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/J2;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_41

    goto :goto_1d

    :cond_41
    invoke-interface {v0, v7}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    instance-of v3, v2, Lcom/google/android/gms/internal/firebase-auth-api/Q3;

    if-eqz v3, :cond_42

    move-object v8, v2

    check-cast v8, Lcom/google/android/gms/internal/firebase-auth-api/Q3;

    goto :goto_1d

    :cond_42
    new-instance v8, Lcom/google/android/gms/internal/firebase-auth-api/P3;

    invoke-direct {v8, v0}, Lcom/google/android/gms/internal/firebase-auth-api/P3;-><init>(Landroid/os/IBinder;)V

    :goto_1d
    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/K3;

    invoke-static {v1}, Lc1/D;->e(Ljava/lang/Object;)V

    iget-object v2, v1, Lcom/google/android/gms/internal/firebase-auth-api/J2;->c:Ljava/lang/String;

    invoke-static {v2}, Lc1/D;->c(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/google/android/gms/internal/firebase-auth-api/J2;->d:Ljava/lang/String;

    invoke-static {v1}, Lc1/D;->c(Ljava/lang/String;)V

    invoke-static {v8}, Lc1/D;->e(Ljava/lang/Object;)V

    new-instance v3, Lcom/google/android/gms/internal/firebase-auth-api/G3;

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/K3;->d:LA/d;

    invoke-direct {v3, v8, v4}, Lcom/google/android/gms/internal/firebase-auth-api/G3;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/Q3;LA/d;)V

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/K3;->b:Lcom/google/android/gms/internal/firebase-auth-api/n;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lc1/D;->c(Ljava/lang/String;)V

    invoke-static {v1}, Lc1/D;->c(Ljava/lang/String;)V

    new-instance v4, Lcom/google/android/gms/internal/firebase-auth-api/t3;

    const/4 v6, 0x3

    invoke-direct {v4, v0, v1, v3, v6}, Lcom/google/android/gms/internal/firebase-auth-api/t3;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/n;Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/G3;I)V

    invoke-virtual {v0, v2, v4}, Lcom/google/android/gms/internal/firebase-auth-api/n;->h(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/d4;)V

    goto/16 :goto_23

    :pswitch_1c
    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/I2;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/r0;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/I2;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_43

    goto :goto_1e

    :cond_43
    invoke-interface {v0, v7}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    instance-of v3, v2, Lcom/google/android/gms/internal/firebase-auth-api/Q3;

    if-eqz v3, :cond_44

    move-object v8, v2

    check-cast v8, Lcom/google/android/gms/internal/firebase-auth-api/Q3;

    goto :goto_1e

    :cond_44
    new-instance v8, Lcom/google/android/gms/internal/firebase-auth-api/P3;

    invoke-direct {v8, v0}, Lcom/google/android/gms/internal/firebase-auth-api/P3;-><init>(Landroid/os/IBinder;)V

    :goto_1e
    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/K3;

    invoke-static {v1}, Lc1/D;->e(Ljava/lang/Object;)V

    iget-object v2, v1, Lcom/google/android/gms/internal/firebase-auth-api/I2;->c:Ljava/lang/String;

    invoke-static {v2}, Lc1/D;->c(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/google/android/gms/internal/firebase-auth-api/I2;->d:Ljava/lang/String;

    invoke-static {v1}, Lc1/D;->c(Ljava/lang/String;)V

    invoke-static {v8}, Lc1/D;->e(Ljava/lang/Object;)V

    new-instance v3, Lcom/google/android/gms/internal/firebase-auth-api/G3;

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/K3;->d:LA/d;

    invoke-direct {v3, v8, v4}, Lcom/google/android/gms/internal/firebase-auth-api/G3;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/Q3;LA/d;)V

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/K3;->b:Lcom/google/android/gms/internal/firebase-auth-api/n;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lc1/D;->c(Ljava/lang/String;)V

    invoke-static {v1}, Lc1/D;->c(Ljava/lang/String;)V

    new-instance v4, Lcom/google/android/gms/internal/firebase-auth-api/t3;

    const/4 v6, 0x2

    invoke-direct {v4, v0, v1, v3, v6}, Lcom/google/android/gms/internal/firebase-auth-api/t3;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/n;Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/G3;I)V

    invoke-virtual {v0, v2, v4}, Lcom/google/android/gms/internal/firebase-auth-api/n;->h(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/d4;)V

    goto/16 :goto_23

    :pswitch_1d
    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/l3;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/r0;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/l3;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_45

    goto :goto_1f

    :cond_45
    invoke-interface {v0, v7}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    instance-of v3, v2, Lcom/google/android/gms/internal/firebase-auth-api/Q3;

    if-eqz v3, :cond_46

    move-object v8, v2

    check-cast v8, Lcom/google/android/gms/internal/firebase-auth-api/Q3;

    goto :goto_1f

    :cond_46
    new-instance v8, Lcom/google/android/gms/internal/firebase-auth-api/P3;

    invoke-direct {v8, v0}, Lcom/google/android/gms/internal/firebase-auth-api/P3;-><init>(Landroid/os/IBinder;)V

    :goto_1f
    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/K3;

    invoke-static {v1}, Lc1/D;->e(Ljava/lang/Object;)V

    iget-object v2, v1, Lcom/google/android/gms/internal/firebase-auth-api/l3;->d:Ljava/lang/String;

    invoke-static {v2}, Lc1/D;->c(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/google/android/gms/internal/firebase-auth-api/l3;->c:LY1/o;

    invoke-static {v1}, Lc1/D;->e(Ljava/lang/Object;)V

    invoke-static {v8}, Lc1/D;->e(Ljava/lang/Object;)V

    new-instance v3, Lcom/google/android/gms/internal/firebase-auth-api/G3;

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/K3;->d:LA/d;

    invoke-direct {v3, v8, v4}, Lcom/google/android/gms/internal/firebase-auth-api/G3;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/Q3;LA/d;)V

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/K3;->b:Lcom/google/android/gms/internal/firebase-auth-api/n;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lc1/D;->c(Ljava/lang/String;)V

    new-instance v4, Lcom/google/android/gms/internal/firebase-auth-api/z2;

    const/16 v6, 0x8

    invoke-direct {v4, v0, v1, v3, v6}, Lcom/google/android/gms/internal/firebase-auth-api/z2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v2, v4}, Lcom/google/android/gms/internal/firebase-auth-api/n;->h(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/d4;)V

    goto/16 :goto_23

    :pswitch_1e
    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/b3;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/r0;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/b3;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_47

    goto :goto_20

    :cond_47
    invoke-interface {v0, v7}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    instance-of v3, v2, Lcom/google/android/gms/internal/firebase-auth-api/Q3;

    if-eqz v3, :cond_48

    move-object v8, v2

    check-cast v8, Lcom/google/android/gms/internal/firebase-auth-api/Q3;

    goto :goto_20

    :cond_48
    new-instance v8, Lcom/google/android/gms/internal/firebase-auth-api/P3;

    invoke-direct {v8, v0}, Lcom/google/android/gms/internal/firebase-auth-api/P3;-><init>(Landroid/os/IBinder;)V

    :goto_20
    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/K3;

    invoke-virtual {v0, v1, v8}, Lcom/google/android/gms/internal/firebase-auth-api/K3;->o(Lcom/google/android/gms/internal/firebase-auth-api/b3;Lcom/google/android/gms/internal/firebase-auth-api/Q3;)V

    goto/16 :goto_23

    :pswitch_1f
    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/c3;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/r0;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/c3;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_49

    goto :goto_21

    :cond_49
    invoke-interface {v0, v7}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    instance-of v3, v2, Lcom/google/android/gms/internal/firebase-auth-api/Q3;

    if-eqz v3, :cond_4a

    move-object v8, v2

    check-cast v8, Lcom/google/android/gms/internal/firebase-auth-api/Q3;

    goto :goto_21

    :cond_4a
    new-instance v8, Lcom/google/android/gms/internal/firebase-auth-api/P3;

    invoke-direct {v8, v0}, Lcom/google/android/gms/internal/firebase-auth-api/P3;-><init>(Landroid/os/IBinder;)V

    :goto_21
    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/K3;

    invoke-static {v1}, Lc1/D;->e(Ljava/lang/Object;)V

    iget-object v2, v1, Lcom/google/android/gms/internal/firebase-auth-api/c3;->c:Ljava/lang/String;

    invoke-static {v2}, Lc1/D;->c(Ljava/lang/String;)V

    invoke-static {v8}, Lc1/D;->e(Ljava/lang/Object;)V

    new-instance v3, Lcom/google/android/gms/internal/firebase-auth-api/e4;

    iget-object v1, v1, Lcom/google/android/gms/internal/firebase-auth-api/c3;->d:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-direct {v3, v4, v2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/e4;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/G3;

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/K3;->d:LA/d;

    invoke-direct {v1, v8, v2}, Lcom/google/android/gms/internal/firebase-auth-api/G3;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/Q3;LA/d;)V

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/K3;->b:Lcom/google/android/gms/internal/firebase-auth-api/n;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/google/android/gms/internal/firebase-auth-api/s3;

    const/4 v4, 0x1

    invoke-direct {v2, v0, v1, v4}, Lcom/google/android/gms/internal/firebase-auth-api/s3;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/n;Lcom/google/android/gms/internal/firebase-auth-api/G3;I)V

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/n;->d:Ljava/lang/Object;

    check-cast v0, LJ3/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, LJ3/c;->d:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/V3;

    const-string v4, "/verifyCustomToken"

    iget-object v0, v0, LJ3/c;->i:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v4, v0}, Lcom/google/android/gms/internal/firebase-auth-api/O3;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v4, Lcom/google/android/gms/internal/firebase-auth-api/P4;

    iget-object v1, v1, Lcom/google/android/gms/internal/firebase-auth-api/O3;->b:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/a4;

    invoke-static {v0, v3, v2, v4, v1}, Lcom/google/android/gms/internal/firebase-auth-api/s;->l(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/X3;Lcom/google/android/gms/internal/firebase-auth-api/d4;Ljava/lang/Class;Lcom/google/android/gms/internal/firebase-auth-api/a4;)V

    goto :goto_23

    :pswitch_20
    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/Q2;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/r0;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/Q2;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_4b

    goto :goto_22

    :cond_4b
    invoke-interface {v0, v7}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    instance-of v3, v2, Lcom/google/android/gms/internal/firebase-auth-api/Q3;

    if-eqz v3, :cond_4c

    move-object v8, v2

    check-cast v8, Lcom/google/android/gms/internal/firebase-auth-api/Q3;

    goto :goto_22

    :cond_4c
    new-instance v8, Lcom/google/android/gms/internal/firebase-auth-api/P3;

    invoke-direct {v8, v0}, Lcom/google/android/gms/internal/firebase-auth-api/P3;-><init>(Landroid/os/IBinder;)V

    :goto_22
    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/K3;

    invoke-virtual {v0, v1, v8}, Lcom/google/android/gms/internal/firebase-auth-api/K3;->r(Lcom/google/android/gms/internal/firebase-auth-api/Q2;Lcom/google/android/gms/internal/firebase-auth-api/Q3;)V

    :goto_23
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v5

    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_0
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
.end method
