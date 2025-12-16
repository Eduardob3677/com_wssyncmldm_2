.class public Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationRawData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationRawData$Builder;
    }
.end annotation


# instance fields
.field private final rawData:[B


# direct methods
.method public constructor <init>(Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationRawData$Builder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationRawData$Builder;->access$000(Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationRawData$Builder;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationRawData;->rawData:[B

    return-void
.end method


# virtual methods
.method public generate()[B
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationRawData;->rawData:[B

    return-object p0
.end method
