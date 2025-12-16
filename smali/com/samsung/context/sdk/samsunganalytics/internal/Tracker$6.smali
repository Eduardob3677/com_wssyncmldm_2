.class Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LK2/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->requestDeleteLogData(Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;

.field final synthetic val$registerType:Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterType;


# direct methods
.method public constructor <init>(Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterType;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker$6;->this$0:Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;

    iput-object p2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker$6;->val$registerType:Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker$6;->this$0:Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;

    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->access$400(Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;)Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->isEnableUseInAppLogging()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker$6;->this$0:Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;

    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->access$100(Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker$6;->this$0:Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;

    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->access$500(Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;)Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker$6;->this$0:Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;

    invoke-static {v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->access$400(Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;)Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker$6;->val$registerType:Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterType;

    invoke-static {v0, v1, v2}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils;->sendRegistration(Landroid/app/Application;Lcom/samsung/context/sdk/samsunganalytics/Configuration;Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterType;)V

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker$6;->this$0:Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;

    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->access$400(Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;)Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->getAuidType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker$6;->val$registerType:Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterType;

    sget-object v1, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterType;->DELETE_APP_DATA:Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterType;

    if-ne v0, v1, :cond_1

    const-string v0, "Reset deviceid"

    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->LogD(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker$6;->this$0:Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;

    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->access$700(Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->access$800(Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;Ljava/lang/String;)V

    :cond_1
    iget-object p0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker$6;->this$0:Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;

    invoke-static {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->access$900(Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;)Lcom/samsung/context/sdk/samsunganalytics/internal/util/DeleteApiCallChecker;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/DeleteApiCallChecker;->increaseCount()V

    :cond_2
    :goto_0
    return-void
.end method
