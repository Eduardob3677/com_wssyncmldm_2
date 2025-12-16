.class public final LZ1/a;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lc1/r;


# instance fields
.field public final synthetic a:Lcom/google/firebase/auth/api/fallback/service/FirebaseAuthFallbackService;


# direct methods
.method public constructor <init>(Lcom/google/firebase/auth/api/fallback/service/FirebaseAuthFallbackService;)V
    .locals 0

    iput-object p1, p0, LZ1/a;->a:Lcom/google/firebase/auth/api/fallback/service/FirebaseAuthFallbackService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string p1, "com.google.android.gms.common.internal.IGmsServiceBroker"

    invoke-virtual {p0, p0, p1}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public final e(Lc1/p;Lc1/j;)V
    .locals 1

    iget-object p2, p2, Lc1/j;->i:Landroid/os/Bundle;

    if-eqz p2, :cond_1

    const-string v0, "com.google.firebase.auth.API_KEY"

    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/K3;

    iget-object p0, p0, LZ1/a;->a:Lcom/google/firebase/auth/api/fallback/service/FirebaseAuthFallbackService;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/K3;-><init>(Lcom/google/firebase/auth/api/fallback/service/FirebaseAuthFallbackService;Ljava/lang/String;)V

    const/4 p0, 0x0

    const/4 p2, 0x0

    invoke-interface {p1, p0, v0, p2}, Lc1/p;->w(ILandroid/os/IBinder;Landroid/os/Bundle;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ApiKey must not be empty."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ExtraArgs is null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4

    const v0, 0xffffff

    if-le p1, v0, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :cond_0
    const-string p4, "com.google.android.gms.common.internal.IGmsServiceBroker"

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    const/4 v0, 0x0

    if-nez p4, :cond_1

    move-object v2, v0

    goto :goto_0

    :cond_1
    const-string v1, "com.google.android.gms.common.internal.IGmsCallbacks"

    invoke-interface {p4, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    instance-of v3, v2, Lc1/p;

    if-eqz v3, :cond_2

    check-cast v2, Lc1/p;

    goto :goto_0

    :cond_2
    new-instance v2, Lc1/C;

    const/4 v3, 0x1

    invoke-direct {v2, p4, v1, v3}, Lcom/google/android/gms/internal/firebase-auth-api/a;-><init>(Landroid/os/IBinder;Ljava/lang/String;I)V

    :goto_0
    const/16 p4, 0x2e

    const/4 v1, 0x1

    if-ne p1, p4, :cond_4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lc1/j;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lc1/j;

    :cond_3
    invoke-virtual {p0, v2, v0}, LZ1/a;->e(Lc1/p;Lc1/j;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :cond_4
    const/16 p0, 0x2f

    if-ne p1, p0, :cond_6

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    if-eqz p0, :cond_5

    sget-object p0, Lc1/E;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    :cond_5
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :cond_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    const/4 p0, 0x4

    if-eq p1, p0, :cond_7

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    :cond_7
    if-eq p1, v1, :cond_b

    const/4 p0, 0x2

    if-eq p1, p0, :cond_a

    const/16 p0, 0x17

    if-eq p1, p0, :cond_a

    const/16 p0, 0x19

    if-eq p1, p0, :cond_a

    const/16 p0, 0x1b

    if-eq p1, p0, :cond_a

    const/16 p0, 0x1e

    if-eq p1, p0, :cond_9

    const/16 p0, 0x22

    if-eq p1, p0, :cond_8

    const/16 p0, 0x29

    if-eq p1, p0, :cond_a

    const/16 p0, 0x2b

    if-eq p1, p0, :cond_a

    const/16 p0, 0x25

    if-eq p1, p0, :cond_a

    const/16 p0, 0x26

    if-eq p1, p0, :cond_a

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    if-eqz p0, :cond_c

    sget-object p0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    goto :goto_1

    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    goto :goto_1

    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    if-eqz p0, :cond_c

    sget-object p0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    goto :goto_1

    :cond_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    goto :goto_1

    :cond_9
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    if-eqz p0, :cond_c

    sget-object p0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    goto :goto_1

    :cond_a
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    if-eqz p0, :cond_c

    sget-object p0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    goto :goto_1

    :cond_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    if-eqz p0, :cond_c

    sget-object p0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    :cond_c
    :goto_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
