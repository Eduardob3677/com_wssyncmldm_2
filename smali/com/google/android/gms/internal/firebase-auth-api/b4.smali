.class public final Lcom/google/android/gms/internal/firebase-auth-api/b4;
.super Lcom/google/android/gms/internal/firebase-auth-api/Z;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/Q3;


# instance fields
.field public final synthetic b:Lcom/google/android/gms/internal/firebase-auth-api/c4;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/c4;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/b4;->b:Lcom/google/android/gms/internal/firebase-auth-api/c4;

    const-string p1, "com.google.firebase.auth.api.internal.IFirebaseAuthCallbacks"

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/Z;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/b4;->b:Lcom/google/android/gms/internal/firebase-auth-api/c4;

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/c4;->a:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x24

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unexpected response type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lc1/D;->g(Ljava/lang/String;Z)V

    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/c4;->e(Lcom/google/android/gms/internal/firebase-auth-api/c4;)V

    return-void
.end method

.method public final c(Lcom/google/android/gms/internal/firebase-auth-api/y4;Lcom/google/android/gms/internal/firebase-auth-api/v4;)V
    .locals 4

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/b4;->b:Lcom/google/android/gms/internal/firebase-auth-api/c4;

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/c4;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x25

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unexpected response type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lc1/D;->g(Ljava/lang/String;Z)V

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/c4;->g:Lcom/google/android/gms/internal/firebase-auth-api/y4;

    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/c4;->h:Lcom/google/android/gms/internal/firebase-auth-api/v4;

    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/c4;->e(Lcom/google/android/gms/internal/firebase-auth-api/c4;)V

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 2

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/b4;->b:Lcom/google/android/gms/internal/firebase-auth-api/c4;

    iget p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/c4;->a:I

    const/16 p1, 0x8

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x24

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unexpected response type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lc1/D;->g(Ljava/lang/String;Z)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final f(ILandroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5

    const-string p3, "Unexpected response type "

    const/16 v0, 0x24

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/b4;->b:Lcom/google/android/gms/internal/firebase-auth-api/c4;

    const/4 v4, 0x0

    packed-switch p1, :pswitch_data_0

    return v4

    :pswitch_0
    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/p3;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/r0;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/p3;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/b4;->q(Lcom/google/android/gms/internal/firebase-auth-api/p3;)V

    goto/16 :goto_0

    :pswitch_1
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/o3;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p0}, Lcom/google/android/gms/internal/firebase-auth-api/r0;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/o3;

    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/o3;->c:Lcom/google/android/gms/common/api/Status;

    iget-object p2, v3, Lcom/google/android/gms/internal/firebase-auth-api/c4;->f:LY1/t;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, LY1/t;->b(Lcom/google/android/gms/common/api/Status;)V

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/o3;->d:LY1/r;

    iput-object p0, v3, Lcom/google/android/gms/internal/firebase-auth-api/c4;->i:LY1/c;

    iget-object p0, v3, Lcom/google/android/gms/internal/firebase-auth-api/c4;->f:LY1/t;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, LY1/t;->b(Lcom/google/android/gms/common/api/Status;)V

    :cond_1
    invoke-virtual {v3, p1}, Lcom/google/android/gms/internal/firebase-auth-api/c4;->f(Lcom/google/android/gms/common/api/Status;)V

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/b4;->h()V

    goto/16 :goto_0

    :pswitch_3
    sget-object p0, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p0}, Lcom/google/android/gms/internal/firebase-auth-api/r0;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/common/api/Status;

    sget-object p1, LY1/j;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/r0;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, LY1/j;

    iget p2, v3, Lcom/google/android/gms/internal/firebase-auth-api/c4;->a:I

    const/4 v1, 0x2

    if-ne p2, v1, :cond_2

    move v4, v2

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v4}, Lc1/D;->g(Ljava/lang/String;Z)V

    iget-object p2, v3, Lcom/google/android/gms/internal/firebase-auth-api/c4;->f:LY1/t;

    if-eqz p2, :cond_3

    invoke-virtual {p2, p0}, LY1/t;->b(Lcom/google/android/gms/common/api/Status;)V

    :cond_3
    iput-object p1, v3, Lcom/google/android/gms/internal/firebase-auth-api/c4;->i:LY1/c;

    iget-object p1, v3, Lcom/google/android/gms/internal/firebase-auth-api/c4;->f:LY1/t;

    if-eqz p1, :cond_4

    invoke-virtual {p1, p0}, LY1/t;->b(Lcom/google/android/gms/common/api/Status;)V

    :cond_4
    invoke-virtual {v3, p0}, Lcom/google/android/gms/internal/firebase-auth-api/c4;->f(Lcom/google/android/gms/common/api/Status;)V

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/b4;->n(Ljava/lang/String;)V

    throw v1

    :pswitch_5
    sget-object p1, LY1/j;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/r0;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, LY1/j;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/b4;->p(LY1/j;)V

    throw v1

    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/b4;->d(Ljava/lang/String;)V

    throw v1

    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    iget p0, v3, Lcom/google/android/gms/internal/firebase-auth-api/c4;->a:I

    const/4 p1, 0x7

    if-ne p0, p1, :cond_5

    move v4, v2

    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v4}, Lc1/D;->g(Ljava/lang/String;Z)V

    invoke-static {v3}, Lcom/google/android/gms/internal/firebase-auth-api/c4;->e(Lcom/google/android/gms/internal/firebase-auth-api/c4;)V

    goto :goto_0

    :pswitch_8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/b4;->a()V

    goto :goto_0

    :pswitch_9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/b4;->u()V

    goto :goto_0

    :pswitch_a
    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/r0;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/b4;->i(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0

    :pswitch_b
    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/D4;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/r0;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/D4;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/b4;->m(Lcom/google/android/gms/internal/firebase-auth-api/D4;)V

    goto :goto_0

    :pswitch_c
    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/p4;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/r0;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/p4;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/b4;->l(Lcom/google/android/gms/internal/firebase-auth-api/p4;)V

    goto :goto_0

    :pswitch_d
    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/y4;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/r0;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/y4;

    sget-object p3, Lcom/google/android/gms/internal/firebase-auth-api/v4;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p3}, Lcom/google/android/gms/internal/firebase-auth-api/r0;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/firebase-auth-api/v4;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/b4;->c(Lcom/google/android/gms/internal/firebase-auth-api/y4;Lcom/google/android/gms/internal/firebase-auth-api/v4;)V

    goto :goto_0

    :pswitch_e
    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/y4;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/r0;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/y4;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/b4;->v(Lcom/google/android/gms/internal/firebase-auth-api/y4;)V

    :goto_0
    return v2

    :pswitch_data_0
    .packed-switch 0x1
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

