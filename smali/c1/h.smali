.class public final Lc1/h;
.super Lc1/c;
.source "SourceFile"


# instance fields
.field public final g:Landroid/os/IBinder;

.field public final synthetic h:Lc1/k;


# direct methods
.method public constructor <init>(Lc1/k;ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lc1/h;->h:Lc1/k;

    invoke-direct {p0, p1, p2, p4}, Lc1/c;-><init>(Lc1/k;ILandroid/os/Bundle;)V

    iput-object p3, p0, Lc1/h;->g:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final b(LZ0/a;)V
    .locals 0

    iget-object p0, p0, Lc1/h;->h:Lc1/k;

    iget-object p0, p0, Lc1/k;->n:Lc1/w;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lc1/w;->c:Ljava/lang/Object;

    check-cast p0, La1/f;

    invoke-interface {p0, p1}, La1/f;->s(LZ0/a;)V

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    return-void
.end method

.method public final d()Z
    .locals 5

    const-string v0, "GmsClient"

    iget-object v1, p0, Lc1/h;->g:Landroid/os/IBinder;

    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v1}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p0, p0, Lc1/h;->h:Lc1/k;

    invoke-virtual {p0}, Lc1/k;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lc1/k;->i()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x22

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "service descriptor mismatch: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " vs. "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    invoke-virtual {p0, v1}, Lc1/k;->c(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v1, 0x2

    const/4 v3, 0x4

    invoke-static {p0, v1, v3, v0}, Lc1/k;->n(Lc1/k;IILandroid/os/IInterface;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x3

    invoke-static {p0, v1, v3, v0}, Lc1/k;->n(Lc1/k;IILandroid/os/IInterface;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lc1/k;->q:LZ0/a;

    iget-object p0, p0, Lc1/k;->m:Lc1/w;

    if-eqz p0, :cond_2

    iget-object p0, p0, Lc1/w;->c:Ljava/lang/Object;

    check-cast p0, La1/e;

    invoke-interface {p0}, La1/e;->q()V

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    return v2

    :catch_0
    const-string p0, "service probably died"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method
