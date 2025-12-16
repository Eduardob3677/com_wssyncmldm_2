.class public Lcom/idm/fotaagent/restapi/restclient/exception/ParseFailedException;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field private final result:Lcom/idm/fotaagent/restapi/response/Result;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/idm/fotaagent/restapi/restclient/exception/ParseFailedException;-><init>(Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;Z)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    invoke-direct {p0, p2}, Lcom/idm/fotaagent/restapi/restclient/exception/ParseFailedException;->getResult(Z)Lcom/idm/fotaagent/restapi/response/Result;

    move-result-object p1

    iput-object p1, p0, Lcom/idm/fotaagent/restapi/restclient/exception/ParseFailedException;->result:Lcom/idm/fotaagent/restapi/response/Result;

    return-void
.end method

.method private getResult(Z)Lcom/idm/fotaagent/restapi/response/Result;
    .locals 0

    new-instance p0, Lcom/idm/fotaagent/restapi/response/Result;

    if-eqz p1, :cond_0

    const/16 p1, 0x1f5

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/restapi/response/Result;-><init>(I)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x384

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/restapi/response/Result;-><init>(I)V

    :goto_0
    return-object p0
.end method


# virtual methods
.method public getResult()Lcom/idm/fotaagent/restapi/response/Result;
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/restapi/restclient/exception/ParseFailedException;->result:Lcom/idm/fotaagent/restapi/response/Result;

    return-object p0
.end method
