.class public final Lc1/e;
.super Lcom/google/android/gms/internal/firebase-auth-api/Z;
.source "SourceFile"

# interfaces
.implements Lc1/p;


# instance fields
.field public b:Lc1/k;

.field public final c:I


# direct methods
.method public constructor <init>(Lc1/k;I)V
    .locals 2

    const-string v0, "com.google.android.gms.common.internal.IGmsCallbacks"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/Z;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lc1/e;->b:Lc1/k;

    iput p2, p0, Lc1/e;->c:I

    return-void
.end method


# virtual methods
.method public final f(ILandroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    sget-object v2, Lc1/x;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v2}, Lp1/a;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lc1/x;

    iget-object v2, p0, Lc1/e;->b:Lc1/k;

    const-string v3, "onPostInitCompleteWithConnectionInfo can be called only once per call togetRemoteService"

    invoke-static {v3, v2}, Lc1/D;->f(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p2}, Lc1/D;->e(Ljava/lang/Object;)V

    iget-object v2, p0, Lc1/e;->b:Lc1/k;

    iput-object p2, v2, Lc1/k;->s:Lc1/x;

    iget-object p2, p2, Lc1/x;->c:Landroid/os/Bundle;

    invoke-virtual {p0, p1, v1, p2}, Lc1/e;->w(ILandroid/os/IBinder;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    sget-object p0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p0}, Lp1/a;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    new-instance p0, Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const-string p1, "GmsClient"

    const-string p2, "received deprecated onAccountValidationComplete callback, ignoring"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v2}, Lp1/a;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    invoke-virtual {p0, p1, v1, p2}, Lc1/e;->w(ILandroid/os/IBinder;Landroid/os/Bundle;)V

    :goto_0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0
.end method

.method public final w(ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lc1/e;->b:Lc1/k;

    const-string v1, "onPostInitComplete can be called only once per call to getRemoteService"

    invoke-static {v1, v0}, Lc1/D;->f(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lc1/e;->b:Lc1/k;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lc1/h;

    invoke-direct {v1, v0, p1, p2, p3}, Lc1/h;-><init>(Lc1/k;ILandroid/os/IBinder;Landroid/os/Bundle;)V

    iget-object p1, v0, Lc1/k;->d:Lc1/d;

    const/4 p2, 0x1

    iget p3, p0, Lc1/e;->c:I

    const/4 v0, -0x1

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 p1, 0x0

    iput-object p1, p0, Lc1/e;->b:Lc1/k;

    return-void
.end method
