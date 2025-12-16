.class public Lcom/idm/adapter/logmanager/IDMDebug;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static debug:Lcom/idm/adapter/logmanager/IDMLogManager; = null

.field private static idmLogInterface:Lcom/idm/adapter/logmanager/IDMLogManagerAdapter; = null

.field private static idmSecurityKey:Ljava/lang/String; = ""

.field private static isDUMP:Z = false

.field private static isLogFileSaveEnable:Z = true

.field private static isPrivate:Z = false


# direct methods
.method public constructor <init>(Lcom/idm/adapter/logmanager/IDMLogManagerAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    sput-object p1, Lcom/idm/adapter/logmanager/IDMDebug;->idmLogInterface:Lcom/idm/adapter/logmanager/IDMLogManagerAdapter;

    invoke-interface {p1}, Lcom/idm/adapter/logmanager/IDMLogManagerAdapter;->idmGetSecurityKey()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/idm/adapter/logmanager/IDMDebug;->idmSecurityKey:Ljava/lang/String;

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/idm/adapter/logmanager/IDMLogManager;

    invoke-direct {p0}, Lcom/idm/adapter/logmanager/IDMLogManager;-><init>()V

    sput-object p0, Lcom/idm/adapter/logmanager/IDMDebug;->debug:Lcom/idm/adapter/logmanager/IDMLogManager;

    :goto_0
    return-void
.end method

.method public static D(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    sget-object v0, Lcom/idm/adapter/logmanager/IDMDebug;->idmLogInterface:Lcom/idm/adapter/logmanager/IDMLogManagerAdapter;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/idm/adapter/logmanager/IDMLogManagerAdapter;->D(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/idm/adapter/logmanager/IDMDebug;->debug:Lcom/idm/adapter/logmanager/IDMLogManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Lcom/idm/adapter/logmanager/IDMLogManager;->D(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method public static DUMP([BI)V
    .locals 8

    :try_start_0
    sget-boolean v0, Lcom/idm/adapter/logmanager/IDMDebug;->isDUMP:Z

    if-eqz v0, :cond_5

    if-nez p0, :cond_0

    const-string p0, "buf is null"

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    return-void

    :cond_0
    array-length v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_5

    add-int v5, v4, p1

    aget-byte v6, p0, v5

    shr-int/lit8 v6, v6, 0x4

    const/16 v7, 0xf

    and-int/2addr v6, v7

    invoke-static {v6}, Lcom/idm/adapter/common/IDMCommonUtils;->idmLibHexToChar(I)I

    move-result v6

    int-to-char v6, v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-byte v6, p0, v5

    and-int/2addr v6, v7

    invoke-static {v6}, Lcom/idm/adapter/common/IDMCommonUtils;->idmLibHexToChar(I)I

    move-result v6

    int-to-char v6, v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v6, 0x20

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-byte v5, p0, v5

    if-lt v5, v6, :cond_1

    const/16 v6, 0x7e

    if-gt v5, v6, :cond_1

    int-to-char v5, v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const/16 v5, 0x2e

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    rem-int/lit8 v5, v4, 0x10

    if-eq v5, v7, :cond_2

    add-int/lit8 v5, v0, -0x1

    if-ne v4, v5, :cond_4

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_3

    const-string v5, "   "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_3
    const-string v5, "\r\n"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->setLength(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    :cond_5
    return-void
.end method

.method public static E(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    sget-object v0, Lcom/idm/adapter/logmanager/IDMDebug;->idmLogInterface:Lcom/idm/adapter/logmanager/IDMLogManagerAdapter;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/idm/adapter/logmanager/IDMLogManagerAdapter;->E(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/idm/adapter/logmanager/IDMDebug;->debug:Lcom/idm/adapter/logmanager/IDMLogManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Lcom/idm/adapter/logmanager/IDMLogManager;->E(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method public static H(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    sget-object v0, Lcom/idm/adapter/logmanager/IDMDebug;->idmLogInterface:Lcom/idm/adapter/logmanager/IDMLogManagerAdapter;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/idm/adapter/logmanager/IDMLogManagerAdapter;->H(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/idm/adapter/logmanager/IDMDebug;->debug:Lcom/idm/adapter/logmanager/IDMLogManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Lcom/idm/adapter/logmanager/IDMLogManager;->H(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method public static I(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    sget-object v0, Lcom/idm/adapter/logmanager/IDMDebug;->idmLogInterface:Lcom/idm/adapter/logmanager/IDMLogManagerAdapter;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/idm/adapter/logmanager/IDMLogManagerAdapter;->I(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/idm/adapter/logmanager/IDMDebug;->debug:Lcom/idm/adapter/logmanager/IDMLogManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Lcom/idm/adapter/logmanager/IDMLogManager;->I(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method public static V(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    sget-object v0, Lcom/idm/adapter/logmanager/IDMDebug;->idmLogInterface:Lcom/idm/adapter/logmanager/IDMLogManagerAdapter;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/idm/adapter/logmanager/IDMLogManagerAdapter;->V(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/idm/adapter/logmanager/IDMDebug;->debug:Lcom/idm/adapter/logmanager/IDMLogManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Lcom/idm/adapter/logmanager/IDMLogManager;->V(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method public static W(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    sget-object v0, Lcom/idm/adapter/logmanager/IDMDebug;->idmLogInterface:Lcom/idm/adapter/logmanager/IDMLogManagerAdapter;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/idm/adapter/logmanager/IDMLogManagerAdapter;->W(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/idm/adapter/logmanager/IDMDebug;->debug:Lcom/idm/adapter/logmanager/IDMLogManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Lcom/idm/adapter/logmanager/IDMLogManager;->W(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method public static idmDumpLogeOnOff()V
    .locals 2

    sget-boolean v0, Lcom/idm/adapter/logmanager/IDMDebug;->isDUMP:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/idm/adapter/logmanager/IDMDebug;->isDUMP:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IDM_DUMPLOG_STATE : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v1, Lcom/idm/adapter/logmanager/IDMDebug;->isDUMP:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    return-void
.end method

.method public static idmGetDumpLogState()Z
    .locals 1

    sget-boolean v0, Lcom/idm/adapter/logmanager/IDMDebug;->isDUMP:Z

    return v0
.end method

.method public static idmGetLogFileSaveState()Z
    .locals 1

    sget-boolean v0, Lcom/idm/adapter/logmanager/IDMDebug;->isLogFileSaveEnable:Z

    return v0
.end method

.method public static idmGetSecurityKey()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/idm/adapter/logmanager/IDMDebug;->idmSecurityKey:Ljava/lang/String;

    return-object v0
.end method

.method public static idmLogfileSaveOnOff()V
    .locals 2

    sget-boolean v0, Lcom/idm/adapter/logmanager/IDMDebug;->isLogFileSaveEnable:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/idm/adapter/logmanager/IDMDebug;->isLogFileSaveEnable:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IDM_LOGFILESAVE_STATE : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v1, Lcom/idm/adapter/logmanager/IDMDebug;->isLogFileSaveEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    return-void
.end method

.method public static idmPrivateLogOnOff()V
    .locals 2

    sget-boolean v0, Lcom/idm/adapter/logmanager/IDMDebug;->isPrivate:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/idm/adapter/logmanager/IDMDebug;->isPrivate:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IDM_PRIVATE_LOG_ON : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v1, Lcom/idm/adapter/logmanager/IDMDebug;->isPrivate:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    return-void
.end method

.method public static idmSaveDevInfoLog(Landroid/content/Context;)V
    .locals 1

    :try_start_0
    sget-object v0, Lcom/idm/adapter/logmanager/IDMDebug;->idmLogInterface:Lcom/idm/adapter/logmanager/IDMLogManagerAdapter;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/idm/adapter/logmanager/IDMLogManagerAdapter;->idmSaveDevInfoLog(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static idmSaveDeviceStatusLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    sget-object v0, Lcom/idm/adapter/logmanager/IDMDebug;->idmLogInterface:Lcom/idm/adapter/logmanager/IDMLogManagerAdapter;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2}, Lcom/idm/adapter/logmanager/IDMLogManagerAdapter;->idmSaveDeviceStatusLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static printStackTrace(Ljava/lang/Throwable;)V
    .locals 1

    :try_start_0
    sget-object v0, Lcom/idm/adapter/logmanager/IDMDebug;->idmLogInterface:Lcom/idm/adapter/logmanager/IDMLogManagerAdapter;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/idm/adapter/logmanager/IDMLogManagerAdapter;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/idm/adapter/logmanager/IDMDebug;->debug:Lcom/idm/adapter/logmanager/IDMLogManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Lcom/idm/adapter/logmanager/IDMLogManager;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method
