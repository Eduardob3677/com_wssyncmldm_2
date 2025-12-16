.class Lcom/idm/fotaagent/enabler/fumo/policy/afw/duration/PolicyTimer$DoNotRestart;
.super Lcom/idm/fotaagent/enabler/fumo/policy/afw/duration/PolicyTimer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/enabler/fumo/policy/afw/duration/PolicyTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DoNotRestart"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/enabler/fumo/policy/afw/duration/PolicyTimer;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public restart()V
    .locals 0

    const-string p0, "PolicyTimer isn\'t restarted."

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return-void
.end method
