.class public final synthetic Lcom/idm/fotaagent/receiver/callback/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/idm/fotaagent/receiver/callback/AbortEventHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/idm/fotaagent/receiver/callback/AbortEventHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/idm/fotaagent/receiver/callback/a;->c:Lcom/idm/fotaagent/receiver/callback/AbortEventHandler;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/receiver/callback/a;->c:Lcom/idm/fotaagent/receiver/callback/AbortEventHandler;

    invoke-static {p0}, Lcom/idm/fotaagent/receiver/callback/AbortEventHandler;->b(Lcom/idm/fotaagent/receiver/callback/AbortEventHandler;)V

    return-void
.end method
