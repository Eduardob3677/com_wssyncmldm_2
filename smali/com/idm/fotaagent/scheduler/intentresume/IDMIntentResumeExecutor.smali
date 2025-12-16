.class public interface abstract Lcom/idm/fotaagent/scheduler/intentresume/IDMIntentResumeExecutor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idm/fotaagent/scheduler/intentresume/IDMIntentResumeExecutor$AbstractIntentResumeExecutor;
    }
.end annotation


# static fields
.field public static final BATTERY_RESUME:Lcom/idm/fotaagent/scheduler/intentresume/IDMIntentResumeExecutor;

.field public static final BOOT_RESUME:Lcom/idm/fotaagent/scheduler/intentresume/IDMIntentResumeExecutor;

.field public static final CALL_RESUME:Lcom/idm/fotaagent/scheduler/intentresume/IDMIntentResumeExecutor;

.field public static final NETWORK_RESUME:Lcom/idm/fotaagent/scheduler/intentresume/IDMIntentResumeExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/idm/fotaagent/scheduler/intentresume/IDMIntentBatteryResume;

    invoke-direct {v0}, Lcom/idm/fotaagent/scheduler/intentresume/IDMIntentBatteryResume;-><init>()V

    sput-object v0, Lcom/idm/fotaagent/scheduler/intentresume/IDMIntentResumeExecutor;->BATTERY_RESUME:Lcom/idm/fotaagent/scheduler/intentresume/IDMIntentResumeExecutor;

    new-instance v0, Lcom/idm/fotaagent/scheduler/intentresume/IDMIntentCallResume;

    invoke-direct {v0}, Lcom/idm/fotaagent/scheduler/intentresume/IDMIntentCallResume;-><init>()V

    sput-object v0, Lcom/idm/fotaagent/scheduler/intentresume/IDMIntentResumeExecutor;->CALL_RESUME:Lcom/idm/fotaagent/scheduler/intentresume/IDMIntentResumeExecutor;

    new-instance v0, Lcom/idm/fotaagent/scheduler/intentresume/IDMIntentNetworkResume;

    invoke-direct {v0}, Lcom/idm/fotaagent/scheduler/intentresume/IDMIntentNetworkResume;-><init>()V

    sput-object v0, Lcom/idm/fotaagent/scheduler/intentresume/IDMIntentResumeExecutor;->NETWORK_RESUME:Lcom/idm/fotaagent/scheduler/intentresume/IDMIntentResumeExecutor;

    new-instance v0, Lcom/idm/fotaagent/scheduler/intentresume/IDMIntentBootResume;

    invoke-direct {v0}, Lcom/idm/fotaagent/scheduler/intentresume/IDMIntentBootResume;-><init>()V

    sput-object v0, Lcom/idm/fotaagent/scheduler/intentresume/IDMIntentResumeExecutor;->BOOT_RESUME:Lcom/idm/fotaagent/scheduler/intentresume/IDMIntentResumeExecutor;

    return-void
.end method


# virtual methods
.method public abstract resumeIfPossible()V
.end method
