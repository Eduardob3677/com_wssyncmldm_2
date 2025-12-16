.class public Lcom/idm/fotaagent/enabler/ui/common/subcontent/Operator$Install;
.super Lcom/idm/fotaagent/enabler/ui/common/subcontent/Operator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/enabler/ui/common/subcontent/Operator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Install"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/idm/fotaagent/enabler/feature/Operator;->get()Lcom/idm/fotaagent/enabler/feature/Operator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/idm/fotaagent/enabler/feature/Operator;->getInstallConfirmOperatorBody(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/idm/fotaagent/enabler/ui/common/subcontent/Operator;-><init>(ILcom/idm/fotaagent/enabler/ui/common/subcontent/Operator$1;)V

    return-void
.end method
