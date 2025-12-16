.class public Lcom/samsung/android/knox/container/KnoxContainerManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ACTION_CONTAINER_ADMIN_LOCK:Ljava/lang/String; = "com.samsung.android.knox.intent.action.CONTAINER_ADMIN_LOCK"

.field public static final ACTION_CONTAINER_CREATION_STATUS:Ljava/lang/String; = "com.samsung.android.knox.intent.action.CONTAINER_CREATION_STATUS"

.field public static final ACTION_CONTAINER_REMOVED:Ljava/lang/String; = "com.samsung.android.knox.intent.action.CONTAINER_REMOVED"

.field public static final ACTION_CONTAINER_STATE_CHANGED:Ljava/lang/String; = "com.samsung.android.knox.intent.action.CONTAINER_STATE_CHANGED"

.field public static final CONTAINER_ACTIVE:I = 0x5b

.field public static final CONTAINER_CREATION_FAILED_SPECIFIC_ERROR_TYPE:Ljava/lang/String; = "specificErrorCode"

.field public static final CONTAINER_CREATION_IN_PROGRESS:I = 0x5d

.field public static final CONTAINER_CREATION_REQUEST_ID:Ljava/lang/String; = "requestId"

.field public static final CONTAINER_CREATION_STATUS_CODE:Ljava/lang/String; = "code"

.field public static final CONTAINER_DOESNT_EXISTS:I = -0x1

.field public static final CONTAINER_ID:Ljava/lang/String; = "containerid"

.field public static final CONTAINER_INACTIVE:I = 0x5a

.field public static final CONTAINER_LAYOUT_TYPE_CLASSIC:I = 0x2

.field public static final CONTAINER_LAYOUT_TYPE_FOLDER:I = 0x1

.field public static final CONTAINER_LOCKED:I = 0x5f

.field public static final CONTAINER_NEW_STATE:Ljava/lang/String; = "container_new_state"

.field public static final CONTAINER_OLD_STATE:Ljava/lang/String; = "container_old_state"

.field public static final CONTAINER_REMOVE_IN_PROGRESS:I = 0x5e

.field public static final ERROR_ADMIN_ACTIVATION_FAILED:I = -0x3f1

.field public static final ERROR_ADMIN_INSTALLATION_FAILED:I = -0x3f0

.field public static final ERROR_CONTAINER_MODE_CREATION_FAILED_BYOD_NOT_ALLOWED:I = -0x3ff

.field public static final ERROR_CONTAINER_MODE_CREATION_FAILED_CONTAINER_EXIST:I = -0x3fd

.field public static final ERROR_CONTAINER_MODE_CREATION_FAILED_KIOSK_ON_OWNER_EXIST:I = -0x3fe

.field public static final ERROR_CONTAINER_TYPE_NOT_ALLOWED:I = -0x270f

.field public static final ERROR_CREATION_ALREADY_IN_PROGRESS:I = -0x3f8

.field public static final ERROR_CREATION_CANCELLED:I = -0x3f9

.field public static final ERROR_CREATION_FAILED_CONTAINER_MODE_EXIST:I = -0x3fc

.field public static final ERROR_CREATION_FAILED_EMERGENCY_MODE:I = -0x407

.field public static final ERROR_CREATION_FAILED_GENERATE_CMK:I = -0x40a

.field public static final ERROR_CREATION_FAILED_INVALID_KNOX_CONFIGURATION_TYPE:I = -0x406

.field public static final ERROR_CREATION_FAILED_INVALID_PARAM:I = -0x402

.field public static final ERROR_CREATION_FAILED_INVALID_PARAM_LIST:I = -0x405

.field public static final ERROR_CREATION_FAILED_INVALID_USER_INFO:I = -0x408

.field public static final ERROR_CREATION_FAILED_RESERVED_CONFIGURATION_TYPE_USED:I = -0x404

.field public static final ERROR_CREATION_FAILED_SUB_USER:I = -0x403

.field public static final ERROR_CREATION_FAILED_TIMA_DISABLED:I = -0x3fa

.field public static final ERROR_CREATION_FAILED_TIMA_PWD_KEY:I = -0x409

.field public static final ERROR_DOES_NOT_EXIST:I = -0x4b2

.field public static final ERROR_FILESYSTEM_ERROR:I = -0x3f3

.field public static final ERROR_INTERNAL_ERROR:I = -0x3f6

.field public static final ERROR_INVALID_PASSWORD_RESET_TOKEN:I = -0x401

.field public static final ERROR_MAX_LIMIT_REACHED:I = -0x3f4

.field public static final ERROR_NO_ADMIN_APK:I = -0x3ec

.field public static final ERROR_NO_CONFIGURATION_TYPE:I = -0x3ed

.field public static final ERROR_PLATFORM_VERSION_MISMATCH_IN_CONFIGURATION_TYPE:I = -0x3fb

.field public static final ERROR_SDP_NOTSUPPORTED:I = -0x400

.field public static final INTENT_BUNDLE:Ljava/lang/String; = "intent"

.field public static final MAX_CONTAINERS:I = 0x2

.field public static final REMOVE_CONTAINER_SUCCESS:I = 0x0

.field public static final TZ_COMMON_CLOSE_COMMUNICATION_ERROR:I = -0x10002

.field public static final TZ_COMMON_COMMUNICATION_ERROR:I = -0x10001

.field public static final TZ_COMMON_INIT_ERROR:I = -0x1000a

