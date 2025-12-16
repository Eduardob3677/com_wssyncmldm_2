.class Lcom/idm/fotaagent/enabler/ui/common/subcontent/SoftwareUpdateInformation$Content;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/enabler/ui/common/subcontent/SoftwareUpdateInformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Content"
.end annotation


# instance fields
.field private final androidVersion:Ljava/lang/String;

.field private final fwSize:Ljava/lang/Double;

.field private final fwVersion:Ljava/lang/String;

.field private final fwVersionMessageId:I

.field private final oneUiVersion:Ljava/lang/String;

.field private final patchLevel:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/idm/fotaagent/enabler/ui/common/subcontent/SoftwareUpdateInformation$Content;->fwVersionMessageId:I

    iput-object p2, p0, Lcom/idm/fotaagent/enabler/ui/common/subcontent/SoftwareUpdateInformation$Content;->fwVersion:Ljava/lang/String;

    iput-object p3, p0, Lcom/idm/fotaagent/enabler/ui/common/subcontent/SoftwareUpdateInformation$Content;->fwSize:Ljava/lang/Double;

    iput-object p4, p0, Lcom/idm/fotaagent/enabler/ui/common/subcontent/SoftwareUpdateInformation$Content;->patchLevel:Ljava/lang/String;

    iput-object p5, p0, Lcom/idm/fotaagent/enabler/ui/common/subcontent/SoftwareUpdateInformation$Content;->oneUiVersion:Ljava/lang/String;

    iput-object p6, p0, Lcom/idm/fotaagent/enabler/ui/common/subcontent/SoftwareUpdateInformation$Content;->androidVersion:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$000(Lcom/idm/fotaagent/enabler/ui/common/subcontent/SoftwareUpdateInformation$Content;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/common/subcontent/SoftwareUpdateInformation$Content;->oneUiVersion:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/idm/fotaagent/enabler/ui/common/subcontent/SoftwareUpdateInformation$Content;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/common/subcontent/SoftwareUpdateInformation$Content;->androidVersion:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/idm/fotaagent/enabler/ui/common/subcontent/SoftwareUpdateInformation$Content;)I
    .locals 0

    iget p0, p0, Lcom/idm/fotaagent/enabler/ui/common/subcontent/SoftwareUpdateInformation$Content;->fwVersionMessageId:I

    return p0
.end method

.method public static synthetic access$300(Lcom/idm/fotaagent/enabler/ui/common/subcontent/SoftwareUpdateInformation$Content;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/common/subcontent/SoftwareUpdateInformation$Content;->fwVersion:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/idm/fotaagent/enabler/ui/common/subcontent/SoftwareUpdateInformation$Content;)Ljava/lang/Double;
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/common/subcontent/SoftwareUpdateInformation$Content;->fwSize:Ljava/lang/Double;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/idm/fotaagent/enabler/ui/common/subcontent/SoftwareUpdateInformation$Content;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/common/subcontent/SoftwareUpdateInformation$Content;->patchLevel:Ljava/lang/String;

    return-object p0
.end method
