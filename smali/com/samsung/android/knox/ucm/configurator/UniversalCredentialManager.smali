.class public Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ACTION_UCM_CONFIG_STATUS:Ljava/lang/String; = "com.samsung.android.knox.intent.action.UCM_CONFIG_STATUS"

.field public static final ACTION_UCM_KEYGUARD_SET:Ljava/lang/String; = "com.samsung.android.knox.intent.action.UCM_KEYGUARD_SET"

.field public static final ACTION_UCM_KEYGUARD_UNSET:Ljava/lang/String; = "com.samsung.android.knox.intent.action.UCM_KEYGUARD_UNSET"

.field public static final ACTION_UCM_NOTIFY_EVENT:Ljava/lang/String; = "com.samsung.android.knox.intent.action.UCM_NOTIFY_EVENT"

.field public static final ACTION_UCM_REFRESH_AGENT_DONE:Ljava/lang/String; = "com.samsung.android.knox.intent.action.UCM_REFRESH_AGENT_DONE"

.field public static final APPLET_FORM_FACTOR_ESE:Ljava/lang/String; = "eSE"

.field public static final APPLET_FORM_FACTOR_ESE1:Ljava/lang/String; = "eSE1"

.field public static final APPLET_FORM_FACTOR_SD:Ljava/lang/String; = "SD"

.field public static final APPLET_FORM_FACTOR_SD1:Ljava/lang/String; = "SD1"

.field public static final APPLET_FORM_FACTOR_SIM:Ljava/lang/String; = "SIM"

.field public static final APPLET_FORM_FACTOR_SIM1:Ljava/lang/String; = "SIM1"

.field public static final APPLET_FORM_FACTOR_SIM2:Ljava/lang/String; = "SIM2"

.field public static final BUNDLE_CA_CERT_TYPE:Ljava/lang/String; = "cert_type"

.field public static final BUNDLE_EXTRA_ACCESS_TYPE:Ljava/lang/String; = "access_type"

.field public static final BUNDLE_EXTRA_ADD_PIN_CACHE_EXEMPTLIST:Ljava/lang/String; = "add_pin_cache_exemptlist"

.field public static final BUNDLE_EXTRA_ALIAS:Ljava/lang/String; = "alias"

.field public static final BUNDLE_EXTRA_ALLOW_WIFI:Ljava/lang/String; = "allow_wifi"

.field public static final BUNDLE_EXTRA_ENFORCE_LOCK_TYPE_DIRECT_SET:Ljava/lang/String; = "enforce_lock_type_direct_set"

.field public static final BUNDLE_EXTRA_EVENT_ID:Ljava/lang/String; = "event_id"

.field public static final BUNDLE_EXTRA_ODE_CA_CERT:Ljava/lang/String; = "ode_ca_cert"

.field public static final BUNDLE_EXTRA_PACKAGE:Ljava/lang/String; = "package_name"

.field public static final BUNDLE_EXTRA_PIN_CACHE:Ljava/lang/String; = "pin_cache"

.field public static final BUNDLE_EXTRA_PIN_CACHE_TIMEOUT_MINUTES:Ljava/lang/String; = "timeout"

.field public static final BUNDLE_EXTRA_REMOVE_PIN_CACHE_EXEMPTLIST:Ljava/lang/String; = "remove_pin_cache_exemptlist"

.field public static final BUNDLE_EXTRA_REQUEST_ID:Ljava/lang/String; = "request_id"

.field public static final BUNDLE_EXTRA_STATUS_CODE:Ljava/lang/String; = "status_code"

.field public static final BUNDLE_EXTRA_USER_ID:Ljava/lang/String; = "userId"

.field public static final ERROR_UCM_ALIAS_ALREADY_EXIST:I = -0x14

.field public static final ERROR_UCM_ALIAS_EMPTY:I = -0x10

.field public static final ERROR_UCM_ALIAS_NOT_EXIST:I = -0xe

.field public static final ERROR_UCM_APP_SIGNATURE_INVALID:I = -0x12

.field public static final ERROR_UCM_CALLER_NOT_ALLOWED_TO_MANAGE_STORAGE:I = -0x17

.field public static final ERROR_UCM_CALLER_NOT_CONTAINER_OWNER:I = -0x18

.field public static final ERROR_UCM_FAILURE:I = -0x1

.field public static final ERROR_UCM_INSTALL_DELEGATION_NOT_ALLOWED:I = -0x1d

.field public static final ERROR_UCM_INVALID_ACCESS_TYPE:I = -0xf

.field public static final ERROR_UCM_INVALID_AUTH_TYPE:I = -0x11

.field public static final ERROR_UCM_INVALID_CERTIFICATE:I = -0x19

.field public static final ERROR_UCM_INVALID_EXEMPT_TYPE:I = -0x15

.field public static final ERROR_UCM_INVALID_STORAGE_OPTION:I = -0x13

.field public static final ERROR_UCM_KEYGUARD_CONFIGURED:I = -0x1a

.field public static final ERROR_UCM_MISSING_ARGUMENT:I = -0xb

.field public static final ERROR_UCM_PASSWORD_QUALITY_NOT_UNSPECIFIED:I = -0x1c

