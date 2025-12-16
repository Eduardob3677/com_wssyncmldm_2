.class public Lcom/idm/fotaagent/tool/ddf/IDMToolDDFHashInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private ddfFileName:Ljava/lang/String;

.field private ddfHashData:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public idmGetDDFFileName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/tool/ddf/IDMToolDDFHashInfo;->ddfFileName:Ljava/lang/String;

    return-object p0
.end method

.method public idmGetDDFHashData()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/tool/ddf/IDMToolDDFHashInfo;->ddfHashData:Ljava/lang/String;

    return-object p0
.end method

.method public idmSetDDFFileName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/idm/fotaagent/tool/ddf/IDMToolDDFHashInfo;->ddfFileName:Ljava/lang/String;

    return-void
.end method

.method public idmSetDDFHashData(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/idm/fotaagent/tool/ddf/IDMToolDDFHashInfo;->ddfHashData:Ljava/lang/String;

    return-void
.end method
