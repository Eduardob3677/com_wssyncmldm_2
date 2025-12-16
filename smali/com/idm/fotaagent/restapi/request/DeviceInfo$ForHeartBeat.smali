.class public Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForHeartBeat;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/idm/fotaagent/restapi/request/DeviceInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/restapi/request/DeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForHeartBeat"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForHeartBeat$LazyInstanceHolder;
    }
.end annotation


# static fields
.field private static final TAG_FIRMWARE_VERSION:Ljava/lang/String; = "firmwareVersion"

.field private static final TAG_MODEL_ID:Ljava/lang/String; = "deviceModelID"

.field static final TAG_SALES_CODE:Ljava/lang/String; = "customerCode"

.field static final TAG_UNIQUE_ID:Ljava/lang/String; = "deviceUniqueID"


# instance fields
.field protected deviceId:Lcom/idm/fotaagent/restapi/request/Node;

.field protected deviceVersion:Lcom/idm/fotaagent/restapi/request/Node;

.field protected modelId:Lcom/idm/fotaagent/restapi/request/Node;

.field protected salesCode:Lcom/idm/fotaagent/restapi/request/Node;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/idm/fotaagent/restapi/request/DeviceInfo$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForHeartBeat;-><init>()V

    return-void
.end method

.method public static get()Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForHeartBeat;
    .locals 1

    invoke-static {}, Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForHeartBeat$LazyInstanceHolder;->access$300()Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForHeartBeat;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDeviceId()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForHeartBeat;->deviceId:Lcom/idm/fotaagent/restapi/request/Node;

    invoke-virtual {p0}, Lcom/idm/fotaagent/restapi/request/Node;->content()Ljava/util/Optional;

    move-result-object p0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getNodes()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/idm/fotaagent/restapi/request/Node;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForHeartBeat;->deviceId:Lcom/idm/fotaagent/restapi/request/Node;

    iget-object v1, p0, Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForHeartBeat;->modelId:Lcom/idm/fotaagent/restapi/request/Node;

    iget-object v2, p0, Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForHeartBeat;->salesCode:Lcom/idm/fotaagent/restapi/request/Node;

    iget-object p0, p0, Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForHeartBeat;->deviceVersion:Lcom/idm/fotaagent/restapi/request/Node;

    filled-new-array {v0, v1, v2, p0}, [Lcom/idm/fotaagent/restapi/request/Node;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getSalesCode()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForHeartBeat;->salesCode:Lcom/idm/fotaagent/restapi/request/Node;

    invoke-virtual {p0}, Lcom/idm/fotaagent/restapi/request/Node;->content()Ljava/util/Optional;

    move-result-object p0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public readDeviceInfo(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Lcom/idm/fotaagent/restapi/request/Node;

    const-string v1, "deviceUniqueID"

    invoke-static {p1}, Lcom/samsung/android/fotaagent/common/DeviceId;->readDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/idm/fotaagent/restapi/request/Node;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForHeartBeat;->deviceId:Lcom/idm/fotaagent/restapi/request/Node;

    new-instance p1, Lcom/idm/fotaagent/restapi/request/Node;

    const-string v0, "deviceModelID"

    invoke-static {}, Lcom/idm/fotaagent/utils/DeviceUtils;->readModelName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/idm/fotaagent/restapi/request/Node;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForHeartBeat;->modelId:Lcom/idm/fotaagent/restapi/request/Node;

    new-instance p1, Lcom/idm/fotaagent/restapi/request/Node;

    invoke-static {}, Lcom/samsung/android/fotaagent/common/feature/SalesCode;->get()Lcom/samsung/android/fotaagent/common/feature/SalesCode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/fotaagent/common/feature/SalesCode;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "customerCode"

    invoke-direct {p1, v1, v0}, Lcom/idm/fotaagent/restapi/request/Node;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForHeartBeat;->salesCode:Lcom/idm/fotaagent/restapi/request/Node;

    new-instance p1, Lcom/idm/fotaagent/restapi/request/Node;

    const-string v0, "firmwareVersion"

    invoke-static {}, Lcom/idm/fotaagent/utils/DeviceUtils;->readFirmwareVersion()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/idm/fotaagent/restapi/request/Node;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForHeartBeat;->deviceVersion:Lcom/idm/fotaagent/restapi/request/Node;

    return-void
.end method
