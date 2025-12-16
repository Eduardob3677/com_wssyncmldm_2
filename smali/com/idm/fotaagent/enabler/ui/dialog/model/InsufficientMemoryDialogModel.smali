.class public Lcom/idm/fotaagent/enabler/ui/dialog/model/InsufficientMemoryDialogModel;
.super Lcom/idm/fotaagent/enabler/ui/dialog/model/IDMUIDialogModel$Base;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idm/fotaagent/enabler/ui/dialog/model/InsufficientMemoryDialogModel$StorageSettingButtonStrategy;,
        Lcom/idm/fotaagent/enabler/ui/dialog/model/InsufficientMemoryDialogModel$MessageGenerator;
    }
.end annotation


# static fields
.field private static requiredBytes:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 6

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/dialog/model/InsufficientMemoryDialogModel;->title()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/idm/fotaagent/enabler/ui/dialog/model/InsufficientMemoryDialogModel;->message(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/idm/fotaagent/enabler/ui/dialog/model/buttonstrategy/ButtonStrategy$Neutral;->NONE:Lcom/idm/fotaagent/enabler/ui/dialog/model/buttonstrategy/ButtonStrategy$Neutral;

    new-instance v4, Lcom/idm/fotaagent/enabler/ui/dialog/model/buttonstrategy/ButtonStrategy$StubCancelNegative;

    invoke-direct {v4}, Lcom/idm/fotaagent/enabler/ui/dialog/model/buttonstrategy/ButtonStrategy$StubCancelNegative;-><init>()V

    new-instance v5, Lcom/idm/fotaagent/enabler/ui/dialog/model/InsufficientMemoryDialogModel$StorageSettingButtonStrategy;

    const/4 p1, 0x0

    invoke-direct {v5, p1}, Lcom/idm/fotaagent/enabler/ui/dialog/model/InsufficientMemoryDialogModel$StorageSettingButtonStrategy;-><init>(Lcom/idm/fotaagent/enabler/ui/dialog/model/InsufficientMemoryDialogModel$1;)V

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/idm/fotaagent/enabler/ui/dialog/model/IDMUIDialogModel$Base;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;Lcom/idm/fotaagent/enabler/ui/dialog/model/buttonstrategy/ButtonStrategy$Neutral;Lcom/idm/fotaagent/enabler/ui/dialog/model/buttonstrategy/ButtonStrategy$Negative;Lcom/idm/fotaagent/enabler/ui/dialog/model/buttonstrategy/ButtonStrategy$Positive;)V

    return-void
.end method

.method public static synthetic access$100()J
    .locals 2

    sget-wide v0, Lcom/idm/fotaagent/enabler/ui/dialog/model/InsufficientMemoryDialogModel;->requiredBytes:J

    return-wide v0
.end method

.method public static synthetic access$200(J)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/idm/fotaagent/enabler/ui/dialog/model/InsufficientMemoryDialogModel;->sizeWithUnit(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static message(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;

    invoke-direct {v0, p0}, Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/idm/fotaagent/enabler/ui/dialog/model/InsufficientMemoryDialogModel$MessageGenerator;->getMessage(Lcom/idm/fotaagent/database/sqlite/database/dao/ActionInfoDao;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static setRequiredBytes(J)V
    .locals 0

    sput-wide p0, Lcom/idm/fotaagent/enabler/ui/dialog/model/InsufficientMemoryDialogModel;->requiredBytes:J

    return-void
.end method

.method private static sizeWithUnit(J)Ljava/lang/String;
    .locals 8

    const-wide/16 v0, 0x1

    cmp-long v2, p0, v0

    if-gez v2, :cond_0

    const-string p0, "bytes should be positive"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    move-wide p0, v0

    :cond_0
    const-string v0, "GB"

    const-string v1, "TB"

    const-string v2, "B"

    const-string v3, "KB"

    const-string v4, "MB"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    long-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->log10(D)D

    move-result-wide v1

    const-wide v3, 0x408f400000000000L    # 1000.0

    invoke-static {v3, v4}, Ljava/lang/Math;->log10(D)D

    move-result-wide v5

    div-double/2addr v1, v5

    double-to-int v1, v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v5, Landroid/icu/text/DecimalFormat;

    const/4 v6, 0x2

    if-gt v1, v6, :cond_1

    const-string v6, "###0"

    goto :goto_0

    :cond_1
    const-string v6, "###0.##"

    :goto_0
    invoke-direct {v5, v6}, Landroid/icu/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    int-to-double v6, v1

    invoke-static {v3, v4, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    div-double/2addr p0, v3

    invoke-virtual {v5, p0, p1}, Landroid/icu/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p0, v0, v1

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static title()Ljava/lang/String;
    .locals 1

    const v0, 0x7f130074

    invoke-static {v0}, Lcom/idm/fotaagent/enabler/ui/dialog/model/IDMUIDialogModel$Base;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
