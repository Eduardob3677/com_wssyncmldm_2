.class final enum Lcom/idm/fotaagent/cpservice/HotSpotService$Attribute$5;
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
    .locals 1

    invoke-static {}, Lcom/idm/fotaagent/cpservice/HotSpotService$Attribute;->access$400()Lcom/idm/fotaagent/database/sqlite/database/entity/IDMUpdateHistoryInfo;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "NULL"

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/idm/fotaagent/database/sqlite/database/entity/IDMUpdateHistoryInfo;->resultCode()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "0"

    :cond_1
    return-object p0
.end method
