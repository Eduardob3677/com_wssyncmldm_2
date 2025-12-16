.class abstract Lcom/idm/fotaagent/restapi/restclient/push/campaign/notification/NotificationBuilderStrategy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idm/fotaagent/restapi/restclient/push/campaign/notification/NotificationBuilderStrategy$InboxStyle;,
        Lcom/idm/fotaagent/restapi/restclient/push/campaign/notification/NotificationBuilderStrategy$BigTextStyle;
    }
.end annotation


# instance fields
.field protected final campaignMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage;",
            ">;"
        }
    .end annotation
.end field

.field protected final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/idm/fotaagent/restapi/restclient/push/campaign/CampaignMessage;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/idm/fotaagent/restapi/restclient/push/campaign/notification/NotificationBuilderStrategy;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/idm/fotaagent/restapi/restclient/push/campaign/notification/NotificationBuilderStrategy;->campaignMessages:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public abstract getStyle()Landroid/app/Notification$Style;
.end method

.method public abstract getText()Ljava/lang/String;
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method
