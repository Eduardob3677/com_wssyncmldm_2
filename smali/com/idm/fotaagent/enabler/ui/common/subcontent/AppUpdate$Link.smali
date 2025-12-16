.class public Lcom/idm/fotaagent/enabler/ui/common/subcontent/AppUpdate$Link;
.super Lcom/idm/fotaagent/enabler/ui/common/subcontent/ContentInjector$Model;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/enabler/ui/common/subcontent/AppUpdate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Link"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-static {p1}, Lcom/idm/fotaagent/enabler/ui/common/subcontent/AppUpdate$Link;->makeBody(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/enabler/ui/common/subcontent/ContentInjector$Model;-><init>(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private static addTextForLink()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/common/subcontent/AppUpdate;->access$000()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f13000b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/common/subcontent/AppUpdate;->access$000()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f13009b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static makeBody(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 4

    new-instance v0, Landroid/text/SpannableString;

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/common/subcontent/AppUpdate$Link;->addTextForLink()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/idm/fotaagent/enabler/ui/whatsnew/AbstractClickableSpan$ForAppUpdateInformation;

    invoke-direct {v1, p0, v0}, Lcom/idm/fotaagent/enabler/ui/whatsnew/AbstractClickableSpan$ForAppUpdateInformation;-><init>(Landroid/content/Context;Landroid/text/Spannable;)V

    invoke-virtual {v1}, Lcom/idm/fotaagent/enabler/ui/whatsnew/AbstractClickableSpan;->start()I

    move-result p0

    invoke-virtual {v1}, Lcom/idm/fotaagent/enabler/ui/whatsnew/AbstractClickableSpan;->end()I

    move-result v2

    const/16 v3, 0x21

    invoke-virtual {v0, v1, p0, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v0
.end method


# virtual methods
.method public final getLayoutId()I
    .locals 0

    const p0, 0x7f0d00c9

    return p0
.end method

.method public populateTo(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f0a02a1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f13000a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0a02a0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/ui/common/subcontent/ContentInjector$Model;->getBody()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void
.end method
