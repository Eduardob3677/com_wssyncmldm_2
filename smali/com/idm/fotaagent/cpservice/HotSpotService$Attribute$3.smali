.class final enum Lcom/idm/fotaagent/cpservice/HotSpotService$Attribute$3;
.super Lcom/idm/fotaagent/cpservice/HotSpotService$Attribute;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/cpservice/HotSpotService$Attribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/idm/fotaagent/cpservice/HotSpotService$Attribute;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/idm/fotaagent/cpservice/HotSpotService$1;)V

    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/idm/fotaagent/cpservice/HotSpotService$Attribute;->access$400()Lcom/idm/fotaagent/database/sqlite/database/entity/IDMUpdateHistoryInfo;

    move-result-object p0

    const-string v0, "NULL"

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/idm/fotaagent/database/sqlite/database/entity/IDMUpdateHistoryInfo;->date()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    const-string p0, "%1$s %2$s"

    invoke-static {}, Lcom/idm/fotaagent/cpservice/HotSpotService$Attribute;->access$000()Landroid/content/Context;

    move-result-object v0

    invoke-static {v1, v2, p0, v0}, Lcom/idm/fotaagent/utils/Formatted$Android;->longDateAndTime(JLjava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