.method public final h()V
    .locals 4

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/b4;->b:Lcom/google/android/gms/internal/firebase-auth-api/c4;

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/c4;->a:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x24

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unexpected response type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lc1/D;->g(Ljava/lang/String;Z)V

    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/c4;->e(Lcom/google/android/gms/internal/firebase-auth-api/c4;)V

    return-void
.end method

.method public final i(Lcom/google/android/gms/common/api/Status;)V
    .locals 3

    iget-object v0, p1, Lcom/google/android/gms/common/api/Status;->e:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string v2, "MISSING_MFA_PENDING_CREDENTIAL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0x42b9

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    const-string v2, "MISSING_MFA_ENROLLMENT_ID"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0x42ba

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    const-string v2, "INVALID_MFA_PENDING_CREDENTIAL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0x42bb

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    const-string v2, "MFA_ENROLLMENT_NOT_FOUND"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0x42bc

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v2, "ADMIN_ONLY_OPERATION"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0x42bd

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string v2, "UNVERIFIED_EMAIL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0x42be

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :cond_6
    const-string v2, "SECOND_FACTOR_EXISTS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0x42bf

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :cond_7
    const-string v2, "SECOND_FACTOR_LIMIT_EXCEEDED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0x42c0

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :cond_8
    const-string v2, "UNSUPPORTED_FIRST_FACTOR"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0x42c1

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :cond_9
    const-string v2, "EMAIL_CHANGE_NEEDS_VERIFICATION"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0x42c2

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    :cond_a
    :goto_0
    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/b4;->b:Lcom/google/android/gms/internal/firebase-auth-api/c4;

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/c4;->a:I

    const/16 v2, 0x8

    if-eq v0, v2, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/c4;->f:LY1/t;

    if-eqz v0, :cond_b

    invoke-virtual {v0, p1}, LY1/t;->b(Lcom/google/android/gms/common/api/Status;)V

    :cond_b
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/c4;->f(Lcom/google/android/gms/common/api/Status;)V

    return-void

    :cond_c
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/c4;->k:Z

    throw v1
