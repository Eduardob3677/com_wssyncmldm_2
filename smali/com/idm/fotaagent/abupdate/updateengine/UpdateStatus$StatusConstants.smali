.class Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus$StatusConstants;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/abupdate/updateengine/UpdateStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StatusConstants"
.end annotation


# static fields
.field private static final CLEANUP_PREVIOUS_UPDATE:I = 0xb

.field private static final DOWNLOADING:I = 0x3

.field private static final IDLE:I = 0x0

.field private static final OPTIMIZING:I = 0x5

.field private static final PREPARING_UPDATE:I = -0x2

.field private static final UPDATED_NEED_REBOOT:I = 0x6

.field private static final UPDATE_AVAILABLE:I = 0x2

.field private static final VERIFYING:I = 0x4


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
