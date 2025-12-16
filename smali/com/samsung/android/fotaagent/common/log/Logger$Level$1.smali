.class final enum Lcom/samsung/android/fotaagent/common/log/Logger$Level$1;
.super Lcom/samsung/android/fotaagent/common/log/Logger$Level;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/fotaagent/common/log/Logger$Level;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/fotaagent/common/log/Logger$Level;-><init>(Ljava/lang/String;IILcom/samsung/android/fotaagent/common/log/Logger$1;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/samsung/android/fotaagent/common/log/Logger$Level;->H:Lcom/samsung/android/fotaagent/common/log/Logger$Level;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
