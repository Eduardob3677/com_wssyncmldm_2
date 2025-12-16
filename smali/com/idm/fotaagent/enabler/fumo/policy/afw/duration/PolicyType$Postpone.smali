.class Lcom/idm/fotaagent/enabler/fumo/policy/afw/duration/PolicyType$Postpone;
.super Lcom/idm/fotaagent/enabler/fumo/policy/afw/duration/PolicyType$Windowed;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/enabler/fumo/policy/afw/duration/PolicyType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Postpone"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/idm/fotaagent/enabler/fumo/policy/afw/duration/PolicyType$Windowed;-><init>(Lcom/idm/fotaagent/enabler/fumo/policy/afw/duration/PolicyType$1;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/idm/fotaagent/enabler/fumo/policy/afw/duration/PolicyType$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/fumo/policy/afw/duration/PolicyType$Postpone;-><init>()V

    return-void
.end method


# virtual methods
.method public applyPolicyOrPolling()V
    .locals 0

    return-void
.end method
