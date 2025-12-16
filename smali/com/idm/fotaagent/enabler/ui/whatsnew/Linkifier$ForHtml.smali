.class Lcom/idm/fotaagent/enabler/ui/whatsnew/Linkifier$ForHtml;
.super Lcom/idm/fotaagent/enabler/ui/whatsnew/Linkifier;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/enabler/ui/whatsnew/Linkifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForHtml"
.end annotation


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/idm/fotaagent/enabler/ui/whatsnew/Linkifier$ActivityLinkifier;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/idm/fotaagent/enabler/ui/whatsnew/Linkifier;-><init>(Landroid/content/Context;Lcom/idm/fotaagent/enabler/ui/whatsnew/Linkifier$ActivityLinkifier;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/idm/fotaagent/enabler/ui/whatsnew/Linkifier$ActivityLinkifier;Lcom/idm/fotaagent/enabler/ui/whatsnew/Linkifier$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/idm/fotaagent/enabler/ui/whatsnew/Linkifier$ForHtml;-><init>(Landroid/content/Context;Lcom/idm/fotaagent/enabler/ui/whatsnew/Linkifier$ActivityLinkifier;)V

    return-void
.end method


# virtual methods
.method public applyUrlSpan(Landroid/text/Spannable;)V
    .locals 6

    const-string p0, "WEB_URLS url specs: "

    const-string v0, "html url specs: "

    :try_start_0
    invoke-static {p1}, Lcom/idm/fotaagent/enabler/ui/whatsnew/Linkifier$URLSpec;->extractFrom(Landroid/text/Spannable;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->V(Ljava/lang/Object;)V

    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    invoke-static {p1}, Lcom/idm/fotaagent/enabler/ui/whatsnew/Linkifier$URLSpec;->extractFrom(Landroid/text/Spannable;)Ljava/util/List;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->V(Ljava/lang/Object;)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/idm/fotaagent/enabler/ui/whatsnew/Linkifier$URLSpec;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/idm/fotaagent/enabler/ui/whatsnew/Linkifier$URLSpec;

    iget v4, v1, Lcom/idm/fotaagent/enabler/ui/whatsnew/Linkifier$URLSpec;->end:I

    iget v5, v3, Lcom/idm/fotaagent/enabler/ui/whatsnew/Linkifier$URLSpec;->start:I

    if-gt v4, v5, :cond_1

    goto :goto_1

    :cond_1
    iget v4, v1, Lcom/idm/fotaagent/enabler/ui/whatsnew/Linkifier$URLSpec;->start:I

    if-gt v4, v5, :cond_2

    goto :goto_0

    :cond_2
    iget v3, v3, Lcom/idm/fotaagent/enabler/ui/whatsnew/Linkifier$URLSpec;->end:I

    if-ge v4, v3, :cond_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_3
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restore html url spec: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/fotaagent/common/log/Log;->V(Ljava/lang/Object;)V

    new-instance v2, Landroid/text/style/URLSpan;

    iget-object v3, v1, Lcom/idm/fotaagent/enabler/ui/whatsnew/Linkifier$URLSpec;->url:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    iget v3, v1, Lcom/idm/fotaagent/enabler/ui/whatsnew/Linkifier$URLSpec;->start:I

    iget v1, v1, Lcom/idm/fotaagent/enabler/ui/whatsnew/Linkifier$URLSpec;->end:I

    const/16 v4, 0x21

    invoke-interface {p1, v2, v3, v1, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "final url specs: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/idm/fotaagent/enabler/ui/whatsnew/Linkifier$URLSpec;->extractFrom(Landroid/text/Spannable;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->V(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_3
    return-void
.end method

.method public getLineSeparators()Ljava/lang/String;
    .locals 0

    const-string p0, "<br><br>"

    return-object p0
.end method

.method public getSpannableDescription(Ljava/lang/String;)Landroid/text/Spannable;
    .locals 0

    const/16 p0, 0x3f

    invoke-static {p1, p0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object p0

    check-cast p0, Landroid/text/Spannable;

    return-object p0
.end method
