.class public Lcom/idm/fotaagent/cpservice/HotSpotService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/idm/fotaagent/database/sqlite/database/provider/CPService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idm/fotaagent/cpservice/HotSpotService$Attribute;
    }
.end annotation


# static fields
.field private static final CHECKING_FOR_UPDATE:Ljava/lang/String; = "1"

.field static final CHECK_FOR_UPDATE:Ljava/lang/String; = "10"

.field static final COLUMN_NAME_KEY:Ljava/lang/String; = "key"

.field static final COLUMN_NAME_VALUE:Ljava/lang/String; = "value"

.field private static final DOWNLOADING:Ljava/lang/String; = "2"

.field private static final DOWNLOAD_COMPLETE:Ljava/lang/String; = "3"

.field private static final IDLE:Ljava/lang/String; = "0"

.field private static final INSTALLING:Ljava/lang/String; = "4"

.field private static final NO_ERROR:Ljava/lang/String; = "0"

.field private static final NULL:Ljava/lang/String; = "NULL"

.field static final START_INSTALLING:Ljava/lang/String; = "11"

.field private static final columnNames:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "key"

    const-string v1, "value"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/idm/fotaagent/cpservice/HotSpotService;->columnNames:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isReadyToInstall()Z
    .locals 1

    sget-object p0, Lcom/idm/fotaagent/cpservice/HotSpotService$Attribute;->UPDATE_STATE:Lcom/idm/fotaagent/cpservice/HotSpotService$Attribute;

    invoke-virtual {p0}, Lcom/idm/fotaagent/cpservice/HotSpotService$Attribute;->getValue()Ljava/lang/String;

    move-result-object p0

    const-string v0, "3"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public query()Landroid/database/Cursor;
    .locals 7

    const-string p0, ""

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    new-instance p0, Landroid/database/MatrixCursor;

    sget-object v0, Lcom/idm/fotaagent/cpservice/HotSpotService;->columnNames:[Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-static {}, Lcom/idm/fotaagent/cpservice/HotSpotService$Attribute;->values()[Lcom/idm/fotaagent/cpservice/HotSpotService$Attribute;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {p0}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/idm/fotaagent/cpservice/HotSpotService$Attribute;->getKey()Ljava/lang/String;

    move-result-object v5

    const-string v6, "key"

    invoke-virtual {v4, v6, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v4

    const-string v5, "value"

    invoke-virtual {v3}, Lcom/idm/fotaagent/cpservice/HotSpotService$Attribute;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public update(Landroid/content/ContentValues;)I
    .locals 3

    const-string v0, "key"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/idm/fotaagent/cpservice/HotSpotService$Attribute;->UPDATE_STATE:Lcom/idm/fotaagent/cpservice/HotSpotService$Attribute;

    invoke-virtual {v1}, Lcom/idm/fotaagent/cpservice/HotSpotService$Attribute;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "attributeKey is not update_state"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->E(Ljava/lang/Object;)V

    return v1

    :cond_0
    const-string v0, "value"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "attributeValue is null"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->E(Ljava/lang/Object;)V

    return v1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "10"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_4

    const-string v0, "11"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string p0, "wrong update_state value - "

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->E(Ljava/lang/Object;)V

    return v1

    :cond_2
    invoke-direct {p0}, Lcom/idm/fotaagent/cpservice/HotSpotService;->isReadyToInstall()Z

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "It is not currently installable."

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->E(Ljava/lang/Object;)V

    return v1

    :cond_3
    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->getEnablerFactory()Lcom/idm/fotaagent/enabler/enablerfactory/AbstractEnablerFactory;

    move-result-object p0

    invoke-static {}, Lcom/idm/fotaagent/cpservice/HotSpotService$Attribute;->access$000()Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Lcom/idm/fotaagent/cpservice/HotSpotService$Attribute;->access$100()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/idm/fotaagent/enabler/enablerfactory/AbstractEnablerFactory;->getInstallHandler(Landroid/content/Context;Ljava/lang/String;)Lcom/idm/fotaagent/enabler/fumo/IDMFumoInstallHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/fumo/IDMFumoInstallHandler;->execute()V

    return v2

    :cond_4
    const-string p0, "HotSpot - Check for update"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-static {}, Lcom/idm/fotaagent/scheduler/SchedulerInitiator;->getInstance()Lcom/idm/fotaagent/scheduler/SchedulerInitiator;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/fotaagent/scheduler/SchedulerInitiator;->initiateByDevice()V

    return v2
.end method
