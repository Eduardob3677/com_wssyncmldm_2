.class Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForPush$LazyInstanceHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForPush;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LazyInstanceHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForPush;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForPush;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForPush;-><init>(Lcom/idm/fotaagent/restapi/request/DeviceInfo$1;)V

    sput-object v0, Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForPush$LazyInstanceHolder;->INSTANCE:Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForPush;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$100()Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForPush;
    .locals 1

    sget-object v0, Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForPush$LazyInstanceHolder;->INSTANCE:Lcom/idm/fotaagent/restapi/request/DeviceInfo$ForPush;

    return-object v0
.end method
