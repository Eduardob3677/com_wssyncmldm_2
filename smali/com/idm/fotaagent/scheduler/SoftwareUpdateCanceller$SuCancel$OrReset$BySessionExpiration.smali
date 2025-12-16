.class public Lcom/idm/fotaagent/scheduler/SoftwareUpdateCanceller$SuCancel$OrReset$BySessionExpiration;
.super Lcom/idm/fotaagent/scheduler/SoftwareUpdateCanceller$SuCancel$OrReset;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/scheduler/SoftwareUpdateCanceller$SuCancel$OrReset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BySessionExpiration"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "464"

    invoke-direct {p0, v0}, Lcom/idm/fotaagent/scheduler/SoftwareUpdateCanceller$SuCancel$OrReset;-><init>(Ljava/lang/String;)V

    return-void
.end method
