.class public Lcom/idm/fotaagent/enabler/fumo/policy/afw/duration/PolicyExpirationReceiver;
.super Lcom/idm/fotaagent/utils/receiver/SafeBroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/utils/receiver/SafeBroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public handle()V
    .locals 0

    invoke-static {}, Lcom/idm/fotaagent/enabler/fumo/policy/afw/duration/PolicyManager;->expire()V

    invoke-static {}, Lcom/idm/fotaagent/enabler/fumo/policy/afw/duration/PolicyManager;->promptInstallAfterTimerExpired()V

    return-void
.end method
