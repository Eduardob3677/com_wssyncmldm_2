.class public Lcom/idm/fotaagent/restapi/response/Result;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final ERROR_TYPE_DEVICE_NOT_REGISTERED:Ljava/lang/String; = "FUD_3000"

.field static final ERROR_TYPE_INVALID_AUTH_CATEGORY1:Ljava/lang/String; = "SSO_"

.field static final ERROR_TYPE_INVALID_AUTH_CATEGORY2:Ljava/lang/String; = "ACC_"

.field static final ERROR_TYPE_INVALID_PARAMETER:Ljava/lang/String; = "FUD_1"

.field public static final ERROR_TYPE_INVALID_TIMESTAMP:Ljava/lang/String; = "SSO_8005"

.field public static final ERROR_TYPE_MODEL_CC_NOT_EXIST:Ljava/lang/String; = "FUD_3007"

.field private static final ERROR_TYPE_SAK_ALREADY_REGISTERED:Ljava/lang/String; = "FUD_3064"

.field static final ERROR_TYPE_SAK_CERTIFICATE_CHAIN_REQUIRED:Ljava/lang/String; = "FUD_3062"

.field public static final ERROR_TYPE_SAK_CERTIFICATE_CHAIN_RETRIEVAL_FAILED:Ljava/lang/String; = "SAK_0002"

.field static final ERROR_TYPE_SAK_CHALLENGE_NOT_MATCHED:Ljava/lang/String; = "FUD_3061"

.field static final ERROR_TYPE_SAK_INVALID_CERTIFICATE_CHAIN:Ljava/lang/String; = "FUD_3060"

.field public static final ERROR_TYPE_SAK_NOT_SUPPORTED:Ljava/lang/String; = "SAK_0001"

.field static final ERROR_TYPE_UNEXPECTED_MODEL_DEVICE_ID:Ljava/lang/String; = "FUD_3025"

.field public static final FAIL_ABNORMAL_DATA:I = 0x1f5

.field public static final FAIL_NEED_SAK:I = 0x196

.field public static final FAIL_NETWORK:I = 0x64

.field public static final FAIL_PROCESS:I = 0x190

.field public static final FAIL_SERVICE:I = 0x1f4

.field public static final FAIL_UNKNOWN:I = 0x384

.field public static final INIT:I = 0x0

.field public static final SUCCESS:I = 0xc8


# instance fields
.field private final result:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/idm/fotaagent/restapi/response/Result;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/idm/fotaagent/restapi/response/Result;->result:I

    return-void
.end method

.method public static getResultFrom(I)Lcom/idm/fotaagent/restapi/response/Result;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "httpResponseCode:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->E(Ljava/lang/Object;)V

    const/4 v0, -0x1

    if-eq p0, v0, :cond_1

    const/16 v0, 0x194

    if-eq p0, v0, :cond_0

    new-instance p0, Lcom/idm/fotaagent/restapi/response/Result;

    const/16 v0, 0x1f4

    invoke-direct {p0, v0}, Lcom/idm/fotaagent/restapi/response/Result;-><init>(I)V

    return-object p0

    :cond_0
    new-instance p0, Lcom/idm/fotaagent/restapi/response/Result;

    const/16 v0, 0x190

    invoke-direct {p0, v0}, Lcom/idm/fotaagent/restapi/response/Result;-><init>(I)V

    return-object p0

    :cond_1
    new-instance p0, Lcom/idm/fotaagent/restapi/response/Result;

    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lcom/idm/fotaagent/restapi/response/Result;-><init>(I)V

    return-object p0
.end method

.method public static getResultFrom(Ljava/lang/String;)Lcom/idm/fotaagent/restapi/response/Result;
    .locals 3

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "FUD_3064"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v2, 0x8

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "FUD_3062"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x7

    goto :goto_0

    :sswitch_2
    const-string v1, "FUD_3061"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x6

    goto :goto_0

    :sswitch_3
    const-string v1, "FUD_3060"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x5

    goto :goto_0

    :sswitch_4
    const-string v1, "FUD_3025"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_5
    const-string v1, "FUD_3007"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_6
    const-string v1, "FUD_3000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_7
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_8
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v2, 0x0

    :goto_0
    const/16 v0, 0x190

    packed-switch v2, :pswitch_data_0

    const-string v1, "FUD_1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "SSO_"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "ACC_"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_9

    goto :goto_1

    :cond_9
    const/16 v0, 0x1f4

    goto :goto_1

    :pswitch_0
    const/16 v0, 0x196

    goto :goto_1

    :pswitch_1
    const/16 v0, 0x384

    :cond_a
    :goto_1
    :pswitch_2
    new-instance p0, Lcom/idm/fotaagent/restapi/response/Result;

    invoke-direct {p0, v0}, Lcom/idm/fotaagent/restapi/response/Result;-><init>(I)V

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_8
        0x33c587 -> :sswitch_7
        0x71601dc7 -> :sswitch_6
        0x71601dce -> :sswitch_5
        0x71601e0a -> :sswitch_4
        0x71601e81 -> :sswitch_3
        0x71601e82 -> :sswitch_2
        0x71601e83 -> :sswitch_1
        0x71601e85 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public getValue()I
    .locals 0

    iget p0, p0, Lcom/idm/fotaagent/restapi/response/Result;->result:I

    return p0
.end method

.method public isAbnormalData()Z
    .locals 1

    iget p0, p0, Lcom/idm/fotaagent/restapi/response/Result;->result:I

    const/16 v0, 0x1f5

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isNetworkFailed()Z
    .locals 1

    iget p0, p0, Lcom/idm/fotaagent/restapi/response/Result;->result:I

    const/16 v0, 0x64

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isProcessFailed()Z
    .locals 1

    iget p0, p0, Lcom/idm/fotaagent/restapi/response/Result;->result:I

    const/16 v0, 0x190

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSAKNeeded()Z
    .locals 1

    iget p0, p0, Lcom/idm/fotaagent/restapi/response/Result;->result:I

    const/16 v0, 0x196

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isServiceFailed()Z
    .locals 1

    iget p0, p0, Lcom/idm/fotaagent/restapi/response/Result;->result:I

    const/16 v0, 0x1f4

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSuccess()Z
    .locals 1

    iget p0, p0, Lcom/idm/fotaagent/restapi/response/Result;->result:I

    const/16 v0, 0xc8

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isUnknownFailed()Z
    .locals 1

    iget p0, p0, Lcom/idm/fotaagent/restapi/response/Result;->result:I

    const/16 v0, 0x384

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
