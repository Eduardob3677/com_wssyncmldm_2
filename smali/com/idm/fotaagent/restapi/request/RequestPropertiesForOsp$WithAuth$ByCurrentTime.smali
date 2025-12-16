.class public Lcom/idm/fotaagent/restapi/request/RequestPropertiesForOsp$WithAuth$ByCurrentTime;
.super Lcom/idm/fotaagent/restapi/request/RequestPropertiesForOsp$WithAuth;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/restapi/request/RequestPropertiesForOsp$WithAuth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ByCurrentTime"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    invoke-static {}, Lcom/idm/fotaagent/restapi/request/KeyValueLoader;->get()Lcom/idm/fotaagent/restapi/request/KeyValueLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/idm/fotaagent/restapi/request/KeyValueLoader;->getTimeKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/idm/fotaagent/restapi/request/KeyValueLoader;->get()Lcom/idm/fotaagent/restapi/request/KeyValueLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/idm/fotaagent/restapi/request/KeyValueLoader;->getTimeValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget v4, Lcom/samsung/android/fotaagent/common/util/TimeConstants;->SECOND_IN_MILLIS:I

    int-to-long v4, v4

    div-long v7, v0, v4

    const/4 v9, 0x0

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v9}, Lcom/idm/fotaagent/restapi/request/RequestPropertiesForOsp$WithAuth;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/idm/fotaagent/restapi/request/RequestPropertiesForOsp$1;)V

    return-void
.end method
