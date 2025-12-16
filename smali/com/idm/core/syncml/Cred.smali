.class public Lcom/idm/core/syncml/Cred;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private data:Ljava/lang/String;

.field private meta:Lcom/idm/core/syncml/Meta;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/core/syncml/Cred;->data:Ljava/lang/String;

    return-object p0
.end method

.method public getMeta()Lcom/idm/core/syncml/Meta;
    .locals 0

    iget-object p0, p0, Lcom/idm/core/syncml/Cred;->meta:Lcom/idm/core/syncml/Meta;

    return-object p0
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/idm/core/syncml/Cred;->data:Ljava/lang/String;

    return-void
.end method

.method public setMeta(Lcom/idm/core/syncml/Meta;)V
    .locals 0

    iput-object p1, p0, Lcom/idm/core/syncml/Cred;->meta:Lcom/idm/core/syncml/Meta;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cred [Meta="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/idm/core/syncml/Cred;->meta:Lcom/idm/core/syncml/Meta;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", Data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/idm/core/syncml/Cred;->data:Ljava/lang/String;

    const-string v1, "]"

    invoke-static {v0, p0, v1}, LB/f;->w(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
