.class public Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationRawData$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationRawData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field static final LENGTH_DIGEST:I = 0x10

.field static final LENGTH_TRIGGER_HEADER:I = 0x8


# instance fields
.field private rawData:[B

.field private final serverId:[B

.field private triggerBody:[B

.field private final triggerHeader:[B

.field private uiMode:Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/UiMode;


# direct methods
.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationRawData$Builder;->serverId:[B

    invoke-direct {p0}, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationRawData$Builder;->createDefaultHeader()[B

    move-result-object p1

    iput-object p1, p0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationRawData$Builder;->triggerHeader:[B

    sget-object p1, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/UiMode;->USER_INTERACTION:Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/UiMode;

    iput-object p1, p0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationRawData$Builder;->uiMode:Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/UiMode;

    return-void
.end method

.method public static synthetic access$000(Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationRawData$Builder;)[B
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationRawData$Builder;->rawData:[B

    return-object p0
.end method

.method private assemble()V
    .locals 5

    invoke-direct {p0}, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationRawData$Builder;->resolveIfConflictExists()V

    iget-object v0, p0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationRawData$Builder;->triggerHeader:[B

    array-length v1, v0

    const/16 v2, 0x10

    add-int/2addr v1, v2

    iget-object v3, p0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationRawData$Builder;->triggerBody:[B

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    array-length v3, v3

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    add-int/2addr v1, v3

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationRawData$Builder;->rawData:[B

    array-length v3, v0

    invoke-static {v0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationRawData$Builder;->triggerBody:[B

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationRawData$Builder;->rawData:[B

    iget-object p0, p0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationRawData$Builder;->triggerHeader:[B

    array-length p0, p0

    add-int/2addr p0, v2

    array-length v2, v0

    invoke-static {v0, v4, v1, p0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    return-void
.end method

.method private convertToByte(Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/UiMode;)B
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "uiMode : "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    sget-object p0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationRawData$1;->$SwitchMap$com$idm$fotaagent$database$sqlite$database$mo$push$field$UiMode:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    if-eq p0, p1, :cond_2

    const/4 p1, 0x2

    if-eq p0, p1, :cond_1

    const/4 p1, 0x3

    if-eq p0, p1, :cond_0

    const/16 p0, -0x38

    return p0

    :cond_0
    const/16 p0, -0x28

    return p0

    :cond_1
    const/4 p0, -0x8

    return p0

    :cond_2
    const/16 p0, -0x18

    return p0
.end method

.method private createDefaultHeader()[B
    .locals 6

    iget-object p0, p0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationRawData$Builder;->serverId:[B

    array-length v0, p0

    add-int/lit8 v0, v0, 0x8

    new-array v1, v0, [B

    const/4 v2, 0x0

    const/4 v3, 0x2

    aput-byte v3, v1, v2

    const/4 v4, 0x1

    const/4 v5, -0x8

    aput-byte v5, v1, v4

    aput-byte v2, v1, v3

    const/4 v3, 0x3

    aput-byte v2, v1, v3

    const/4 v3, 0x4

    aput-byte v2, v1, v3

    const/4 v3, 0x5

    const/16 v4, 0x67

    aput-byte v4, v1, v3

    const/4 v3, 0x6

    const/16 v4, 0x21

    aput-byte v4, v1, v3

    array-length v3, p0

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    const/4 v4, 0x7

    aput-byte v3, v1, v4

    array-length v3, p0

    sub-int/2addr v0, v3

    array-length v3, p0

    invoke-static {p0, v2, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method private resolveIfConflictExists()V
    .locals 4

    iget-object v0, p0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationRawData$Builder;->triggerBody:[B

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    aget-byte v0, v0, v1

    sget-object v1, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/UiMode;->WIFI_BACKGROUND:Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/UiMode;

    invoke-virtual {v1}, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/UiMode;->toCode()B

    move-result v2

    const/4 v3, 0x1

    if-ne v0, v2, :cond_1

    iput-object v1, p0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationRawData$Builder;->uiMode:Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/UiMode;

    iget-object v0, p0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationRawData$Builder;->triggerHeader:[B

    invoke-direct {p0, v1}, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationRawData$Builder;->convertToByte(Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/UiMode;)B

    move-result p0

    aput-byte p0, v0, v3

    return-void

    :cond_1
    iget-object v0, p0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationRawData$Builder;->uiMode:Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/UiMode;

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/UiMode;->NOT_SPECIFIED:Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/UiMode;

    iput-object v0, p0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationRawData$Builder;->uiMode:Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/UiMode;

    iget-object v1, p0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationRawData$Builder;->triggerHeader:[B

    invoke-direct {p0, v0}, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationRawData$Builder;->convertToByte(Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/UiMode;)B

    move-result p0

    aput-byte p0, v1, v3

    :cond_2
    return-void
.end method

.method private setVendorIfWifiBackground(Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/UiMode;)V
    .locals 1

    sget-object v0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/UiMode;->WIFI_BACKGROUND:Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/UiMode;

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationRawData$Builder;->triggerBody:[B

    if-nez p1, :cond_1

    const/4 p1, 0x1

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationRawData$Builder;->triggerBody:[B

    const/4 p0, 0x0

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/UiMode;->toCode()B

    move-result v0

    aput-byte v0, p1, p0

    :cond_1
    return-void
.end method


# virtual methods
.method public body([B)Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationRawData$Builder;
    .locals 0

    iput-object p1, p0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationRawData$Builder;->triggerBody:[B

    return-object p0
.end method

.method public build()Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationRawData;
    .locals 1

    invoke-direct {p0}, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationRawData$Builder;->assemble()V

    new-instance v0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationRawData;

    invoke-direct {v0, p0}, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationRawData;-><init>(Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationRawData$Builder;)V

    return-object v0
.end method

.method public uiMode(Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/UiMode;)Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationRawData$Builder;
    .locals 3

    iput-object p1, p0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationRawData$Builder;->uiMode:Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/UiMode;

    iget-object v0, p0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationRawData$Builder;->triggerHeader:[B

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationRawData$Builder;->convertToByte(Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/UiMode;)B

    move-result v2

    aput-byte v2, v0, v1

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationRawData$Builder;->setVendorIfWifiBackground(Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/UiMode;)V

    return-object p0
.end method
