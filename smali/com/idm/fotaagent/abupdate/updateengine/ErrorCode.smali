.class public enum Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

.field public static final enum DEVICE_CORRUPTED:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

.field public static final enum DOWNLOAD_INVALID_METADATA_MAGIC_STRING:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

.field public static final enum DOWNLOAD_INVALID_METADATA_SIZE:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

.field public static final enum DOWNLOAD_MANIFEST_PARSE_ERROR:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

.field public static final enum DOWNLOAD_METADATA_SIGNATURE_ERROR:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

.field public static final enum DOWNLOAD_METADATA_SIGNATURE_MISMATCH:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

.field public static final enum DOWNLOAD_METADATA_SIGNATURE_MISSING_ERROR:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

.field public static final enum DOWNLOAD_METADATA_SIGNATURE_VERIFICATION_ERROR:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

.field public static final enum DOWNLOAD_NEW_PARTITION_INFO_ERROR:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

.field public static final enum DOWNLOAD_OPERATION_EXECUTION_ERROR:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

.field public static final enum DOWNLOAD_OPERATION_HASH_MISMATCH:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

.field public static final enum DOWNLOAD_OPERATION_HASH_MISSING_ERROR:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

.field public static final enum DOWNLOAD_OPERATION_HASH_VERIFICATION_ERROR:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

.field public static final enum DOWNLOAD_PAYLOAD_PUBKEY_VERIFICATION_ERROR:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

.field public static final enum DOWNLOAD_PAYLOAD_VERIFICATION_ERROR:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

.field public static final enum DOWNLOAD_STATE_INITIALIZATION_ERROR:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

.field public static final enum DOWNLOAD_TRANSFER_ERROR:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

.field public static final enum DOWNLOAD_WRITE_ERROR:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

.field public static final enum ERROR:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

.field private static final ERROR_CODE_MERGE_NEEDS_REBOOT:Ljava/lang/String; = "551"

.field private static final ERROR_CODE_METADATA_DOWNLOAD_FAILED:Ljava/lang/String; = "553"

.field private static final ERROR_CODE_REBOOT_FAILED:Ljava/lang/String; = "554"

.field private static final ERROR_CODE_SLOT_NOT_CHANGED:Ljava/lang/String; = "552"

.field public static final enum FILESYSTEM_VERIFIER_ERROR:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

.field public static final enum INSTALL_DEVICE_OPEN_ERROR:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

.field public static final enum MERGE_NEEDS_REBOOT:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

.field public static final enum METADATA_DOWNLOAD_FAILED:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

.field public static final enum NEW_ROOTFS_VERIFICATION_ERROR:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

.field public static final enum NOT_ENOUGH_SPACE:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

.field public static final enum OVERLAY_FS_ENABLED_ERROR:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

.field public static final enum PAYLOAD_HASH_MISMATCH_ERROR:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

.field public static final enum PAYLOAD_MISMATCHED_TYPE_ERROR:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

.field public static final enum PAYLOAD_SIZE_MISMATCH_ERROR:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

.field public static final enum PAYLOAD_TIMESTAMP_ERROR:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

.field public static final enum POSTINSTALL_BOOTED_FROM_FIRMWARE_B:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

.field public static final enum POSTINSTALL_FIRMWARE_RO_NOT_UPDATABLE:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

.field public static final enum POSTINSTALL_MOUNT_ERROR:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

.field public static final enum POSTINSTALL_POWERWASH_ERROR:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

.field public static final enum POSTINSTALL_RUNNER_ERROR:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

.field public static final enum REBOOT_FAILED:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

.field public static final enum SIGNED_DELTA_PAYLOAD_EXPECTED_ERROR:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

.field public static final enum SLOT_NOT_CHANGED:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

.field public static final enum SUCCESS:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

.field public static final enum UNSUPPORTED_MAJOR_PAYLOAD_VERSION:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

.field public static final enum UNSUPPORTED_MINOR_PAYLOAD_VERSION:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

.field public static final enum UPDATED_BUT_NOT_ACTIVE:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

