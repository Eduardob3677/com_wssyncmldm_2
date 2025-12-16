.class public abstract Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field public static final ACTION_UCM_PLUGIN_STATUS:Ljava/lang/String; = "com.samsung.android.knox.intent.action.UCM_PLUGIN_STATUS"

.field public static final ADMIN_UID:Ljava/lang/String; = "adminUid"

.field public static final ALIASES:Ljava/lang/String; = "aliases"

.field public static final ALLOWED_PACKAGES:Ljava/lang/String; = "allowed_packages"

.field public static final ALLOW_ALL:I = 0x1

.field public static final AUTH_ALPHA_NUMERIC:I = 0x1

.field public static final AUTH_MAX_COUNT:Ljava/lang/String; = "maxAuthCnt"

.field public static final AUTH_MODE:Ljava/lang/String; = "authMode"

.field public static final AUTH_NUMERIC:I = 0x0

.field public static final AUTH_UNKNOWN:I = -0x1

.field public static final BLOCK_ALL:I = 0x2

.field public static final BUNDLE_EXTRA_ADD_PIN_CACHE_EXEMPTLIST:Ljava/lang/String; = "add_pin_cache_exemptlist"

.field public static final BUNDLE_EXTRA_APPLET_INSTALLATION_STATUS:Ljava/lang/String; = "applet_installation_status"

.field public static final BUNDLE_EXTRA_PIN_CACHE:Ljava/lang/String; = "pin_cache"

.field public static final BUNDLE_EXTRA_PIN_CACHE_TIMEOUT_MINUTES:Ljava/lang/String; = "timeout"

.field public static final BUNDLE_EXTRA_REMOVE_PIN_CACHE_EXEMPTLIST:Ljava/lang/String; = "remove_pin_cache_exemptlist"

.field public static final CS_NAME:Ljava/lang/String; = "csName"

.field public static final ERROR_ALIAS_NOT_FOUND:I = 0x11

.field public static final ERROR_APDU_CREATION:I = 0x1000100

.field public static final ERROR_APPLET_INSTALL_LOCATION:I = 0x19

.field public static final ERROR_APPLET_UNKNOWN:I = 0x8000000

.field public static final ERROR_BAD_APPLET_RESPONSE:I = 0x1000200

.field public static final ERROR_BAD_PADDING_EXCEPTION:I = 0x10b

.field public static final ERROR_CANNOT_CHANGE_ODE_CONFIGURATION:I = 0xc000300

.field public static final ERROR_CERTFACTORY_INSTANCE_NOT_FOUND:I = 0xc

.field public static final ERROR_CERTIFICATE_ENCODING_EXCEPTION:I = 0x106

.field public static final ERROR_CERTIFICATE_EXCEPTION:I = 0x105

.field public static final ERROR_CIPHER_INSTANCE_NOT_FOUND:I = 0xb

.field public static final ERROR_CORRUPTED_CS_RESPONSE:I = 0x17

.field public static final ERROR_CREDENTIAL_STORAGE_ACCESS_DENIED_BY_ADMIN_POLICY:I = 0xf

.field public static final ERROR_CRYPTO_ENGINE_EXCEPTION:I = 0x101

.field public static final ERROR_EMPTY_CERTIFICATE_CHAIN:I = 0x9

.field public static final ERROR_EMPTY_PARAMETER:I = 0x10

.field public static final ERROR_ESECOMM_TRANSMIT_FAILURE:I = 0x15

.field public static final ERROR_FAILED_TO_GET_READER_FOR_STORAGE:I = 0x2000502

.field public static final ERROR_FILE_NOT_FOUND_EXCEPTION:I = 0x10e

.field public static final ERROR_GET_READERS_ILLEGAL_STATE_EXCEPTION:I = 0x2000102

.field public static final ERROR_GET_READERS_NULL_POINTER_EXCEPTION:I = 0x2000101

.field public static final ERROR_ILLEGAL_BLOCK_SIZE_EXCEPTION:I = 0x10c

.field public static final ERROR_INCORRECT_CARD:I = 0x24

.field public static final ERROR_INCORRECT_PIN:I = 0x20

.field public static final ERROR_INCORRECT_PUK:I = 0x21

.field public static final ERROR_INTERNAL_COMMUNICATION:I = 0x1000400

.field public static final ERROR_INTERNAL_UCM_FRMWK_END:I = 0x1fff

.field public static final ERROR_INTERNAL_UCM_FRMWK_START:I = 0x1000

.field public static final ERROR_INVALID_ALGORTHM_PARAMETER_EXCEPTION:I = 0x103

.field public static final ERROR_INVALID_INPUT:I = 0x4

