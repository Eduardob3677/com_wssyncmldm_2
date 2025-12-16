.class public abstract Lc1/a;
.super Lcom/google/android/gms/internal/firebase-auth-api/Z;
.source "SourceFile"

# interfaces
.implements Lc1/o;


# direct methods
.method public static q(Landroid/os/IBinder;)Lc1/o;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.gms.common.internal.IAccountAccessor"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    instance-of v2, v1, Lc1/o;

    if-eqz v2, :cond_1

    check-cast v1, Lc1/o;

    return-object v1

    :cond_1
    new-instance v1, Lc1/n;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/a;-><init>(Landroid/os/IBinder;Ljava/lang/String;I)V

    return-object v1
.end method
