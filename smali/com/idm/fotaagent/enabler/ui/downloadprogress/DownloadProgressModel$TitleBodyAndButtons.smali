.class Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressModel$TitleBodyAndButtons;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TitleBodyAndButtons"
.end annotation


# static fields
.field static final DOWNLOADING:Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressModel$TitleBodyAndButtons;

.field static final DOWNLOADING_EMERGENCY:Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressModel$TitleBodyAndButtons;

.field private static final NULL:I = -0x1

.field static final PAUSE:Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressModel$TitleBodyAndButtons;

.field static final PAUSE_EXPIRATION:Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressModel$TitleBodyAndButtons;


# instance fields
.field private final mainBodyId:I

.field private final mainTitleId:I

.field private final pauseButtonId:I

.field private final resumeButtonId:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressModel$TitleBodyAndButtons;

    const v1, 0x7f130017

    const v2, 0x7f13002e

    const/4 v3, -0x1

    invoke-direct {v0, v2, v3, v1, v3}, Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressModel$TitleBodyAndButtons;-><init>(IIII)V

    sput-object v0, Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressModel$TitleBodyAndButtons;->DOWNLOADING:Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressModel$TitleBodyAndButtons;

    new-instance v0, Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressModel$TitleBodyAndButtons;

    invoke-direct {v0, v2, v3, v3, v3}, Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressModel$TitleBodyAndButtons;-><init>(IIII)V

    sput-object v0, Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressModel$TitleBodyAndButtons;->DOWNLOADING_EMERGENCY:Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressModel$TitleBodyAndButtons;

    new-instance v0, Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressModel$TitleBodyAndButtons;

    const v1, 0x7f130030

    const v2, 0x7f13001a

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressModel$TitleBodyAndButtons;-><init>(IIII)V

    sput-object v0, Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressModel$TitleBodyAndButtons;->PAUSE:Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressModel$TitleBodyAndButtons;

    new-instance v0, Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressModel$TitleBodyAndButtons;

    const v4, 0x7f13002a

    invoke-direct {v0, v1, v4, v3, v2}, Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressModel$TitleBodyAndButtons;-><init>(IIII)V

    sput-object v0, Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressModel$TitleBodyAndButtons;->PAUSE_EXPIRATION:Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressModel$TitleBodyAndButtons;

    return-void
.end method

.method private constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressModel$TitleBodyAndButtons;->mainTitleId:I

    iput p2, p0, Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressModel$TitleBodyAndButtons;->mainBodyId:I

    iput p3, p0, Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressModel$TitleBodyAndButtons;->pauseButtonId:I

    iput p4, p0, Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressModel$TitleBodyAndButtons;->resumeButtonId:I

    return-void
.end method


# virtual methods
.method public getMainBody()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressModel$TitleBodyAndButtons;->mainBodyId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->idmGetContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressModel;->access$000(Landroid/content/Context;)J

    move-result-wide v1

    iget p0, p0, Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressModel$TitleBodyAndButtons;->mainBodyId:I

    invoke-static {v1, v2, p0, v0}, Lcom/idm/fotaagent/utils/Formatted$Android;->longDateWeekDayAndTime(JILandroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMainTitle()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->idmGetContext()Landroid/content/Context;

    move-result-object v0

    iget p0, p0, Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressModel$TitleBodyAndButtons;->mainTitleId:I

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPauseButton()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressModel$TitleBodyAndButtons;->pauseButtonId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->idmGetContext()Landroid/content/Context;

    move-result-object v0

    iget p0, p0, Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressModel$TitleBodyAndButtons;->pauseButtonId:I

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getResumeButton()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressModel$TitleBodyAndButtons;->resumeButtonId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->idmGetContext()Landroid/content/Context;

    move-result-object v0

    iget p0, p0, Lcom/idm/fotaagent/enabler/ui/downloadprogress/DownloadProgressModel$TitleBodyAndButtons;->resumeButtonId:I

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method
