.class public Lcom/idm/fotaagent/restapi/registration/DeviceNotRegisteredException;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field private final errorCode:Ljava/lang/String;

.field private final result:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/idm/fotaagent/restapi/registration/DeviceNotRegisteredException;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/idm/fotaagent/restapi/registration/DeviceNotRegisteredException;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/idm/fotaagent/restapi/registration/DeviceNotRegisteredException;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput p2, p0, Lcom/idm/fotaagent/restapi/registration/DeviceNotRegisteredException;->result:I

    iput-object p3, p0, Lcom/idm/fotaagent/restapi/registration/DeviceNotRegisteredException;->errorCode:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput p2, p0, Lcom/idm/fotaagent/restapi/registration/DeviceNotRegisteredException;->result:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/idm/fotaagent/restapi/registration/DeviceNotRegisteredException;->errorCode:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getErrorCode()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/restapi/registration/DeviceNotRegisteredException;->errorCode:Ljava/lang/String;

    return-object p0
.end method

.method public getResult()I
    .locals 0

    iget p0, p0, Lcom/idm/fotaagent/restapi/registration/DeviceNotRegisteredException;->result:I

    return p0
.end method
