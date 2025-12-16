.class public final synthetic Lcom/idm/fotaagent/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 0

    invoke-static {p1}, Lcom/idm/fotaagent/InitExecutor$InitService;->a(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method
