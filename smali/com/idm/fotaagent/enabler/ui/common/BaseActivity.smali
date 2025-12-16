.class public abstract Lcom/idm/fotaagent/enabler/ui/common/BaseActivity;
.super Le/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater;,
        Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Managed;
    }
.end annotation


# instance fields
.field private content:Landroid/widget/LinearLayout;

.field private endMargin:Landroid/widget/LinearLayout;

.field protected inflater:Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater;

.field private startMargin:Landroid/widget/LinearLayout;

.field protected tvMainBody:Landroid/widget/TextView;

.field private tvMainOneUi:Landroid/widget/TextView;

.field private tvMainTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Le/n;-><init>()V

    return-void
.end method

.method private applyFullscreenIfNeeded()V
    .locals 3

    invoke-virtual {p0}, Le/n;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    iget v1, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v2, 0x1ae

    if-ge v1, v2, :cond_0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/Window;->getInsetsController()Landroid/view/WindowInsetsController;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LA2/a;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, LA2/a;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/Window;->getInsetsController()Landroid/view/WindowInsetsController;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LA2/a;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, LA2/a;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :goto_0
    return-void
.end method

.method private getContentWidthRatio()F
    .locals 0

    invoke-virtual {p0}, Le/n;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/view/FlexibleWidthRatio;->getFrom(Landroid/content/res/Configuration;)F

    move-result p0

    return p0
.end method

.method public static goneIfEmptyOrSet(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public static synthetic k(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity;->lambda$onOptionsItemSelected$0(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic l(Landroid/view/WindowInsetsController;)V
    .locals 0

    invoke-static {p0}, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity;->lambda$applyFullscreenIfNeeded$1(Landroid/view/WindowInsetsController;)V

    return-void
.end method

.method private static synthetic lambda$applyFullscreenIfNeeded$1(Landroid/view/WindowInsetsController;)V
    .locals 1

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v0

    invoke-interface {p0, v0}, Landroid/view/WindowInsetsController;->hide(I)V

    return-void
.end method

.method private static synthetic lambda$applyFullscreenIfNeeded$2(Landroid/view/WindowInsetsController;)V
    .locals 1

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v0

    invoke-interface {p0, v0}, Landroid/view/WindowInsetsController;->show(I)V

    return-void
.end method

.method private static synthetic lambda$onOptionsItemSelected$0(Ljava/lang/String;)V
    .locals 2

    const-string v0, "1004"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/idm/fotaagent/analytics/samsunganalytics/SALogging;->send(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic m(Landroid/view/WindowInsetsController;)V
    .locals 0

    invoke-static {p0}, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity;->lambda$applyFullscreenIfNeeded$2(Landroid/view/WindowInsetsController;)V

    return-void
.end method

.method private measureContentWidthRatio()V
    .locals 5

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity;->startMargin:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity;->endMargin:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity;->getContentWidthRatio()F

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v4, v3

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v3, p0, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity;->startMargin:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity;->endMargin:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity;->content:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public final finish()V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public getMainContentLayoutId()I
    .locals 1

    sget-object v0, Lcom/idm/fotaagent/enabler/ui/whatsnew/MajorUpdate;->FOR_WHATS_NEW:Lcom/idm/fotaagent/enabler/ui/whatsnew/MajorUpdate;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/idm/fotaagent/enabler/ui/whatsnew/MajorUpdate;->isMajorUpdate(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f0d002c

    return p0

    :cond_0
    const p0, 0x7f0d002d

    return p0
.end method

.method public getTitleId()I
    .locals 0

    const p0, 0x7f13009d

    return p0
.end method

.method public inflateViews()Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater;
    .locals 2

    new-instance v0, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater;

    invoke-direct {v0, p0}, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater;-><init>(Le/n;)V

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity;->getTitleId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater;->withActionBar(I)Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity;->getMainContentLayoutId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater;->withMainContent(I)Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater;

    move-result-object v0

    iput-object v0, p0, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity;->inflater:Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-super {p0, p1}, Le/n;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity;->measureContentWidthRatio()V

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity;->applyFullscreenIfNeeded()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/G;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity;->inflateViews()Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater;

    move-result-object p1

    invoke-virtual {p1}, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater;->inflate()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Le/n;->setContentView(Landroid/view/View;)V

    const p1, 0x7f0a02a4

    invoke-virtual {p0, p1}, Le/n;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity;->tvMainTitle:Landroid/widget/TextView;

    const p1, 0x7f0a02a3

    invoke-virtual {p0, p1}, Le/n;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity;->tvMainOneUi:Landroid/widget/TextView;

    const p1, 0x7f0a02a2

    invoke-virtual {p0, p1}, Le/n;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity;->tvMainBody:Landroid/widget/TextView;

    const p1, 0x7f0a009f

    invoke-virtual {p0, p1}, Le/n;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity;->content:Landroid/widget/LinearLayout;

    const p1, 0x7f0a025a

    invoke-virtual {p0, p1}, Le/n;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity;->startMargin:Landroid/widget/LinearLayout;

    const p1, 0x7f0a00dd

    invoke-virtual {p0, p1}, Le/n;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity;->endMargin:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity;->measureContentWidthRatio()V

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity;->applyFullscreenIfNeeded()V

    invoke-static {p0}, Lcom/idm/fotaagent/enabler/ui/ActivityScreenIdMapper;->getScreenIdFrom(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, LA2/a;

    const/16 v0, 0x13

    invoke-direct {p1, v0}, LA2/a;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " menu item id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lcom/idm/fotaagent/enabler/ui/ActivityScreenIdMapper;->getScreenIdFrom(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance v0, LA2/a;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, LA2/a;-><init>(I)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity;->finish()V

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public final setMainBody(Ljava/lang/CharSequence;)V
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity;->tvMainBody:Landroid/widget/TextView;

    invoke-static {p0, p1}, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity;->goneIfEmptyOrSet(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setMainOneUi(Ljava/lang/CharSequence;)V
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity;->tvMainOneUi:Landroid/widget/TextView;

    invoke-static {p0, p1}, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity;->goneIfEmptyOrSet(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setMainTitle(Ljava/lang/CharSequence;)V
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity;->tvMainTitle:Landroid/widget/TextView;

    invoke-static {p0, p1}, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity;->goneIfEmptyOrSet(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final varargs setSubContent([Lcom/idm/fotaagent/enabler/ui/common/subcontent/ContentInjector$Model;)V
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity;->inflater:Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater;

    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater;->injectToSubContainer([Lcom/idm/fotaagent/enabler/ui/common/subcontent/ContentInjector$Model;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
