.class public final synthetic Lcom/idm/fotaagent/restapi/request/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic c:Lcom/idm/fotaagent/restapi/request/FOTABody$ForDeviceRegistration;

.field public final synthetic d:Lorg/w3c/dom/Document;

.field public final synthetic e:Lorg/w3c/dom/Element;

.field public final synthetic f:Lcom/idm/fotaagent/restapi/request/Node;


# direct methods
.method public synthetic constructor <init>(Lcom/idm/fotaagent/restapi/request/FOTABody$ForDeviceRegistration;Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Lcom/idm/fotaagent/restapi/request/Node;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/idm/fotaagent/restapi/request/a;->c:Lcom/idm/fotaagent/restapi/request/FOTABody$ForDeviceRegistration;

    iput-object p2, p0, Lcom/idm/fotaagent/restapi/request/a;->d:Lorg/w3c/dom/Document;

    iput-object p3, p0, Lcom/idm/fotaagent/restapi/request/a;->e:Lorg/w3c/dom/Element;

    iput-object p4, p0, Lcom/idm/fotaagent/restapi/request/a;->f:Lcom/idm/fotaagent/restapi/request/Node;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/idm/fotaagent/restapi/request/a;->f:Lcom/idm/fotaagent/restapi/request/Node;

    check-cast p1, Ljava/lang/String;

    iget-object v1, p0, Lcom/idm/fotaagent/restapi/request/a;->c:Lcom/idm/fotaagent/restapi/request/FOTABody$ForDeviceRegistration;

    iget-object v2, p0, Lcom/idm/fotaagent/restapi/request/a;->d:Lorg/w3c/dom/Document;

    iget-object p0, p0, Lcom/idm/fotaagent/restapi/request/a;->e:Lorg/w3c/dom/Element;

    invoke-static {v1, v2, p0, v0, p1}, Lcom/idm/fotaagent/restapi/request/FOTABody$ForDeviceRegistration;->a(Lcom/idm/fotaagent/restapi/request/FOTABody$ForDeviceRegistration;Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Lcom/idm/fotaagent/restapi/request/Node;Ljava/lang/String;)V

    return-void
.end method
