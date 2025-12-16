.class public interface abstract Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogContractor$Presenter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogContractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Presenter"
.end annotation


# virtual methods
.method public abstract getMessage()Ljava/lang/CharSequence;
.end method

.method public abstract getRootView()Landroid/view/View;
.end method

.method public abstract getScreenId()Ljava/lang/String;
.end method

.method public abstract onCancel()V
.end method

.method public abstract onDismiss()V
.end method

.method public abstract postInit()V
.end method

.method public abstract setCancelable()V
.end method
