.class public abstract Lcom/idm/fotaagent/enabler/ui/appfota/AppFotaFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idm/fotaagent/enabler/ui/appfota/AppFotaFactory$Global;,
        Lcom/idm/fotaagent/enabler/ui/appfota/AppFotaFactory$Nothing;,
        Lcom/idm/fotaagent/enabler/ui/appfota/AppFotaFactory$CHN;
    }
.end annotation


# static fields
.field private static final APP_FOTA_ENABLED:I = 0x1

.field private static final APP_FOTA_ENABLED_IN_V2_ONLY:I = 0x0

.field private static final EXTRA_FW_VERSION:Ljava/lang/String; = "EXTRA_FW_VERSION"


# instance fields
.field protected final context:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/idm/fotaagent/enabler/ui/appfota/AppFotaFactory;->context:Landroid/content/Context;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/idm/fotaagent/enabler/ui/appfota/AppFotaFactory$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/enabler/ui/appfota/AppFotaFactory;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/idm/fotaagent/enabler/ui/appfota/AppFotaFactory;
    .locals 4

    new-instance v0, Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository;

    invoke-direct {v0, p0}, Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository;->getAppFota()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "AppFota Not Required: appFota="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    new-instance v0, Lcom/idm/fotaagent/enabler/ui/appfota/AppFotaFactory$Nothing;

    invoke-direct {v0, p0, v2}, Lcom/idm/fotaagent/enabler/ui/appfota/AppFotaFactory$Nothing;-><init>(Landroid/content/Context;Lcom/idm/fotaagent/enabler/ui/appfota/AppFotaFactory$1;)V

    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/idm/fotaagent/enabler/ui/appfota/AppFotaFactory;->existsCHNUri(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/idm/fotaagent/enabler/ui/appfota/AppFotaFactory$CHN;

    invoke-direct {v0, p0, v2}, Lcom/idm/fotaagent/enabler/ui/appfota/AppFotaFactory$CHN;-><init>(Landroid/content/Context;Lcom/idm/fotaagent/enabler/ui/appfota/AppFotaFactory$1;)V

    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/idm/fotaagent/enabler/ui/appfota/AppFotaFactory;->getSpecVersion(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    new-instance v0, Lcom/idm/fotaagent/enabler/ui/appfota/AppFotaFactory$Global;

    invoke-direct {v0, p0, v2}, Lcom/idm/fotaagent/enabler/ui/appfota/AppFotaFactory$Global;-><init>(Landroid/content/Context;Lcom/idm/fotaagent/enabler/ui/appfota/AppFotaFactory$1;)V

    return-object v0

    :cond_2
    new-instance v0, Lcom/idm/fotaagent/enabler/ui/appfota/AppFotaFactory$Nothing;

    invoke-direct {v0, p0, v2}, Lcom/idm/fotaagent/enabler/ui/appfota/AppFotaFactory$Nothing;-><init>(Landroid/content/Context;Lcom/idm/fotaagent/enabler/ui/appfota/AppFotaFactory$1;)V

    return-object v0
.end method

.method private static existsCHNUri(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "content://com.samsung.android.preloadappprovider/target_fw"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v2, v2}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-eqz p0, :cond_1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return v1

    :catch_0
    const-string p0, "Not exist CHN URI"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return v0
.end method

.method private static getSpecVersion(Landroid/content/Context;)I
    .locals 3

    const-string v0, "App update center specVersion : "

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "PackageManager should not be null"

    invoke-static {p0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "com.samsung.android.app.updatecenter"

    const/16 v2, 0x80

    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "com.samsung.android.app.updatecenter.provider.spec_version"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AppFota Not Required\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    const-string p0, "Global app fota package not found"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    :goto_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public abstract getAppFota()Lcom/idm/fotaagent/enabler/ui/appfota/AppFotaUpdater;
.end method

.method public abstract getAppUpdateModel()Lcom/idm/fotaagent/enabler/ui/common/subcontent/ContentInjector$Model;
.end method

.method public abstract getIntent()Landroid/content/Intent;
.end method
