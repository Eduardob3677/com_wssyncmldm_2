.class public abstract Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed;
.super Lcom/idm/fotaagent/enabler/ui/common/BaseActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/enabler/ui/common/BaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Managed"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed$WithProgressCircle;,
        Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed$WithButtons;,
        Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed$WithTwoButtons;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->getInstance()Lcom/idm/fotaagent/enabler/ui/IDMUIManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->put(Landroid/app/Activity;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->getInstance()Lcom/idm/fotaagent/enabler/ui/IDMUIManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->remove(Landroid/app/Activity;)V

    invoke-super {p0}, Le/n;->onDestroy()V

    return-void
.end method
