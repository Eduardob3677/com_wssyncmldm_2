.class public Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage$TextParser;,
        Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage$ActionParser;
    }
.end annotation


# static fields
.field public static final KEY_DIALOG_MESSAGE:Ljava/lang/String; = "cont"

.field public static final KEY_DIALOG_TITLE:Ljava/lang/String; = "title"

.field public static final KEY_NEUTRAL_BUTTON_TITLE:Ljava/lang/String; = "neutral"

.field public static final KEY_NOTIFICATION_TEXT:Ljava/lang/String; = "noti_bar/text"

.field public static final KEY_NOTIFICATION_TITLE:Ljava/lang/String; = "noti_bar/title"

.field public static final KEY_POSITIVE_BUTTON_TITLE:Ljava/lang/String; = "positive"

.field private static final serialVersionUID:J = 0x5937f26b44bbd7f5L


# instance fields
.field private dialogContent:Ljava/lang/String;

.field private dialogTitle:Ljava/lang/String;

.field private neutralButton:Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/ButtonContent;

.field private notificationText:Ljava/lang/String;

.field private notificationTitle:Ljava/lang/String;

.field private okButton:Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/ButtonContent;

.field private positiveButton:Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/ButtonContent;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage;->notificationTitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage;->notificationText:Ljava/lang/String;

    iput-object v0, p0, Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage;->dialogTitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage;->dialogContent:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage;Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage$ActionParser;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage;->lambda$parse$3(Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage;Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage$ActionParser;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b()Ljava/lang/IllegalArgumentException;
    .locals 1

    invoke-static {}, Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage;->lambda$parse$0()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic c()Ljava/lang/IllegalArgumentException;
    .locals 1

    invoke-static {}, Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage;->lambda$parse$2()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic d(Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage;Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage$ActionParser;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage;->lambda$parse$1(Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage;Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage$ActionParser;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$parse$0()Ljava/lang/IllegalArgumentException;
    .locals 2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrong positive button action"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static synthetic lambda$parse$1(Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage;Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage$ActionParser;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/ButtonContent;

    const-string v1, "positive"

    invoke-virtual {p1, p2, v1}, Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage$ActionParser;->parse(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Optional;

    move-result-object p1

    new-instance p2, Lcom/idm/fotaagent/restapi/restclient/push/campaign/d;

    const/4 v1, 0x1

    invoke-direct {p2, v1}, Lcom/idm/fotaagent/restapi/restclient/push/campaign/d;-><init>(I)V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/Action;

    invoke-direct {v0, p3, p1}, Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/ButtonContent;-><init>(Ljava/lang/String;Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/Action;)V

    iput-object v0, p0, Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage;->positiveButton:Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/ButtonContent;

    return-void
.end method

.method private static synthetic lambda$parse$2()Ljava/lang/IllegalArgumentException;
    .locals 2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrong neutral button action"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static synthetic lambda$parse$3(Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage;Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage$ActionParser;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/ButtonContent;

    const-string v1, "neutral"

    invoke-virtual {p1, p2, v1}, Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage$ActionParser;->parse(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Optional;

    move-result-object p1

    new-instance p2, Lcom/idm/fotaagent/restapi/restclient/push/campaign/d;

    const/4 v1, 0x3

    invoke-direct {p2, v1}, Lcom/idm/fotaagent/restapi/restclient/push/campaign/d;-><init>(I)V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/Action;

    invoke-direct {v0, p3, p1}, Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/ButtonContent;-><init>(Ljava/lang/String;Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/Action;)V

    iput-object v0, p0, Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage;->neutralButton:Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/ButtonContent;

    return-void
.end method

.method public static parse(Landroid/content/Context;Ljava/lang/String;)Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage;
    .locals 8

    invoke-static {}, Lcom/idm/fotaagent/restapi/restclient/push/campaign/Language;->readLocaleCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/idm/fotaagent/restapi/restclient/push/campaign/Language;->readLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/idm/fotaagent/restapi/restclient/push/campaign/Language;->getDefaultLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage$TextParser;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage$TextParser;-><init>(Ljava/lang/String;Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage$1;)V

    new-instance v3, Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage$ActionParser;

    invoke-direct {v3, p1, v2}, Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage$ActionParser;-><init>(Ljava/lang/String;Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage$1;)V

    new-instance v2, Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage;

    invoke-direct {v2}, Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage;-><init>()V

    new-instance v4, Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/ButtonContent;

    const v5, 0x7f130016

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/Action;->generateOkButtonAction()Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/Action;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/ButtonContent;-><init>(Ljava/lang/String;Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/Action;)V

    iput-object v4, v2, Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage;->okButton:Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/ButtonContent;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :catch_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_0
    const-string v4, "noti_bar/title"

    invoke-virtual {v1, v0, v4}, Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage$TextParser;->parse(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Optional;

    move-result-object v4

    new-instance v5, Lcom/idm/fotaagent/restapi/restclient/push/campaign/d;

    const/4 v6, 0x2

    invoke-direct {v5, v6}, Lcom/idm/fotaagent/restapi/restclient/push/campaign/d;-><init>(I)V

    invoke-virtual {v4, v5}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v2, Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage;->notificationTitle:Ljava/lang/String;

    const-string v4, "noti_bar/text"

    invoke-virtual {v1, v0, v4}, Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage$TextParser;->parse(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Optional;

    move-result-object v4

    new-instance v5, Lcom/idm/fotaagent/restapi/restclient/push/campaign/d;

    const/4 v6, 0x2

    invoke-direct {v5, v6}, Lcom/idm/fotaagent/restapi/restclient/push/campaign/d;-><init>(I)V

    invoke-virtual {v4, v5}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v2, Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage;->notificationText:Ljava/lang/String;

    const-string v4, "title"

    invoke-virtual {v1, v0, v4}, Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage$TextParser;->parse(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Optional;

    move-result-object v4

    new-instance v5, Lcom/idm/fotaagent/restapi/restclient/push/campaign/d;

    const/4 v6, 0x2

    invoke-direct {v5, v6}, Lcom/idm/fotaagent/restapi/restclient/push/campaign/d;-><init>(I)V

    invoke-virtual {v4, v5}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v2, Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage;->dialogTitle:Ljava/lang/String;

    const-string v4, "cont"

    invoke-virtual {v1, v0, v4}, Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage$TextParser;->parse(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Optional;

    move-result-object v4

    new-instance v5, Lcom/idm/fotaagent/restapi/restclient/push/campaign/d;

    const/4 v6, 0x2

    invoke-direct {v5, v6}, Lcom/idm/fotaagent/restapi/restclient/push/campaign/d;-><init>(I)V

    invoke-virtual {v4, v5}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v2, Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage;->dialogContent:Ljava/lang/String;

    const-string v4, "positive"

    invoke-virtual {v1, v0, v4}, Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage$TextParser;->parse(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Optional;

    move-result-object v4

    const-string v5, "neutral"

    invoke-virtual {v1, v0, v5}, Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage$TextParser;->parse(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Optional;

    move-result-object v5

    new-instance v6, Lcom/idm/fotaagent/restapi/restclient/push/campaign/a;

    const/4 v7, 0x0

    invoke-direct {v6, v2, v3, v0, v7}, Lcom/idm/fotaagent/restapi/restclient/push/campaign/a;-><init>(Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage;Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage$ActionParser;Ljava/lang/String;I)V

    invoke-virtual {v4, v6}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    new-instance v4, Lcom/idm/fotaagent/restapi/restclient/push/campaign/a;

    const/4 v6, 0x1

    invoke-direct {v4, v2, v3, v0, v6}, Lcom/idm/fotaagent/restapi/restclient/push/campaign/a;-><init>(Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage;Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage$ActionParser;Ljava/lang/String;I)V

    invoke-virtual {v5, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "xml : "

    invoke-static {v0, p1}, Lh0/c;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public dialogContent()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage;->dialogContent:Ljava/lang/String;

    return-object p0
.end method

.method public dialogTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage;->dialogTitle:Ljava/lang/String;

    return-object p0
.end method

.method public neutralButton()Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/ButtonContent;
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage;->neutralButton:Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/ButtonContent;

    return-object p0
.end method

.method public notificationText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage;->notificationText:Ljava/lang/String;

    return-object p0
.end method

.method public notificationTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage;->notificationTitle:Ljava/lang/String;

    return-object p0
.end method

.method public okButton()Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/ButtonContent;
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage;->okButton:Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/ButtonContent;

    return-object p0
.end method

.method public positiveButton()Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/ButtonContent;
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage;->positiveButton:Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/ButtonContent;

    return-object p0
.end method
