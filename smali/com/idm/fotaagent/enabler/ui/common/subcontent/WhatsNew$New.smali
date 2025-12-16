.class public Lcom/idm/fotaagent/enabler/ui/common/subcontent/WhatsNew$New;
.super Lcom/idm/fotaagent/enabler/ui/common/subcontent/WhatsNew;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/enabler/ui/common/subcontent/WhatsNew;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "New"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/idm/fotaagent/enabler/ui/whatsnew/DescriptionBody;->FOR_NEW:Lcom/idm/fotaagent/enabler/ui/whatsnew/DescriptionBody;

    invoke-direct {p0, p1, v0}, Lcom/idm/fotaagent/enabler/ui/common/subcontent/WhatsNew$New;-><init>(Landroid/content/Context;Lcom/idm/fotaagent/enabler/ui/whatsnew/DescriptionBody;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/idm/fotaagent/enabler/ui/whatsnew/DescriptionBody;)V
    .locals 1

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/common/subcontent/WhatsNew;->access$000()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/idm/fotaagent/enabler/ui/common/subcontent/WhatsNew$New;->makeContent(Landroid/content/Context;)Lcom/idm/fotaagent/enabler/ui/DescriptionContent;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lcom/idm/fotaagent/enabler/ui/whatsnew/DescriptionBody;->get(Landroid/content/Context;Lcom/idm/fotaagent/enabler/ui/DescriptionContent;)Ljava/lang/CharSequence;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/idm/fotaagent/enabler/ui/common/subcontent/WhatsNew;-><init>(Ljava/lang/CharSequence;Lcom/idm/fotaagent/enabler/ui/whatsnew/DescriptionBody;Lcom/idm/fotaagent/enabler/ui/common/subcontent/WhatsNew$1;)V

    return-void
.end method

.method private static makeContent(Landroid/content/Context;)Lcom/idm/fotaagent/enabler/ui/DescriptionContent;
    .locals 2

    new-instance v0, Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;

    invoke-direct {v0, p0}, Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/room/data/repository/FotaJobRepository;->descriptionContent()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/idm/fotaagent/enabler/ui/DescriptionContent;

    const-string v1, ""

    invoke-direct {v0, v1, v1}, Lcom/idm/fotaagent/enabler/ui/DescriptionContent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/idm/fotaagent/enabler/ui/DescriptionContent;

    return-object p0
.end method
