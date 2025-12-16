.class public final synthetic Lcom/idm/fotaagent/scheduler/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic a:Lcom/idm/fotaagent/scheduler/IDMSchedulerHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/idm/fotaagent/scheduler/IDMSchedulerHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/idm/fotaagent/scheduler/d;->a:Lcom/idm/fotaagent/scheduler/IDMSchedulerHandler;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/scheduler/d;->a:Lcom/idm/fotaagent/scheduler/IDMSchedulerHandler;

    invoke-static {p0, p1}, Lcom/idm/fotaagent/scheduler/IDMSchedulerHandler;->a(Lcom/idm/fotaagent/scheduler/IDMSchedulerHandler;Landroid/os/Message;)Z

    move-result p0

    return p0
.end method
