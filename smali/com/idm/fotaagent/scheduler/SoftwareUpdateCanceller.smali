.class public abstract Lcom/idm/fotaagent/scheduler/SoftwareUpdateCanceller;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/idm/fotaagent/scheduler/FumoInitiator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idm/fotaagent/scheduler/SoftwareUpdateCanceller$SuCancel;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static forScheduleType(Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;)Lcom/idm/fotaagent/scheduler/SoftwareUpdateCanceller;
    .locals 2

    sget-object v0, Lcom/idm/fotaagent/scheduler/SoftwareUpdateCanceller$1;->$SwitchMap$com$idm$fotaagent$scheduler$interfaces$IDMSchedulerInterface$IDM_SCHEDULE_TYPE:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unexpected scheduleType: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " handle as "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;->SCHEDULE_TYPE_SU_CANCEL_OR_RESET:Lcom/idm/fotaagent/scheduler/interfaces/IDMSchedulerInterface$IDM_SCHEDULE_TYPE;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    new-instance p0, Lcom/idm/fotaagent/scheduler/SoftwareUpdateCanceller$SuCancel$OrReset;

    invoke-direct {p0}, Lcom/idm/fotaagent/scheduler/SoftwareUpdateCanceller$SuCancel$OrReset;-><init>()V

    return-object p0

    :cond_0
    new-instance p0, Lcom/idm/fotaagent/scheduler/SoftwareUpdateCanceller$SuCancel$OrReset$BySessionExpiration;

    invoke-direct {p0}, Lcom/idm/fotaagent/scheduler/SoftwareUpdateCanceller$SuCancel$OrReset$BySessionExpiration;-><init>()V

    return-object p0

    :cond_1
    new-instance p0, Lcom/idm/fotaagent/scheduler/SoftwareUpdateCanceller$SuCancel$OrReset;

    invoke-direct {p0}, Lcom/idm/fotaagent/scheduler/SoftwareUpdateCanceller$SuCancel$OrReset;-><init>()V

    return-object p0

    :cond_2
    new-instance p0, Lcom/idm/fotaagent/scheduler/SoftwareUpdateCanceller$SuCancel$Mdm;

    invoke-direct {p0}, Lcom/idm/fotaagent/scheduler/SoftwareUpdateCanceller$SuCancel$Mdm;-><init>()V

    return-object p0

    :cond_3
    new-instance p0, Lcom/idm/fotaagent/scheduler/SoftwareUpdateCanceller$SuCancel$Generic;

    invoke-direct {p0}, Lcom/idm/fotaagent/scheduler/SoftwareUpdateCanceller$SuCancel$Generic;-><init>()V

    return-object p0
.end method
