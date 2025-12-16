.class public interface abstract Lcom/idm/fotaagent/enabler/ui/dialog/model/IDMUIDialogModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idm/fotaagent/enabler/ui/dialog/model/IDMUIDialogModel$StubOk;,
        Lcom/idm/fotaagent/enabler/ui/dialog/model/IDMUIDialogModel$NoButtons;,
        Lcom/idm/fotaagent/enabler/ui/dialog/model/IDMUIDialogModel$Base;
    }
.end annotation


# virtual methods
.method public abstract getMessage()Ljava/lang/CharSequence;
.end method

.method public abstract getNegativeButtonStrategy()Lcom/idm/fotaagent/enabler/ui/dialog/model/buttonstrategy/ButtonStrategy$Negative;
.end method

.method public abstract getNeutralButtonStrategy()Lcom/idm/fotaagent/enabler/ui/dialog/model/buttonstrategy/ButtonStrategy$Neutral;
.end method

.method public abstract getPositiveButtonStrategy()Lcom/idm/fotaagent/enabler/ui/dialog/model/buttonstrategy/ButtonStrategy$Positive;
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract isCancelable()Z
.end method

.method public abstract onCancel()V
.end method

.method public abstract onDismiss()V
.end method

.method public abstract preExecute()V
.end method