.field public static final ERROR_INVALID_KEY_SPEC_EXCEPTION:I = 0x107

.field public static final ERROR_INVALID_ODE_CONFIGURATION:I = 0xc000200

.field public static final ERROR_IO_EXCEPTION:I = 0x10d

.field public static final ERROR_KEYSTORE_ENTRY_NOT_FOUND:I = 0x8

.field public static final ERROR_KEYSTORE_EXCEPTION:I = 0x10a

.field public static final ERROR_KEYSTORE_TYPE:I = 0x7

.field public static final ERROR_MISSING_DEPENDENCY:I = 0x25

.field public static final ERROR_NONE:I = 0x0

.field public static final ERROR_NON_UCS_PLUGINSPI:I = 0x13

.field public static final ERROR_NO_ADAPTER_FOUND:I = 0x18

.field public static final ERROR_NO_ADAPTER_RESPONSE:I = 0x14

.field public static final ERROR_NO_PLUGIN_AGENT_FOUND:I = 0xe

.field public static final ERROR_NO_PLUGIN_RESPONSE:I = 0xd

.field public static final ERROR_NO_SESSION_AVAILABLE:I = 0x2000501

.field public static final ERROR_NO_SUCH_ALGORITHM_EXCEPTION:I = 0x102

.field public static final ERROR_NO_SUCH_PROVIDER_EXCEPTION:I = 0x108

.field public static final ERROR_OMA_TRANSMIT_FAILURE:I = 0x16

.field public static final ERROR_OPEN_LOGICAL_CHANNEL_ILLEGAL_ARGUMENT_EXCEPTION:I = 0x2000303

.field public static final ERROR_OPEN_LOGICAL_CHANNEL_ILLEGAL_STATE_EXCEPTION:I = 0x2000302

.field public static final ERROR_OPEN_LOGICAL_CHANNEL_IO_EXCEPTION:I = 0x2000301

.field public static final ERROR_OPEN_LOGICAL_CHANNEL_NO_SUCH_ELEMENT_EXCEPTION:I = 0x2000305

.field public static final ERROR_OPEN_LOGICAL_CHANNEL_SECURITY_EXCEPTION:I = 0x2000304

.field public static final ERROR_OPEN_LOGICAL_CHANNEL_UNKNOWN:I = 0x2000306

.field public static final ERROR_OPEN_SESSION_IO_EXCEPTION:I = 0x2000201

.field public static final ERROR_OUT_OF_BOUND:I = 0x6

.field public static final ERROR_PLUGIN_ALREADY_USED:I = 0x22

.field public static final ERROR_PRIVATEKEY_ENTRY_NOT_FOUND:I = 0xa

.field public static final ERROR_SCP_CREATE_CHANNEL_FAILED:I = 0x3000003

.field public static final ERROR_SCP_DECRYPTION_FAILED:I = 0x3000002

.field public static final ERROR_SCP_ENCRYPTION_FAILED:I = 0x3000001

.field public static final ERROR_SCP_NULL_RESPONSE_RECV:I = 0x3000004

.field public static final ERROR_SCP_UNKNOWN:I = 0x3000000

.field public static final ERROR_SHORT_BUFFER_EXCEPTION:I = 0x104

.field public static final ERROR_SMARTCARD_UNAVAILABLE:I = 0x1000300

.field public static final ERROR_STORAGE_FULL:I = 0x5

.field public static final ERROR_TRANSMIT_ILLEGAL_ARGUMENT_EXCEPTION:I = 0x2000403

.field public static final ERROR_TRANSMIT_ILLEGAL_STATE_EXCEPTION:I = 0x2000402

.field public static final ERROR_TRANSMIT_IO_EXCEPTION:I = 0x2000401

.field public static final ERROR_TRANSMIT_NULL_POINTER_EXCEPTION:I = 0x2000405

.field public static final ERROR_TRANSMIT_SECURITY_EXCEPTION:I = 0x2000404

.field public static final ERROR_TRANSMIT_UNKNOWN:I = 0x2000406

.field public static final ERROR_UNDEFINED_EXCEPTION:I = 0x10f

.field public static final ERROR_UNKNOWN:I = 0x12

.field public static final ERROR_UNREADABLE_ODE_CONFIGURATION:I = 0xc000100

.field public static final ERROR_UNRECOVERABLE_KEY_EXCEPTION:I = 0x109

.field public static final ERROR_UNRECOVERABLE_STATE:I = 0x23

.field public static final ERROR_UNSUPPORTED_ALGORITHM:I = 0x2

.field public static final ERROR_UNSUPPORTED_OPERATION:I = 0x3

