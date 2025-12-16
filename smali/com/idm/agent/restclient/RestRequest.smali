.class public Lcom/idm/agent/restclient/RestRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idm/agent/restclient/RestRequest$MethodType;,
        Lcom/idm/agent/restclient/RestRequest$Builder;
    }
.end annotation


# instance fields
.field private final body:Ljava/lang/String;

.field private final methodType:Lcom/idm/agent/restclient/RestRequest$MethodType;

.field private final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/idm/agent/restclient/RestRequest$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/idm/agent/restclient/RestRequest$Builder;->access$000(Lcom/idm/agent/restclient/RestRequest$Builder;)Lcom/idm/agent/restclient/RestRequest$MethodType;

    move-result-object v0

    iput-object v0, p0, Lcom/idm/agent/restclient/RestRequest;->methodType:Lcom/idm/agent/restclient/RestRequest$MethodType;

    invoke-static {p1}, Lcom/idm/agent/restclient/RestRequest$Builder;->access$100(Lcom/idm/agent/restclient/RestRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/idm/agent/restclient/RestRequest;->url:Ljava/lang/String;

    invoke-static {p1}, Lcom/idm/agent/restclient/RestRequest$Builder;->access$200(Lcom/idm/agent/restclient/RestRequest$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/idm/agent/restclient/RestRequest;->body:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/agent/restclient/RestRequest;->body:Ljava/lang/String;

    return-object p0
.end method

.method public getMethodType()Lcom/idm/agent/restclient/RestRequest$MethodType;
    .locals 0

    iget-object p0, p0, Lcom/idm/agent/restclient/RestRequest;->methodType:Lcom/idm/agent/restclient/RestRequest$MethodType;

    return-object p0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/agent/restclient/RestRequest;->url:Ljava/lang/String;

    return-object p0
.end method
