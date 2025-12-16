.class public final synthetic Lcom/idm/fotaagent/database/room/data/repository/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic c:Lcom/idm/fotaagent/database/room/data/repository/DmNotificationRepository;


# direct methods
.method public synthetic constructor <init>(Lcom/idm/fotaagent/database/room/data/repository/DmNotificationRepository;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/idm/fotaagent/database/room/data/repository/d;->c:Lcom/idm/fotaagent/database/room/data/repository/DmNotificationRepository;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/database/room/data/repository/d;->c:Lcom/idm/fotaagent/database/room/data/repository/DmNotificationRepository;

    check-cast p1, Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/TypeLengthValueField;

    invoke-static {p0, p1}, Lcom/idm/fotaagent/database/room/data/repository/DmNotificationRepository;->b(Lcom/idm/fotaagent/database/room/data/repository/DmNotificationRepository;Lcom/idm/fotaagent/database/sqlite/database/mo/push/field/TypeLengthValueField;)V

    return-void
.end method
