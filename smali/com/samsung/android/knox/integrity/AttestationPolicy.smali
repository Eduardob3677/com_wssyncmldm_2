.class public Lcom/samsung/android/knox/integrity/AttestationPolicy;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ACTION_KNOX_ATTESTATION_RESULT:Ljava/lang/String; = "com.samsung.android.knox.intent.action.KNOX_ATTESTATION_RESULT"

.field public static final ERROR_DEVICE_NOT_SUPPORTED:I = -0x3

.field public static final ERROR_INVALID_NONCE:I = -0x5

.field public static final ERROR_MDM_PERMISSION:I = -0x1

.field public static final ERROR_NONE:I = 0x0

.field public static final ERROR_TIMA_INTERNAL:I = -0x2

.field public static final ERROR_UNKNOWN:I = -0x4

.field public static final EXTRA_ATTESTATION_DATA:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.ATTESTATION_DATA"

.field public static final EXTRA_ERROR_MSG:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.ERROR_MSG"

.field public static final EXTRA_NETWORK_ERROR:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.NETWORK_ERROR"

.field public static final EXTRA_RESULT:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.RESULT"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Stub!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public startAttestation(Ljava/lang/String;)V
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Stub!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
