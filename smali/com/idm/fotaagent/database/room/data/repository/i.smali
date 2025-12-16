.class public final synthetic Lcom/idm/fotaagent/database/room/data/repository/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/idm/fotaagent/database/room/data/repository/PostponeRepository;


# direct methods
.method public synthetic constructor <init>(Lcom/idm/fotaagent/database/room/data/repository/PostponeRepository;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/idm/fotaagent/database/room/data/repository/i;->a:Lcom/idm/fotaagent/database/room/data/repository/PostponeRepository;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/io/Serializable;

    iget-object p0, p0, Lcom/idm/fotaagent/database/room/data/repository/i;->a:Lcom/idm/fotaagent/database/room/data/repository/PostponeRepository;

    invoke-virtual {p0, p1, p2}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->insertOrReplaceWithoutException(Ljava/lang/String;Ljava/io/Serializable;)J

    return-void
.end method
