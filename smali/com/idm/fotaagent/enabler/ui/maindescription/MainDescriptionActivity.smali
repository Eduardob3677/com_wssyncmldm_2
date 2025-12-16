.class public Lcom/idm/fotaagent/enabler/ui/maindescription/MainDescriptionActivity;
.super Lcom/idm/fotaagent/enabler/ui/common/BaseActivity;
.source "SourceFile"


# static fields
.field public static final KEY_CALLING_ACTIVITY:Ljava/lang/String; = "callingActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity;-><init>()V

    return-void
.end method

.method private isLcdOn()Z
    .locals 1

    const-string v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public getMainContentLayoutId()I
    .locals 0

    const p0, 0x7f0d002d

    return p0
.end method

.method public getTitleId()I
    .locals 0

    const p0, 0x7f13009e

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-super {p0, p1}, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity;->setMainTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity;->setMainBody(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "callingActivity"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "LastUpdateActivity"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isLast : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    new-instance p1, Lcom/idm/fotaagent/enabler/ui/common/subcontent/WhatsNew$Last;

    sget-object v0, Lcom/idm/fotaagent/enabler/ui/whatsnew/DescriptionBody;->FOR_TWO_DEPTH:Lcom/idm/fotaagent/enabler/ui/whatsnew/DescriptionBody;

    invoke-direct {p1, p0, v0}, Lcom/idm/fotaagent/enabler/ui/common/subcontent/WhatsNew$Last;-><init>(Landroid/content/Context;Lcom/idm/fotaagent/enabler/ui/whatsnew/DescriptionBody;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/idm/fotaagent/enabler/ui/common/subcontent/WhatsNew$New;

    sget-object v0, Lcom/idm/fotaagent/enabler/ui/whatsnew/DescriptionBody;->FOR_TWO_DEPTH:Lcom/idm/fotaagent/enabler/ui/whatsnew/DescriptionBody;

    invoke-direct {p1, p0, v0}, Lcom/idm/fotaagent/enabler/ui/common/subcontent/WhatsNew$New;-><init>(Landroid/content/Context;Lcom/idm/fotaagent/enabler/ui/whatsnew/DescriptionBody;)V

    :goto_0
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/idm/fotaagent/enabler/ui/common/subcontent/ContentInjector$Model;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity;->setSubContent([Lcom/idm/fotaagent/enabler/ui/common/subcontent/ContentInjector$Model;)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Le/n;->onDestroy()V

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Le/n;->onStop()V

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/ui/maindescription/MainDescriptionActivity;->isLcdOn()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity;->finish()V

    :cond_0
    return-void
.end method
