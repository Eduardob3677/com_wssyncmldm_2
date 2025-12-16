.class final Lcom/idm/fotaagent/enabler/fumo/InstallReporter$InstallTypeCallback;
.super Lcom/idm/fotaagent/enabler/fumo/UpdateReporter$ReportCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/enabler/fumo/InstallReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InstallTypeCallback"
.end annotation


# instance fields
.field private final future:Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/CompletableFuture;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/fumo/UpdateReporter$ReportCallback;-><init>()V

    iput-object p1, p0, Lcom/idm/fotaagent/enabler/fumo/InstallReporter$InstallTypeCallback;->future:Ljava/util/concurrent/CompletableFuture;

    return-void
.end method


# virtual methods
.method public idmOnStatus(Ljava/lang/String;Lcom/idm/adapter/callback/IDMCallbackStatus;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/idm/fotaagent/enabler/fumo/UpdateReporter$ReportCallback;->idmOnStatus(Ljava/lang/String;Lcom/idm/adapter/callback/IDMCallbackStatus;)V

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/fumo/InstallReporter$InstallTypeCallback;->future:Ljava/util/concurrent/CompletableFuture;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method
