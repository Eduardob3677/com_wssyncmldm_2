.class Lcom/samsung/android/fotaagent/common/log/LoggerCollection;
.super Lcom/samsung/android/fotaagent/common/log/Logger;
.source "SourceFile"


# instance fields
.field private final loggers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/fotaagent/common/log/Logger;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>([Lcom/samsung/android/fotaagent/common/log/Logger;)V
    .locals 4

    invoke-direct {p0}, Lcom/samsung/android/fotaagent/common/log/Logger;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/fotaagent/common/log/LoggerCollection;->loggers:Ljava/util/List;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/samsung/android/fotaagent/common/log/LoggerCollection;->loggers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public log(Lcom/samsung/android/fotaagent/common/log/Logger$Level;Lcom/samsung/android/fotaagent/common/log/Where;Ljava/lang/Object;)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/fotaagent/common/log/LoggerCollection;->loggers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/fotaagent/common/log/Logger;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/fotaagent/common/log/Logger;->log(Lcom/samsung/android/fotaagent/common/log/Logger$Level;Lcom/samsung/android/fotaagent/common/log/Where;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method
