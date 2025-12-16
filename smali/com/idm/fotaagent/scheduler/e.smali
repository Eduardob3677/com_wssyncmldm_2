.class public final synthetic Lcom/idm/fotaagent/scheduler/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/idm/fotaagent/scheduler/ScheduleTypeStrategy$ActionInfo;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/idm/fotaagent/scheduler/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getActionInfoFrom(Lcom/idm/fotaagent/scheduler/IDMSchedulerInfo;)Lcom/idm/service/actioninfo/IDMActionInfo;
    .locals 0

    iget p0, p0, Lcom/idm/fotaagent/scheduler/e;->a:I

    packed-switch p0, :pswitch_data_0

    invoke-static {p1}, Lcom/idm/fotaagent/scheduler/ScheduleTypeStrategy$ActionInfo;->a(Lcom/idm/fotaagent/scheduler/IDMSchedulerInfo;)Lcom/idm/service/actioninfo/IDMActionInfo;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-virtual {p1}, Lcom/idm/fotaagent/scheduler/IDMSchedulerInfo;->idmGetActionInfo()Lcom/idm/service/actioninfo/IDMActionInfo;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-static {p1}, Lcom/idm/fotaagent/scheduler/ScheduleTypeStrategy$ActionInfo;->b(Lcom/idm/fotaagent/scheduler/IDMSchedulerInfo;)Lcom/idm/service/actioninfo/IDMActionInfo;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-static {p1}, Lcom/idm/fotaagent/scheduler/ScheduleTypeStrategy$ActionInfo;->c(Lcom/idm/fotaagent/scheduler/IDMSchedulerInfo;)Lcom/idm/service/actioninfo/IDMActionInfo;

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
