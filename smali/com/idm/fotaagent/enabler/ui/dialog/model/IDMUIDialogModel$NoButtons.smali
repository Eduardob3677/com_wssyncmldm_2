.class public Lcom/idm/fotaagent/enabler/ui/dialog/model/IDMUIDialogModel$NoButtons;
.super Lcom/idm/fotaagent/enabler/ui/dialog/model/IDMUIDialogModel$Base;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/enabler/ui/dialog/model/IDMUIDialogModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NoButtons"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 6

    sget-object v3, Lcom/idm/fotaagent/enabler/ui/dialog/model/buttonstrategy/ButtonStrategy$Neutral;->NONE:Lcom/idm/fotaagent/enabler/ui/dialog/model/buttonstrategy/ButtonStrategy$Neutral;

    sget-object v4, Lcom/idm/fotaagent/enabler/ui/dialog/model/buttonstrategy/ButtonStrategy$Negative;->NONE:Lcom/idm/fotaagent/enabler/ui/dialog/model/buttonstrategy/ButtonStrategy$Negative;

    sget-object v5, Lcom/idm/fotaagent/enabler/ui/dialog/model/buttonstrategy/ButtonStrategy$Positive;->NONE:Lcom/idm/fotaagent/enabler/ui/dialog/model/buttonstrategy/ButtonStrategy$Positive;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/idm/fotaagent/enabler/ui/dialog/model/IDMUIDialogModel$Base;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;Lcom/idm/fotaagent/enabler/ui/dialog/model/buttonstrategy/ButtonStrategy$Neutral;Lcom/idm/fotaagent/enabler/ui/dialog/model/buttonstrategy/ButtonStrategy$Negative;Lcom/idm/fotaagent/enabler/ui/dialog/model/buttonstrategy/ButtonStrategy$Positive;)V

    return-void
.end method


# virtual methods
.method public isCancelable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
