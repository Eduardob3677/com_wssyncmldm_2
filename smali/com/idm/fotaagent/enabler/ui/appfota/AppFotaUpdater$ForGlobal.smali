.class Lcom/idm/fotaagent/enabler/ui/appfota/AppFotaUpdater$ForGlobal;
.super Lcom/idm/fotaagent/enabler/ui/appfota/AppFotaUpdater;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/enabler/ui/appfota/AppFotaUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForGlobal"
.end annotation


# static fields
.field private static final NAME_ONEUI_VERSION:Ljava/lang/String; = "oneui_version"

.field private static final NAME_SPEC_VERSION:Ljava/lang/String; = "spec_version"

.field private static final URI:Ljava/lang/String; = "content://com.samsung.android.app.updatecenter.provider/target"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/enabler/ui/appfota/AppFotaUpdater;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getContentValues()Landroid/content/ContentValues;
    .locals 4

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iget-object v1, p0, Lcom/idm/fotaagent/enabler/ui/appfota/AppFotaUpdater;->installParamRepository:Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository;

    invoke-virtual {v1}, Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository;->getUpdateFwVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "firmware_version"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "spec_version"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v1, Lcom/idm/fotaagent/enabler/ui/whatsnew/MajorUpdate;->FOR_WHATS_NEW:Lcom/idm/fotaagent/enabler/ui/whatsnew/MajorUpdate;

    iget-object v2, p0, Lcom/idm/fotaagent/enabler/ui/appfota/AppFotaUpdater;->context:Landroid/content/Context;

    invoke-interface {v1, v2}, Lcom/idm/fotaagent/enabler/ui/whatsnew/MajorUpdate;->isMajorUpdate(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/appfota/AppFotaUpdater;->installParamRepository:Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository;

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository;->getUpdateOneUiVersion()Ljava/lang/String;

    move-result-object p0

    const-string v1, "oneui_version"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "key : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public setContentValues(Landroid/content/ContentValues;)V
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/appfota/AppFotaUpdater;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "content://com.samsung.android.app.updatecenter.provider/target"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0

    const-string p1, "Uri resulting from insert should not be null"

    invoke-static {p0, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p0, "succeeded to inform Global AppUpdateCenter"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "failed to inform Global AppUpdateCenter\n"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
