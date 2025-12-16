.class public interface abstract Lcom/idm/agent/dl/IDMDlInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final IDM_CASE_DOWNLOAD_DESCRIPTOR:I = 0x1

.field public static final IDM_CASE_DOWNLOAD_IN_PROGRESS:I = 0x2

.field public static final IDM_CASE_NONE:I = 0x0

.field public static final IDM_CASE_POSTPONE_UPDATE_TO_REPORT:I = 0x4

.field public static final IDM_CASE_REPORT_DOWNLOAD_RESULT:I = 0x3

.field public static final IDM_DL_STATUS_ATTRIBUTE_MISMATCH:I = 0x5

.field public static final IDM_DL_STATUS_BLOCKED_BY_AFW_POLICY:I = 0xb

.field public static final IDM_DL_STATUS_BLOCKED_BY_MDM_POLICY:I = 0xc

.field public static final IDM_DL_STATUS_DEVICE_ABORTED:I = 0x8

.field public static final IDM_DL_STATUS_INVALID_DDVERSIONV:I = 0x7

.field public static final IDM_DL_STATUS_INVALID_DESCRIPTOR:I = 0x6

.field public static final IDM_DL_STATUS_LOADER_ERROR:I = 0xa

.field public static final IDM_DL_STATUS_LOSS_SERVICE:I = 0x4

.field public static final IDM_DL_STATUS_MEMORY_ERROR:I = 0x2

.field public static final IDM_DL_STATUS_NONE:I = 0x0

.field public static final IDM_DL_STATUS_NON_ACCEPTABLE_CONTENT:I = 0x9

.field public static final IDM_DL_STATUS_SUCCESS:I = 0x1

.field public static final IDM_DL_STATUS_USER_CANCEL:I = 0x3

.field public static final IDM_DL_STATUS_WIFIBACKGROUND_SESSION_FAILED:I = 0xd

.field public static final IDM_FOTA_GENERIC_AUTHENTICATION_FAILURE:Ljava/lang/String; = "406"

.field public static final IDM_FOTA_GENERIC_BAD_URL:Ljava/lang/String; = "411"

.field public static final IDM_FOTA_GENERIC_CLIENT_ERROR:Ljava/lang/String; = "400"

.field public static final IDM_FOTA_GENERIC_CORRUPTED_FW_UP:Ljava/lang/String; = "402"

.field public static final IDM_FOTA_GENERIC_DOWNLOAD_FAILED_NETWORK:Ljava/lang/String; = "503"

.field public static final IDM_FOTA_GENERIC_DOWNLOAD_FAILED_OUT_MEMORY:Ljava/lang/String; = "501"

.field public static final IDM_FOTA_GENERIC_FAILED_FW_UP_VALIDATION:Ljava/lang/String; = "404"

.field public static final IDM_FOTA_GENERIC_NOT_ACCEPTABLE:Ljava/lang/String; = "405"

.field public static final IDM_FOTA_GENERIC_NOT_IMPLEMENTED:Ljava/lang/String; = "408"

.field public static final IDM_FOTA_GENERIC_PACKAGE_MISMATCH:Ljava/lang/String; = "403"

.field public static final IDM_FOTA_GENERIC_REQUEST_TIME_OUT:Ljava/lang/String; = "407"

.field public static final IDM_FOTA_GENERIC_SERVER_ERROR:Ljava/lang/String; = "500"

.field public static final IDM_FOTA_GENERIC_SERVER_UNAVAILABLE:Ljava/lang/String; = "412"

.field public static final IDM_FOTA_GENERIC_SUCCESSFUL:Ljava/lang/String; = "200"

.field public static final IDM_FOTA_GENERIC_SUCCESSFUL_DOWNLOAD:Ljava/lang/String; = "200"

.field public static final IDM_FOTA_GENERIC_SUCCESSFUL_UPDATE:Ljava/lang/String; = "200"

