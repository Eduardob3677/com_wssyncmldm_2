.class public interface abstract Lcom/idm/fotaagent/enabler/ui/whatsnew/DescriptionBody;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final FOR_LAST:Lcom/idm/fotaagent/enabler/ui/whatsnew/DescriptionBody;

.field public static final FOR_NEW:Lcom/idm/fotaagent/enabler/ui/whatsnew/DescriptionBody;

.field public static final FOR_TWO_DEPTH:Lcom/idm/fotaagent/enabler/ui/whatsnew/DescriptionBody;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LE2/a;

    const/16 v1, 0x1d

    invoke-direct {v0, v1}, LE2/a;-><init>(I)V

    sput-object v0, Lcom/idm/fotaagent/enabler/ui/whatsnew/DescriptionBody;->FOR_NEW:Lcom/idm/fotaagent/enabler/ui/whatsnew/DescriptionBody;

    new-instance v0, Lcom/idm/fotaagent/enabler/ui/whatsnew/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/enabler/ui/whatsnew/a;-><init>(I)V

    sput-object v0, Lcom/idm/fotaagent/enabler/ui/whatsnew/DescriptionBody;->FOR_LAST:Lcom/idm/fotaagent/enabler/ui/whatsnew/DescriptionBody;

    new-instance v0, Lcom/idm/fotaagent/enabler/ui/whatsnew/a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/enabler/ui/whatsnew/a;-><init>(I)V

    sput-object v0, Lcom/idm/fotaagent/enabler/ui/whatsnew/DescriptionBody;->FOR_TWO_DEPTH:Lcom/idm/fotaagent/enabler/ui/whatsnew/DescriptionBody;

    return-void
.end method

.method public static synthetic h(Landroid/content/Context;Lcom/idm/fotaagent/enabler/ui/DescriptionContent;)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p0, p1}, Lcom/idm/fotaagent/enabler/ui/whatsnew/DescriptionBody;->lambda$static$2(Landroid/content/Context;Lcom/idm/fotaagent/enabler/ui/DescriptionContent;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$static$0(Landroid/content/Context;Lcom/idm/fotaagent/enabler/ui/DescriptionContent;)Ljava/lang/CharSequence;
    .locals 1

    sget-object v0, Lcom/idm/fotaagent/enabler/ui/whatsnew/MajorUpdate;->FOR_WHATS_NEW:Lcom/idm/fotaagent/enabler/ui/whatsnew/MajorUpdate;

    invoke-interface {v0, p0}, Lcom/idm/fotaagent/enabler/ui/whatsnew/MajorUpdate;->isMajorUpdate(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/idm/fotaagent/enabler/ui/whatsnew/Description$ForSummary;

    invoke-direct {v0, p1}, Lcom/idm/fotaagent/enabler/ui/whatsnew/Description$ForSummary;-><init>(Lcom/idm/fotaagent/enabler/ui/DescriptionContent;)V

    invoke-virtual {v0, p0}, Lcom/idm/fotaagent/enabler/ui/whatsnew/Description$ForSummary;->get(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/idm/fotaagent/enabler/ui/whatsnew/Description$ForMain;

    invoke-direct {v0, p1}, Lcom/idm/fotaagent/enabler/ui/whatsnew/Description$ForMain;-><init>(Lcom/idm/fotaagent/enabler/ui/DescriptionContent;)V

    invoke-virtual {v0, p0}, Lcom/idm/fotaagent/enabler/ui/whatsnew/Description$ForMain;->get(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static synthetic lambda$static$1(Landroid/content/Context;Lcom/idm/fotaagent/enabler/ui/DescriptionContent;)Ljava/lang/CharSequence;
    .locals 1

    sget-object v0, Lcom/idm/fotaagent/enabler/ui/whatsnew/MajorUpdate;->FOR_LAST_UPDATE:Lcom/idm/fotaagent/enabler/ui/whatsnew/MajorUpdate;

    invoke-interface {v0, p0}, Lcom/idm/fotaagent/enabler/ui/whatsnew/MajorUpdate;->isMajorUpdate(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/idm/fotaagent/enabler/ui/whatsnew/Description$ForSummary;

    invoke-direct {v0, p1}, Lcom/idm/fotaagent/enabler/ui/whatsnew/Description$ForSummary;-><init>(Lcom/idm/fotaagent/enabler/ui/DescriptionContent;)V

    invoke-virtual {v0, p0}, Lcom/idm/fotaagent/enabler/ui/whatsnew/Description$ForSummary;->get(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/idm/fotaagent/enabler/ui/whatsnew/Description$ForMain;

    invoke-direct {v0, p1}, Lcom/idm/fotaagent/enabler/ui/whatsnew/Description$ForMain;-><init>(Lcom/idm/fotaagent/enabler/ui/DescriptionContent;)V

    invoke-virtual {v0, p0}, Lcom/idm/fotaagent/enabler/ui/whatsnew/Description$ForMain;->get(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static synthetic lambda$static$2(Landroid/content/Context;Lcom/idm/fotaagent/enabler/ui/DescriptionContent;)Ljava/lang/CharSequence;
    .locals 1

    new-instance v0, Lcom/idm/fotaagent/enabler/ui/whatsnew/Description$ForMain;

    invoke-direct {v0, p1}, Lcom/idm/fotaagent/enabler/ui/whatsnew/Description$ForMain;-><init>(Lcom/idm/fotaagent/enabler/ui/DescriptionContent;)V

    invoke-virtual {v0, p0}, Lcom/idm/fotaagent/enabler/ui/whatsnew/Description$ForMain;->get(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic u(Landroid/content/Context;Lcom/idm/fotaagent/enabler/ui/DescriptionContent;)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p0, p1}, Lcom/idm/fotaagent/enabler/ui/whatsnew/DescriptionBody;->lambda$static$1(Landroid/content/Context;Lcom/idm/fotaagent/enabler/ui/DescriptionContent;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic y(Landroid/content/Context;Lcom/idm/fotaagent/enabler/ui/DescriptionContent;)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p0, p1}, Lcom/idm/fotaagent/enabler/ui/whatsnew/DescriptionBody;->lambda$static$0(Landroid/content/Context;Lcom/idm/fotaagent/enabler/ui/DescriptionContent;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract get(Landroid/content/Context;Lcom/idm/fotaagent/enabler/ui/DescriptionContent;)Ljava/lang/CharSequence;
.end method
