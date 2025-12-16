.class interface abstract Lcom/idm/fotaagent/enabler/ui/whatsnew/Linkifier$ActivityLinkifier;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/enabler/ui/whatsnew/Linkifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ActivityLinkifier"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idm/fotaagent/enabler/ui/whatsnew/Linkifier$ActivityLinkifier$ApplyLink;,
        Lcom/idm/fotaagent/enabler/ui/whatsnew/Linkifier$ActivityLinkifier$NoLink;
    }
.end annotation


# virtual methods
.method public abstract addLinks(Landroid/text/Spannable;Lcom/idm/fotaagent/enabler/ui/whatsnew/AbstractClickableSpan;)V
.end method

.method public abstract addTextForLink(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method
