.class public Lcom/samsung/android/knox/accounts/HostAuth;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public acceptAllCertificates:Z

.field public address:Ljava/lang/String;

.field public domain:Ljava/lang/String;

.field public id:I

.field public login:Ljava/lang/String;

.field public password:Ljava/lang/String;

.field public port:I

.field public protocol:Ljava/lang/String;

.field public useSSL:Z

.field public useTLS:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