.field public static final IDM_FOTA_GENERIC_SUCCESSFUL_VENDOR_SPECIFIED:Ljava/lang/String; = "250"

.field public static final IDM_FOTA_GENERIC_UNDEFINED_ERROR:Ljava/lang/String; = "409"

.field public static final IDM_FOTA_GENERIC_UPDATE_FAILED:Ljava/lang/String; = "410"

.field public static final IDM_FOTA_GENERIC_UPDATE_FAILED_OUT_MEMORY:Ljava/lang/String; = "502"

.field public static final IDM_FOTA_GENERIC_USER_CANCELED_DOWNLOAD:Ljava/lang/String; = "401"

.field public static final IDM_FUMO_DOWNLOAD:I = 0x2

.field public static final IDM_FUMO_DOWNLOADANDUPDATE:I = 0x1

.field public static final IDM_FUMO_DOWNLOADANDUPDATE_PATH:Ljava/lang/String; = "/DownloadAndUpdate"

.field public static final IDM_FUMO_DOWNLOAD_PATH:Ljava/lang/String; = "/Download"

.field public static final IDM_FUMO_EXT:Ljava/lang/String; = "/Ext"

.field public static final IDM_FUMO_NONE:I = 0x0

.field public static final IDM_FUMO_PATH:Ljava/lang/String; = "./FUMO"

.field public static final IDM_FUMO_PKGDATA_PATH:Ljava/lang/String; = "/PkgData"

.field public static final IDM_FUMO_PKGNAME_PATH:Ljava/lang/String; = "/PkgName"

.field public static final IDM_FUMO_PKGURL_PATH:Ljava/lang/String; = "/PkgURL"

.field public static final IDM_FUMO_PKGVERSION_PATH:Ljava/lang/String; = "/PkgVersion"

.field public static final IDM_FUMO_STATE_PATH:Ljava/lang/String; = "/State"

.field public static final IDM_FUMO_UPDATE:I = 0x3

.field public static final IDM_FUMO_UPDATE_PATH:Ljava/lang/String; = "/Update"

.field public static final IDM_REPORT_STATUS_ATTRIBUTE_MISMATCH:Ljava/lang/String; = "905 Attribute mismatch"

.field public static final IDM_REPORT_STATUS_BLOCKED_BY_AFW_POLICY:Ljava/lang/String; = "461 Blocked by AFW Policy"

.field public static final IDM_REPORT_STATUS_BLOCKED_BY_MDM_POLICY:Ljava/lang/String; = "462 Blocked by MDM Policy"

.field public static final IDM_REPORT_STATUS_DEVICE_ABORTED:Ljava/lang/String; = "952 Device Aborted"

.field public static final IDM_REPORT_STATUS_INSUFFICIENT_MEMORY:Ljava/lang/String; = "901 Insufficient memory"

.field public static final IDM_REPORT_STATUS_INVALID_DDVERSION:Ljava/lang/String; = "951 Invalid DDVersion"

.field public static final IDM_REPORT_STATUS_INVALID_DESCRIPTOR:Ljava/lang/String; = "906 Invalid descriptor"

.field public static final IDM_REPORT_STATUS_LOADER_ERROR:Ljava/lang/String; = "954 Loader Error"

.field public static final IDM_REPORT_STATUS_LOSS_OF_SERVICE:Ljava/lang/String; = "903 Loss of Service"

.field public static final IDM_REPORT_STATUS_NON_ACCEPTABLE_CONTENT:Ljava/lang/String; = "953 Non-Acceptable Content"

.field public static final IDM_REPORT_STATUS_SUCCESS:Ljava/lang/String; = "900 Success"

.field public static final IDM_REPORT_STATUS_USER_CANCELLED:Ljava/lang/String; = "902 User Cancelled"

.field public static final IDM_REPORT_STATUS_WIFIBACKGROUND_SESSION_FAILED:Ljava/lang/String; = "466 WifiBackGround Session Failed"
