.class public Lcom/samsung/android/knox/license/EnterpriseLicenseManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ACTION_LICENSE_STATUS:Ljava/lang/String; = "com.samsung.android.knox.intent.action.LICENSE_STATUS"

.field public static final ERROR_ANOTHER_PROCESS_IN_PLACE:I = 0x25a

.field public static final ERROR_INTERNAL:I = 0x12d

.field public static final ERROR_INTERNAL_SERVER:I = 0x191

.field public static final ERROR_INVALID_LICENSE:I = 0xc9

.field public static final ERROR_INVALID_PACKAGE_NAME:I = 0xcc

.field public static final ERROR_LICENSE_TERMINATED:I = 0xcb

.field public static final ERROR_NETWORK_DISCONNECTED:I = 0x1f5

.field public static final ERROR_NETWORK_GENERAL:I = 0x1f6

.field public static final ERROR_NONE:I = 0x0

.field public static final ERROR_NOT_CURRENT_DATE:I = 0xcd

.field public static final ERROR_NULL_PARAMS:I = 0x65

.field public static final ERROR_SIGNATURE_MISMATCH:I = 0xce

.field public static final ERROR_UNKNOWN:I = 0x66

.field public static final ERROR_USER_DISAGREES_LICENSE_AGREEMENT:I = 0x259

.field public static final ERROR_VERSION_CODE_MISMATCH:I = 0xcf

.field public static final EXTRA_LICENSE_ATTESTATION_STATUS:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.LICENSE_ATTESTATION_STATUS"

.field public static final EXTRA_LICENSE_ERROR_CODE:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.LICENSE_ERROR_CODE"

.field public static final EXTRA_LICENSE_GRANTED_PERMISSIONS:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.LICENSE_GRANTED_PERMISSIONS"

.field public static final EXTRA_LICENSE_RESULT_TYPE:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.LICENSE_RESULT_TYPE"

.field public static final EXTRA_LICENSE_STATUS:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.LICENSE_STATUS"

.field public static final LICENSE_LOG_API:Ljava/lang/String; = "api_call"

.field public static final LICENSE_LOG_DATE:Ljava/lang/String; = "log_date"

.field public static final LICENSE_RESULT_TYPE_ACTIVATION:I = 0x320

.field public static final LICENSE_RESULT_TYPE_VALIDATION:I = 0x321

.field public static final STATUS_ATTESTED:I = 0x0

.field public static final STATUS_DEVICE_NOT_SUPPORTED:I = 0x2

.field public static final STATUS_NOT_ATTESTED:I = 0x1

.field public static final STATUS_UNKNOWN_ERROR:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/license/EnterpriseLicenseManager;
    .locals 1

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public activateLicense(Ljava/lang/String;)V
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Stub!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public activateLicense(Ljava/lang/String;Lcom/samsung/android/knox/license/LicenseResultCallback;)V
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Stub!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public activateLicense(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Stub!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public activateLicense(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/license/LicenseResultCallback;)V
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Stub!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getApiCallDataByAdmin(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Stub!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
