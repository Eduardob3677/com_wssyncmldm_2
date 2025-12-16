.class Lcom/samsung/android/fotaagent/common/log/AndroidLogger$Release$SecOff;
.super Lcom/samsung/android/fotaagent/common/log/AndroidLogger$Release;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/fotaagent/common/log/AndroidLogger$Release;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SecOff"
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/fotaagent/common/log/AndroidLogger$Release;-><init>(Ljava/lang/String;ILcom/samsung/android/fotaagent/common/log/AndroidLogger$1;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILcom/samsung/android/fotaagent/common/log/AndroidLogger$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/fotaagent/common/log/AndroidLogger$Release$SecOff;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public log(Lcom/samsung/android/fotaagent/common/log/Logger$Level;Lcom/samsung/android/fotaagent/common/log/Where;Ljava/lang/Object;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/fotaagent/common/log/AndroidLogger$1;->$SwitchMap$com$samsung$android$fotaagent$common$log$Logger$Level:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/fotaagent/common/log/AndroidLogger;->log(Lcom/samsung/android/fotaagent/common/log/Logger$Level;Lcom/samsung/android/fotaagent/common/log/Where;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
