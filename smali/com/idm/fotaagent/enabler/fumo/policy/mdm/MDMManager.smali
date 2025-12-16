.class public Lcom/idm/fotaagent/enabler/fumo/policy/mdm/MDMManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idm/fotaagent/enabler/fumo/policy/mdm/MDMManager$MDMEnabled;,
        Lcom/idm/fotaagent/enabler/fumo/policy/mdm/MDMManager$MDMDisabled;
    }
.end annotation


# static fields
.field private static final EDM_FALSE:I = 0x0

.field private static final EDM_NULL:I = -0x1

.field private static final EDM_TRUE:I = 0x1

.field public static final MDM_RESULT_REGISTRATION_ALREADY_REGISTERED:I = 0x1

.field public static final MDM_RESULT_REGISTRATION_FAILED:I = -0x1

.field public static final MDM_RESULT_REGISTRATION_SUCCESS:I


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBehavior()Lcom/idm/fotaagent/enabler/fumo/policy/interfaces/Behavior;
    .locals 2

    invoke-static {}, Lcom/idm/fotaagent/enabler/fumo/policy/mdm/MDMManager;->getFOTABlocked()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/idm/fotaagent/enabler/fumo/policy/mdm/MDMManager$MDMEnabled;

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/enabler/fumo/policy/mdm/MDMManager$MDMEnabled;-><init>(Lcom/idm/fotaagent/enabler/fumo/policy/mdm/MDMManager$1;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/idm/fotaagent/enabler/fumo/policy/mdm/MDMManager$MDMDisabled;

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/enabler/fumo/policy/mdm/MDMManager$MDMDisabled;-><init>(Lcom/idm/fotaagent/enabler/fumo/policy/mdm/MDMManager$1;)V

    return-object v0
.end method

.method private static getContext()Landroid/content/Context;
    .locals 1

    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->idmGetContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private static getFOTABlocked()Z
    .locals 2

    invoke-static {}, Lcom/idm/fotaagent/enabler/fumo/policy/mdm/MDMManager;->getOTAAllowed()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    xor-int/2addr v0, v1

    return v0
.end method

.method private static getOTAAllowed()I
    .locals 8

    const-string v0, "content://com.sec.knox.provider/RestrictionPolicy3"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v0, "isOTAUpgradeAllowed"

    const/4 v7, -0x1

    :try_start_0
    invoke-static {}, Lcom/idm/fotaagent/enabler/fumo/policy/mdm/MDMManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_1

    :try_start_1
    const-string v0, "cursor is null. return EDM_NULL"

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_0
    :goto_0
    return v7

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_2

    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x1

    return v0

    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    const/4 v0, 0x0

    return v0

    :goto_1
    if-eqz v1, :cond_3

    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v1

    :try_start_6
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :goto_3
    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    return v7
.end method

.method public static sendRegistrationResultIfNeeded(I)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "result = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    new-instance v0, Lcom/idm/fotaagent/database/room/data/repository/GeneralRepository;

    invoke-static {}, Lcom/idm/fotaagent/enabler/fumo/policy/mdm/MDMManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/database/room/data/repository/GeneralRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/room/data/repository/GeneralRepository;->needsToSendResultForMDM()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "send IDM_INTENT_MDM_REGISTER_RESULT"

    invoke-static {v1}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "sec.fota.intent.MDM_REGISTER_RESULT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "result"

    invoke-virtual {v1, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    const v1, 0x1000020

    invoke-virtual {p0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p0

    invoke-static {}, Lcom/idm/fotaagent/enabler/fumo/policy/mdm/MDMManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/room/data/repository/GeneralRepository;->disableSendResultForMDM()V

    :cond_0
    return-void
.end method
