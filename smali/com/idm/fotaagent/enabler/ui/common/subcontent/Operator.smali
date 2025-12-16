.class public abstract Lcom/idm/fotaagent/enabler/ui/common/subcontent/Operator;
.super Lcom/idm/fotaagent/enabler/ui/common/subcontent/ContentInjector$Model;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idm/fotaagent/enabler/ui/common/subcontent/Operator$Install;,
        Lcom/idm/fotaagent/enabler/ui/common/subcontent/Operator$Download;
    }
.end annotation


# direct methods
.method private constructor <init>(I)V
    .locals 1

    if-lez p1, :cond_0

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/common/subcontent/Operator;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lcom/idm/fotaagent/enabler/ui/common/subcontent/ContentInjector$Model;-><init>(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public synthetic constructor <init>(ILcom/idm/fotaagent/enabler/ui/common/subcontent/Operator$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/enabler/ui/common/subcontent/Operator;-><init>(I)V

    return-void
.end method

.method private static getContext()Landroid/content/Context;
    .locals 1

    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->idmGetContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getLayoutId()I
    .locals 0

    const p0, 0x7f0d00c8

    return p0
.end method

.method public populateTo(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f0a02a0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/ui/common/subcontent/ContentInjector$Model;->getBody()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
