.class public Lcom/idm/fotaagent/database/room/data/entity/InjectedFeature;
.super Lcom/idm/fotaagent/database/room/data/entity/CategoryNameValue;
.source "SourceFile"


# static fields
.field public static final TABLE_NAME:Ljava/lang/String; = "injected_feature"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/Serializable;)V
    .locals 1

    invoke-static {p3}, Lcom/idm/fotaagent/database/room/data/entity/CategoryNameValue;->serialize(Ljava/io/Serializable;)[B

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/idm/fotaagent/database/room/data/entity/InjectedFeature;-><init>(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/idm/fotaagent/database/room/data/entity/CategoryNameValue;-><init>(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getTableName()Ljava/lang/String;
    .locals 0

    const-string p0, "injected_feature"

    return-object p0
.end method
