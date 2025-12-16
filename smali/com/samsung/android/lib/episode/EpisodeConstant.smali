.class public Lcom/samsung/android/lib/episode/EpisodeConstant;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static DTD_VERSION:Ljava/lang/String; = null

.field public static EPISODE_VERSION:Ljava/lang/String; = "2.0"

.field public static final ERROR_TYPE_FEATURE:Ljava/lang/String; = "FEATURE"

.field public static final ERROR_TYPE_INVALID_DATA:Ljava/lang/String; = "INVALID_DATA"

.field public static final ERROR_TYPE_PERMISSION:Ljava/lang/String; = "PERMISSION"

.field public static final ERROR_TYPE_STORAGE_FULL:Ljava/lang/String; = "STORAGE_FULL"

.field public static final ERROR_TYPE_UNKNOWN:Ljava/lang/String; = "UNKNOWN"

.field public static final ERROR_TYPE_UNSUPPORTED_DEVICE_TYPE:Ljava/lang/String; = "UNSUPPORTED_DEVICE_TYPE"

.field public static final EXTRA_ACTION:Ljava/lang/String; = "ACTION"

.field public static final EXTRA_CONVERT_DATA_SET:Ljava/lang/String; = "convertDataSet"

.field public static final EXTRA_CONVERT_ERROR_CODE:Ljava/lang/String; = "convertErrorCode"

.field public static final EXTRA_CONVERT_REQUEST_SIZE:Ljava/lang/String; = "convertRequestSize"

.field public static final EXTRA_CONVERT_RESULT:Ljava/lang/String; = "convertResult"

.field public static final EXTRA_CONVERT_RESULT_SET:Ljava/lang/String; = "convertResultSet"

.field public static final EXTRA_CONVERT_SOURCE:Ljava/lang/String; = "convertSource"

.field public static final EXTRA_CONVERT_TYPE:Ljava/lang/String; = "convertType"

.field public static final EXTRA_EXPORT_SESSION_TIME:Ljava/lang/String; = "EXPORT_SESSION_TIME"

.field public static final EXTRA_FILE_URI:Ljava/lang/String; = "fileUri"

.field public static final EXTRA_SAVE_PATH:Ljava/lang/String; = "SAVE_PATH"

.field public static final EXTRA_SECURITY_LEVEL:Ljava/lang/String; = "SECURITY_LEVEL"

.field public static final EXTRA_SESSION_KEY:Ljava/lang/String; = "SESSION_KEY"

.field public static final EXTRA_SOURCE:Ljava/lang/String; = "SOURCE"

.field public static final EXTRA_TYPE_SCLOUD:Ljava/lang/String; = "sCloud"

.field public static final EXTRA_TYPE_SMART_SWITCH:Ljava/lang/String; = "smartSwitch"

.field public static final Q_DTD_VERSION:Ljava/lang/String; = "2.54"

.field public static final Q_VERSION_CODE:I = 0x1d

.field public static final R_DTD_VERSION:Ljava/lang/String; = "3.61"

.field public static final R_VERSION_CODE:I = 0x1e

.field public static final S_DTD_VERSION:Ljava/lang/String; = "4.40"

.field public static final S_V2_VERSION_CODE:I = 0x20

.field public static final S_VERSION_CODE:I = 0x1f

.field public static final T_DTD_VERSION:Ljava/lang/String; = "5.68"

.field public static final T_VERSION_CODE:I = 0x21

.field public static final U_DTD_VERSION:Ljava/lang/String; = "6.89"

.field public static final U_VERSION_CODE:I = 0x22

.field public static final V_DTD_VERSION:Ljava/lang/String; = "7.62"

.field public static final V_VERSION_CODE:I = 0x23


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/samsung/android/lib/episode/EpisodeUtils;->getDtdVersion()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/lib/episode/EpisodeConstant;->DTD_VERSION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
