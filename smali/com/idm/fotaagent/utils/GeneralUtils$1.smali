.class Lcom/idm/fotaagent/utils/GeneralUtils$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/idm/fotaagent/utils/GeneralUtils;->printTaskInfo(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$intervalSeconds:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/idm/fotaagent/utils/GeneralUtils$1;->val$intervalSeconds:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :goto_0
    invoke-static {}, Lcom/idm/fotaagent/utils/GeneralUtils;->access$000()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/idm/fotaagent/utils/GeneralUtils;->printTaskInfo()V

    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget v1, p0, Lcom/idm/fotaagent/utils/GeneralUtils$1;->val$intervalSeconds:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-void
.end method
