.class public Lcom/samsung/android/knox/kpcc/KPCCManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DRX_1280_MSEC:I = 0x3

.field public static final DRX_2560_MSEC:I = 0x4

.field public static final DRX_320_MSEC:I = 0x1

.field public static final DRX_640_MSEC:I = 0x2

.field public static final DRX_DEFAULT:I = 0x0

.field public static final ERROR_ADMIN_ALREADY_SET:I = -0x3

.field public static final ERROR_FAIL:I = -0x1

.field public static final ERROR_INVALID_VALUE:I = -0x4

.field public static final ERROR_NOT_SUPPORTED:I = -0x2

.field public static final KEYCODE_EMERGENCY:I = 0x437

.field public static final KEYCODE_PTT:I = 0x3f7

.field public static final OFF:I = 0x0

.field public static final ON:I = 0x1

.field public static final SUCCESS:I


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
.method public allowRestrictedNetworkCapability(ILjava/lang/String;I)I
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Stub!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getDrxValue()I
    .locals 1

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getTelephonyDrxValue()I
    .locals 1

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getUnrestrictedNetworkCapabilities(Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Stub!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setDrxValue(I)I
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Stub!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
