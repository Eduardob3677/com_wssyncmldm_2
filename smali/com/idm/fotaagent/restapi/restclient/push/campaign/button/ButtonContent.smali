.class public Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/ButtonContent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x66be994542d2aed6L


# instance fields
.field private final action:Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/Action;

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/Action;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/ButtonContent;->title:Ljava/lang/String;

    iput-object p2, p0, Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/ButtonContent;->action:Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/Action;

    return-void
.end method


# virtual methods
.method public action()Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/Action;
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/ButtonContent;->action:Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/Action;

    return-object p0
.end method

.method public title()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/restapi/restclient/push/campaign/button/ButtonContent;->title:Ljava/lang/String;

    return-object p0
.end method
