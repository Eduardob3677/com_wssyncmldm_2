.class final enum Lcom/idm/fotaagent/cpservice/HotSpotService$Attribute$4;
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


# static fields
.field private static final FAIL:Ljava/lang/String; = "FAIL"

.field private static final SUCCESS:Ljava/lang/String; = "SUCCESS"


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/idm/fotaagent/cpservice/HotSpotService$Attribute;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/idm/fotaagent/cpservice/HotSpotService$1;)V

    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/idm/fotaagent/cpservice/HotSpotService$Attribute;->access$400()Lcom/idm/fotaagent/database/sqlite/database/entity/IDMUpdateHistoryInfo;

    move-result-object p0

    const-string v0, "NULL"

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/idm/fotaagent/database/sqlite/database/entity/IDMUpdateHistoryInfo;->resultCode()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    const-string v0, "200"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "SUCCESS"

    goto :goto_0

    :cond_2
    const-string p0, "FAIL"

    :goto_0
    return-object p0
.end method
