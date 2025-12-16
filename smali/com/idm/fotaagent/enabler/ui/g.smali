.class public final synthetic Lcom/idm/fotaagent/enabler/ui/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic c:Lcom/idm/fotaagent/enabler/ui/IDMUIManager;


# direct methods
.method public synthetic constructor <init>(Lcom/idm/fotaagent/enabler/ui/IDMUIManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/idm/fotaagent/enabler/ui/g;->c:Lcom/idm/fotaagent/enabler/ui/IDMUIManager;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/g;->c:Lcom/idm/fotaagent/enabler/ui/IDMUIManager;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->e(Lcom/idm/fotaagent/enabler/ui/IDMUIManager;Ljava/lang/String;)V

    return-void
.end method
