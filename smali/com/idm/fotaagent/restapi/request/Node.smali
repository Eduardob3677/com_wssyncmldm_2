.class public Lcom/idm/fotaagent/restapi/request/Node;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final content:Ljava/lang/String;

.field private final tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/idm/fotaagent/restapi/request/Node;->tag:Ljava/lang/String;

    iput-object p2, p0, Lcom/idm/fotaagent/restapi/request/Node;->content:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public content()Ljava/util/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/idm/fotaagent/restapi/request/Node;->content:Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public tag()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/restapi/request/Node;->tag:Ljava/lang/String;

    return-object p0
.end method
