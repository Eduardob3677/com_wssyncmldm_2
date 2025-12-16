.class public abstract Lcom/idm/core/syncml/Location;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected locName:Ljava/lang/String;

.field protected locURI:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/idm/core/syncml/Location;->locURI:Ljava/lang/String;

    iput-object p2, p0, Lcom/idm/core/syncml/Location;->locName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getLocName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/core/syncml/Location;->locName:Ljava/lang/String;

    return-object p0
.end method

.method public getLocURI()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/idm/core/syncml/Location;->locURI:Ljava/lang/String;

    return-object p0
.end method

.method public setLocName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/idm/core/syncml/Location;->locName:Ljava/lang/String;

    return-void
.end method

.method public setLocURI(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/idm/core/syncml/Location;->locURI:Ljava/lang/String;

    return-void
.end method
