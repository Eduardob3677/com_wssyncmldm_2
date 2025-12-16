.class public Lcom/idm/agent/dm/uic/IDMDmUICDecoder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/idm/core/syncml/Constants;
.implements Lcom/idm/agent/dm/uic/IDMDmUICInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private idmDecodeChoiceList(Ljava/util/ArrayList;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/idm/core/syncml/Item;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v0, 0x2

    if-ge p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/idm/core/syncml/Item;

    invoke-virtual {v1}, Lcom/idm/core/syncml/Item;->getData()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method private idmDecodeUICOption(Ljava/lang/String;)Lcom/idm/agent/dm/uic/IDMDmUICOption;
    .locals 13

    new-instance v0, Lcom/idm/agent/dm/uic/IDMDmUICOption;

    invoke-direct {v0}, Lcom/idm/agent/dm/uic/IDMDmUICOption;-><init>()V

    :try_start_0
    const-string v1, "&"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_e

    aget-object v4, p1, v3

    const/16 v5, 0x3d

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, 0x1

    if-ge v5, v6, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v8, -0x78ddb9cf

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x5

    const/4 v12, 0x4

    if-eq v5, v8, :cond_6

    const/16 v8, 0x88e

    if-eq v5, v8, :cond_5

    const/16 v8, 0x8af

    if-eq v5, v8, :cond_4

    const/16 v8, 0x92b

    if-eq v5, v8, :cond_3

    const v8, 0x45bf0d4

    if-eq v5, v8, :cond_2

    const v8, 0x45f6e42

    if-eq v5, v8, :cond_1

    goto :goto_1

    :cond_1
    const-string v5, "MINDT"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    move v5, v2

    goto :goto_2

    :catch_0
    move-exception p0

    goto/16 :goto_4

    :cond_2
    const-string v5, "MAXDT"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    move v5, v6

    goto :goto_2

    :cond_3
    const-string v5, "IT"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    move v5, v12

    goto :goto_2

    :cond_4
    const-string v5, "ET"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    move v5, v11

    goto :goto_2

    :cond_5
    const-string v5, "DR"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    move v5, v10

    goto :goto_2

    :cond_6
    const-string v5, "MAXLEN"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    move v5, v9

    goto :goto_2

    :cond_7
    :goto_1
    const/4 v5, -0x1

    :goto_2
    if-eqz v5, :cond_d

    if-eq v5, v6, :cond_c

    if-eq v5, v10, :cond_b

    if-eq v5, v9, :cond_a

    if-eq v5, v12, :cond_9

    if-eq v5, v11, :cond_8

    const-string v4, "No UIC Option"

    invoke-static {v4}, Lcom/idm/adapter/logmanager/IDMDebug;->W(Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    invoke-direct {p0, v4, v0}, Lcom/idm/agent/dm/uic/IDMDmUICDecoder;->idmSetUICOptionET(Ljava/lang/String;Lcom/idm/agent/dm/uic/IDMDmUICOption;)V

    goto :goto_3

    :cond_9
    invoke-direct {p0, v4, v0}, Lcom/idm/agent/dm/uic/IDMDmUICDecoder;->idmSetUICOptionIT(Ljava/lang/String;Lcom/idm/agent/dm/uic/IDMDmUICOption;)V

    goto :goto_3

    :cond_a
    invoke-direct {p0, v4, v0}, Lcom/idm/agent/dm/uic/IDMDmUICDecoder;->idmSetUICOptionMAXLEN(Ljava/lang/String;Lcom/idm/agent/dm/uic/IDMDmUICOption;)V

    goto :goto_3

    :cond_b
    invoke-direct {p0, v4, v0}, Lcom/idm/agent/dm/uic/IDMDmUICDecoder;->idmSetUICOptionDR(Ljava/lang/String;Lcom/idm/agent/dm/uic/IDMDmUICOption;)V

    goto :goto_3

    :cond_c
    invoke-direct {p0, v4, v0}, Lcom/idm/agent/dm/uic/IDMDmUICDecoder;->idmSetUICOptionMAXDT(Ljava/lang/String;Lcom/idm/agent/dm/uic/IDMDmUICOption;)V

    goto :goto_3

    :cond_d
    invoke-direct {p0, v4, v0}, Lcom/idm/agent/dm/uic/IDMDmUICDecoder;->idmSetUICOptionMINDT(Ljava/lang/String;Lcom/idm/agent/dm/uic/IDMDmUICOption;)V

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_e
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "uicOption : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->I(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :goto_4
    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->printStackTrace(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private idmSetUICOptionDR(Ljava/lang/String;Lcom/idm/agent/dm/uic/IDMDmUICOption;)V
    .locals 0

    invoke-virtual {p2, p1}, Lcom/idm/agent/dm/uic/IDMDmUICOption;->idmSetDefaultResponse(Ljava/lang/String;)V

    return-void
.end method

.method private idmSetUICOptionET(Ljava/lang/String;Lcom/idm/agent/dm/uic/IDMDmUICOption;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "P"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "T"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "No EchoType Option"

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->W(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    invoke-virtual {p2, p0}, Lcom/idm/agent/dm/uic/IDMDmUICOption;->idmSetEchoType(I)V

    goto :goto_0

    :cond_1
    const/4 p0, 0x2

    invoke-virtual {p2, p0}, Lcom/idm/agent/dm/uic/IDMDmUICOption;->idmSetEchoType(I)V

    :goto_0
    return-void
.end method

.method private idmSetUICOptionIT(Ljava/lang/String;Lcom/idm/agent/dm/uic/IDMDmUICOption;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    const/4 v0, -0x1

    sparse-switch p0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p0, "T"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    goto :goto_0

    :sswitch_1
    const-string p0, "P"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_2
    const-string p0, "N"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_3
    const-string p0, "I"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_4
    const-string p0, "D"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_5
    const-string p0, "A"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    const-string p0, "No InputType Option"

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->W(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_0
    sget-object p0, Lcom/idm/agent/dm/uic/IDMDmUICInterface$UIC_INPUT_TYPE;->IDM_UIC_INPUTTYPE_TIME:Lcom/idm/agent/dm/uic/IDMDmUICInterface$UIC_INPUT_TYPE;

    invoke-virtual {p2, p0}, Lcom/idm/agent/dm/uic/IDMDmUICOption;->idmSetInputType(Lcom/idm/agent/dm/uic/IDMDmUICInterface$UIC_INPUT_TYPE;)V

    goto :goto_1

    :pswitch_1
    sget-object p0, Lcom/idm/agent/dm/uic/IDMDmUICInterface$UIC_INPUT_TYPE;->IDM_UIC_INPUTTYPE_PHONENUBMER:Lcom/idm/agent/dm/uic/IDMDmUICInterface$UIC_INPUT_TYPE;

    invoke-virtual {p2, p0}, Lcom/idm/agent/dm/uic/IDMDmUICOption;->idmSetInputType(Lcom/idm/agent/dm/uic/IDMDmUICInterface$UIC_INPUT_TYPE;)V

    goto :goto_1

    :pswitch_2
    sget-object p0, Lcom/idm/agent/dm/uic/IDMDmUICInterface$UIC_INPUT_TYPE;->IDM_UIC_INPUTTYPE_NUMERIC:Lcom/idm/agent/dm/uic/IDMDmUICInterface$UIC_INPUT_TYPE;

    invoke-virtual {p2, p0}, Lcom/idm/agent/dm/uic/IDMDmUICOption;->idmSetInputType(Lcom/idm/agent/dm/uic/IDMDmUICInterface$UIC_INPUT_TYPE;)V

    goto :goto_1

    :pswitch_3
    sget-object p0, Lcom/idm/agent/dm/uic/IDMDmUICInterface$UIC_INPUT_TYPE;->IDM_UIC_INPUTTYPE_IPADDRESS:Lcom/idm/agent/dm/uic/IDMDmUICInterface$UIC_INPUT_TYPE;

    invoke-virtual {p2, p0}, Lcom/idm/agent/dm/uic/IDMDmUICOption;->idmSetInputType(Lcom/idm/agent/dm/uic/IDMDmUICInterface$UIC_INPUT_TYPE;)V

    goto :goto_1

    :pswitch_4
    sget-object p0, Lcom/idm/agent/dm/uic/IDMDmUICInterface$UIC_INPUT_TYPE;->IDM_UIC_INPUTTYPE_DATE:Lcom/idm/agent/dm/uic/IDMDmUICInterface$UIC_INPUT_TYPE;

    invoke-virtual {p2, p0}, Lcom/idm/agent/dm/uic/IDMDmUICOption;->idmSetInputType(Lcom/idm/agent/dm/uic/IDMDmUICInterface$UIC_INPUT_TYPE;)V

    goto :goto_1

    :pswitch_5
    sget-object p0, Lcom/idm/agent/dm/uic/IDMDmUICInterface$UIC_INPUT_TYPE;->IDM_UIC_INPUTTYPE_ALPHANUMERIC:Lcom/idm/agent/dm/uic/IDMDmUICInterface$UIC_INPUT_TYPE;

    invoke-virtual {p2, p0}, Lcom/idm/agent/dm/uic/IDMDmUICOption;->idmSetInputType(Lcom/idm/agent/dm/uic/IDMDmUICInterface$UIC_INPUT_TYPE;)V

    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_5
        0x44 -> :sswitch_4
        0x49 -> :sswitch_3
        0x4e -> :sswitch_2
        0x50 -> :sswitch_1
        0x54 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private idmSetUICOptionMAXDT(Ljava/lang/String;Lcom/idm/agent/dm/uic/IDMDmUICOption;)V
    .locals 0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/idm/agent/dm/uic/IDMDmUICOption;->idmSetMaxDisplayTime(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private idmSetUICOptionMAXLEN(Ljava/lang/String;Lcom/idm/agent/dm/uic/IDMDmUICOption;)V
    .locals 0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/idm/agent/dm/uic/IDMDmUICOption;->idmSetMaxLength(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private idmSetUICOptionMINDT(Ljava/lang/String;Lcom/idm/agent/dm/uic/IDMDmUICOption;)V
    .locals 0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/idm/agent/dm/uic/IDMDmUICOption;->idmSetMinDisplayTime(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public idmDecode(Ljava/lang/String;Ljava/util/ArrayList;)Lcom/idm/agent/dm/uic/IDMDmUICInfo;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/idm/core/syncml/Item;",
            ">;)",
            "Lcom/idm/agent/dm/uic/IDMDmUICInfo;"
        }
    .end annotation

    new-instance v0, Lcom/idm/agent/dm/uic/IDMDmUICInfo;

    invoke-direct {v0}, Lcom/idm/agent/dm/uic/IDMDmUICInfo;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/idm/core/syncml/Item;

    invoke-virtual {v2}, Lcom/idm/core/syncml/Item;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v2, "MINDT=30"

    invoke-direct {p0, v2}, Lcom/idm/agent/dm/uic/IDMDmUICDecoder;->idmDecodeUICOption(Ljava/lang/String;)Lcom/idm/agent/dm/uic/IDMDmUICOption;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/idm/agent/dm/uic/IDMDmUICInfo;->idmSetUicOption(Lcom/idm/agent/dm/uic/IDMDmUICOption;)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto/16 :goto_4

    :cond_0
    invoke-direct {p0, v2}, Lcom/idm/agent/dm/uic/IDMDmUICDecoder;->idmDecodeUICOption(Ljava/lang/String;)Lcom/idm/agent/dm/uic/IDMDmUICOption;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/idm/agent/dm/uic/IDMDmUICInfo;->idmSetUicOption(Lcom/idm/agent/dm/uic/IDMDmUICOption;)V

    :goto_0
    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/idm/core/syncml/Item;

    invoke-virtual {v3}, Lcom/idm/core/syncml/Item;->getData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/idm/agent/dm/uic/IDMDmUICInfo;->idmSetMessage(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, 0x4

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const-string v1, "1104"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move v1, v6

    goto :goto_2

    :pswitch_1
    const-string v1, "1103"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move v1, v5

    goto :goto_2

    :pswitch_2
    const-string v1, "1102"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move v1, v4

    goto :goto_2

    :pswitch_3
    const-string v1, "1101"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move v1, v2

    goto :goto_2

    :pswitch_4
    const-string v3, "1100"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v1, -0x1

    :goto_2
    if-eqz v1, :cond_6

    if-eq v1, v2, :cond_5

    if-eq v1, v4, :cond_4

    if-eq v1, v5, :cond_3

    if-eq v1, v6, :cond_2

    const-string p0, "No UIC AlertCode"

    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->W(Ljava/lang/String;)V

    goto :goto_3

    :cond_2
    sget-object p1, Lcom/idm/agent/dm/uic/IDMDmUICInterface$UIC_DIALOG_TYPE;->IDM_UIC_TYPE_MULTIPLE_CHOICE:Lcom/idm/agent/dm/uic/IDMDmUICInterface$UIC_DIALOG_TYPE;

    invoke-virtual {v0, p1}, Lcom/idm/agent/dm/uic/IDMDmUICInfo;->idmSetType(Lcom/idm/agent/dm/uic/IDMDmUICInterface$UIC_DIALOG_TYPE;)V

    invoke-direct {p0, p2}, Lcom/idm/agent/dm/uic/IDMDmUICDecoder;->idmDecodeChoiceList(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/idm/agent/dm/uic/IDMDmUICInfo;->idmSetChoiceList(Ljava/util/List;)V

    goto :goto_3

    :cond_3
    sget-object p1, Lcom/idm/agent/dm/uic/IDMDmUICInterface$UIC_DIALOG_TYPE;->IDM_UIC_TYPE_SINGLE_CHOICE:Lcom/idm/agent/dm/uic/IDMDmUICInterface$UIC_DIALOG_TYPE;

    invoke-virtual {v0, p1}, Lcom/idm/agent/dm/uic/IDMDmUICInfo;->idmSetType(Lcom/idm/agent/dm/uic/IDMDmUICInterface$UIC_DIALOG_TYPE;)V

    invoke-direct {p0, p2}, Lcom/idm/agent/dm/uic/IDMDmUICDecoder;->idmDecodeChoiceList(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/idm/agent/dm/uic/IDMDmUICInfo;->idmSetChoiceList(Ljava/util/List;)V

    goto :goto_3

    :cond_4
    sget-object p0, Lcom/idm/agent/dm/uic/IDMDmUICInterface$UIC_DIALOG_TYPE;->IDM_UIC_TYPE_USER_INPUT:Lcom/idm/agent/dm/uic/IDMDmUICInterface$UIC_DIALOG_TYPE;

    invoke-virtual {v0, p0}, Lcom/idm/agent/dm/uic/IDMDmUICInfo;->idmSetType(Lcom/idm/agent/dm/uic/IDMDmUICInterface$UIC_DIALOG_TYPE;)V

    goto :goto_3

    :cond_5
    sget-object p0, Lcom/idm/agent/dm/uic/IDMDmUICInterface$UIC_DIALOG_TYPE;->IDM_UIC_TYPE_CONFIRMATION:Lcom/idm/agent/dm/uic/IDMDmUICInterface$UIC_DIALOG_TYPE;

    invoke-virtual {v0, p0}, Lcom/idm/agent/dm/uic/IDMDmUICInfo;->idmSetType(Lcom/idm/agent/dm/uic/IDMDmUICInterface$UIC_DIALOG_TYPE;)V

    goto :goto_3

    :cond_6
    sget-object p0, Lcom/idm/agent/dm/uic/IDMDmUICInterface$UIC_DIALOG_TYPE;->IDM_UIC_TYPE_DISPLAY:Lcom/idm/agent/dm/uic/IDMDmUICInterface$UIC_DIALOG_TYPE;

    invoke-virtual {v0, p0}, Lcom/idm/agent/dm/uic/IDMDmUICInfo;->idmSetType(Lcom/idm/agent/dm/uic/IDMDmUICInterface$UIC_DIALOG_TYPE;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    return-object v0

    :goto_4
    invoke-static {p0}, Lcom/idm/adapter/logmanager/IDMDebug;->printStackTrace(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x170420
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
