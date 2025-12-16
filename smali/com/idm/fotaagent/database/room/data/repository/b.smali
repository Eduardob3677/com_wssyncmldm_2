.class public final synthetic Lcom/idm/fotaagent/database/room/data/repository/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc3/b;


# instance fields
.field public final synthetic c:Ljava/io/Serializable;


# direct methods
.method public synthetic constructor <init>(Ljava/io/Serializable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/idm/fotaagent/database/room/data/repository/b;->c:Ljava/io/Serializable;

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/idm/fotaagent/database/room/data/repository/b;->c:Ljava/io/Serializable;

    check-cast p1, Lcom/idm/fotaagent/database/room/data/entity/CategoryNameValue;

    invoke-static {p0, p1}, Lcom/idm/fotaagent/database/room/data/repository/CategoryNameValueRepository;->a(Ljava/io/Serializable;Lcom/idm/fotaagent/database/room/data/entity/CategoryNameValue;)Ljava/io/Serializable;

    move-result-object p0

    return-object p0
.end method
