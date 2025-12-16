.class public Lcom/idm/fotaagent/restapi/response/Response;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idm/fotaagent/restapi/response/Response$WithAttributes;,
        Lcom/idm/fotaagent/restapi/response/Response$WithBody;
    }
.end annotation


# instance fields
.field private result:Lcom/idm/fotaagent/restapi/response/Result;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/idm/fotaagent/restapi/response/Result;

    invoke-direct {v0}, Lcom/idm/fotaagent/restapi/response/Result;-><init>()V

    iput-object v0, p0, Lcom/idm/fotaagent/restapi/response/Response;->result:Lcom/idm/fotaagent/restapi/response/Result;

    return-void
.end method


# virtual methods
.method public getResult()Lcom/idm/fotaagent/restapi/response/Result;
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/restapi/response/Response;->result:Lcom/idm/fotaagent/restapi/response/Result;

    return-object p0
.end method

.method public setResult(Lcom/idm/fotaagent/restapi/response/Result;)V
    .locals 0

    iput-object p1, p0, Lcom/idm/fotaagent/restapi/response/Response;->result:Lcom/idm/fotaagent/restapi/response/Result;

    return-void
.end method
