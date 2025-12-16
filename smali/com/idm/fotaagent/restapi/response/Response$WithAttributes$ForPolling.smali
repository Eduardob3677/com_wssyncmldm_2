.class public Lcom/idm/fotaagent/restapi/response/Response$WithAttributes$ForPolling;
.super Lcom/idm/fotaagent/restapi/response/Response$WithAttributes;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/restapi/response/Response$WithAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForPolling"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/restapi/response/Response$WithAttributes;-><init>()V

    return-void
.end method


# virtual methods
.method public getVersions()[Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/idm/fotaagent/restapi/response/Response$WithAttributes;->getAttributes()Ljava/util/Map;

    move-result-object p0

    const-string v0, "versioninfo/firmware/version/upgrade/value"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_0

    const-string v0, ";"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    :goto_0
    return-object p0
.end method
