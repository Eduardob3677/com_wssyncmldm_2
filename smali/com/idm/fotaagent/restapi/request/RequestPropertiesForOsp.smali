.class public abstract Lcom/idm/fotaagent/restapi/request/RequestPropertiesForOsp;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idm/fotaagent/restapi/request/RequestPropertiesForOsp$WithAuth;,
        Lcom/idm/fotaagent/restapi/request/RequestPropertiesForOsp$WithoutAuth;
    }
.end annotation


# static fields
.field private static final KEY_ACCEPT:Ljava/lang/String; = "Accept"

.field private static final KEY_USER_AGENT:Ljava/lang/String; = "User-Agent"

.field private static final VALUE_ACCEPT_ALL:Ljava/lang/String; = "*, */*"

.field private static final VALUE_USER_AGENT:Ljava/lang/String; = "SAMSUNG-Android"


# instance fields
.field protected requestProperties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/idm/fotaagent/restapi/request/RequestPropertiesForOsp;->requestProperties:Ljava/util/Map;

    const-string v1, "User-Agent"

    const-string v2, "SAMSUNG-Android"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/idm/fotaagent/restapi/request/RequestPropertiesForOsp;->requestProperties:Ljava/util/Map;

    const-string v0, "Accept"

    const-string v1, "*, */*"

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/idm/fotaagent/restapi/request/RequestPropertiesForOsp$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/restapi/request/RequestPropertiesForOsp;-><init>()V

    return-void
.end method


# virtual methods
.method public toMap()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/idm/fotaagent/restapi/request/RequestPropertiesForOsp;->requestProperties:Ljava/util/Map;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method
