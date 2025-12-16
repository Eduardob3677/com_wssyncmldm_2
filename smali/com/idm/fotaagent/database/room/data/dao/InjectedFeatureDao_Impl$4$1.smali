.class Lcom/idm/fotaagent/database/room/data/dao/InjectedFeatureDao_Impl$4$1;
.super Landroidx/room/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/idm/fotaagent/database/room/data/dao/InjectedFeatureDao_Impl$4;->compute()Lcom/idm/fotaagent/database/room/data/entity/InjectedFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/idm/fotaagent/database/room/data/dao/InjectedFeatureDao_Impl$4;


# direct methods
.method public varargs constructor <init>(Lcom/idm/fotaagent/database/room/data/dao/InjectedFeatureDao_Impl$4;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/idm/fotaagent/database/room/data/dao/InjectedFeatureDao_Impl$4$1;->this$1:Lcom/idm/fotaagent/database/room/data/dao/InjectedFeatureDao_Impl$4;

    invoke-direct {p0, p2, p3}, Landroidx/room/d;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onInvalidated(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/idm/fotaagent/database/room/data/dao/InjectedFeatureDao_Impl$4$1;->this$1:Lcom/idm/fotaagent/database/room/data/dao/InjectedFeatureDao_Impl$4;

    invoke-virtual {p0}, Landroidx/lifecycle/g;->invalidate()V

    return-void
.end method
