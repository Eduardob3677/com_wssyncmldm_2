.class public Lcom/idm/fotaagent/enabler/fumo/policy/exceptions/DownloadNotAllowedByPolicyException;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field private final dlResultCode:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput p2, p0, Lcom/idm/fotaagent/enabler/fumo/policy/exceptions/DownloadNotAllowedByPolicyException;->dlResultCode:I

    return-void
.end method


# virtual methods
.method public getDlResultCode()I
    .locals 0

    iget p0, p0, Lcom/idm/fotaagent/enabler/fumo/policy/exceptions/DownloadNotAllowedByPolicyException;->dlResultCode:I

    return p0
.end method
