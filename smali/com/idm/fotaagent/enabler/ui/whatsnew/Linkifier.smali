.class public abstract Lcom/idm/fotaagent/enabler/ui/whatsnew/Linkifier;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idm/fotaagent/enabler/ui/whatsnew/Linkifier$ActivityLinkifier;,
        Lcom/idm/fotaagent/enabler/ui/whatsnew/Linkifier$ForHtml;,
        Lcom/idm/fotaagent/enabler/ui/whatsnew/Linkifier$ForPlain;,
        Lcom/idm/fotaagent/enabler/ui/whatsnew/Linkifier$URLSpec;
    }
.end annotation


# static fields
.field static final TYPE_HTML:Ljava/lang/String; = "html"


# instance fields
.field protected final activityContext:Landroid/content/Context;

.field protected activityLinkifier:Lcom/idm/fotaagent/enabler/ui/whatsnew/Linkifier$ActivityLinkifier;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/idm/fotaagent/enabler/ui/whatsnew/Linkifier$ActivityLinkifier;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/idm/fotaagent/enabler/ui/whatsnew/Linkifier;->activityContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/idm/fotaagent/enabler/ui/whatsnew/Linkifier;->activityLinkifier:Lcom/idm/fotaagent/enabler/ui/whatsnew/Linkifier$ActivityLinkifier;

    return-void
.end method

.method public static get(Landroid/content/Context;Lcom/idm/fotaagent/enabler/ui/whatsnew/Linkifier$ActivityLinkifier;Ljava/lang/String;)Lcom/idm/fotaagent/enabler/ui/whatsnew/Linkifier;
    .locals 1

    const-string v0, "html"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    new-instance p2, Lcom/idm/fotaagent/enabler/ui/whatsnew/Linkifier$ForHtml;

    invoke-direct {p2, p0, p1, v0}, Lcom/idm/fotaagent/enabler/ui/whatsnew/Linkifier$ForHtml;-><init>(Landroid/content/Context;Lcom/idm/fotaagent/enabler/ui/whatsnew/Linkifier$ActivityLinkifier;Lcom/idm/fotaagent/enabler/ui/whatsnew/Linkifier$1;)V

    return-object p2

    :cond_0
    new-instance p2, Lcom/idm/fotaagent/enabler/ui/whatsnew/Linkifier$ForPlain;

    invoke-direct {p2, p0, p1, v0}, Lcom/idm/fotaagent/enabler/ui/whatsnew/Linkifier$ForPlain;-><init>(Landroid/content/Context;Lcom/idm/fotaagent/enabler/ui/whatsnew/Linkifier$ActivityLinkifier;Lcom/idm/fotaagent/enabler/ui/whatsnew/Linkifier$1;)V

    return-object p2
.end method


# virtual methods
.method public addLinks(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/whatsnew/Linkifier;->activityLinkifier:Lcom/idm/fotaagent/enabler/ui/whatsnew/Linkifier$ActivityLinkifier;

    iget-object v1, p0, Lcom/idm/fotaagent/enabler/ui/whatsnew/Linkifier;->activityContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/ui/whatsnew/Linkifier;->getLineSeparators()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, p1, v2}, Lcom/idm/fotaagent/enabler/ui/whatsnew/Linkifier$ActivityLinkifier;->addTextForLink(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/enabler/ui/whatsnew/Linkifier;->getSpannableDescription(Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object p1

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/whatsnew/Linkifier;->activityLinkifier:Lcom/idm/fotaagent/enabler/ui/whatsnew/Linkifier$ActivityLinkifier;

    new-instance v1, Lcom/idm/fotaagent/enabler/ui/whatsnew/AbstractClickableSpan$ForMainDescription;

    iget-object v2, p0, Lcom/idm/fotaagent/enabler/ui/whatsnew/Linkifier;->activityContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1}, Lcom/idm/fotaagent/enabler/ui/whatsnew/AbstractClickableSpan$ForMainDescription;-><init>(Landroid/content/Context;Landroid/text/Spannable;)V

    invoke-interface {v0, p1, v1}, Lcom/idm/fotaagent/enabler/ui/whatsnew/Linkifier$ActivityLinkifier;->addLinks(Landroid/text/Spannable;Lcom/idm/fotaagent/enabler/ui/whatsnew/AbstractClickableSpan;)V

    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/enabler/ui/whatsnew/Linkifier;->applyUrlSpan(Landroid/text/Spannable;)V

    return-object p1
.end method

.method public abstract applyUrlSpan(Landroid/text/Spannable;)V
.end method

.method public abstract getLineSeparators()Ljava/lang/String;
.end method

.method public abstract getSpannableDescription(Ljava/lang/String;)Landroid/text/Spannable;
.end method
