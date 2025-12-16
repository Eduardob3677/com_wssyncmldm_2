.class public Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Exceptional;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Exceptional$State;
    }
.end annotation


# instance fields
.field protected checkers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Checker;",
            ">;"
        }
    .end annotation
.end field

.field private state:Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Exceptional$State;


# direct methods
.method private varargs constructor <init>([Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Checker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Exceptional;->checkers:Ljava/util/List;

    sget-object p1, Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Exceptional$State;->UNCHECKED:Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Exceptional$State;

    iput-object p1, p0, Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Exceptional;->state:Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Exceptional$State;

    return-void
.end method

.method public static varargs of([Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Checker;)Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Exceptional;
    .locals 1

    new-instance v0, Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Exceptional;

    invoke-direct {v0, p0}, Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Exceptional;-><init>([Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Checker;)V

    return-object v0
.end method


# virtual methods
.method public getState()Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Exceptional$State;
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Exceptional;->state:Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Exceptional$State;

    return-object p0
.end method

.method public ifThrown(Ljava/util/function/Consumer;Ljava/lang/Class;)Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Exceptional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Exception;",
            ">(",
            "Ljava/util/function/Consumer<",
            "-TT;>;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Exceptional;"
        }
    .end annotation

    sget-object v0, Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Exceptional$1;->$SwitchMap$com$idm$fotaagent$enabler$fumo$policy$checkers$Exceptional$State:[I

    iget-object v1, p0, Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Exceptional;->state:Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Exceptional$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unexpected state - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Exceptional;->state:Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Exceptional$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Exceptional;->checkers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Checker;

    invoke-interface {v1}, Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Checker;->check()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Exceptional$State;->NORMAL:Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Exceptional$State;

    iput-object v0, p0, Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Exceptional;->state:Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Exceptional$State;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    sget-object v1, Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Exceptional$State;->THROWN:Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Exceptional$State;

    iput-object v1, p0, Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Exceptional;->state:Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Exceptional$State;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "actionForException"

    invoke-static {v1}, Lcom/samsung/android/fotaagent/common/log/Log;->E(Ljava/lang/Object;)V

    sget-object v1, Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Exceptional$State;->HANDLED_AS_THROWN:Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Exceptional$State;

    iput-object v1, p0, Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Exceptional;->state:Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Exceptional$State;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_2
    :goto_2
    return-object p0
.end method

.method public orElse(Ljava/util/concurrent/Callable;)Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;)",
            "Ljava/util/Optional<",
            "TV;>;"
        }
    .end annotation

    sget-object v0, Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Exceptional$1;->$SwitchMap$com$idm$fotaagent$enabler$fumo$policy$checkers$Exceptional$State:[I

    iget-object v1, p0, Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Exceptional;->state:Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Exceptional$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unexpected state - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Exceptional;->state:Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Exceptional$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Exceptional;->checkers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Checker;

    invoke-interface {v1}, Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Checker;->check()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    sget-object p1, Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Exceptional$State;->THROWN:Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Exceptional$State;

    iput-object p1, p0, Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Exceptional;->state:Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Exceptional$State;

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_2
    sget-object v0, Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Exceptional$State;->HANDLED_AS_NORMAL:Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Exceptional$State;

    iput-object v0, p0, Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Exceptional;->state:Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Exceptional$State;

    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public orElse(Ljava/lang/Runnable;)V
    .locals 2

    sget-object v0, Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Exceptional$1;->$SwitchMap$com$idm$fotaagent$enabler$fumo$policy$checkers$Exceptional$State:[I

    iget-object v1, p0, Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Exceptional;->state:Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Exceptional$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unexpected state - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Exceptional;->state:Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Exceptional$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Exceptional;->checkers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Checker;

    invoke-interface {v1}, Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Checker;->check()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    sget-object p1, Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Exceptional$State;->THROWN:Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Exceptional$State;

    iput-object p1, p0, Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Exceptional;->state:Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Exceptional$State;

    :cond_1
    return-void

    :cond_2
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    sget-object p1, Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Exceptional$State;->HANDLED_AS_NORMAL:Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Exceptional$State;

    iput-object p1, p0, Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Exceptional;->state:Lcom/idm/fotaagent/enabler/fumo/policy/checkers/Exceptional$State;

    return-void
.end method
