.class public abstract Lcom/idm/fotaagent/enabler/ui/common/subcontent/ContentInjector$Model$TitleAndBullets;
.super Lcom/idm/fotaagent/enabler/ui/common/subcontent/ContentInjector$Model;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/enabler/ui/common/subcontent/ContentInjector$Model;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "TitleAndBullets"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idm/fotaagent/enabler/ui/common/subcontent/ContentInjector$Model$TitleAndBullets$WithTitleImage;
    }
.end annotation


# direct methods
.method public constructor <init>([Ljava/lang/CharSequence;)V
    .locals 0

    invoke-static {p1}, Lcom/idm/fotaagent/enabler/ui/common/subcontent/ContentInjector$Model$TitleAndBullets;->makeBody([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/enabler/ui/common/subcontent/ContentInjector$Model;-><init>(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private static makeBody([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v4, p0, v2

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    if-eqz v3, :cond_1

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x0

    goto :goto_2

    :cond_3
    invoke-static {v0}, Lcom/idm/fotaagent/enabler/ui/common/subcontent/CharBulletSpan;->applyTo(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    :goto_2
    return-object p0
.end method


# virtual methods
.method public getLayoutId()I
    .locals 0

    const p0, 0x7f0d00c9

    return p0
.end method

.method public abstract getTitleId()I
.end method

.method public populateTo(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f0a02a1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/ui/common/subcontent/ContentInjector$Model$TitleAndBullets;->getTitleId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0a02a0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/ui/common/subcontent/ContentInjector$Model;->getBody()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/idm/fotaagent/enabler/ui/common/subcontent/CharBulletSpan;->setPaintIfNeeded(Ljava/lang/CharSequence;Landroid/graphics/Paint;)V

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
