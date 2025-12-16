.class public final synthetic Lcom/idm/fotaagent/enabler/ui/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic a:Lcom/idm/fotaagent/enabler/ui/IDMUIManager;


# direct methods
.method public synthetic constructor <init>(Lcom/idm/fotaagent/enabler/ui/IDMUIManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/idm/fotaagent/enabler/ui/f;->a:Lcom/idm/fotaagent/enabler/ui/IDMUIManager;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/f;->a:Lcom/idm/fotaagent/enabler/ui/IDMUIManager;

    invoke-static {p0, p1}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->d(Lcom/idm/fotaagent/enabler/ui/IDMUIManager;Landroid/os/Message;)Z

    move-result p0

    return p0
.end method
