.class public Lcom/idm/fotaagent/restapi/request/KeyValueLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final INSTANCE:Lcom/idm/fotaagent/restapi/request/KeyValueLoader;


# instance fields
.field private final regiKey:Ljava/lang/String;

.field private final regiValue:Ljava/lang/String;

.field private final timeKey:Ljava/lang/String;

.field private final timeValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/idm/fotaagent/restapi/request/KeyValueLoader;

    invoke-direct {v0}, Lcom/idm/fotaagent/restapi/request/KeyValueLoader;-><init>()V

    sput-object v0, Lcom/idm/fotaagent/restapi/request/KeyValueLoader;->INSTANCE:Lcom/idm/fotaagent/restapi/request/KeyValueLoader;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    const-string v0, ""

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    invoke-static {}, Lcom/samsung/android/fotaagent/common/util/NativeUtils;->getRegiKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/fotaagent/common/util/NativeUtils;->getRegiValue()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-static {v1}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    move-object v1, v0

    move-object v2, v1

    :goto_0
    iput-object v1, p0, Lcom/idm/fotaagent/restapi/request/KeyValueLoader;->regiKey:Ljava/lang/String;

    iput-object v2, p0, Lcom/idm/fotaagent/restapi/request/KeyValueLoader;->regiValue:Ljava/lang/String;

    :try_start_1
    invoke-static {}, Lcom/samsung/android/fotaagent/common/util/NativeUtils;->getTimeKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/fotaagent/common/util/NativeUtils;->getTimeValue()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_1

    :catchall_1
    move-exception v1

    invoke-static {v1}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    move-object v1, v0

    :goto_1
    iput-object v0, p0, Lcom/idm/fotaagent/restapi/request/KeyValueLoader;->timeKey:Ljava/lang/String;

    iput-object v1, p0, Lcom/idm/fotaagent/restapi/request/KeyValueLoader;->timeValue:Ljava/lang/String;

    return-void
.end method

.method public static get()Lcom/idm/fotaagent/restapi/request/KeyValueLoader;
    .locals 1

    sget-object v0, Lcom/idm/fotaagent/restapi/request/KeyValueLoader;->INSTANCE:Lcom/idm/fotaagent/restapi/request/KeyValueLoader;

    return-object v0
.end method


# virtual methods
.method public getRegiKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/restapi/request/KeyValueLoader;->regiKey:Ljava/lang/String;

    return-object p0
.end method

.method public getRegiValue()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/restapi/request/KeyValueLoader;->regiValue:Ljava/lang/String;

    return-object p0
.end method

.method public getTimeKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/restapi/request/KeyValueLoader;->timeKey:Ljava/lang/String;

    return-object p0
.end method

.method public getTimeValue()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/restapi/request/KeyValueLoader;->timeValue:Ljava/lang/String;

    return-object p0
.end method
