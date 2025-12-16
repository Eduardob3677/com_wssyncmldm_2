.class Lcom/samsung/android/fotaagent/common/log/Log$Bootstrap;
.super Lcom/samsung/android/fotaagent/common/log/Log$AndroidAndFileLogger;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/fotaagent/common/log/Log;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Bootstrap"
.end annotation


# static fields
.field private static volatile INSTANCE:Lcom/samsung/android/fotaagent/common/log/Log$Bootstrap;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/fotaagent/common/log/Log$AndroidAndFileLogger;-><init>(Landroid/content/Context;Ljava/lang/String;II)V

    return-void
.end method

.method public static get(Landroid/content/Context;)Lcom/samsung/android/fotaagent/common/log/Log$Bootstrap;
    .locals 5

    sget-object v0, Lcom/samsung/android/fotaagent/common/log/Log$Bootstrap;->INSTANCE:Lcom/samsung/android/fotaagent/common/log/Log$Bootstrap;

    if-eqz v0, :cond_0

    sget-object p0, Lcom/samsung/android/fotaagent/common/log/Log$Bootstrap;->INSTANCE:Lcom/samsung/android/fotaagent/common/log/Log$Bootstrap;

    return-object p0

    :cond_0
    const-class v0, Lcom/samsung/android/fotaagent/common/log/Log$Bootstrap;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/fotaagent/common/log/Log$Bootstrap;->INSTANCE:Lcom/samsung/android/fotaagent/common/log/Log$Bootstrap;

    if-eqz v1, :cond_1

    sget-object p0, Lcom/samsung/android/fotaagent/common/log/Log$Bootstrap;->INSTANCE:Lcom/samsung/android/fotaagent/common/log/Log$Bootstrap;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/samsung/android/fotaagent/common/log/Log$Bootstrap;

    const-string v2, "dm_bootstrap.log"

    const/4 v3, 0x2

    const/high16 v4, 0x100000

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/samsung/android/fotaagent/common/log/Log$Bootstrap;-><init>(Landroid/content/Context;Ljava/lang/String;II)V

    sput-object v1, Lcom/samsung/android/fotaagent/common/log/Log$Bootstrap;->INSTANCE:Lcom/samsung/android/fotaagent/common/log/Log$Bootstrap;

    monitor-exit v0

    return-object v1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
