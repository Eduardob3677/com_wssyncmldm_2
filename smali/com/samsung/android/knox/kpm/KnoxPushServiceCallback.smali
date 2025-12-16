.class public abstract Lcom/samsung/android/knox/kpm/KnoxPushServiceCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public abstract onRegistrationFinished(Lcom/samsung/android/knox/kpm/KnoxPushServiceResult;)V
.end method

.method public abstract onRegistrationStatus(Lcom/samsung/android/knox/kpm/KnoxPushServiceResult;)V
.end method

.method public abstract onUnRegistrationFinished(Lcom/samsung/android/knox/kpm/KnoxPushServiceResult;)V
.end method
