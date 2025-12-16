.class public Lcom/idm/agent/dm/uic/IDMDmUICInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x5c29f390f6529f5L


# instance fields
.field private choiceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private message:Ljava/lang/String;

.field private type:Lcom/idm/agent/dm/uic/IDMDmUICInterface$UIC_DIALOG_TYPE;

.field private uicOption:Lcom/idm/agent/dm/uic/IDMDmUICOption;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public idmGetChoiceList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/idm/agent/dm/uic/IDMDmUICInfo;->choiceList:Ljava/util/List;

    return-object p0
.end method

.method public idmGetMessage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/agent/dm/uic/IDMDmUICInfo;->message:Ljava/lang/String;

    return-object p0
.end method

.method public idmGetType()I
    .locals 0

    iget-object p0, p0, Lcom/idm/agent/dm/uic/IDMDmUICInfo;->type:Lcom/idm/agent/dm/uic/IDMDmUICInterface$UIC_DIALOG_TYPE;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    return p0
.end method

.method public idmGetUicOption()Lcom/idm/agent/dm/uic/IDMDmUICOption;
    .locals 0

    iget-object p0, p0, Lcom/idm/agent/dm/uic/IDMDmUICInfo;->uicOption:Lcom/idm/agent/dm/uic/IDMDmUICOption;

    return-object p0
.end method

.method public idmSetChoiceList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/idm/agent/dm/uic/IDMDmUICInfo;->choiceList:Ljava/util/List;

    return-void
.end method

.method public idmSetMessage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/idm/agent/dm/uic/IDMDmUICInfo;->message:Ljava/lang/String;

    return-void
.end method

.method public idmSetType(Lcom/idm/agent/dm/uic/IDMDmUICInterface$UIC_DIALOG_TYPE;)V
    .locals 0

    iput-object p1, p0, Lcom/idm/agent/dm/uic/IDMDmUICInfo;->type:Lcom/idm/agent/dm/uic/IDMDmUICInterface$UIC_DIALOG_TYPE;

    return-void
.end method

.method public idmSetUicOption(Lcom/idm/agent/dm/uic/IDMDmUICOption;)V
    .locals 0

    iput-object p1, p0, Lcom/idm/agent/dm/uic/IDMDmUICInfo;->uicOption:Lcom/idm/agent/dm/uic/IDMDmUICOption;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UICInfo [type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/idm/agent/dm/uic/IDMDmUICInfo;->type:Lcom/idm/agent/dm/uic/IDMDmUICInterface$UIC_DIALOG_TYPE;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/idm/agent/dm/uic/IDMDmUICInfo;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", uicOption="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/idm/agent/dm/uic/IDMDmUICInfo;->uicOption:Lcom/idm/agent/dm/uic/IDMDmUICOption;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", choiceList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/idm/agent/dm/uic/IDMDmUICInfo;->choiceList:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
