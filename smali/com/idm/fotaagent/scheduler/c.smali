.class public final synthetic Lcom/idm/fotaagent/scheduler/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:Lcom/idm/fotaagent/scheduler/DeviceInfoState$Element;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/util/Optional;


# direct methods
.method public synthetic constructor <init>(Lcom/idm/fotaagent/scheduler/DeviceInfoState$Element;Ljava/lang/String;Ljava/util/Optional;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/idm/fotaagent/scheduler/c;->a:Lcom/idm/fotaagent/scheduler/DeviceInfoState$Element;

    iput-object p2, p0, Lcom/idm/fotaagent/scheduler/c;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/idm/fotaagent/scheduler/c;->c:Ljava/util/Optional;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/idm/fotaagent/scheduler/c;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/idm/fotaagent/scheduler/c;->c:Ljava/util/Optional;

    iget-object p0, p0, Lcom/idm/fotaagent/scheduler/c;->a:Lcom/idm/fotaagent/scheduler/DeviceInfoState$Element;

    invoke-static {p0, v0, v1}, Lcom/idm/fotaagent/scheduler/DeviceInfoState$Element;->a(Lcom/idm/fotaagent/scheduler/DeviceInfoState$Element;Ljava/lang/String;Ljava/util/Optional;)Lcom/idm/fotaagent/scheduler/DeviceInfoState;

    move-result-object p0

    return-object p0
.end method
