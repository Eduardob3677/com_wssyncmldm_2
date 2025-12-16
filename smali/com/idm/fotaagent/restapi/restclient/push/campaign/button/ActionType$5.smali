.class final enum Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/ActionType$5;
.super Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/ActionType;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/ActionType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/ActionType$1;)V

    return-void
.end method


# virtual methods
.method public doAct(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    const p0, 0x10000020

    invoke-virtual {p2, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
