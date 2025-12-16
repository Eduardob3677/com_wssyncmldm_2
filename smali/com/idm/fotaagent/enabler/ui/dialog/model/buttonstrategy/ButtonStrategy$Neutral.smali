.class public abstract Lcom/idm/fotaagent/enabler/ui/dialog/model/buttonstrategy/ButtonStrategy$Neutral;
.super Lcom/idm/fotaagent/enabler/ui/dialog/model/buttonstrategy/AbstractButtonStrategy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/enabler/ui/dialog/model/buttonstrategy/ButtonStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Neutral"
.end annotation


# static fields
.field public static final NONE:Lcom/idm/fotaagent/enabler/ui/dialog/model/buttonstrategy/ButtonStrategy$Neutral;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/idm/fotaagent/enabler/ui/dialog/model/buttonstrategy/ButtonStrategy;->NONE:Lcom/idm/fotaagent/enabler/ui/dialog/model/buttonstrategy/ButtonStrategy;

    check-cast v0, Lcom/idm/fotaagent/enabler/ui/dialog/model/buttonstrategy/ButtonStrategy$Neutral;

    sput-object v0, Lcom/idm/fotaagent/enabler/ui/dialog/model/buttonstrategy/ButtonStrategy$Neutral;->NONE:Lcom/idm/fotaagent/enabler/ui/dialog/model/buttonstrategy/ButtonStrategy$Neutral;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, -0x3

    invoke-direct {p0, p1, v0}, Lcom/idm/fotaagent/enabler/ui/dialog/model/buttonstrategy/AbstractButtonStrategy;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public doOnClick(Landroid/content/DialogInterface;Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogContractor$Presenter;)V
    .locals 0

    invoke-interface {p2}, Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogContractor$Presenter;->getScreenId()Ljava/lang/String;

    move-result-object p0

    const-string p1, "0001"

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lcom/idm/fotaagent/analytics/samsunganalytics/SALogging;->send(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onClick(Landroid/content/DialogInterface;Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogContractor$Presenter;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/idm/fotaagent/enabler/ui/dialog/model/buttonstrategy/AbstractButtonStrategy;->onClick(Landroid/content/DialogInterface;Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogContractor$Presenter;)V

    return-void
.end method
