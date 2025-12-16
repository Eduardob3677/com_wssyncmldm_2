.class public Lcom/idm/fotaagent/enabler/ui/whatsnew/AbstractClickableSpan$ForSmartSwitchDescription;
.super Lcom/idm/fotaagent/enabler/ui/whatsnew/AbstractClickableSpan;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/enabler/ui/whatsnew/AbstractClickableSpan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForSmartSwitchDescription"
.end annotation


# instance fields
.field private final screenId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/enabler/ui/whatsnew/AbstractClickableSpan;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/idm/fotaagent/enabler/ui/whatsnew/AbstractClickableSpan$ForSmartSwitchDescription;->screenId:Ljava/lang/String;

    const p3, 0x7f13009c

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/idm/fotaagent/enabler/ui/whatsnew/AbstractClickableSpan;->start:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, p2

    iput p1, p0, Lcom/idm/fotaagent/enabler/ui/whatsnew/AbstractClickableSpan;->end:I

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/idm/fotaagent/enabler/ui/whatsnew/AbstractClickableSpan$ForSmartSwitchDescription;->lambda$onClick$0(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$onClick$0(Ljava/lang/String;)V
    .locals 2

    const-string v0, "0025"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/idm/fotaagent/analytics/samsunganalytics/SALogging;->send(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private message(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-static {}, Lcom/idm/fotaagent/enabler/feature/ResourceGenerator;->get()Lcom/idm/fotaagent/enabler/feature/ResourceGenerator;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/enabler/feature/ResourceGenerator;->getSmartSwitchDialogMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/idm/fotaagent/enabler/ui/whatsnew/AbstractClickableSpan$ForSmartSwitchDescription;->screenId:Ljava/lang/String;

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance v0, LA2/a;

    const/16 v1, 0x16

    invoke-direct {v0, v1}, LA2/a;-><init>(I)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/whatsnew/AbstractClickableSpan;->context:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/ui/whatsnew/AbstractClickableSpan;->context:Landroid/content/Context;

    const v1, 0x7f1300b8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/idm/fotaagent/enabler/ui/whatsnew/AbstractClickableSpan;->context:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/idm/fotaagent/enabler/ui/whatsnew/AbstractClickableSpan$ForSmartSwitchDescription;->message(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/whatsnew/AbstractClickableSpan;->context:Landroid/content/Context;

    const v1, 0x7f130016

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 0

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    return-void
.end method
