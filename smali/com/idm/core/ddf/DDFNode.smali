.class public Lcom/idm/core/ddf/DDFNode;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private accessType:Lcom/idm/core/ddf/DDFTag;

.field private dfFormat:Lcom/idm/core/ddf/DDFTag;

.field private dfType:Lcom/idm/core/ddf/DDFTag;

.field private nodeName:Lcom/idm/core/ddf/DDFTag;

.field private final parentPath:Ljava/lang/String;

.field private scope:Lcom/idm/core/ddf/DDFTag;

.field private value:Lcom/idm/core/ddf/DDFTag;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/idm/core/ddf/DDFNode;->parentPath:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/idm/core/ddf/DDFNode;Lcom/idm/core/ddf/DDFTag;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/idm/core/ddf/DDFNode;->lambda$getPath$0(Lcom/idm/core/ddf/DDFTag;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getPath$0(Lcom/idm/core/ddf/DDFTag;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/idm/core/ddf/DDFNode;->parentPath:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/idm/core/ddf/DDFTag;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getAccessTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/idm/core/ddf/DDFNode;->accessType:Lcom/idm/core/ddf/DDFTag;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/idm/core/ddf/DDFTag;->getValue()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/idm/core/ddf/DDFNode;->accessType:Lcom/idm/core/ddf/DDFTag;

    invoke-virtual {p0}, Lcom/idm/core/ddf/DDFTag;->getValue()Ljava/lang/String;

    move-result-object p0

    const-string v0, ";"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getDfFormat()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lcom/idm/core/ddf/DDFNode;->dfFormat:Lcom/idm/core/ddf/DDFTag;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LG2/b;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, LG2/b;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getDfType()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lcom/idm/core/ddf/DDFNode;->dfType:Lcom/idm/core/ddf/DDFTag;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LG2/b;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, LG2/b;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lcom/idm/core/ddf/DDFNode;->nodeName:Lcom/idm/core/ddf/DDFTag;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LG2/b;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, LG2/b;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getPath()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/idm/core/ddf/DDFNode;->nodeName:Lcom/idm/core/ddf/DDFTag;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LF2/b;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0}, LF2/b;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    iget-object p0, p0, Lcom/idm/core/ddf/DDFNode;->parentPath:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getScope()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lcom/idm/core/ddf/DDFNode;->scope:Lcom/idm/core/ddf/DDFTag;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LG2/b;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, LG2/b;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lcom/idm/core/ddf/DDFNode;->value:Lcom/idm/core/ddf/DDFTag;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LG2/b;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, LG2/b;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public setTag(Lcom/idm/core/ddf/DDFTagType;Lcom/idm/core/ddf/DDFTag;)V
    .locals 1

    sget-object v0, Lcom/idm/core/ddf/DDFNode$1;->$SwitchMap$com$idm$core$ddf$DDFTagType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iput-object p2, p0, Lcom/idm/core/ddf/DDFNode;->value:Lcom/idm/core/ddf/DDFTag;

    goto :goto_0

    :pswitch_1
    iput-object p2, p0, Lcom/idm/core/ddf/DDFNode;->dfType:Lcom/idm/core/ddf/DDFTag;

    goto :goto_0

    :pswitch_2
    iput-object p2, p0, Lcom/idm/core/ddf/DDFNode;->dfFormat:Lcom/idm/core/ddf/DDFTag;

    goto :goto_0

    :pswitch_3
    iput-object p2, p0, Lcom/idm/core/ddf/DDFNode;->scope:Lcom/idm/core/ddf/DDFTag;

    goto :goto_0

    :pswitch_4
    iput-object p2, p0, Lcom/idm/core/ddf/DDFNode;->accessType:Lcom/idm/core/ddf/DDFTag;

    goto :goto_0

    :pswitch_5
    iput-object p2, p0, Lcom/idm/core/ddf/DDFNode;->nodeName:Lcom/idm/core/ddf/DDFTag;

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NodeName : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/idm/core/ddf/DDFNode;->getNodeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", AccessType : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/idm/core/ddf/DDFNode;->getAccessTypes()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", Scope : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/idm/core/ddf/DDFNode;->getScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", DfFormat : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/idm/core/ddf/DDFNode;->getDfFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", DfType : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/idm/core/ddf/DDFNode;->getDfType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Value : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/idm/core/ddf/DDFNode;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Path : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/idm/core/ddf/DDFNode;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
