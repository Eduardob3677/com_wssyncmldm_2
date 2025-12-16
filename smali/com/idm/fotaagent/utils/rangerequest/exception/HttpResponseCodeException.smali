.class public Lcom/idm/fotaagent/utils/rangerequest/exception/HttpResponseCodeException;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field private final responseCode:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput p1, p0, Lcom/idm/fotaagent/utils/rangerequest/exception/HttpResponseCodeException;->responseCode:I

    return-void
.end method


# virtual methods
.method public getResponseCode()I
    .locals 0

    iget p0, p0, Lcom/idm/fotaagent/utils/rangerequest/exception/HttpResponseCodeException;->responseCode:I

    return p0
.end method
