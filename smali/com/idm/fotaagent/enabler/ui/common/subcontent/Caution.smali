.class public Lcom/idm/fotaagent/enabler/ui/common/subcontent/Caution;
.super Lcom/idm/fotaagent/enabler/ui/common/subcontent/ContentInjector$Model$TitleAndBullets$WithTitleImage;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/common/subcontent/Caution;->makeParagraphs()[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/idm/fotaagent/enabler/ui/common/subcontent/ContentInjector$Model$TitleAndBullets$WithTitleImage;-><init>([Ljava/lang/CharSequence;)V

    return-void
.end method

.method private static getContext()Landroid/content/Context;
    .locals 1

    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->idmGetContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private static makeParagraphs()[Ljava/lang/CharSequence;
    .locals 5

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/common/subcontent/Caution;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/FotaTelephonyManager;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v0

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/common/subcontent/Caution;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/idm/fotaagent/enabler/feature/ResourceGenerator;->get()Lcom/idm/fotaagent/enabler/feature/ResourceGenerator;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/idm/fotaagent/enabler/feature/ResourceGenerator;->getCautionNotUseDuringUpdateMessageId(Z)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/common/subcontent/Caution;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f130054

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/common/subcontent/Caution;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f13004e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/CharSequence;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    return-object v3
.end method


# virtual methods
.method public getTitleId()I
    .locals 0

    const p0, 0x7f13001d

    return p0
.end method