.field public static final ERROR_UCM_PASSWORD_UNSUPPORTED_STORAGE:I = -0x1b

.field public static final ERROR_UCM_STORAGE_ALREADY_CONFIGURED:I = -0xa

.field public static final ERROR_UCM_STORAGE_DELEGATION_NOT_ALLOWED:I = -0x1e

.field public static final ERROR_UCM_STORAGE_NOT_ENABLED:I = -0xc

.field public static final ERROR_UCM_STORAGE_NOT_MANAGEABLE:I = -0x16

.field public static final ERROR_UCM_STORAGE_NOT_VALID:I = -0xd

.field public static final EVENT_PLUGIN_LICENSE_EXPIRED:I = 0x2

.field public static final EVENT_PLUGIN_UNINSTALLED:I = 0x1

.field public static final PIN_CACHE_KEYGUARD_TIMEOUT:I = 0x2

.field public static final PIN_CACHE_TIMEOUT:I = 0x1

.field public static final RESET_APPLET_FORM_FACTOR:Ljava/lang/String; = "reset"

.field public static final SCP_SD:Ljava/lang/String; = "SCP_SD"

.field public static final UCM_ACCESS_TYPE_CERTIFICATE:I = 0x68

.field public static final UCM_ACCESS_TYPE_INSTALL:I = 0x6b

.field public static final UCM_ACCESS_TYPE_STORAGE:I = 0x67

.field public static final UCM_APPLET_ID:Ljava/lang/String; = "applet_id"

.field public static final UCM_APPLET_INSTALL_LOCATION:Ljava/lang/String; = "applet_location"

.field public static final UCM_AUTH_TYPE_LOCKED:I = 0x64

.field public static final UCM_AUTH_TYPE_NONE:I = 0x69

.field public static final UCM_EXEMPT_TYPE_AUTH:I = 0x6a

.field public static final UCM_SUCCESS:I = 0x0

.field public static final UCM_SUCCESS_KEYGUARD_ALREADY_CONFIGURED:I = 0xa

.field public static final WIFI_VIRTUAL_PACKAGE:Ljava/lang/String; = "com.samsung.knox.virtual.wifi"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static declared-synchronized getUCMManager(Landroid/content/Context;)Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;
    .locals 2

    const-class p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static declared-synchronized getUCMManager(Landroid/content/Context;I)Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;
    .locals 1

    const-class p0, Lcom/samsung/android/knox/ucm/configurator/UniversalCredentialManager;

    monitor-enter p0

    :try_start_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public addPackagesToExemptList(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;ILjava/util/List;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;",
            "I",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/AppIdentity;",
            ">;)I"
        }
    .end annotation

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Stub!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addPackagesToWhiteList(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Ljava/util/List;Landroid/os/Bundle;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/AppIdentity;",
            ">;",
            "Landroid/os/Bundle;",
            ")I"
        }
    .end annotation

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Stub!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public clearWhiteList(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Landroid/os/Bundle;)I
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Stub!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public configureCredentialStorageForODESettings(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Landroid/os/Bundle;)I
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Stub!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public configureCredentialStoragePlugin(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Landroid/os/Bundle;)I
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Stub!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public deleteCACertificate(Ljava/lang/String;)I
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Stub!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public deleteCertificate(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Ljava/lang/String;)I
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Stub!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public enforceCredentialStorageAsLockType(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)I
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Stub!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public enforceCredentialStorageAsLockType(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Landroid/os/Bundle;)I
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Stub!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getAliases(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)[Ljava/lang/String;
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Stub!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getAuthType(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)I
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Stub!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getAvailableCredentialStorages()[Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;
    .locals 1

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getCACertificate(Ljava/lang/String;)Lcom/samsung/android/knox/ucm/configurator/CACertificateInfo;
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Stub!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getCACertificateAliases(Landroid/os/Bundle;)[Ljava/lang/String;
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Stub!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getCredentialStoragePluginConfiguration(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Landroid/os/Bundle;
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Stub!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getCredentialStorageProperty(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Stub!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getCredentialStorages(Ljava/lang/String;)[Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Stub!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getEnforcedCredentialStorageForLockType()Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;
    .locals 1

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getODESettingsConfiguration()Landroid/os/Bundle;
    .locals 1

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getPackagesFromExemptList(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;",
            "I)",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/AppIdentity;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Stub!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getPackagesFromWhiteList(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Landroid/os/Bundle;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/AppIdentity;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Stub!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getSupportedAlgorithms(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)[Ljava/lang/String;
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Stub!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public installCACertificate([BLjava/lang/String;Landroid/os/Bundle;)I
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Stub!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public installCertificate(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;[BLjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Stub!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isCredentialStorageManaged(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Z
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Stub!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public manageCredentialStorage(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Z)I
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Stub!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public removePackagesFromExemptList(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;ILjava/util/List;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;",
            "I",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/AppIdentity;",
            ">;)I"
        }
    .end annotation

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Stub!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public removePackagesFromWhiteList(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Ljava/util/List;Landroid/os/Bundle;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/AppIdentity;",
            ">;",
            "Landroid/os/Bundle;",
            ")I"
        }
    .end annotation

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Stub!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setAuthType(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;I)I
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Stub!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setCredentialStorageProperty(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Stub!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
