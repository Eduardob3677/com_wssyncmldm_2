.class public Lcom/idm/fotaagent/restapi/request/FOTABody$ForPush;
.super Lcom/idm/fotaagent/restapi/request/FOTABody;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/restapi/request/FOTABody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForPush"
.end annotation


# static fields
.field static final NODE_PUSH_INFO:Ljava/lang/String; = "PushInfoVO"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/restapi/request/FOTABody;-><init>()V

    return-void
.end method


# virtual methods
.method public doGenerate(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Lcom/idm/fotaagent/restapi/request/Node;)V
    .locals 2

    invoke-virtual {p3}, Lcom/idm/fotaagent/restapi/request/Node;->tag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lcom/idm/fotaagent/restapi/request/Node;->content()Ljava/util/Optional;

    move-result-object p3

    const-string v1, ""

    invoke-virtual {p3, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/idm/fotaagent/restapi/request/FOTABody;->addElement(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getMainNode()Ljava/lang/String;
    .locals 0

    const-string p0, "PushInfoVO"

    return-object p0
.end method
