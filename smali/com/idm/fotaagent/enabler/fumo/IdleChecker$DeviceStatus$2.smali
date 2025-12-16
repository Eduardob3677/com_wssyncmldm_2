.class final enum Lcom/idm/fotaagent/enabler/fumo/IdleChecker$DeviceStatus$2;
.super Lcom/idm/fotaagent/enabler/fumo/IdleChecker$DeviceStatus;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/enabler/fumo/IdleChecker$DeviceStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/idm/fotaagent/enabler/fumo/postpone/PostponeReason;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/idm/fotaagent/enabler/fumo/IdleChecker$DeviceStatus;-><init>(Ljava/lang/String;ILcom/idm/fotaagent/enabler/fumo/postpone/PostponeReason;Lcom/idm/fotaagent/enabler/fumo/IdleChecker$1;)V

    return-void
.end method


# virtual methods
.method public runs(Landroid/content/Context;)Z
    .locals 5

    const-string p0, "audio"

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    const/4 p1, 0x0

    if-nez p0, :cond_0

    const-string p0, "AudioManager is null"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    return p1

    :cond_0
    invoke-virtual {p0}, Landroid/media/AudioManager;->semIsVoiceCallActive()Z

    move-result v0

    invoke-virtual {p0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v1

    invoke-virtual {p0}, Landroid/media/AudioManager;->semIsFmRadioActive()Z

    move-result v2

    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Landroid/media/AudioManager;->semIsRecordActive(I)Z

    move-result p0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "isVoiceCallActive : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isMusicActive : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isFMActive : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isRecordActive : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    if-nez v0, :cond_1

    if-nez v1, :cond_1

    if-nez v2, :cond_1

    if-eqz p0, :cond_2

    :cond_1
    const/4 p1, 0x1

    :cond_2
    return p1
.end method
