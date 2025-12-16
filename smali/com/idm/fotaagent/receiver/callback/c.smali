.class public final synthetic Lcom/idm/fotaagent/receiver/callback/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntPredicate;


# instance fields
.field public final synthetic a:Lcom/idm/fotaagent/receiver/callback/BaseEventHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/idm/fotaagent/receiver/callback/BaseEventHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/idm/fotaagent/receiver/callback/c;->a:Lcom/idm/fotaagent/receiver/callback/BaseEventHandler;

    return-void
.end method


# virtual methods
.method public final test(I)Z
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/receiver/callback/c;->a:Lcom/idm/fotaagent/receiver/callback/BaseEventHandler;

    invoke-static {p0, p1}, Lcom/idm/fotaagent/receiver/callback/BaseEventHandler;->a(Lcom/idm/fotaagent/receiver/callback/BaseEventHandler;I)Z

    move-result p0

    return p0
.end method
