.class Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Body;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Body"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Body$TypeLengthValueDecoder;
    }
.end annotation


# instance fields
.field private final tlvElements:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/TypeLengthValueField;",
            ">;",
            "Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/TypeLengthValueField;",
            ">;"
        }
    .end annotation
.end field

.field private final uiMode:Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/UiMode;


# direct methods
.method private constructor <init>([BI)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Body;->tlvElements:Ljava/util/Map;

    array-length v0, p1

    if-lt p2, v0, :cond_0

    sget-object p1, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/UiMode;->NOT_SPECIFIED:Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/UiMode;

    iput-object p1, p0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Body;->uiMode:Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/UiMode;

    return-void

    :cond_0
    aget-byte v0, p1, p2

    invoke-static {v0}, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/UiMode;->of(B)Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/UiMode;

    move-result-object v0

    iput-object v0, p0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Body;->uiMode:Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/UiMode;

    add-int/lit8 p2, p2, 0x1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    add-int/lit8 v2, p2, 0x2

    array-length v3, p1

    if-ge v2, v3, :cond_1

    add-int/lit8 v2, p2, 0x1

    :try_start_0
    aget-byte v3, p1, p2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    add-int/lit8 p2, p2, 0x2

    :try_start_1
    aget-byte v1, p1, v2

    and-int/lit16 v1, v1, 0xff

    new-array v2, v1, [B

    invoke-static {p1, p2, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v3}, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Body$TypeLengthValueDecoder;->access$1300(B)Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Body$TypeLengthValueDecoder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Body$TypeLengthValueDecoder;->decode([B)Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/TypeLengthValueField;

    move-result-object v2

    iget-object v3, p0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Body;->tlvElements:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    goto :goto_1

    :catch_1
    move-exception p2

    move v5, v2

    move-object v2, p2

    move p2, v5

    :goto_1
    invoke-static {v2}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_2
    add-int/2addr p2, v1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public synthetic constructor <init>([BILcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Body;-><init>([BI)V

    return-void
.end method

.method public static synthetic access$400(Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Body;)Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/UiMode;
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Body;->uiMode:Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/UiMode;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Body;Ljava/lang/Class;)Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/TypeLengthValueField;
    .locals 0

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Body;->get(Ljava/lang/Class;)Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/TypeLengthValueField;

    move-result-object p0

    return-object p0
.end method

.method private get(Ljava/lang/Class;)Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/TypeLengthValueField;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/TypeLengthValueField;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    iget-object p0, p0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/DmNotificationMessage$Trigger$Body;->tlvElements:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/TypeLengthValueField;

    return-object p0
.end method
