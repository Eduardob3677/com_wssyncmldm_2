.class public Lcom/idm/fotaagent/restapi/parser/XmlParser$Device;
.super Lcom/idm/fotaagent/restapi/parser/XmlParser;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/restapi/parser/XmlParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Device"
.end annotation


# static fields
.field public static final DEVICE_FIRST_POLLING_TIME:Ljava/lang/String; = "versioninfo/DeviceInitDelayTime"

.field public static final DEVICE_HEARTBEAT_NOW:Ljava/lang/String; = "versioninfo/ActiveDeviceInfo/ImmediatelyDeviceHeartbeat"

.field public static final DEVICE_HEARTBEAT_NOW_VALUE:Ljava/lang/String; = "1"

.field public static final DEVICE_HEARTBEAT_PERIOD:Ljava/lang/String; = "versioninfo/ActiveDeviceInfo/CycleOfDeviceHeartbeat"

.field public static final DEVICE_HEARTBEAT_URL:Ljava/lang/String; = "versioninfo/ActiveDeviceInfo/ServiceURL"

.field private static final DEVICE_PARSING_EXPRESSIONS:[Ljava/lang/String;

.field public static final DEVICE_POLLING_TARGET:Ljava/lang/String; = "versioninfo/Polling/filename"

.field public static final DEVICE_POLLING_URL:Ljava/lang/String; = "versioninfo/url"


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v4, "versioninfo/ActiveDeviceInfo/ImmediatelyDeviceHeartbeat"

    const-string v5, "versioninfo/DeviceInitDelayTime"

    const-string v0, "versioninfo/url"

    const-string v1, "versioninfo/Polling/filename"

    const-string v2, "versioninfo/ActiveDeviceInfo/CycleOfDeviceHeartbeat"

    const-string v3, "versioninfo/ActiveDeviceInfo/ServiceURL"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/idm/fotaagent/restapi/parser/XmlParser$Device;->DEVICE_PARSING_EXPRESSIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/restapi/parser/XmlParser;-><init>()V

    return-void
.end method


# virtual methods
.method public doParseForSuccess(Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/idm/fotaagent/restapi/parser/XmlParser$Device;->DEVICE_PARSING_EXPRESSIONS:[Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/idm/fotaagent/restapi/parser/XmlParser;->parse(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method
