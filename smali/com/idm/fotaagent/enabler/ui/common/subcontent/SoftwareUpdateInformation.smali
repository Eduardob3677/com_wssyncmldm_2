.class public abstract Lcom/idm/fotaagent/enabler/ui/common/subcontent/SoftwareUpdateInformation;
.super Lcom/idm/fotaagent/enabler/ui/common/subcontent/ContentInjector$Model$TitleAndBullets;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idm/fotaagent/enabler/ui/common/subcontent/SoftwareUpdateInformation$Content;,
        Lcom/idm/fotaagent/enabler/ui/common/subcontent/SoftwareUpdateInformation$Last;,
        Lcom/idm/fotaagent/enabler/ui/common/subcontent/SoftwareUpdateInformation$Latest;,
        Lcom/idm/fotaagent/enabler/ui/common/subcontent/SoftwareUpdateInformation$New;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/idm/fotaagent/enabler/ui/common/subcontent/SoftwareUpdateInformation$Content;)V
    .locals 0

    invoke-static {p1}, Lcom/idm/fotaagent/enabler/ui/common/subcontent/SoftwareUpdateInformation;->makeParagraphs(Lcom/idm/fotaagent/enabler/ui/common/subcontent/SoftwareUpdateInformation$Content;)[Ljava/lang/CharSequence;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/enabler/ui/common/subcontent/ContentInjector$Model$TitleAndBullets;-><init>([Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic access$600()Landroid/content/Context;
    .locals 1

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/common/subcontent/SoftwareUpdateInformation;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private static getAndroidVersion(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/common/subcontent/SoftwareUpdateInformation;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f130009

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getContext()Landroid/content/Context;
    .locals 1

    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->idmGetContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private static getFwSizeDescription(Ljava/lang/Double;)Ljava/lang/CharSequence;
    .locals 2

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/common/subcontent/SoftwareUpdateInformation;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1300b0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "%.2f"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getFwVersionDescription(ILjava/lang/String;)Ljava/lang/CharSequence;
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/common/subcontent/SoftwareUpdateInformation;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "/"

    const-string v1, " / "

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getOneUiVersionDescription(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/common/subcontent/SoftwareUpdateInformation;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f130082

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getSecurityPatchLevelDescription(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 3

    invoke-static {}, Lcom/samsung/android/fotaagent/common/feature/FloatingFeature;->isMHSDevice()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {p0}, Lcom/idm/fotaagent/enabler/ui/common/subcontent/SoftwareUpdateInformation;->parseSecurityPatchLevelReadable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/common/subcontent/SoftwareUpdateInformation;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f13009a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v1
.end method

.method private static makeParagraphs(Lcom/idm/fotaagent/enabler/ui/common/subcontent/SoftwareUpdateInformation$Content;)[Ljava/lang/CharSequence;
    .locals 6

    invoke-static {p0}, Lcom/idm/fotaagent/enabler/ui/common/subcontent/SoftwareUpdateInformation$Content;->access$000(Lcom/idm/fotaagent/enabler/ui/common/subcontent/SoftwareUpdateInformation$Content;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/idm/fotaagent/enabler/ui/common/subcontent/SoftwareUpdateInformation;->getOneUiVersionDescription(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0}, Lcom/idm/fotaagent/enabler/ui/common/subcontent/SoftwareUpdateInformation$Content;->access$100(Lcom/idm/fotaagent/enabler/ui/common/subcontent/SoftwareUpdateInformation$Content;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/idm/fotaagent/enabler/ui/common/subcontent/SoftwareUpdateInformation;->getAndroidVersion(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {p0}, Lcom/idm/fotaagent/enabler/ui/common/subcontent/SoftwareUpdateInformation$Content;->access$200(Lcom/idm/fotaagent/enabler/ui/common/subcontent/SoftwareUpdateInformation$Content;)I

    move-result v2

    invoke-static {p0}, Lcom/idm/fotaagent/enabler/ui/common/subcontent/SoftwareUpdateInformation$Content;->access$300(Lcom/idm/fotaagent/enabler/ui/common/subcontent/SoftwareUpdateInformation$Content;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/idm/fotaagent/enabler/ui/common/subcontent/SoftwareUpdateInformation;->getFwVersionDescription(ILjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {p0}, Lcom/idm/fotaagent/enabler/ui/common/subcontent/SoftwareUpdateInformation$Content;->access$400(Lcom/idm/fotaagent/enabler/ui/common/subcontent/SoftwareUpdateInformation$Content;)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v3}, Lcom/idm/fotaagent/enabler/ui/common/subcontent/SoftwareUpdateInformation;->getFwSizeDescription(Ljava/lang/Double;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {p0}, Lcom/idm/fotaagent/enabler/ui/common/subcontent/SoftwareUpdateInformation$Content;->access$500(Lcom/idm/fotaagent/enabler/ui/common/subcontent/SoftwareUpdateInformation$Content;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/idm/fotaagent/enabler/ui/common/subcontent/SoftwareUpdateInformation;->getSecurityPatchLevelDescription(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p0

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/CharSequence;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v2, v4, v0

    const/4 v0, 0x3

    aput-object v3, v4, v0

    const/4 v0, 0x4

    aput-object p0, v4, v0

    return-object v4
.end method

.method public static parseAndroidVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string p0, "androidVersion is empty"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return-object v1

    :cond_0
    const-string v0, "\\((.*?)\\)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "[^0-9]"

    const-string v2, ""

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "There is no android version with numbers"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return-object v1

    :cond_1
    return-object p0

    :cond_2
    const-string p0, "There is no string between \'(\' and \')\'"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->E(Ljava/lang/Object;)V

    return-object v1
.end method

.method private static parseSecurityPatchLevelReadable(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    const-string p0, "securityPatchLevel is null or empty"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return-object v1

    :cond_0
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v2, "dMMMMyyyy"

    invoke-static {v0, v2}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    return-object v1
.end method


# virtual methods
.method public getTitleId()I
    .locals 0

    const p0, 0x7f1300a7

    return p0
.end method
