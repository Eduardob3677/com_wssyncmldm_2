.class Lcom/idm/fotaagent/enabler/ui/whatsnew/Linkifier$ForPlain;
.super Lcom/idm/fotaagent/enabler/ui/whatsnew/Linkifier;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/enabler/ui/whatsnew/Linkifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForPlain"
.end annotation


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/idm/fotaagent/enabler/ui/whatsnew/Linkifier$ActivityLinkifier;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/idm/fotaagent/enabler/ui/whatsnew/Linkifier;-><init>(Landroid/content/Context;Lcom/idm/fotaagent/enabler/ui/whatsnew/Linkifier$ActivityLinkifier;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/idm/fotaagent/enabler/ui/whatsnew/Linkifier$ActivityLinkifier;Lcom/idm/fotaagent/enabler/ui/whatsnew/Linkifier$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/idm/fotaagent/enabler/ui/whatsnew/Linkifier$ForPlain;-><init>(Landroid/content/Context;Lcom/idm/fotaagent/enabler/ui/whatsnew/Linkifier$ActivityLinkifier;)V

    return-void
.end method


# virtual methods
.method public applyUrlSpan(Landroid/text/Spannable;)V
    .locals 0

    const/4 p0, 0x1

    invoke-static {p1, p0}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    return-void
.end method

.method public getLineSeparators()Ljava/lang/String;
    .locals 0

    const-string p0, "\n\n"

    return-object p0
.end method

.method public getSpannableDescription(Ljava/lang/String;)Landroid/text/Spannable;
    .locals 0

    new-instance p0, Landroid/text/SpannableString;

    invoke-direct {p0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    return-object p0
.end method
