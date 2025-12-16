.class public interface abstract Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogContractor$View;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogContractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "View"
.end annotation


# virtual methods
.method public abstract finish()V
.end method

.method public abstract getMessage()Ljava/lang/CharSequence;
.end method

.method public abstract getRootView()Landroid/view/View;
.end method

.method public abstract setButtonOf(Lcom/idm/fotaagent/enabler/ui/dialog/model/buttonstrategy/ButtonStrategy;)V
.end method

.method public abstract setCancelable(Z)V
.end method

.method public abstract setMessage(Ljava/lang/CharSequence;)V
.end method

.method public abstract setPresenter(Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogContractor$Presenter;)V
.end method

.method public abstract setTitle(Ljava/lang/String;)V
.end method
