.class public abstract Lcom/idm/core/syncml/Command;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected cmdID:Ljava/lang/String;

.field protected meta:Lcom/idm/core/syncml/Meta;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCmdID()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/core/syncml/Command;->cmdID:Ljava/lang/String;

    return-object p0
.end method

.method public getMeta()Lcom/idm/core/syncml/Meta;
    .locals 0

    iget-object p0, p0, Lcom/idm/core/syncml/Command;->meta:Lcom/idm/core/syncml/Meta;

    return-object p0
.end method

.method public setCmdID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/idm/core/syncml/Command;->cmdID:Ljava/lang/String;

    return-void
.end method

.method public setMeta(Lcom/idm/core/syncml/Meta;)V
    .locals 0

    iput-object p1, p0, Lcom/idm/core/syncml/Command;->meta:Lcom/idm/core/syncml/Meta;

    return-void
.end method
