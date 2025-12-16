.class public Lcom/idm/fotaagent/enabler/ui/common/subcontent/WhatsNew$Last;
.super Lcom/idm/fotaagent/enabler/ui/common/subcontent/WhatsNew;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/enabler/ui/common/subcontent/WhatsNew;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Last"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/idm/fotaagent/enabler/ui/whatsnew/DescriptionBody;->FOR_LAST:Lcom/idm/fotaagent/enabler/ui/whatsnew/DescriptionBody;

    invoke-direct {p0, p1, v0}, Lcom/idm/fotaagent/enabler/ui/common/subcontent/WhatsNew$Last;-><init>(Landroid/content/Context;Lcom/idm/fotaagent/enabler/ui/whatsnew/DescriptionBody;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/idm/fotaagent/enabler/ui/whatsnew/DescriptionBody;)V
    .locals 1

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/common/subcontent/WhatsNew$Last;->makeContent()Lcom/idm/fotaagent/enabler/ui/DescriptionContent;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lcom/idm/fotaagent/enabler/ui/whatsnew/DescriptionBody;->get(Landroid/content/Context;Lcom/idm/fotaagent/enabler/ui/DescriptionContent;)Ljava/lang/CharSequence;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/idm/fotaagent/enabler/ui/common/subcontent/WhatsNew;-><init>(Ljava/lang/CharSequence;Lcom/idm/fotaagent/enabler/ui/whatsnew/DescriptionBody;Lcom/idm/fotaagent/enabler/ui/common/subcontent/WhatsNew$1;)V

    return-void
.end method

.method private static makeContent()Lcom/idm/fotaagent/enabler/ui/DescriptionContent;
    .locals 4

    new-instance v0, Lcom/idm/fotaagent/database/sqlite/database/dao/UpdateHistoryInfoDao;

    invoke-direct {v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/UpdateHistoryInfoDao;-><init>()V

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/dao/UpdateHistoryInfoDao;->getLastSuccessUpdateHistoryInfo()Lcom/idm/fotaagent/database/sqlite/database/entity/IDMUpdateHistoryInfo;

    move-result-object v0

    new-instance v1, Lcom/idm/fotaagent/enabler/ui/DescriptionContent;

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/entity/IDMUpdateHistoryInfo;->description()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/entity/IDMUpdateHistoryInfo;->summaryDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/sqlite/database/entity/IDMUpdateHistoryInfo;->descriptionType()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Lcom/idm/fotaagent/enabler/ui/DescriptionContent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method
