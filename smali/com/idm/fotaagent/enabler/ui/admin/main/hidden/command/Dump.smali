.class public Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/Dump;
.super Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/HiddenCommand;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/command/HiddenCommand;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 0

    invoke-static {}, Lcom/idm/adapter/logmanager/IDMDebug;->idmDumpLogeOnOff()V

    return-void
.end method
