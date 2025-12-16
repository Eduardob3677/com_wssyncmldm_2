.class public Lcom/idm/fotaagent/enabler/ui/dialog/model/buttonstrategy/ButtonStrategy$StubCancelNegative;
.super Lcom/idm/fotaagent/enabler/ui/dialog/model/buttonstrategy/ButtonStrategy$Negative;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/enabler/ui/dialog/model/buttonstrategy/ButtonStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StubCancelNegative"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const v0, 0x7f13000d

    invoke-static {v0}, Lcom/idm/fotaagent/enabler/ui/dialog/model/buttonstrategy/AbstractButtonStrategy;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/idm/fotaagent/enabler/ui/dialog/model/buttonstrategy/ButtonStrategy$Negative;-><init>(Ljava/lang/String;)V

    return-void
.end method