.field public static final enum UPDATE_ALREADY_INSTALLED:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

.field public static final enum UPDATE_PROCESSING:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

.field public static final enum USER_CANCELED:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

.field public static final enum VERITY_CALCULATION_ERROR:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;


# instance fields
.field private final dlResultCode:Lcom/idm/agent/dl/DLResultCode;

.field private final errorCode:I


# direct methods
.method private static synthetic $values()[Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;
    .locals 46

    sget-object v0, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->SUCCESS:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    sget-object v1, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->ERROR:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    sget-object v2, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->POSTINSTALL_RUNNER_ERROR:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    sget-object v3, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->PAYLOAD_MISMATCHED_TYPE_ERROR:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    sget-object v4, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->INSTALL_DEVICE_OPEN_ERROR:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    sget-object v5, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->DOWNLOAD_TRANSFER_ERROR:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    sget-object v6, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->PAYLOAD_HASH_MISMATCH_ERROR:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    sget-object v7, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->PAYLOAD_SIZE_MISMATCH_ERROR:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    sget-object v8, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->DOWNLOAD_PAYLOAD_VERIFICATION_ERROR:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    sget-object v9, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->DOWNLOAD_NEW_PARTITION_INFO_ERROR:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    sget-object v10, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->DOWNLOAD_WRITE_ERROR:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    sget-object v11, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->NEW_ROOTFS_VERIFICATION_ERROR:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    sget-object v12, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->SIGNED_DELTA_PAYLOAD_EXPECTED_ERROR:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    sget-object v13, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->DOWNLOAD_PAYLOAD_PUBKEY_VERIFICATION_ERROR:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    sget-object v14, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->POSTINSTALL_BOOTED_FROM_FIRMWARE_B:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    sget-object v15, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->DOWNLOAD_STATE_INITIALIZATION_ERROR:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    sget-object v16, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->DOWNLOAD_INVALID_METADATA_MAGIC_STRING:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    sget-object v17, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->DOWNLOAD_MANIFEST_PARSE_ERROR:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    sget-object v18, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->DOWNLOAD_METADATA_SIGNATURE_ERROR:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    sget-object v19, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->DOWNLOAD_METADATA_SIGNATURE_VERIFICATION_ERROR:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    sget-object v20, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->DOWNLOAD_METADATA_SIGNATURE_MISMATCH:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    sget-object v21, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->DOWNLOAD_OPERATION_HASH_VERIFICATION_ERROR:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    sget-object v22, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->DOWNLOAD_OPERATION_EXECUTION_ERROR:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    sget-object v23, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->DOWNLOAD_OPERATION_HASH_MISMATCH:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    sget-object v24, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->DOWNLOAD_INVALID_METADATA_SIZE:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    sget-object v25, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->DOWNLOAD_OPERATION_HASH_MISSING_ERROR:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    sget-object v26, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->DOWNLOAD_METADATA_SIGNATURE_MISSING_ERROR:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    sget-object v27, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->POSTINSTALL_POWERWASH_ERROR:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    sget-object v28, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->POSTINSTALL_FIRMWARE_RO_NOT_UPDATABLE:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    sget-object v29, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->UNSUPPORTED_MAJOR_PAYLOAD_VERSION:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    sget-object v30, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->UNSUPPORTED_MINOR_PAYLOAD_VERSION:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    sget-object v31, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->FILESYSTEM_VERIFIER_ERROR:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    sget-object v32, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->USER_CANCELED:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    sget-object v33, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->PAYLOAD_TIMESTAMP_ERROR:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    sget-object v34, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->UPDATED_BUT_NOT_ACTIVE:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    sget-object v35, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->VERITY_CALCULATION_ERROR:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    sget-object v36, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->NOT_ENOUGH_SPACE:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    sget-object v37, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->DEVICE_CORRUPTED:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    sget-object v38, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->POSTINSTALL_MOUNT_ERROR:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    sget-object v39, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->OVERLAY_FS_ENABLED_ERROR:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    sget-object v40, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->UPDATE_PROCESSING:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    sget-object v41, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->UPDATE_ALREADY_INSTALLED:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    sget-object v42, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->MERGE_NEEDS_REBOOT:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    sget-object v43, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->SLOT_NOT_CHANGED:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    sget-object v44, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->METADATA_DOWNLOAD_FAILED:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    sget-object v45, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->REBOOT_FAILED:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    filled-new-array/range {v0 .. v45}, [Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode$1;

    sget-object v1, Lcom/idm/agent/dl/DLResultCode;->NON_ACCEPTABLE_CONTENT:Lcom/idm/agent/dl/DLResultCode;

    const-string v2, "SUCCESS"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v3, v1}, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode$1;-><init>(Ljava/lang/String;IILcom/idm/agent/dl/DLResultCode;)V

    sput-object v0, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->SUCCESS:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    new-instance v0, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    sget-object v2, Lcom/idm/agent/dl/DLResultCode;->ABORTED_BY_DEVICE:Lcom/idm/agent/dl/DLResultCode;

    const-string v3, "ERROR"

    const/4 v4, 0x1

    invoke-direct {v0, v3, v4, v4, v2}, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;-><init>(Ljava/lang/String;IILcom/idm/agent/dl/DLResultCode;)V

    sput-object v0, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->ERROR:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    new-instance v0, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    const-string v3, "POSTINSTALL_RUNNER_ERROR"

    const/4 v4, 0x2

    const/4 v5, 0x5

    invoke-direct {v0, v3, v4, v5, v2}, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;-><init>(Ljava/lang/String;IILcom/idm/agent/dl/DLResultCode;)V

    sput-object v0, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->POSTINSTALL_RUNNER_ERROR:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    new-instance v0, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    const-string v3, "PAYLOAD_MISMATCHED_TYPE_ERROR"

    const/4 v4, 0x3

    const/4 v6, 0x6

    invoke-direct {v0, v3, v4, v6, v1}, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;-><init>(Ljava/lang/String;IILcom/idm/agent/dl/DLResultCode;)V

    sput-object v0, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->PAYLOAD_MISMATCHED_TYPE_ERROR:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    new-instance v0, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    const-string v3, "INSTALL_DEVICE_OPEN_ERROR"

    const/4 v4, 0x4

    const/4 v7, 0x7

    invoke-direct {v0, v3, v4, v7, v2}, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;-><init>(Ljava/lang/String;IILcom/idm/agent/dl/DLResultCode;)V

    sput-object v0, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->INSTALL_DEVICE_OPEN_ERROR:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    new-instance v0, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    const-string v3, "DOWNLOAD_TRANSFER_ERROR"

    const/16 v4, 0x9

    invoke-direct {v0, v3, v5, v4, v2}, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;-><init>(Ljava/lang/String;IILcom/idm/agent/dl/DLResultCode;)V

    sput-object v0, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->DOWNLOAD_TRANSFER_ERROR:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    new-instance v0, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    sget-object v3, Lcom/idm/agent/dl/DLResultCode;->MISMATCHED_ATTRIBUTE:Lcom/idm/agent/dl/DLResultCode;

    const-string v5, "PAYLOAD_HASH_MISMATCH_ERROR"

    const/16 v8, 0xa

    invoke-direct {v0, v5, v6, v8, v3}, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;-><init>(Ljava/lang/String;IILcom/idm/agent/dl/DLResultCode;)V

    sput-object v0, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->PAYLOAD_HASH_MISMATCH_ERROR:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    new-instance v0, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    const-string v5, "PAYLOAD_SIZE_MISMATCH_ERROR"

    const/16 v6, 0xb

    invoke-direct {v0, v5, v7, v6, v3}, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;-><init>(Ljava/lang/String;IILcom/idm/agent/dl/DLResultCode;)V

    sput-object v0, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->PAYLOAD_SIZE_MISMATCH_ERROR:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    new-instance v0, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    const-string v5, "DOWNLOAD_PAYLOAD_VERIFICATION_ERROR"

    const/16 v7, 0x8

    const/16 v9, 0xc

    invoke-direct {v0, v5, v7, v9, v3}, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;-><init>(Ljava/lang/String;IILcom/idm/agent/dl/DLResultCode;)V

    sput-object v0, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->DOWNLOAD_PAYLOAD_VERIFICATION_ERROR:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    new-instance v0, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    const-string v5, "DOWNLOAD_NEW_PARTITION_INFO_ERROR"

    const/16 v7, 0xd

    invoke-direct {v0, v5, v4, v7, v1}, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;-><init>(Ljava/lang/String;IILcom/idm/agent/dl/DLResultCode;)V

    sput-object v0, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->DOWNLOAD_NEW_PARTITION_INFO_ERROR:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    new-instance v0, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    const-string v4, "DOWNLOAD_WRITE_ERROR"

    const/16 v5, 0xe

    invoke-direct {v0, v4, v8, v5, v2}, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;-><init>(Ljava/lang/String;IILcom/idm/agent/dl/DLResultCode;)V

    sput-object v0, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->DOWNLOAD_WRITE_ERROR:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    new-instance v0, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    const-string v4, "NEW_ROOTFS_VERIFICATION_ERROR"

    const/16 v8, 0xf

    invoke-direct {v0, v4, v6, v8, v2}, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;-><init>(Ljava/lang/String;IILcom/idm/agent/dl/DLResultCode;)V

    sput-object v0, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->NEW_ROOTFS_VERIFICATION_ERROR:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    new-instance v0, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    const-string v4, "SIGNED_DELTA_PAYLOAD_EXPECTED_ERROR"

    const/16 v6, 0x11

    invoke-direct {v0, v4, v9, v6, v1}, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;-><init>(Ljava/lang/String;IILcom/idm/agent/dl/DLResultCode;)V

    sput-object v0, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->SIGNED_DELTA_PAYLOAD_EXPECTED_ERROR:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    new-instance v0, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    const-string v4, "DOWNLOAD_PAYLOAD_PUBKEY_VERIFICATION_ERROR"

    const/16 v9, 0x12

    invoke-direct {v0, v4, v7, v9, v1}, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;-><init>(Ljava/lang/String;IILcom/idm/agent/dl/DLResultCode;)V

    sput-object v0, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->DOWNLOAD_PAYLOAD_PUBKEY_VERIFICATION_ERROR:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    new-instance v0, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    const-string v4, "POSTINSTALL_BOOTED_FROM_FIRMWARE_B"

    const/16 v7, 0x13

    invoke-direct {v0, v4, v5, v7, v2}, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;-><init>(Ljava/lang/String;IILcom/idm/agent/dl/DLResultCode;)V

    sput-object v0, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->POSTINSTALL_BOOTED_FROM_FIRMWARE_B:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    new-instance v0, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    const-string v4, "DOWNLOAD_STATE_INITIALIZATION_ERROR"

    const/16 v5, 0x14

    invoke-direct {v0, v4, v8, v5, v2}, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;-><init>(Ljava/lang/String;IILcom/idm/agent/dl/DLResultCode;)V

    sput-object v0, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->DOWNLOAD_STATE_INITIALIZATION_ERROR:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    new-instance v0, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    const-string v4, "DOWNLOAD_INVALID_METADATA_MAGIC_STRING"

    const/16 v8, 0x10

    const/16 v10, 0x15

    invoke-direct {v0, v4, v8, v10, v3}, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;-><init>(Ljava/lang/String;IILcom/idm/agent/dl/DLResultCode;)V

    sput-object v0, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->DOWNLOAD_INVALID_METADATA_MAGIC_STRING:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    new-instance v0, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    const-string v4, "DOWNLOAD_MANIFEST_PARSE_ERROR"

    const/16 v8, 0x17

    invoke-direct {v0, v4, v6, v8, v1}, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;-><init>(Ljava/lang/String;IILcom/idm/agent/dl/DLResultCode;)V

    sput-object v0, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->DOWNLOAD_MANIFEST_PARSE_ERROR:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    new-instance v0, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    const-string v4, "DOWNLOAD_METADATA_SIGNATURE_ERROR"

    const/16 v6, 0x18

    invoke-direct {v0, v4, v9, v6, v3}, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;-><init>(Ljava/lang/String;IILcom/idm/agent/dl/DLResultCode;)V

    sput-object v0, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->DOWNLOAD_METADATA_SIGNATURE_ERROR:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    new-instance v0, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    const-string v4, "DOWNLOAD_METADATA_SIGNATURE_VERIFICATION_ERROR"

    const/16 v9, 0x19

    invoke-direct {v0, v4, v7, v9, v3}, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;-><init>(Ljava/lang/String;IILcom/idm/agent/dl/DLResultCode;)V

    sput-object v0, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->DOWNLOAD_METADATA_SIGNATURE_VERIFICATION_ERROR:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    new-instance v0, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    const-string v4, "DOWNLOAD_METADATA_SIGNATURE_MISMATCH"

    const/16 v7, 0x1a

    invoke-direct {v0, v4, v5, v7, v3}, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;-><init>(Ljava/lang/String;IILcom/idm/agent/dl/DLResultCode;)V

    sput-object v0, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->DOWNLOAD_METADATA_SIGNATURE_MISMATCH:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    new-instance v0, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    const-string v4, "DOWNLOAD_OPERATION_HASH_VERIFICATION_ERROR"

    const/16 v5, 0x1b

    invoke-direct {v0, v4, v10, v5, v2}, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;-><init>(Ljava/lang/String;IILcom/idm/agent/dl/DLResultCode;)V

    sput-object v0, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->DOWNLOAD_OPERATION_HASH_VERIFICATION_ERROR:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    new-instance v0, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    const/16 v4, 0x16

    const/16 v10, 0x1c

    const-string v11, "DOWNLOAD_OPERATION_EXECUTION_ERROR"

    invoke-direct {v0, v11, v4, v10, v2}, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;-><init>(Ljava/lang/String;IILcom/idm/agent/dl/DLResultCode;)V

    sput-object v0, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->DOWNLOAD_OPERATION_EXECUTION_ERROR:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    new-instance v0, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    const-string v4, "DOWNLOAD_OPERATION_HASH_MISMATCH"

    const/16 v10, 0x1d

    invoke-direct {v0, v4, v8, v10, v3}, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;-><init>(Ljava/lang/String;IILcom/idm/agent/dl/DLResultCode;)V

    sput-object v0, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->DOWNLOAD_OPERATION_HASH_MISMATCH:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    new-instance v0, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    const-string v4, "DOWNLOAD_INVALID_METADATA_SIZE"

    const/16 v8, 0x20

    invoke-direct {v0, v4, v6, v8, v3}, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;-><init>(Ljava/lang/String;IILcom/idm/agent/dl/DLResultCode;)V

    sput-object v0, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->DOWNLOAD_INVALID_METADATA_SIZE:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    new-instance v0, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    const-string v3, "DOWNLOAD_OPERATION_HASH_MISSING_ERROR"

    const/16 v4, 0x26

    invoke-direct {v0, v3, v9, v4, v1}, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;-><init>(Ljava/lang/String;IILcom/idm/agent/dl/DLResultCode;)V

    sput-object v0, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->DOWNLOAD_OPERATION_HASH_MISSING_ERROR:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    new-instance v0, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    const-string v3, "DOWNLOAD_METADATA_SIGNATURE_MISSING_ERROR"

    const/16 v4, 0x27

    invoke-direct {v0, v3, v7, v4, v1}, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;-><init>(Ljava/lang/String;IILcom/idm/agent/dl/DLResultCode;)V

    sput-object v0, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->DOWNLOAD_METADATA_SIGNATURE_MISSING_ERROR:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    new-instance v0, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    const-string v3, "POSTINSTALL_POWERWASH_ERROR"

    const/16 v4, 0x29

    invoke-direct {v0, v3, v5, v4, v2}, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;-><init>(Ljava/lang/String;IILcom/idm/agent/dl/DLResultCode;)V

    sput-object v0, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->POSTINSTALL_POWERWASH_ERROR:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    new-instance v0, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    const/16 v3, 0x1c

    const/16 v4, 0x2b

    const-string v5, "POSTINSTALL_FIRMWARE_RO_NOT_UPDATABLE"

    invoke-direct {v0, v5, v3, v4, v2}, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;-><init>(Ljava/lang/String;IILcom/idm/agent/dl/DLResultCode;)V

    sput-object v0, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->POSTINSTALL_FIRMWARE_RO_NOT_UPDATABLE:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    new-instance v0, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    const/16 v3, 0x1d

    const/16 v4, 0x2c

    const-string v5, "UNSUPPORTED_MAJOR_PAYLOAD_VERSION"

    invoke-direct {v0, v5, v3, v4, v1}, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;-><init>(Ljava/lang/String;IILcom/idm/agent/dl/DLResultCode;)V

    sput-object v0, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->UNSUPPORTED_MAJOR_PAYLOAD_VERSION:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    new-instance v0, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    const/16 v3, 0x1e

    const/16 v4, 0x2d

    const-string v5, "UNSUPPORTED_MINOR_PAYLOAD_VERSION"

    invoke-direct {v0, v5, v3, v4, v1}, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;-><init>(Ljava/lang/String;IILcom/idm/agent/dl/DLResultCode;)V

    sput-object v0, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->UNSUPPORTED_MINOR_PAYLOAD_VERSION:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    new-instance v0, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    const/16 v3, 0x1f

    const/16 v4, 0x2f

    const-string v5, "FILESYSTEM_VERIFIER_ERROR"

    invoke-direct {v0, v5, v3, v4, v2}, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;-><init>(Ljava/lang/String;IILcom/idm/agent/dl/DLResultCode;)V

    sput-object v0, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->FILESYSTEM_VERIFIER_ERROR:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    new-instance v0, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode$2;

    const/16 v3, 0x20

    const/16 v4, 0x30

    const-string v5, "USER_CANCELED"

    invoke-direct {v0, v5, v3, v4, v1}, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode$2;-><init>(Ljava/lang/String;IILcom/idm/agent/dl/DLResultCode;)V

    sput-object v0, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->USER_CANCELED:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    new-instance v0, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    const/16 v3, 0x21

    const/16 v4, 0x33

    const-string v5, "PAYLOAD_TIMESTAMP_ERROR"

    invoke-direct {v0, v5, v3, v4, v1}, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;-><init>(Ljava/lang/String;IILcom/idm/agent/dl/DLResultCode;)V

    sput-object v0, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->PAYLOAD_TIMESTAMP_ERROR:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    new-instance v0, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode$3;

    const/16 v3, 0x22

    const/16 v4, 0x34

    const-string v5, "UPDATED_BUT_NOT_ACTIVE"

    invoke-direct {v0, v5, v3, v4, v1}, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode$3;-><init>(Ljava/lang/String;IILcom/idm/agent/dl/DLResultCode;)V

    sput-object v0, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->UPDATED_BUT_NOT_ACTIVE:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    new-instance v0, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    const/16 v3, 0x23

    const/16 v4, 0x38

    const-string v5, "VERITY_CALCULATION_ERROR"

    invoke-direct {v0, v5, v3, v4, v2}, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;-><init>(Ljava/lang/String;IILcom/idm/agent/dl/DLResultCode;)V

    sput-object v0, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->VERITY_CALCULATION_ERROR:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    new-instance v0, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode$4;

    const/16 v3, 0x3c

    sget-object v4, Lcom/idm/agent/dl/DLResultCode;->INSUFFICIENT_STORAGE:Lcom/idm/agent/dl/DLResultCode;

    const-string v5, "NOT_ENOUGH_SPACE"

    const/16 v6, 0x24

    invoke-direct {v0, v5, v6, v3, v4}, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode$4;-><init>(Ljava/lang/String;IILcom/idm/agent/dl/DLResultCode;)V

    sput-object v0, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->NOT_ENOUGH_SPACE:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    new-instance v0, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    const/16 v3, 0x25

    const/16 v4, 0x3d

    const-string v5, "DEVICE_CORRUPTED"

    invoke-direct {v0, v5, v3, v4, v2}, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;-><init>(Ljava/lang/String;IILcom/idm/agent/dl/DLResultCode;)V

    sput-object v0, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->DEVICE_CORRUPTED:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    new-instance v0, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    const/16 v3, 0x26

    const/16 v4, 0x3f

    const-string v5, "POSTINSTALL_MOUNT_ERROR"

    invoke-direct {v0, v5, v3, v4, v2}, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;-><init>(Ljava/lang/String;IILcom/idm/agent/dl/DLResultCode;)V

    sput-object v0, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->POSTINSTALL_MOUNT_ERROR:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    new-instance v0, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    const/16 v3, 0x27

    const/16 v4, 0x40

    const-string v5, "OVERLAY_FS_ENABLED_ERROR"

    invoke-direct {v0, v5, v3, v4, v2}, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;-><init>(Ljava/lang/String;IILcom/idm/agent/dl/DLResultCode;)V

    sput-object v0, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->OVERLAY_FS_ENABLED_ERROR:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    new-instance v0, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    const/16 v3, 0x28

    const/16 v4, 0x41

    const-string v5, "UPDATE_PROCESSING"

    invoke-direct {v0, v5, v3, v4, v1}, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;-><init>(Ljava/lang/String;IILcom/idm/agent/dl/DLResultCode;)V

    sput-object v0, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->UPDATE_PROCESSING:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    new-instance v0, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    const/16 v3, 0x29

    const/16 v4, 0x42

    const-string v5, "UPDATE_ALREADY_INSTALLED"

    invoke-direct {v0, v5, v3, v4, v1}, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;-><init>(Ljava/lang/String;IILcom/idm/agent/dl/DLResultCode;)V

    sput-object v0, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->UPDATE_ALREADY_INSTALLED:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    new-instance v0, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode$5;

    const/16 v1, 0x2a

    const/4 v3, -0x1

    const-string v4, "MERGE_NEEDS_REBOOT"

    invoke-direct {v0, v4, v1, v3, v2}, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode$5;-><init>(Ljava/lang/String;IILcom/idm/agent/dl/DLResultCode;)V

    sput-object v0, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->MERGE_NEEDS_REBOOT:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    new-instance v0, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode$6;

    const/16 v1, 0x2b

    const/4 v3, -0x2

    const-string v4, "SLOT_NOT_CHANGED"

    invoke-direct {v0, v4, v1, v3, v2}, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode$6;-><init>(Ljava/lang/String;IILcom/idm/agent/dl/DLResultCode;)V

    sput-object v0, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->SLOT_NOT_CHANGED:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    new-instance v0, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode$7;

    const/16 v1, 0x2c

    const/4 v3, -0x3

    const-string v4, "METADATA_DOWNLOAD_FAILED"

    invoke-direct {v0, v4, v1, v3, v2}, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode$7;-><init>(Ljava/lang/String;IILcom/idm/agent/dl/DLResultCode;)V

    sput-object v0, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->METADATA_DOWNLOAD_FAILED:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    new-instance v0, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode$8;

    const/16 v1, 0x2d

    const/4 v3, -0x4

    const-string v4, "REBOOT_FAILED"

    invoke-direct {v0, v4, v1, v3, v2}, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode$8;-><init>(Ljava/lang/String;IILcom/idm/agent/dl/DLResultCode;)V

    sput-object v0, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->REBOOT_FAILED:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    invoke-static {}, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->$values()[Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    move-result-object v0

    sput-object v0, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->$VALUES:[Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILcom/idm/agent/dl/DLResultCode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/idm/agent/dl/DLResultCode;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->errorCode:I

    iput-object p4, p0, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->dlResultCode:Lcom/idm/agent/dl/DLResultCode;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IILcom/idm/agent/dl/DLResultCode;Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;-><init>(Ljava/lang/String;IILcom/idm/agent/dl/DLResultCode;)V

    return-void
.end method

.method public static synthetic a(ILcom/idm/fotaagent/abupdate/updateengine/ErrorCode;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->lambda$of$0(ILcom/idm/fotaagent/abupdate/updateengine/ErrorCode;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$100()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->getTaskId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getTaskId()Ljava/lang/String;
    .locals 1

    new-instance v0, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-direct {v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;-><init>()V

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getSessionId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$of$0(ILcom/idm/fotaagent/abupdate/updateengine/ErrorCode;)Z
    .locals 0

    invoke-virtual {p1}, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->getErrorCode()I

    move-result p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static of(I)Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "errorCode : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-static {}, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->values()[Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    move-result-object v0

    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/idm/fotaagent/abupdate/updateengine/a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/idm/fotaagent/abupdate/updateengine/a;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->ERROR:Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;
    .locals 1

    const-class v0, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    return-object p0
.end method

.method public static values()[Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;
    .locals 1

    sget-object v0, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->$VALUES:[Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    invoke-virtual {v0}, [Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;

    return-object v0
.end method


# virtual methods
.method public getDmResultCode()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->getErrorCode()I

    move-result p0

    add-int/lit16 p0, p0, 0x258

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getErrorCode()I
    .locals 0

    iget p0, p0, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->errorCode:I

    return p0
.end method

.method public reportForFailureToDLDM()V
    .locals 1

    const-string v0, ""

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->showDialogIfPossible()V

    invoke-virtual {p0}, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->reportToDL()V

    invoke-virtual {p0}, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->reportToDM()V

    return-void
.end method

.method public reportForFailureToDM()V
    .locals 1

    const-string v0, ""

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->showDialogIfPossible()V

    invoke-virtual {p0}, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->reportToDM()V

    return-void
.end method

.method public reportToDL()V
    .locals 2

    invoke-static {}, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->getTaskId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-direct {v1, v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->isTriggeredBySideload()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/idm/fotaagent/enabler/fumo/DLReporter$ForFailure;

    invoke-direct {v1}, Lcom/idm/fotaagent/enabler/fumo/DLReporter$ForFailure;-><init>()V

    iget-object p0, p0, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->dlResultCode:Lcom/idm/agent/dl/DLResultCode;

    invoke-virtual {p0}, Lcom/idm/agent/dl/DLResultCode;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Lcom/idm/fotaagent/enabler/fumo/UpdateReporter;->report(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public reportToDM()V
    .locals 2

    new-instance v0, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;

    invoke-static {}, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->getTaskId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x50

    invoke-virtual {p0}, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->getDmResultCode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/idm/fotaagent/enabler/fumo/IDMFumoExecuteHandler;->executeIfPossible(ILjava/lang/String;)V

    return-void
.end method

.method public showDialogIfPossible()V
    .locals 1

    new-instance v0, Lcom/idm/fotaagent/utils/UpdateResultUtils;

    invoke-direct {v0}, Lcom/idm/fotaagent/utils/UpdateResultUtils;-><init>()V

    invoke-virtual {p0}, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->getDmResultCode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/idm/fotaagent/utils/UpdateResultUtils;->setUpdateResultCode(Ljava/lang/String;)V

    new-instance p0, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-direct {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;-><init>()V

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;->getUiMode()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;->IDM_NOTIFICATION_UPDATE_REPORT:Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;

    invoke-static {}, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->getTaskId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationTypeManager;->notify(Lcom/idm/fotaagent/enabler/ui/notification/manager/NotificationType;Ljava/lang/String;)V

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->getInstance()Lcom/idm/fotaagent/enabler/ui/IDMUIManager;

    move-result-object p0

    sget-object v0, Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;->IDM_DIALOG_UPDATE_REPORT:Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->sendDialogMessage(Lcom/idm/fotaagent/enabler/ui/interfaces/IDMUIEventInterface$UIDIALOG;)V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/idm/fotaagent/abupdate/updateengine/ErrorCode;->getErrorCode()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
