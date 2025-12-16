.class public Lcom/idm/fotaagent/enabler/ui/postpone/PostponeModel;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final context:Landroid/content/Context;

.field private final postponeRepository:Lcom/idm/fotaagent/database/room/data/repository/PostponeRepository;

.field private final taskId:Ljava/lang/String;

.field private final title:Ljava/lang/String;

.field private final toast:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const v0, 0x7f13006f

    const v1, 0x7f130070

    invoke-direct {p0, p1, v0, v1}, Lcom/idm/fotaagent/enabler/ui/postpone/PostponeModel;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/idm/fotaagent/enabler/ui/postpone/PostponeModel;->taskId:Ljava/lang/String;

    invoke-static {p2}, Lcom/idm/fotaagent/enabler/ui/postpone/PostponeModel;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/idm/fotaagent/enabler/ui/postpone/PostponeModel;->title:Ljava/lang/String;

    invoke-static {p3}, Lcom/idm/fotaagent/enabler/ui/postpone/PostponeModel;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/idm/fotaagent/enabler/ui/postpone/PostponeModel;->toast:Ljava/lang/String;

    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->idmGetContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/idm/fotaagent/enabler/ui/postpone/PostponeModel;->context:Landroid/content/Context;

    new-instance p2, Lcom/idm/fotaagent/database/room/data/repository/PostponeRepository;

    invoke-direct {p2, p1}, Lcom/idm/fotaagent/database/room/data/repository/PostponeRepository;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/idm/fotaagent/enabler/ui/postpone/PostponeModel;->postponeRepository:Lcom/idm/fotaagent/database/room/data/repository/PostponeRepository;

    return-void
.end method

.method private getScreenId()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/idm/fotaagent/enabler/ui/whatsnew/MajorUpdate;->FOR_WHATS_NEW:Lcom/idm/fotaagent/enabler/ui/whatsnew/MajorUpdate;

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/postpone/PostponeModel;->context:Landroid/content/Context;

    invoke-interface {v0, p0}, Lcom/idm/fotaagent/enabler/ui/whatsnew/MajorUpdate;->isMajorUpdate(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "012"

    goto :goto_0

    :cond_0
    const-string p0, "013"

    :goto_0
    return-object p0
.end method

.method private static getString(I)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->idmGetContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/postpone/PostponeModel;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy;->get(Landroid/content/Context;)Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy;

    move-result-object v0

    iget-object v1, p0, Lcom/idm/fotaagent/enabler/ui/postpone/PostponeModel;->taskId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/idm/fotaagent/enabler/ui/installconfirm/InstallPolicy;->installPostponeType(Ljava/lang/String;)Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallPostponeType;

    move-result-object v0

    sget-object v1, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallPostponeType;->UNLIMITED:Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallPostponeType;

    invoke-virtual {v0, v1}, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallPostponeType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallPostponeType;->maxCount()I

    move-result v1

    iget-object v2, p0, Lcom/idm/fotaagent/enabler/ui/postpone/PostponeModel;->postponeRepository:Lcom/idm/fotaagent/database/room/data/repository/PostponeRepository;

    invoke-virtual {v2}, Lcom/idm/fotaagent/database/room/data/repository/PostponeRepository;->postponeCount()I

    move-result v2

    sub-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "max : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/InstallPostponeType;->maxCount()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", postponed : "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/postpone/PostponeModel;->postponeRepository:Lcom/idm/fotaagent/database/room/data/repository/PostponeRepository;

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/room/data/repository/PostponeRepository;->postponeCount()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", remain : "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    const/4 v0, 0x1

    if-ge v1, v0, :cond_1

    const-string v1, "postpone dialog should not be shown!!"

    invoke-static {v1}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    move v1, v0

    :cond_1
    if-ne v1, v0, :cond_2

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/postpone/PostponeModel;->context:Landroid/content/Context;

    const v0, 0x7f130075

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/postpone/PostponeModel;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v2, 0x7f110004

    invoke-virtual {p0, v2, v1, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/postpone/PostponeModel;->title:Ljava/lang/String;

    return-object p0
.end method

.method public getToast()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/postpone/PostponeModel;->postponeRepository:Lcom/idm/fotaagent/database/room/data/repository/PostponeRepository;

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/room/data/repository/PostponeRepository;->alarmTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/idm/fotaagent/enabler/ui/postpone/PostponeModel;->toast:Ljava/lang/String;

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/postpone/PostponeModel;->context:Landroid/content/Context;

    invoke-static {v0, v1, v2, p0}, Lcom/idm/fotaagent/utils/Formatted$Android;->longDateWeekDayAndTime(JLjava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public postpone(II)V
    .locals 3

    invoke-static {p1, p2}, Lcom/idm/fotaagent/utils/EpochTime;->getNextWithin24h(II)Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p1

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/ui/postpone/PostponeModel;->getScreenId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/idm/fotaagent/utils/Formatted$HourMinuteForSA;

    invoke-direct {v1, p1, p2}, Lcom/idm/fotaagent/utils/Formatted$HourMinuteForSA;-><init>(J)V

    invoke-virtual {v1}, Lcom/idm/fotaagent/utils/Formatted$HourMinuteForSA;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0055"

    invoke-static {v0, v2, v1}, Lcom/idm/fotaagent/analytics/samsunganalytics/SALogging;->send(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeType$Install$ScheduleForce$IncreasablePostpone;

    invoke-direct {v0}, Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeType$Install$ScheduleForce$IncreasablePostpone;-><init>()V

    sget-object v1, Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeReason;->BY_USER:Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeReason;

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/postpone/PostponeModel;->taskId:Ljava/lang/String;

    invoke-static {v0, p1, p2, v1, p0}, Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeManager;->set(Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeType;JLcom/idm/fotaagent/enabler/fumo/postpone/PostponeReason;Ljava/lang/String;)V

    return-void
.end method
