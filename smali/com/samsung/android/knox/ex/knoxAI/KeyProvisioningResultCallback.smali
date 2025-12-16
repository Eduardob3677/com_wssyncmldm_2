.class public abstract Lcom/samsung/android/knox/ex/knoxAI/KeyProvisioningResultCallback;
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
.method public abstract onFinished(Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;)V
.end method
