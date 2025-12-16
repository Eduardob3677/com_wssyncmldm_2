.class public final Lm1/f;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# instance fields
.field public final synthetic a:Lu1/i;


# direct methods
.method public constructor <init>(Lu1/i;)V
    .locals 0

    iput-object p1, p0, Lm1/f;->a:Lu1/i;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string p1, "com.google.android.gms.auth.api.phone.internal.ISmsRetrieverResultCallback"

    invoke-virtual {p0, p0, p1}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2

    const v0, 0xffffff

    const/4 v1, 0x0

    if-le p1, v0, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p3

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/os/Binder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    move p3, v1

    :goto_0
    const/4 p4, 0x1

    if-eqz p3, :cond_1

    return p4

    :cond_1
    if-ne p1, p4, :cond_4

    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    sget p3, Lm1/b;->a:I

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    const/4 v0, 0x0

    if-nez p3, :cond_2

    move-object p1, v0

    goto :goto_1

    :cond_2
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Parcelable;

    :goto_1
    check-cast p1, Lcom/google/android/gms/common/api/Status;

    iget p2, p1, Lcom/google/android/gms/common/api/Status;->d:I

    iget-object p0, p0, Lm1/f;->a:Lu1/i;

    if-gtz p2, :cond_3

    invoke-virtual {p0, v0}, Lu1/i;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    new-instance p2, LW1/h;

    invoke-direct {p2, p1}, LW1/h;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {p0, p2}, Lu1/i;->a(Ljava/lang/Exception;)V

    :goto_2
    move v1, p4

    :cond_4
    return v1
.end method
