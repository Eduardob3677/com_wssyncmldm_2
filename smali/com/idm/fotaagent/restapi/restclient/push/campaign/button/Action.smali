.class public Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/Action;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/Action$Builder;
    }
.end annotation


# static fields
.field public static final KEY_ACTION:Ljava/lang/String; = "intent"

.field public static final KEY_DATA:Ljava/lang/String; = "data"

.field public static final KEY_PACKAGENAME:Ljava/lang/String; = "package"

.field public static final KEY_TYPE:Ljava/lang/String; = "type"

.field private static final serialVersionUID:J = -0x1cf3dadbf7e02decL


# instance fields
.field private final actionForIntent:Ljava/lang/String;

.field private final data:Ljava/lang/String;

.field private final packageName:Ljava/lang/String;

.field private final type:Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/ActionType;


# direct methods
.method private constructor <init>(Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/Action$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/Action$Builder;->access$000(Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/Action$Builder;)Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/ActionType;

    move-result-object v0

    iput-object v0, p0, Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/Action;->type:Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/ActionType;

    invoke-static {p1}, Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/Action$Builder;->access$100(Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/Action$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/Action;->actionForIntent:Ljava/lang/String;

    invoke-static {p1}, Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/Action$Builder;->access$200(Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/Action$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/Action;->data:Ljava/lang/String;

    invoke-static {p1}, Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/Action$Builder;->access$300(Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/Action$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/Action;->packageName:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/Action$Builder;Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/Action$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/Action;-><init>(Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/Action$Builder;)V

    return-void
.end method

.method public static generateOkButtonAction()Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/Action;
    .locals 2

    new-instance v0, Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/Action$Builder;

    sget-object v1, Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/ActionType;->OK:Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/ActionType;

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/Action$Builder;-><init>(Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/ActionType;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/Action$Builder;->build()Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/Action;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public act(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/Action;->type:Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/ActionType;

    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/Action;->createIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/ActionType;->act(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public createIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    iget-object v0, p0, Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/Action;->type:Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/ActionType;

    sget-object v1, Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/ActionType;->LAUNCH_APP:Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/ActionType;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/Action;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/Action;->actionForIntent:Ljava/lang/String;

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/Action;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    iget-object v0, p0, Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/Action;->data:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/Action;->data:Ljava/lang/String;

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :cond_1
    return-object p1
.end method
