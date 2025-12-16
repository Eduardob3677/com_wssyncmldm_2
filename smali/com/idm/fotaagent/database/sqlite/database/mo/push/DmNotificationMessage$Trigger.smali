.class Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Trigger"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Body;,
        Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Header;
    }
.end annotation


# instance fields
.field private final body:Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Body;

.field private final header:Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Header;


# direct methods
.method private constructor <init>([BI)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Header;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Header;-><init>([BILcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$1;)V

    iput-object v0, p0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger;->header:Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Header;

    new-instance v2, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Body;

    add-int/lit8 p2, p2, 0x8

    invoke-static {v0}, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Header;->access$1100(Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Header;)I

    move-result v0

    add-int/2addr p2, v0

    invoke-direct {v2, p1, p2, v1}, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Body;-><init>([BILcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$1;)V

    iput-object v2, p0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger;->body:Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Body;

    return-void
.end method

.method public synthetic constructor <init>([BILcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger;-><init>([BI)V

    return-void
.end method

.method public static synthetic access$100(Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger;)Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Header;
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger;->header:Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Header;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger;)Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Body;
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger;->body:Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Body;

    return-object p0
.end method
