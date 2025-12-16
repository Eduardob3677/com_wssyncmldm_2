.class abstract Lcom/idm/fotaagent/enabler/ui/dialog/model/buttonstrategy/AbstractButtonStrategy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/idm/fotaagent/enabler/ui/dialog/model/buttonstrategy/ButtonStrategy;


# instance fields
.field private final id:I

.field private final text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/idm/fotaagent/enabler/ui/dialog/model/buttonstrategy/AbstractButtonStrategy;->text:Ljava/lang/String;

    iput p2, p0, Lcom/idm/fotaagent/enabler/ui/dialog/model/buttonstrategy/AbstractButtonStrategy;->id:I

    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->idmGetContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static getString(I)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/dialog/model/buttonstrategy/AbstractButtonStrategy;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract doOnClick(Landroid/content/DialogInterface;Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogContractor$Presenter;)V
.end method

.method public final getId()I
    .locals 0

    iget p0, p0, Lcom/idm/fotaagent/enabler/ui/dialog/model/buttonstrategy/AbstractButtonStrategy;->id:I

    return p0
.end method

.method public final getText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/dialog/model/buttonstrategy/AbstractButtonStrategy;->text:Ljava/lang/String;

    return-object p0
.end method

.method public onClick(Landroid/content/DialogInterface;Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogContractor$Presenter;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - getText(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/ui/dialog/model/buttonstrategy/AbstractButtonStrategy;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", getId(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/ui/dialog/model/buttonstrategy/AbstractButtonStrategy;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, Lcom/idm/fotaagent/enabler/ui/dialog/model/buttonstrategy/AbstractButtonStrategy;->doOnClick(Landroid/content/DialogInterface;Lcom/idm/fotaagent/enabler/ui/dialog/IDMUIDialogContractor$Presenter;)V

    return-void
.end method
