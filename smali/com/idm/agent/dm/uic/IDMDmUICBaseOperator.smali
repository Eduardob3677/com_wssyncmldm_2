.class public abstract Lcom/idm/agent/dm/uic/IDMDmUICBaseOperator;
.super Landroidx/fragment/app/G;
.source "SourceFile"

# interfaces
.implements Lcom/idm/agent/dm/uic/IDMDmUICInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idm/agent/dm/uic/IDMDmUICBaseOperator$IDMCloseTimerTask;
    }
.end annotation


# instance fields
.field protected dialog:Landroidx/fragment/app/r;

.field protected key:I

.field protected uicInfo:Lcom/idm/agent/dm/uic/IDMDmUICInfo;

.field private uicTimer:Ljava/util/Timer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/G;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lcom/idm/agent/dm/uic/IDMDmUICBaseOperator;)V
    .locals 0

    invoke-direct {p0}, Lcom/idm/agent/dm/uic/IDMDmUICBaseOperator;->idmCancelCloseTimer()V

    return-void
.end method

.method public static synthetic access$100(Lcom/idm/agent/dm/uic/IDMDmUICBaseOperator;)V
    .locals 0

    invoke-direct {p0}, Lcom/idm/agent/dm/uic/IDMDmUICBaseOperator;->idmPerformUICDefaultResponse()V

    return-void
.end method

.method private idmCancelCloseTimer()V
    .locals 1

    iget-object v0, p0, Lcom/idm/agent/dm/uic/IDMDmUICBaseOperator;->uicTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/idm/agent/dm/uic/IDMDmUICBaseOperator;->uicTimer:Ljava/util/Timer;

    :cond_0
    return-void
.end method

