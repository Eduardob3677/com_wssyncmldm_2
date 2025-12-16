.class final enum Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater$Container$1;
.super Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater$Container;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater$Container;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater$Container;-><init>(Ljava/lang/String;IILcom/idm/fotaagent/enabler/ui/common/BaseActivity$1;)V

    return-void
.end method


# virtual methods
.method public inflate(Le/n;Landroid/view/View;)Ljava/util/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/n;",
            "Landroid/view/View;",
            ")",
            "Ljava/util/Optional<",
            "Landroidx/databinding/v;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p2}, Lcom/idm/fotaagent/enabler/ui/common/BaseActivity$Inflater$Container;->inflateViewStub(Landroid/view/View;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method
