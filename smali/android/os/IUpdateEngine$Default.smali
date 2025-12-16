.class public Landroid/os/IUpdateEngine$Default;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IUpdateEngine;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IUpdateEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public allocateSpaceForPayload(Ljava/lang/String;[Ljava/lang/String;)J
    .locals 0

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public applyPayload(Ljava/lang/String;JJ[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public applyPayloadFd(Landroid/os/ParcelFileDescriptor;JJ[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bind(Landroid/os/IUpdateEngineCallback;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public cancel()V
    .locals 0

    return-void
.end method

.method public cleanupSuccessfulUpdate(Landroid/os/IUpdateEngineCallback;)V
    .locals 0

    return-void
.end method

.method public resetShouldSwitchSlotOnReboot()V
    .locals 0

    return-void
.end method

.method public resetStatus()V
    .locals 0

    return-void
.end method

.method public resume()V
    .locals 0

    return-void
.end method

.method public setShouldSwitchSlotOnReboot(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public suspend()V
    .locals 0

    return-void
.end method

.method public unbind(Landroid/os/IUpdateEngineCallback;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public verifyPayloadApplicable(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
