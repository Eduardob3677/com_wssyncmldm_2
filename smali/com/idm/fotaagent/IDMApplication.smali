.class public Lcom/idm/fotaagent/IDMApplication;
.super Landroid/app/Application;
.source "SourceFile"


# static fields
.field public static context:Landroid/content/Context; = null

.field private static isLogEnabled:Z = false


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    sput-object p0, Lcom/idm/fotaagent/IDMApplication;->context:Landroid/content/Context;

    return-void
.end method

.method public static enableLog()V
    .locals 5

    sget-boolean v0, Lcom/idm/fotaagent/IDMApplication;->isLogEnabled:Z

    const-string v1, "called at "

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/samsung/android/fotaagent/common/log/Where;->callerOf(I)Lcom/samsung/android/fotaagent/common/log/Where;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance v0, Lcom/idm/adapter/logmanager/IDMDebug;

    new-instance v3, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterLogImpl;

    sget-object v4, Lcom/idm/fotaagent/IDMApplication;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/fotaagent/common/log/Log;->defaultLogger(Landroid/content/Context;)Lcom/samsung/android/fotaagent/common/log/Logger;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/idm/fotaagent/enabler/adapter/IDMAdapterLogImpl;-><init>(Lcom/samsung/android/fotaagent/common/log/Logger;)V

    invoke-direct {v0, v3}, Lcom/idm/adapter/logmanager/IDMDebug;-><init>(Lcom/idm/adapter/logmanager/IDMLogManagerAdapter;)V

    sget-object v0, Lcom/idm/fotaagent/IDMApplication;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/idm/fotaagent/analytics/diagmon/DiagMon;->setup(Landroid/content/Context;)V

    sget-object v0, Lcom/idm/fotaagent/IDMApplication;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Application;

    invoke-static {v0}, Lcom/idm/fotaagent/analytics/samsunganalytics/SALogging;->setup(Landroid/app/Application;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/samsung/android/fotaagent/common/log/Where;->callerOf(I)Lcom/samsung/android/fotaagent/common/log/Where;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    sput-boolean v2, Lcom/idm/fotaagent/IDMApplication;->isLogEnabled:Z

    return-void
.end method

.method public static getCPService()Lcom/idm/fotaagent/database/sqlite/database/provider/CPService;
    .locals 1

    invoke-static {}, Lcom/idm/fotaagent/cpservice/CPServiceFactory;->get()Lcom/idm/fotaagent/database/sqlite/database/provider/CPService;

    move-result-object v0

    return-object v0
.end method

.method public static getEnablerFactory()Lcom/idm/fotaagent/enabler/enablerfactory/AbstractEnablerFactory;
    .locals 1

    invoke-static {}, Lcom/idm/fotaagent/utils/DeviceUtils;->isABModel()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/idm/fotaagent/abupdate/abenabler/enablerfactory/ABEnablerFactory;

    invoke-direct {v0}, Lcom/idm/fotaagent/abupdate/abenabler/enablerfactory/ABEnablerFactory;-><init>()V

    return-object v0

    :cond_0
    const-string v0, "NonABEnablerFactory"

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    new-instance v0, Lcom/idm/fotaagent/enabler/enablerfactory/NonABEnablerFactory;

    invoke-direct {v0}, Lcom/idm/fotaagent/enabler/enablerfactory/NonABEnablerFactory;-><init>()V

    return-object v0
.end method

.method public static idmGetContext()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/idm/fotaagent/IDMApplication;->context:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->enableLog()V

    const-string p0, ">>>>>>>>>>   com.wssyncmldm starts   <<<<<<<<<<"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-static {}, Lcom/idm/fotaagent/InitExecutor;->get()Lcom/idm/fotaagent/InitExecutor;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/fotaagent/InitExecutor;->initialize()V

    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IDMApplication.startActivity() called at "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/samsung/android/fotaagent/common/log/Where;->callerOf(I)Lcom/samsung/android/fotaagent/common/log/Where;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    const/high16 v0, 0x34040000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    :try_start_0
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
