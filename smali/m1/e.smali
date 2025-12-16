.class public final Lm1/e;
.super Lc1/k;
.source "SourceFile"


# virtual methods
.method public final synthetic c(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string p0, "com.google.android.gms.auth.api.phone.internal.ISmsRetrieverApiService"

    invoke-interface {p1, p0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p0

    instance-of v0, p0, Lm1/c;

    if-eqz v0, :cond_1

    check-cast p0, Lm1/c;

    return-object p0

    :cond_1
    new-instance p0, Lm1/c;

    invoke-direct {p0, p1}, Lm1/c;-><init>(Landroid/os/IBinder;)V

    return-object p0
.end method

.method public final e()[LZ0/c;
    .locals 0

    sget-object p0, Lm1/a;->b:[LZ0/c;

    return-object p0
.end method

.method public final i()Ljava/lang/String;
    .locals 0

    const-string p0, "com.google.android.gms.auth.api.phone.internal.ISmsRetrieverApiService"

    return-object p0
.end method

.method public final j()Ljava/lang/String;
    .locals 0

    const-string p0, "com.google.android.gms.auth.api.phone.service.SmsRetrieverApiService.START"

    return-object p0
.end method
