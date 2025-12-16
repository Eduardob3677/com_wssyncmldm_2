.class public Lcom/idm/fotaagent/enabler/ui/whatsnew/AbstractClickableSpan$ForMainDescription;
.super Lcom/idm/fotaagent/enabler/ui/whatsnew/AbstractClickableSpan;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/enabler/ui/whatsnew/AbstractClickableSpan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForMainDescription"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/text/Spannable;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/enabler/ui/whatsnew/AbstractClickableSpan;-><init>(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/idm/fotaagent/enabler/ui/whatsnew/AbstractClickableSpan;->context:Landroid/content/Context;

    const v0, 0x7f1300be

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    iput p2, p0, Lcom/idm/fotaagent/enabler/ui/whatsnew/AbstractClickableSpan;->end:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr p2, p1

    iput p2, p0, Lcom/idm/fotaagent/enabler/ui/whatsnew/AbstractClickableSpan;->start:I

    return-void
.end method

.method public static synthetic a(Ljava/util/Map$Entry;)Ljava/util/Optional;
    .locals 0

    invoke-static {p0}, Lcom/idm/fotaagent/enabler/ui/whatsnew/AbstractClickableSpan$ForMainDescription;->lambda$onClick$0(Ljava/util/Map$Entry;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/idm/fotaagent/enabler/ui/whatsnew/AbstractClickableSpan$ForMainDescription;->lambda$onClick$1(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$onClick$0(Ljava/util/Map$Entry;)Ljava/util/Optional;
    .locals 0

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    invoke-static {p0}, Lcom/idm/fotaagent/enabler/ui/ActivityScreenIdMapper;->getScreenIdFrom(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$onClick$1(Ljava/lang/String;)V
    .locals 2

    const-string v0, "0005"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/idm/fotaagent/analytics/samsunganalytics/SALogging;->send(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/idm/fotaagent/enabler/ui/whatsnew/AbstractClickableSpan;->context:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/idm/fotaagent/enabler/ui/whatsnew/AbstractClickableSpan;->context:Landroid/content/Context;

    const-class v2, Lcom/idm/fotaagent/enabler/ui/maindescription/MainDescriptionActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/whatsnew/AbstractClickableSpan;->context:Landroid/content/Context;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "callingActivity"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->getInstance()Lcom/idm/fotaagent/enabler/ui/IDMUIManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->getActivityInMapWithoutEntry()Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/idm/fotaagent/enabler/ui/installconfirm/d;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Lcom/idm/fotaagent/enabler/ui/installconfirm/d;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->flatMap(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, LA2/a;

    const/16 v0, 0x15

    invoke-direct {p1, v0}, LA2/a;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 0

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    sget-object p0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void
.end method
