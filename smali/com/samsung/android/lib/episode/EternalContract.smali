.class public Lcom/samsung/android/lib/episode/EternalContract;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ACTION_SCENE:Ljava/lang/String; = "com.samsung.android.intent.action.SCENE"

.field public static final ACTION_SCENE_LOCAL:Ljava/lang/String; = "com.samsung.android.intent.action.SCENE_LOCAL"

.field public static final APP_DEFAULT:I = 0x1

.field public static final ATTRIBUTE_COMPRESSED_ETERNAL_ITEMS:Ljava/lang/String; = "compressedEternalItems"

.field public static final ATTRIBUTE_DEFAULT_VALUE:Ljava/lang/String; = "defaultValue"

.field public static final ATTRIBUTE_DEVICE_TYPE:Ljava/lang/String; = "sourceInfoDeviceType"

.field public static final ATTRIBUTE_DTD_VERSION:Ljava/lang/String; = "dtd_version"

.field public static final ATTRIBUTE_VERSION:Ljava/lang/String; = "version"

.field public static final BUILD_NUMBER_KEY:Ljava/lang/String; = "/GeneralInfo/BuildNum"

.field public static final CREATE_TIME_KEY:Ljava/lang/String; = "/GeneralInfo/CreatedTime"

.field public static final DEVICE_TYPE_KEY:Ljava/lang/String; = "/GeneralInfo/DeviceType"

.field public static final DEVICE_TYPE_PHONE:Ljava/lang/String; = "phone"

.field public static final DEVICE_TYPE_TABLET:Ljava/lang/String; = "tablet"

.field public static final ERROR_CODE:I = -0x1

.field public static final EXTRA_DEVICE_TYPE:Ljava/lang/String; = "deviceType"

.field public static final EXTRA_DTD_VERSION:Ljava/lang/String; = "dtd_version"

.field public static final EXTRA_ELEMENT_VALUE:Ljava/lang/String; = "value"

.field public static final EXTRA_ENTRIES:Ljava/lang/String; = "entries"

.field public static final EXTRA_EXPECTED_RESULT:Ljava/lang/String; = "expectedResult"

.field public static final EXTRA_FAST_TRACK:Ljava/lang/String; = "fastTrack"

.field public static final EXTRA_KEY_LIST:Ljava/lang/String; = "keyList"

.field public static final EXTRA_MANUFACTURER:Ljava/lang/String; = "manufacturer"

.field public static final EXTRA_ONEUI_VERSION:Ljava/lang/String; = "oneUIVersion"

.field public static final EXTRA_OS_VERSION:Ljava/lang/String; = "OSVersion"

.field public static final EXTRA_PACKAGE_LIST:Ljava/lang/String; = "packageList"

.field public static final EXTRA_REQUEST_FROM:Ljava/lang/String; = "requestFrom"

.field public static final EXTRA_RESTORE_ERROR_TYPE:Ljava/lang/String; = "errorType"

.field public static final EXTRA_SCENE_LIST:Ljava/lang/String; = "sceneList"

.field public static final EXTRA_SCENE_RESULT:Ljava/lang/String; = "sceneResult"

.field public static final EXTRA_SCENE_VALIDATION:Ljava/lang/String; = "sceneValidation"

.field public static final EXTRA_SETTINGS_VALUE:Ljava/lang/String; = "settingsValue"

.field public static final EXTRA_UID:Ljava/lang/String; = "uid"

.field public static final EXTRA_VERSION:Ljava/lang/String; = "version"

.field public static final FROM_ACTION_PROVIDER:I = 0x1

.field public static final FROM_LO:I = 0x1

.field public static final FROM_SAMSUNG:I = 0x0

.field public static final FROM_SMART_SWITCH:I = 0x0

.field public static final FROM_S_CLOUD:I = 0x2

.field public static final FROM_UNKNOWN:I = -0x1

.field public static final INITIAL_OS_VERSION_KEY:Ljava/lang/String; = "/GeneralInfo/InitialOsVersion"

.field public static final METHOD_CONVERT_DATA:Ljava/lang/String; = "convert_data"

.field public static final METHOD_GET_DTD_VER:Ljava/lang/String; = "get_dtd_ver"

.field public static final METHOD_GET_ENTRIES:Ljava/lang/String; = "get_entries"

.field public static final METHOD_GET_KEY_SET:Ljava/lang/String; = "get_label"

.field public static final METHOD_GET_MAPPING_TABLE:Ljava/lang/String; = "get_mapping_table"

.field public static final METHOD_GET_SETTINGS_VALUE:Ljava/lang/String; = "get_settings_value"

.field public static final METHOD_GET_TEST_VALUES:Ljava/lang/String; = "get_test_value"

.field public static final METHOD_GET_UID:Ljava/lang/String; = "get_uid"

.field public static final METHOD_GET_VALUES:Ljava/lang/String; = "get_value"

.field public static final METHOD_GET_VALUE_ALL:Ljava/lang/String; = "get_value_all"

.field public static final METHOD_GET_VERSION:Ljava/lang/String; = "get_version"

.field public static final METHOD_IS_OPENABLE:Ljava/lang/String; = "is_openable"

.field public static final METHOD_IS_SUPPORTED:Ljava/lang/String; = "is_supported"

.field public static final METHOD_OPEN:Ljava/lang/String; = "open"

.field public static final METHOD_SET_VALUES:Ljava/lang/String; = "set_value"

.field public static final METHOD_SET_VALUE_ALL:Ljava/lang/String; = "set_value_all"

.field public static final METHOD_VALIDATE:Ljava/lang/String; = "validate"

.field public static final ONEUI_6_0_0:I = 0xea60

.field public static final ONEUI_6_1_0:I = 0xeac4

.field public static final ONEUI_6_1_1:I = 0xeac5

.field public static final ONE_UI_VERSION_KEY:Ljava/lang/String; = "/GeneralInfo/OneUIVersion"

.field public static final OS_VERSION_DEFAULT:I = -0x1

.field public static final OS_VERSION_KEY:Ljava/lang/String; = "/GeneralInfo/OSVersion"

.field public static final PACKAGE_LIST_KEY:Ljava/lang/String; = "/GeneralInfo/PackageList"

.field public static final SYSTEM_DEFAULT:I = 0x2

.field public static final UID:Ljava/lang/String; = "GeneralInfo"

.field public static final VERSION_KEY:Ljava/lang/String; = "/GeneralInfo/Version"

.field public static final WELL_KNOWN_CALLING_PACKAGES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "com.samsung.android.app.settings.bixby"

    const-string v1, "com.android.settings"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/lib/episode/EternalContract;->WELL_KNOWN_CALLING_PACKAGES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
