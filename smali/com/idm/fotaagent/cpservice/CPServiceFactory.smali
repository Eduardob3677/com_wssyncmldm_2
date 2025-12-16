.class public Lcom/idm/fotaagent/cpservice/CPServiceFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/idm/fotaagent/database/sqlite/database/provider/CPService;
    .locals 1

    new-instance v0, Lcom/idm/fotaagent/cpservice/HotSpotService;

    invoke-direct {v0}, Lcom/idm/fotaagent/cpservice/HotSpotService;-><init>()V

    return-object v0
.end method
