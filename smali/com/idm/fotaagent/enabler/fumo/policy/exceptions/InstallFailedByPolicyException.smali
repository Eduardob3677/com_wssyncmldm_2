.class public Lcom/idm/fotaagent/enabler/fumo/policy/exceptions/InstallFailedByPolicyException;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field private final dmResultCode:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/idm/fotaagent/enabler/fumo/policy/exceptions/InstallFailedByPolicyException;->dmResultCode:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDmResultCode()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/fumo/policy/exceptions/InstallFailedByPolicyException;->dmResultCode:Ljava/lang/String;

    return-object p0
.end method
