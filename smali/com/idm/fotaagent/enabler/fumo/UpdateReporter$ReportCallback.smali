.class public Lcom/idm/fotaagent/enabler/fumo/UpdateReporter$ReportCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/idm/adapter/callback/IDMCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/enabler/fumo/UpdateReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReportCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public idmOnProgress(Ljava/lang/String;Lcom/idm/adapter/callback/IDMCallbackStatus;)V
    .locals 0

    const-string p0, "unexpected callback"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    return-void
.end method

.method public idmOnStatus(Ljava/lang/String;Lcom/idm/adapter/callback/IDMCallbackStatus;)V
    .locals 2

    invoke-virtual {p2}, Lcom/idm/adapter/callback/IDMCallbackStatus;->idmGetStatus()I

    move-result p0

    invoke-virtual {p2}, Lcom/idm/adapter/callback/IDMCallbackStatus;->idmGetAbortCode()I

    move-result p1

    invoke-virtual {p2}, Lcom/idm/adapter/callback/IDMCallbackStatus;->idmGetResults()I

    move-result p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "result : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", status : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    const/16 v0, 0x2710

    if-ne p2, v0, :cond_0

    const/16 p2, 0x12d

    if-ne p0, p2, :cond_0

    const-string p0, "Succeeded to report"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Failed to report. abortCode : "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->E(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
