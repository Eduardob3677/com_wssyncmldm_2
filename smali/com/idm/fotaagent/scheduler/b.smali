.class public final synthetic Lcom/idm/fotaagent/scheduler/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/idm/fotaagent/scheduler/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lcom/idm/fotaagent/scheduler/b;->a:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Lcom/idm/fotaagent/database/room/data/repository/RegisteredDeviceRepository;

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/room/data/repository/RegisteredDeviceRepository;->getSalesCode()Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Lcom/idm/fotaagent/database/room/data/repository/RegisteredDeviceRepository;

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/room/data/repository/RegisteredDeviceRepository;->getModelName()Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p1, Lcom/idm/fotaagent/database/room/data/repository/RegisteredDeviceRepository;

    invoke-virtual {p1}, Lcom/idm/fotaagent/database/room/data/repository/RegisteredDeviceRepository;->getDeviceId()Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/idm/fotaagent/scheduler/DeviceInfoState$Element;->b(Ljava/lang/String;)Lcom/idm/fotaagent/scheduler/DeviceInfoState;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
