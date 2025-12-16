.class public final Lcom/idm/fotaagent/abupdate/updateengine/UpdateEngine$ErrorCodeConstants;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/abupdate/updateengine/UpdateEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ErrorCodeConstants"
.end annotation


# static fields
.field public static final DEVICE_CORRUPTED:I = 0x3d

.field private static final DOWNLOAD_PAYLOAD_VERIFICATION_ERROR:I = 0xc

.field private static final DOWNLOAD_TRANSFER_ERROR:I = 0x9

.field public static final ERROR:I = 0x1

.field private static final FILESYSTEM_COPIER_ERROR:I = 0x4

.field private static final INSTALL_DEVICE_OPEN_ERROR:I = 0x7

.field private static final KERNEL_DEVICE_OPEN_ERROR:I = 0x8

.field private static final NOT_ENOUGH_SPACE:I = 0x3c

.field private static final PAYLOAD_HASH_MISMATCH_ERROR:I = 0xa

.field private static final PAYLOAD_MISMATCHED_TYPE_ERROR:I = 0x6

.field private static final PAYLOAD_SIZE_MISMATCH_ERROR:I = 0xb

.field private static final PAYLOAD_TIMESTAMP_ERROR:I = 0x33

.field private static final POST_INSTALL_RUNNER_ERROR:I = 0x5

.field public static final SUCCESS:I = 0x0

.field private static final UPDATED_BUT_NOT_ACTIVE:I = 0x34


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
