.class final enum Lcom/samsung/android/fotaagent/common/DeviceId$DeviceIdType$3;
.super Lcom/samsung/android/fotaagent/common/DeviceId$DeviceIdType;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/fotaagent/common/DeviceId$DeviceIdType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/fotaagent/common/DeviceId$DeviceIdType;-><init>(Ljava/lang/String;ILcom/samsung/android/fotaagent/common/DeviceId$1;)V

    return-void
.end method


# virtual methods
.method public getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-static {}, Lcom/idm/fotaagent/utils/DeviceUtils;->getSerialNumber()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/fotaagent/common/DeviceId$DeviceIdType;->toDeviceIdFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
