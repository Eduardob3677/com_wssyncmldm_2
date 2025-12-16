.class public abstract Lcom/idm/core/syncml/ItemCommand;
.super Lcom/idm/core/syncml/Command;
.source "SourceFile"


# instance fields
.field protected itemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/idm/core/syncml/Item;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/idm/core/syncml/Command;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/idm/core/syncml/ItemCommand;->itemList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getItemList()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/idm/core/syncml/Item;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/idm/core/syncml/ItemCommand;->itemList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public setItemList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/idm/core/syncml/Item;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/idm/core/syncml/ItemCommand;->itemList:Ljava/util/ArrayList;

    return-void
.end method
