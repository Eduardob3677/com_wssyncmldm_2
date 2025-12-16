.class public Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForPush;
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
    name = "ForPush"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForPush$LazyInstanceHolder;
    }
.end annotation


# static fields
.field private static final TAG_DEVICE_ID:Ljava/lang/String; = "deviceID"

.field private static final TAG_PUSH_TYPE:Ljava/lang/String; = "pushType"

.field private static final TAG_REGISTRATION_ID:Ljava/lang/String; = "registrationID"


# instance fields
.field private deviceId:Lcom/idm/fotaagent/restapi/request/Node;

.field private pushId:Lcom/idm/fotaagent/restapi/request/Node;

.field private pushType:Lcom/idm/fotaagent/restapi/request/Node;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/idm/fotaagent/restapi/request/DeviceInfo$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForPush;-><init>()V

    return-void
.end method

.method public static get()Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForPush;
    .locals 1

    invoke-static {}, Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForPush$LazyInstanceHolder;->access$100()Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForPush;

    move-result-object v0

    return-object v0
.end method


# virtual methods
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

    iget-object v0, p0, Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForPush;->pushId:Lcom/idm/fotaagent/restapi/request/Node;

    if-nez v0, :cond_0

    new-instance v0, Lcom/idm/fotaagent/restapi/request/Node;

    const-string v1, "registrationID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/idm/fotaagent/restapi/request/Node;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForPush;->pushId:Lcom/idm/fotaagent/restapi/request/Node;

    :cond_0
    iget-object v0, p0, Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForPush;->deviceId:Lcom/idm/fotaagent/restapi/request/Node;

    iget-object v1, p0, Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForPush;->pushType:Lcom/idm/fotaagent/restapi/request/Node;

    iget-object p0, p0, Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForPush;->pushId:Lcom/idm/fotaagent/restapi/request/Node;

    filled-new-array {v0, v1, p0}, [Lcom/idm/fotaagent/restapi/request/Node;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public readDeviceInfo(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Lcom/idm/fotaagent/restapi/request/Node;

    const-string v1, "deviceID"

    invoke-static {p1}, Lcom/samsung/android/fotaagent/common/DeviceId;->readDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/idm/fotaagent/restapi/request/Node;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForPush;->deviceId:Lcom/idm/fotaagent/restapi/request/Node;

    new-instance v0, Lcom/idm/fotaagent/restapi/request/Node;

    invoke-static {}, Lcom/idm/fotaagent/restapi/restclient/push/message/PushType;->get()Lcom/idm/fotaagent/restapi/restclient/push/message/PushType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pushType"

    invoke-direct {v0, v2, v1}, Lcom/idm/fotaagent/restapi/request/Node;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForPush;->pushType:Lcom/idm/fotaagent/restapi/request/Node;

    new-instance v0, Lcom/idm/fotaagent/restapi/request/Node;

    invoke-static {}, Lcom/idm/fotaagent/restapi/restclient/push/message/PushType;->get()Lcom/idm/fotaagent/restapi/restclient/push/message/PushType;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/idm/fotaagent/restapi/restclient/push/message/PushType;->getPushId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "registrationID"

    invoke-direct {v0, v1, p1}, Lcom/idm/fotaagent/restapi/request/Node;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForPush;->pushId:Lcom/idm/fotaagent/restapi/request/Node;

    return-void
.end method
