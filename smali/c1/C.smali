.class public final Lc1/C;
.super Lcom/google/android/gms/internal/firebase-auth-api/a;
.source "SourceFile"

# interfaces
.implements Lc1/p;


# virtual methods
.method public final w(ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 2

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    sget p1, Lp1/a;->a:I

    const/4 p1, 0x1

    const/4 p2, 0x0

    if-nez p3, :cond_0

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p3, v0, p2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p3

    :try_start_0
    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/a;->b:Landroid/os/IBinder;

    invoke-interface {p0, p1, v0, p3, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {p3}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {p3}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {p3}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method
