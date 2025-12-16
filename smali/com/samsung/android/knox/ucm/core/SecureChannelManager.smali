.class public Lcom/samsung/android/knox/ucm/core/SecureChannelManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BUNDLE_EXTRA_SCP_ENCRYPTION:Ljava/lang/String; = "scp_encryption"

.field public static final BUNDLE_EXTRA_SCP_KEY_ID:Ljava/lang/String; = "scp_key_id"

.field public static final BUNDLE_EXTRA_SCP_KEY_LENGTH:Ljava/lang/String; = "scp_key_length"

.field public static final BUNDLE_EXTRA_SCP_KEY_PARAM_DH_G:Ljava/lang/String; = "scp_key_agreement_param_dh_g"

.field public static final BUNDLE_EXTRA_SCP_KEY_PARAM_DH_P:Ljava/lang/String; = "scp_key_agreement_param_dh_p"

.field public static final BUNDLE_EXTRA_SCP_KEY_PARAM_ECC:Ljava/lang/String; = "scp_key_agreement_param_ecc"

.field public static final BUNDLE_EXTRA_SCP_KEY_VERSION:Ljava/lang/String; = "scp_key_version"

.field public static final BUNDLE_EXTRA_SCP_MAC:Ljava/lang/String; = "scp_mac"

.field public static final BUNDLE_EXTRA_SCP_PROTOCOL:Ljava/lang/String; = "scp_protocol"

.field public static final BUNDLE_SCP_KEY_PARAM_ECC_FRP_P256:I = 0x40

.field public static final BUNDLE_SCP_KEY_PARAM_ECC_NIST_P256:I = 0x0

.field public static final ERROR_APDU_PARSING:I = 0x34

.field public static final ERROR_CA_CERT_NOT_FOUND:I = 0x37

.field public static final ERROR_CHANNEL_NOT_FOUND:I = 0x35

.field public static final ERROR_DEVICE_COMPROMISED:I = 0x3e

.field public static final ERROR_INTERNAL:I = 0x32

.field public static final ERROR_INTERNAL_CRYPTO_FAILED:I = 0x39

.field public static final ERROR_INVALID_MESSAGE_TYPE:I = 0x40

.field public static final ERROR_INVALID_PERMISSION:I = 0x41

.field public static final ERROR_INVALID_PROTOCOL:I = 0x3f

.field public static final ERROR_INVALID_SD_CERT:I = 0x3b

.field public static final ERROR_INVALID_SD_MAC:I = 0x3d

.field public static final ERROR_INVALID_SD_RECEIPT:I = 0x3c

.field public static final ERROR_NOT_SUPPORTED_CURVE:I = 0x3a

.field public static final ERROR_NO_INTERNAL_MEMORY:I = 0x36

.field public static final ERROR_SD_CERT_NOT_FOUND:I = 0x38

.field public static final ERROR_TLV_PARSING:I = 0x33

.field public static final ERROR_TZ_APP_CONNECTION_FAILED:I = 0x42

.field public static final MESSAGE_TYPE_COMMAND:I = 0xc8

.field public static final MESSAGE_TYPE_FORWARD_TO_SD:I = 0x190

.field public static final MESSAGE_TYPE_PROCESSING_COMPLETED:I = 0x191

.field public static final MESSAGE_TYPE_RESPONSE:I = 0xc9

.field public static final MESSAGE_TYPE_SECURE_CHANNEL:I = 0xca

.field public static final PROTOCOL_TYPE_SCP11A:I = 0x64

.field public static final PROTOCOL_TYPE_SCP11B:I = 0x65

.field public static final PROTOCOL_TYPE_SCP_CUSTOM:I = 0x66

.field public static final PROTOCOL_TYPE_SCP_OTHER:I = 0x67

.field public static final STATUS_FAILURE:I = 0x1

.field public static final STATUS_SC_CONSTRUCTED:I = 0x12c

.field public static final STATUS_SC_REQUIRED:I = 0x12d

.field public static final STATUS_SUCCESS:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getInstance()Lcom/samsung/android/knox/ucm/core/SecureChannelManager;
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public createSecureChannel(ILandroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ApduMessage;
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Stub!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public destroySecureChannel()I
    .locals 1

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public processMessage(I[B)Lcom/samsung/android/knox/ucm/core/ApduMessage;
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Stub!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
