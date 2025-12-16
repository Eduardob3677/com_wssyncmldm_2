.class final enum Lcom/idm/fotaagent/cpservice/HotSpotService$Attribute$6;
.super Lcom/idm/fotaagent/cpservice/HotSpotService$Attribute;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/cpservice/HotSpotService$Attribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/idm/fotaagent/cpservice/HotSpotService$Attribute;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/idm/fotaagent/cpservice/HotSpotService$1;)V

    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 0

    invoke-static {}, Lcom/idm/fotaagent/utils/DeviceUtils;->readFirmwareVersion()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
