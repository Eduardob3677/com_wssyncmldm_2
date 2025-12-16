.class public interface abstract Landroid/os/IUpdateEngine;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IUpdateEngine$_Parcel;,
        Landroid/os/IUpdateEngine$Stub;,
        Landroid/os/IUpdateEngine$Default;
    }
.end annotation


# virtual methods
.method public abstract allocateSpaceForPayload(Ljava/lang/String;[Ljava/lang/String;)J
.end method

.method public abstract applyPayload(Ljava/lang/String;JJ[Ljava/lang/String;)V
.end method

.method public abstract applyPayloadFd(Landroid/os/ParcelFileDescriptor;JJ[Ljava/lang/String;)V
.end method

.method public abstract bind(Landroid/os/IUpdateEngineCallback;)Z
.end method

.method public abstract cancel()V
.end method

.method public abstract cleanupSuccessfulUpdate(Landroid/os/IUpdateEngineCallback;)V
.end method

.method public abstract resetShouldSwitchSlotOnReboot()V
.end method

.method public abstract resetStatus()V
.end method

.method public abstract resume()V
.end method

.method public abstract setShouldSwitchSlotOnReboot(Ljava/lang/String;)V
.end method

.method public abstract suspend()V
.end method

.method public abstract unbind(Landroid/os/IUpdateEngineCallback;)Z
.end method

.method public abstract verifyPayloadApplicable(Ljava/lang/String;)Z
.end method