.field public static final TZ_COMMON_INIT_ERROR_TAMPER_FUSE_FAIL:I = -0x1000c

.field public static final TZ_COMMON_INIT_MSR_MISMATCH:I = -0x1000d

.field public static final TZ_COMMON_INIT_MSR_MODIFIED:I = -0x1000e

.field public static final TZ_COMMON_INIT_UNINITIALIZED_SECURE_MEM:I = -0x1000b

.field public static final TZ_COMMON_INTERNAL_ERROR:I = -0x10005

.field public static final TZ_COMMON_NULL_POINTER_EXCEPTION:I = -0x10006

.field public static final TZ_COMMON_RESPONSE_REQUEST_MISMATCH:I = -0x10003

.field public static final TZ_COMMON_UNDEFINED_ERROR:I = -0x10007

.field public static final TZ_KEYSTORE_ERROR:I = -0x1

.field public static final TZ_KEYSTORE_INIT_FAILED:I = -0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static addConfigurationType(Landroid/content/Context;Lcom/samsung/android/knox/container/KnoxConfigurationType;)Z
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Stub!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createContainer(Lcom/samsung/android/knox/container/CreationParams;)I
    .locals 1

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createContainer(Ljava/lang/String;)I
    .locals 1

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createContainer(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Stub!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static doSelfUninstall()V
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getConfigurationType(I)Lcom/samsung/android/knox/container/KnoxConfigurationType;
    .locals 1

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getConfigurationTypeByName(Ljava/lang/String;)Lcom/samsung/android/knox/container/KnoxConfigurationType;
    .locals 1

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getConfigurationTypes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/container/KnoxConfigurationType;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getContainers()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static removeConfigurationType(Ljava/lang/String;)Z
    .locals 1

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static removeContainer(I)I
    .locals 1

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getAPMPolicy()Lcom/samsung/android/knox/devicesecurity/APMPolicy;
    .locals 1

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getAdvancedRestrictionPolicy()Lcom/samsung/android/knox/restriction/AdvancedRestrictionPolicy;
    .locals 1

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getApplicationPolicy()Lcom/samsung/android/knox/application/ApplicationPolicy;
    .locals 1

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getAuditLogPolicy()Lcom/samsung/android/knox/log/AuditLog;
    .locals 1

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getBasePasswordPolicy()Lcom/samsung/android/knox/container/BasePasswordPolicy;
    .locals 1

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getBootBanner()Lcom/samsung/android/knox/lockscreen/BootBanner;
    .locals 1

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getBrowserPolicy()Lcom/samsung/android/knox/browser/BrowserPolicy;
    .locals 1

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getCertificatePolicy()Lcom/samsung/android/knox/keystore/CertificatePolicy;
    .locals 1

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getCertificateProvisioning()Lcom/samsung/android/knox/keystore/CertificateProvisioning;
    .locals 1

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getClientCertificateManagerPolicy()Lcom/samsung/android/knox/keystore/ClientCertificateManager;
    .locals 1

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getContainerConfigurationPolicy()Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;
    .locals 1

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getDLPManagerPolicy()Lcom/samsung/android/knox/dlp/DLPManagerPolicy;
    .locals 1

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getDateTimePolicy()Lcom/samsung/android/knox/datetime/DateTimePolicy;
    .locals 1

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getDeviceAccountPolicy()Lcom/samsung/android/knox/accounts/DeviceAccountPolicy;
    .locals 1

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getDualDARPolicy()Lcom/samsung/android/knox/ddar/DualDARPolicy;
    .locals 1

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getEmailAccountPolicy()Lcom/samsung/android/knox/accounts/EmailAccountPolicy;
    .locals 1

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getEmailPolicy()Lcom/samsung/android/knox/accounts/EmailPolicy;
    .locals 1

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getEnterpriseBillingPolicy()Lcom/samsung/android/knox/net/billing/EnterpriseBillingPolicy;
    .locals 1

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getEnterpriseCertEnrollPolicy(Ljava/lang/String;)Lcom/samsung/android/knox/keystore/EnterpriseCertEnrollPolicy;
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Stub!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getExchangeAccountPolicy()Lcom/samsung/android/knox/accounts/ExchangeAccountPolicy;
    .locals 1

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getFirewall()Lcom/samsung/android/knox/net/firewall/Firewall;
    .locals 1

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getGeofencing()Lcom/samsung/android/knox/location/Geofencing;
    .locals 1

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getKioskMode()Lcom/samsung/android/knox/kiosk/KioskMode;
    .locals 1

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getLDAPAccountPolicy()Lcom/samsung/android/knox/accounts/LDAPAccountPolicy;
    .locals 1

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getLocationPolicy()Lcom/samsung/android/knox/location/LocationPolicy;
    .locals 1

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getNetworkAnalytics()Lcom/samsung/android/knox/net/nap/NetworkAnalytics;
    .locals 1

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getPasswordPolicy()Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;
    .locals 1

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getRCPPolicy()Lcom/samsung/android/knox/container/RCPPolicy;
    .locals 1

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getRestrictionPolicy()Lcom/samsung/android/knox/restriction/RestrictionPolicy;
    .locals 1

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getStatus()I
    .locals 1

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getUCMManager()Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;
    .locals 1

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getWifiPolicy()Lcom/samsung/android/knox/net/wifi/WifiPolicy;
    .locals 1

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public lock()Z
    .locals 1

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public unlock()Z
    .locals 1

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
