.class public Lcom/samsung/android/knox/sdp/SdpErrno;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ERROR_ENGINE_ACCESS_DENIED:I = -0x7

.field public static final ERROR_ENGINE_ALREADY_EXISTS:I = -0x4

.field public static final ERROR_ENGINE_LOCKED:I = -0x6

.field public static final ERROR_ENGINE_NOT_EXISTS:I = -0x5

.field public static final ERROR_ENGINE_THROTTLED:I = -0x8

.field public static final ERROR_INTERNAL:I = -0x63

.field public static final ERROR_INVALID_PARAMETER:I = -0x3

.field public static final ERROR_INVALID_PASSWORD:I = -0x1

.field public static final ERROR_INVALID_RESET_TOKEN:I = -0x2

.field public static final ERROR_LICENSE_REQUIRED:I = -0x9

.field public static final ERROR_NOT_SUPPORTED_DEVICE:I = -0xa


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
