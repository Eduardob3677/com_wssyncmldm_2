.class public Lcom/samsung/android/knox/ucm/configurator/CACertificateInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public bundle:Landroid/os/Bundle;

.field public certificate:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/ucm/configurator/CACertificateInfo;->certificate:[B

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
