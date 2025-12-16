.class public Lcom/idm/fotaagent/enabler/fumo/policy/mdm/MDMInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final corpId:Ljava/lang/String;

.field private final targetVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/fumo/policy/mdm/MDMInfo;->getCorpIdAndTargetVersion()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/idm/fotaagent/enabler/fumo/policy/mdm/MDMInfo;->corpId:Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/idm/fotaagent/enabler/fumo/policy/mdm/MDMInfo;->targetVersion:Ljava/lang/String;

    return-void
.end method

.method private getCorpIdAndTargetVersion()[Ljava/lang/String;
    .locals 10

    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, ""

    aput-object v1, p0, v0

    const/4 v2, 0x1

    aput-object v1, p0, v2

    const-string v3, "content://com.sec.knox.provider/RestrictionPolicy4"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->idmGetContext()Landroid/content/Context;

    move-result-object v3

    :try_start_0
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "getAllowedFOTAInfo"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_1

    :try_start_1
    const-string v0, "Cursor is null"

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_0

    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_4

    :cond_0
    :goto_0
    return-object p0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    :try_start_3
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-nez v4, :cond_2

    const-string v0, "No value for corpId"

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    return-object p0

    :cond_2
    :try_start_5
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    const-string v4, "corpId is null"

    invoke-static {v4}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    move-object v4, v1

    :cond_3
    aput-object v4, p0, v0

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_4

    const-string v0, "No value for targetVersion"

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0

    return-object p0

    :cond_4
    :try_start_7
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    const-string v0, "targetVersion is null"

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    move-object v1, v0

    :goto_1
    aput-object v1, p0, v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_0

    return-object p0

    :goto_2
    if-eqz v3, :cond_6

    :try_start_9
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v1

    :try_start_a
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_3
    throw v0
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_0

    :goto_4
    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    return-object p0
.end method


# virtual methods
.method public getCorpId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/fumo/policy/mdm/MDMInfo;->corpId:Ljava/lang/String;

    return-object p0
.end method

.method public getTargetVersion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/fumo/policy/mdm/MDMInfo;->targetVersion:Ljava/lang/String;

    return-object p0
.end method
