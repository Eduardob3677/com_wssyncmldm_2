.class public abstract Lcom/idm/fotaagent/enabler/ui/whatsnew/AbstractClickableSpan;
.super Landroid/text/style/ClickableSpan;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idm/fotaagent/enabler/ui/whatsnew/AbstractClickableSpan$ForSmartSwitchDescription;,
        Lcom/idm/fotaagent/enabler/ui/whatsnew/AbstractClickableSpan$ForAppUpdateInformation;,
        Lcom/idm/fotaagent/enabler/ui/whatsnew/AbstractClickableSpan$ForMainDescription;
    }
.end annotation


# instance fields
.field protected final context:Landroid/content/Context;

.field protected end:I

.field protected start:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    iput-object p1, p0, Lcom/idm/fotaagent/enabler/ui/whatsnew/AbstractClickableSpan;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public end()I
    .locals 0

    iget p0, p0, Lcom/idm/fotaagent/enabler/ui/whatsnew/AbstractClickableSpan;->end:I

    return p0
.end method

.method public start()I
    .locals 0

    iget p0, p0, Lcom/idm/fotaagent/enabler/ui/whatsnew/AbstractClickableSpan;->start:I

    return p0
.end method
