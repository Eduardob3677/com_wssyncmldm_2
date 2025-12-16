.class public Lcom/idm/fotaagent/restapi/restclient/push/message/PushMessage;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final MAX_NUM_PARTS:I = 0x4

.field private static final MIN_NUM_PARTS:I = 0x2

.field public static final RAW_MSG:Ljava/lang/String; = "msg"

.field private static final SEPARATOR:Ljava/lang/String; = "\\|"


# instance fields
.field private final messageBody:Ljava/lang/String;

.field private final messageId:Ljava/lang/String;

.field private final messageType:Ljava/lang/String;

.field private final replyUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_3

    const-string v0, "\\|"

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v2, 0x2

    if-lt v0, v2, :cond_2

    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/idm/fotaagent/restapi/restclient/push/message/PushMessage;->messageId:Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/idm/fotaagent/restapi/restclient/push/message/PushMessage;->messageType:Ljava/lang/String;

    array-length v0, p1

    const-string v3, ""

    const/4 v4, 0x3

    if-ne v0, v4, :cond_0

    aget-object p1, p1, v2

    iput-object p1, p0, Lcom/idm/fotaagent/restapi/restclient/push/message/PushMessage;->messageBody:Ljava/lang/String;

    iput-object v3, p0, Lcom/idm/fotaagent/restapi/restclient/push/message/PushMessage;->replyUrl:Ljava/lang/String;

    goto :goto_0

    :cond_0
    array-length v0, p1

    if-ne v0, v1, :cond_1

    aget-object v0, p1, v2

    iput-object v0, p0, Lcom/idm/fotaagent/restapi/restclient/push/message/PushMessage;->messageBody:Ljava/lang/String;

    aget-object p1, p1, v4

    iput-object p1, p0, Lcom/idm/fotaagent/restapi/restclient/push/message/PushMessage;->replyUrl:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iput-object v3, p0, Lcom/idm/fotaagent/restapi/restclient/push/message/PushMessage;->replyUrl:Ljava/lang/String;

    iput-object v3, p0, Lcom/idm/fotaagent/restapi/restclient/push/message/PushMessage;->messageBody:Ljava/lang/String;

    :goto_0
    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid rawMessage format: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " parts"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "rawMessage should not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public body()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/restapi/restclient/push/message/PushMessage;->messageBody:Ljava/lang/String;

    return-object p0
.end method

.method public id()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/restapi/restclient/push/message/PushMessage;->messageId:Ljava/lang/String;

    return-object p0
.end method

.method public replyUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/restapi/restclient/push/message/PushMessage;->replyUrl:Ljava/lang/String;

    return-object p0
.end method

.method public type()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/restapi/restclient/push/message/PushMessage;->messageType:Ljava/lang/String;

    return-object p0
.end method
