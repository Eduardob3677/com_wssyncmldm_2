.class public Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeType$Install$ScheduleForce$IncreasablePostpone;
.super Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeType$Install$ScheduleForce;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeType$Install$ScheduleForce;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IncreasablePostpone"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x73435fc1bbb7757eL


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeType$Install$ScheduleForce;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-super {p0, p1}, Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeType;->accept(Ljava/lang/String;)V

    return-void
.end method

.method public getData(J)Lcom/idm/fotaagent/database/room/data/repository/PostponeRepository$DataBuilder;
    .locals 2

    new-instance v0, Lcom/idm/fotaagent/database/room/data/repository/PostponeRepository;

    invoke-static {}, Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeType;->access$000()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/idm/fotaagent/database/room/data/repository/PostponeRepository;-><init>(Landroid/content/Context;)V

    invoke-super {p0, p1, p2}, Lcom/idm/fotaagent/enabler/fumo/postpone/PostponeType$Install$ScheduleForce;->getData(J)Lcom/idm/fotaagent/database/room/data/repository/PostponeRepository$DataBuilder;

    move-result-object p0

    invoke-virtual {v0}, Lcom/idm/fotaagent/database/room/data/repository/PostponeRepository;->postponeCount()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/database/room/data/repository/PostponeRepository$DataBuilder;->postponeCount(I)Lcom/idm/fotaagent/database/room/data/repository/PostponeRepository$DataBuilder;

    move-result-object p0

    return-object p0
.end method
