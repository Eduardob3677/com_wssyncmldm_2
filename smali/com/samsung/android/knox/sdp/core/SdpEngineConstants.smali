.class public Lcom/samsung/android/knox/sdp/core/SdpEngineConstants;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/sdp/core/SdpEngineConstants$Flags;,
        Lcom/samsung/android/knox/sdp/core/SdpEngineConstants$State;,
        Lcom/samsung/android/knox/sdp/core/SdpEngineConstants$Type;,
        Lcom/samsung/android/knox/sdp/core/SdpEngineConstants$Intent;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