.end method

.method public final l(Lcom/google/android/gms/internal/firebase-auth-api/p4;)V
    .locals 3

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/b4;->b:Lcom/google/android/gms/internal/firebase-auth-api/c4;

    iget p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/c4;->a:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x24

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unexpected response type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lc1/D;->g(Ljava/lang/String;Z)V

    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/c4;->e(Lcom/google/android/gms/internal/firebase-auth-api/c4;)V

    return-void
.end method

.method public final m(Lcom/google/android/gms/internal/firebase-auth-api/D4;)V
    .locals 3

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/b4;->b:Lcom/google/android/gms/internal/firebase-auth-api/c4;

    iget p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/c4;->a:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x24

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unexpected response type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lc1/D;->g(Ljava/lang/String;Z)V

    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/c4;->e(Lcom/google/android/gms/internal/firebase-auth-api/c4;)V

    return-void
.end method

.method public final n(Ljava/lang/String;)V
    .locals 4

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/b4;->b:Lcom/google/android/gms/internal/firebase-auth-api/c4;

    iget p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/c4;->a:I

    const/16 v0, 0x8

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x24

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unexpected response type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lc1/D;->g(Ljava/lang/String;Z)V

    iput-boolean v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/c4;->k:Z

    const/4 p0, 0x0

    throw p0
.end method

.method public final p(LY1/j;)V
    .locals 4

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/b4;->b:Lcom/google/android/gms/internal/firebase-auth-api/c4;

    iget p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/c4;->a:I

    const/16 v0, 0x8

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x24

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unexpected response type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lc1/D;->g(Ljava/lang/String;Z)V

    iput-boolean v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/c4;->k:Z

    const/4 p0, 0x0

    throw p0
.end method

.method public final q(Lcom/google/android/gms/internal/firebase-auth-api/p3;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/b4;->b:Lcom/google/android/gms/internal/firebase-auth-api/c4;

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/c4;->j:Lcom/google/android/gms/internal/firebase-auth-api/p3;

    const-string p1, "REQUIRES_SECOND_FACTOR_AUTH"

    invoke-static {p1}, Lf1/a;->t0(Ljava/lang/String;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/c4;->f(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method public final u()V
    .locals 4

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/b4;->b:Lcom/google/android/gms/internal/firebase-auth-api/c4;

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/c4;->a:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x24

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unexpected response type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lc1/D;->g(Ljava/lang/String;Z)V

    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/c4;->e(Lcom/google/android/gms/internal/firebase-auth-api/c4;)V

    return-void
.end method

.method public final v(Lcom/google/android/gms/internal/firebase-auth-api/y4;)V
    .locals 4

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/b4;->b:Lcom/google/android/gms/internal/firebase-auth-api/c4;

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/c4;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x25

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unexpected response type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lc1/D;->g(Ljava/lang/String;Z)V

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/c4;->g:Lcom/google/android/gms/internal/firebase-auth-api/y4;

    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/c4;->e(Lcom/google/android/gms/internal/firebase-auth-api/c4;)V

    return-void
.end method
