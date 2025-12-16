.class public Lcom/idm/fotaagent/restapi/request/RequestPropertiesForOsp$WithoutAuth;
.super Lcom/idm/fotaagent/restapi/request/RequestPropertiesForOsp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/restapi/request/RequestPropertiesForOsp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WithoutAuth"
.end annotation


# static fields
.field private static final KEY_RANGE:Ljava/lang/String; = "Range"

.field private static final VALUE_RANGE_BYTES:Ljava/lang/String; = "bytes="


# direct methods
.method public constructor <init>(J)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/idm/fotaagent/restapi/request/RequestPropertiesForOsp;-><init>(Lcom/idm/fotaagent/restapi/request/RequestPropertiesForOsp$1;)V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/idm/fotaagent/restapi/request/RequestPropertiesForOsp;->requestProperties:Ljava/util/Map;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "bytes="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "-"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Range"

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
