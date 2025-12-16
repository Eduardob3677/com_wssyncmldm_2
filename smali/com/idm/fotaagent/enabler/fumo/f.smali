.class public final synthetic Lcom/idm/fotaagent/enabler/fumo/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:Lcom/idm/fotaagent/enabler/fumo/IdleChecker;


# direct methods
.method public synthetic constructor <init>(Lcom/idm/fotaagent/enabler/fumo/IdleChecker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/idm/fotaagent/enabler/fumo/f;->a:Lcom/idm/fotaagent/enabler/fumo/IdleChecker;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/fumo/f;->a:Lcom/idm/fotaagent/enabler/fumo/IdleChecker;

    check-cast p1, Lcom/idm/fotaagent/enabler/fumo/IdleChecker$DeviceStatus;

    invoke-static {p0, p1}, Lcom/idm/fotaagent/enabler/fumo/IdleChecker;->a(Lcom/idm/fotaagent/enabler/fumo/IdleChecker;Lcom/idm/fotaagent/enabler/fumo/IdleChecker$DeviceStatus;)Z

    move-result p0

    return p0
.end method