.method private idmFinishDialog()V
    .locals 1

    iget-object v0, p0, Lcom/idm/agent/dm/uic/IDMDmUICBaseOperator;->dialog:Landroidx/fragment/app/r;

    if-eqz v0, :cond_0

    const-string v0, "idmFinishDialog"

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/idm/agent/dm/uic/IDMDmUICBaseOperator;->dialog:Landroidx/fragment/app/r;

    invoke-virtual {v0}, Landroidx/fragment/app/r;->dismiss()V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private idmPerformUICDefaultResponse()V
    .locals 6

    iget-object v0, p0, Lcom/idm/agent/dm/uic/IDMDmUICBaseOperator;->uicInfo:Lcom/idm/agent/dm/uic/IDMDmUICInfo;

    invoke-virtual {v0}, Lcom/idm/agent/dm/uic/IDMDmUICInfo;->idmGetUicOption()Lcom/idm/agent/dm/uic/IDMDmUICOption;

    move-result-object v0

    iget-object v1, p0, Lcom/idm/agent/dm/uic/IDMDmUICBaseOperator;->uicInfo:Lcom/idm/agent/dm/uic/IDMDmUICInfo;

    invoke-virtual {v1}, Lcom/idm/agent/dm/uic/IDMDmUICInfo;->idmGetType()I

    move-result v1

    invoke-static {v1}, Lcom/idm/agent/dm/uic/IDMDmUICInterface$UIC_DIALOG_TYPE;->valueOf(I)Lcom/idm/agent/dm/uic/IDMDmUICInterface$UIC_DIALOG_TYPE;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Default Response UIC Type : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    sget-object v2, Lcom/idm/agent/dm/uic/IDMDmUICBaseOperator$1;->$SwitchMap$com$idm$agent$dm$uic$IDMDmUICInterface$UIC_DIALOG_TYPE:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x1

    const-string v3, "200"

    const/4 v4, 0x0

    if-eq v1, v2, :cond_8

    const/4 v2, 0x2

    const-string v5, "215"

    if-eq v1, v2, :cond_4

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    goto/16 :goto_0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/idm/agent/dm/uic/IDMDmUICOption;->idmGetDefaultResponse()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Lcom/idm/agent/dm/uic/IDMDmUICOption;->idmGetDefaultResponse()Ljava/lang/String;

    move-result-object v0

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    invoke-virtual {p0, v3, v1}, Lcom/idm/agent/dm/uic/IDMDmUICBaseOperator;->idmResultPerformUIC(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v5, v4}, Lcom/idm/agent/dm/uic/IDMDmUICBaseOperator;->idmResultPerformUIC(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/idm/agent/dm/uic/IDMDmUICOption;->idmGetDefaultResponse()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Lcom/idm/agent/dm/uic/IDMDmUICOption;->idmGetDefaultResponse()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v3, v1}, Lcom/idm/agent/dm/uic/IDMDmUICBaseOperator;->idmResultPerformUIC(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v5, v4}, Lcom/idm/agent/dm/uic/IDMDmUICBaseOperator;->idmResultPerformUIC(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    :cond_4
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/idm/agent/dm/uic/IDMDmUICOption;->idmGetDefaultResponse()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "1"

    invoke-virtual {v0}, Lcom/idm/agent/dm/uic/IDMDmUICOption;->idmGetDefaultResponse()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0, v3, v4}, Lcom/idm/agent/dm/uic/IDMDmUICBaseOperator;->idmResultPerformUIC(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    :cond_5
    const-string v1, "0"

    invoke-virtual {v0}, Lcom/idm/agent/dm/uic/IDMDmUICOption;->idmGetDefaultResponse()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "304"

    invoke-virtual {p0, v0, v4}, Lcom/idm/agent/dm/uic/IDMDmUICBaseOperator;->idmResultPerformUIC(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    :cond_6
    const-string v0, "214"

    invoke-virtual {p0, v0, v4}, Lcom/idm/agent/dm/uic/IDMDmUICBaseOperator;->idmResultPerformUIC(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    :cond_7
    invoke-virtual {p0, v5, v4}, Lcom/idm/agent/dm/uic/IDMDmUICBaseOperator;->idmResultPerformUIC(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    :cond_8
    invoke-virtual {p0, v3, v4}, Lcom/idm/agent/dm/uic/IDMDmUICBaseOperator;->idmResultPerformUIC(Ljava/lang/String;Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method private idmSendMessage(Lcom/idm/agent/dm/uic/IDMDmUICResult;)V
    .locals 1

    iget p0, p0, Lcom/idm/agent/dm/uic/IDMDmUICBaseOperator;->key:I

    invoke-static {p0}, Lcom/idm/agent/dm/IDMDmCommonHandler;->idmGetCommonHandler(I)Landroid/os/Handler;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 v0, 0x2

    if-nez p1, :cond_0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public idmResultPerformUIC(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/idm/agent/dm/uic/IDMDmUICBaseOperator;->idmCancelCloseTimer()V

    new-instance v0, Lcom/idm/agent/dm/uic/IDMDmUICResult;

    invoke-direct {v0}, Lcom/idm/agent/dm/uic/IDMDmUICResult;-><init>()V

    invoke-virtual {v0, p1}, Lcom/idm/agent/dm/uic/IDMDmUICResult;->idmSetStatusCode(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/idm/agent/dm/uic/IDMDmUICResult;->idmSetDataList(Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/idm/agent/dm/uic/IDMDmUICResult;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/idm/agent/dm/uic/IDMDmUICBaseOperator;->idmSendMessage(Lcom/idm/agent/dm/uic/IDMDmUICResult;)V

    invoke-direct {p0}, Lcom/idm/agent/dm/uic/IDMDmUICBaseOperator;->idmFinishDialog()V

    return-void
.end method

.method public idmSetCloseTimerOption()V
    .locals 5

    iget-object v0, p0, Lcom/idm/agent/dm/uic/IDMDmUICBaseOperator;->uicInfo:Lcom/idm/agent/dm/uic/IDMDmUICInfo;

    invoke-virtual {v0}, Lcom/idm/agent/dm/uic/IDMDmUICInfo;->idmGetUicOption()Lcom/idm/agent/dm/uic/IDMDmUICOption;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "uicOption is null"

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    return-void

    :cond_0
    iget v1, v0, Lcom/idm/agent/dm/uic/IDMDmUICOption;->minDisplayTime:I

    if-lez v1, :cond_1

    mul-int/lit16 v1, v1, 0x3e8

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget v0, v0, Lcom/idm/agent/dm/uic/IDMDmUICOption;->maxDisplayTime:I

    if-lez v0, :cond_2

    mul-int/lit16 v1, v0, 0x3e8

    :cond_2
    iget-object v0, p0, Lcom/idm/agent/dm/uic/IDMDmUICBaseOperator;->uicTimer:Ljava/util/Timer;

    if-nez v0, :cond_3

    if-lez v1, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "displayTime : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    new-instance v0, Lcom/idm/agent/dm/uic/IDMDmUICBaseOperator$IDMCloseTimerTask;

    invoke-direct {v0, p0}, Lcom/idm/agent/dm/uic/IDMDmUICBaseOperator$IDMCloseTimerTask;-><init>(Lcom/idm/agent/dm/uic/IDMDmUICBaseOperator;)V

    new-instance v2, Ljava/util/Timer;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/Timer;-><init>(Z)V

    iput-object v2, p0, Lcom/idm/agent/dm/uic/IDMDmUICBaseOperator;->uicTimer:Ljava/util/Timer;

    int-to-long v3, v1

    invoke-virtual {v2, v0, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_1

    :cond_3
    const-string p0, "uicTimer is running or already started!!"

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public abstract idmShowUICDialog()V
.end method