.field public static final ERROR_UNSUPPORTED_PARAMETER:I = 0x1

.field public static final EVENT_ADMIN_LICENSE_EXPIRED:I = 0xd

.field public static final EVENT_ADMIN_LICENSE_RENEWED:I = 0xe

.field public static final EVENT_BOOT_COMPLETED:I = 0x11

.field public static final EVENT_CONTAINER_LOCKED:I = 0x14

.field public static final EVENT_CONTAINER_UNLOCKED:I = 0x15

.field public static final EVENT_DEVICE_LOCKED:I = 0xf

.field public static final EVENT_DEVICE_UNLOCKED:I = 0x10

.field public static final EVENT_FACTORY_RESET:I = 0x65

.field public static final EVENT_KEYGUARD_SET:I = 0x12

.field public static final EVENT_KEYGUARD_UNSET:I = 0x13

.field public static final EVENT_PACKAGE_UNINSTALL:I = 0xc

.field public static final EVENT_PLUGIN_UNMANAGED:I = 0xa

.field public static final EVENT_USER_REMOVED:I = 0xb

.field public static final LOCK_STATE:Ljava/lang/String; = "state"

.field public static final MAX_PIN_LENGTH:Ljava/lang/String; = "maxPinLength"

.field public static final MAX_PUK_LENGTH:Ljava/lang/String; = "maxPukLength"

.field public static final MIN_PIN_LENGTH:Ljava/lang/String; = "minPinLength"

.field public static final MIN_PUK_LENGTH:Ljava/lang/String; = "minPukLength"

.field public static final MISC_INFO:Ljava/lang/String; = "miscInfo"

.field public static final PACKAGE_ACCESS_TYPE:Ljava/lang/String; = "package_access_type"

.field public static final PACKAGE_UID:Ljava/lang/String; = "packageUid"

.field public static final PARTIALLY:I = 0x3

.field public static final PIN_CACHE_KEYGUARD_TIMEOUT:I = 0x2

.field public static final PIN_CACHE_TIMEOUT:I = 0x1

.field public static final PLUGIN_BOOLEAN_RESPONSE:Ljava/lang/String; = "booleanresponse"

.field public static final PLUGIN_BUNDLE_RESPONSE:Ljava/lang/String; = "bundleresponse"

.field public static final PLUGIN_BYTEARRAY_RESPONSE:Ljava/lang/String; = "bytearrayresponse"

.field public static final PLUGIN_ERROR_CODE:Ljava/lang/String; = "errorresponse"

.field public static final PLUGIN_INT_RESPONSE:Ljava/lang/String; = "intresponse"

.field public static final PLUGIN_STRINGARRAY_RESPONSE:Ljava/lang/String; = "stringarrayresponse"

.field public static final PLUGIN_STRING_RESPONSE:Ljava/lang/String; = "stringresponse"

.field public static final REMAIN_COUNT:Ljava/lang/String; = "remainCnt"

.field public static final REQUEST_ID:Ljava/lang/String; = "request_id"

.field public static final STATE_BLOCKED:I = 0x85

.field public static final STATE_LOCKED:I = 0x84

.field public static final STATE_UNKNOWN:I = -0x1

.field public static final STATE_UNLOCKED:I = 0x83

.field public static final STATUS_CODE:Ljava/lang/String; = "status_code"

.field public static final USER_ID:Ljava/lang/String; = "userId"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public abstract APDUCommand([BLandroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public abstract changePin(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
.end method

.method public abstract configureCredentialStoragePlugin(ILandroid/os/Bundle;I)Landroid/os/Bundle;
.end method

.method public abstract generateDek()Landroid/os/Bundle;
.end method

.method public abstract generateKeyguardPassword(ILandroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public abstract generateWrappedDek()Landroid/os/Bundle;
.end method

.method public abstract getCredentialStoragePluginConfiguration(I)Landroid/os/Bundle;
.end method

.method public abstract getCredentialStorageProperty(IILandroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public abstract getDek()Landroid/os/Bundle;
.end method

.method public abstract getDetailErrorMessage(I)Ljava/lang/String;
.end method

.method public abstract getInfo()Landroid/os/Bundle;
.end method

.method public final getProvider()Ljava/security/Provider;
    .locals 1

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract getStatus()Landroid/os/Bundle;
.end method

.method public abstract notifyChange(ILandroid/os/Bundle;)I
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Stub!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract setCredentialStorageProperty(IILandroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public abstract setState(I)Landroid/os/Bundle;
.end method

.method public abstract unwrapDek([B)Landroid/os/Bundle;
.end method

.method public abstract verifyPin(ILjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public abstract verifyPuk(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
.end method
