.class public Lcom/idm/core/syncml/Chal;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private meta:Lcom/idm/core/syncml/Meta;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMeta()Lcom/idm/core/syncml/Meta;
    .locals 0

    iget-object p0, p0, Lcom/idm/core/syncml/Chal;->meta:Lcom/idm/core/syncml/Meta;

    return-object p0
.end method

.method public setMeta(Lcom/idm/core/syncml/Meta;)V
    .locals 0

    iput-object p1, p0, Lcom/idm/core/syncml/Chal;->meta:Lcom/idm/core/syncml/Meta;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Chal [Meta="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/idm/core/syncml/Chal;->meta:Lcom/idm/core/syncml/Meta;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
