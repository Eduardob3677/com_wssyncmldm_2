.class public Lcom/idm/fotaagent/database/room/data/repository/HeartbeatRepository$OneShot;
.super Lcom/idm/fotaagent/database/room/data/repository/HeartbeatRepository;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/database/room/data/repository/HeartbeatRepository;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OneShot"
.end annotation


# static fields
.field public static final CATEGORY:Ljava/lang/String; = "Heartbeat.OneShot"

.field public static final NAME_URL:Ljava/lang/String; = "url"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "Heartbeat.OneShot"

    invoke-direct {p0, p1, v0}, Lcom/idm/fotaagent/database/room/data/repository/HeartbeatRepository;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    invoke-virtual {p0}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->deleteAll()I

    return-void
.end method

.method public getUrl()Ljava/lang/String;
    .locals 2

    const-string v0, "url"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->getValueOf(Ljava/lang/String;Ljava/io/Serializable;)Ljava/io/Serializable;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/cipher/AESCrypt;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 1

    const-string v0, "url"

    invoke-static {p1}, Lcom/samsung/android/fotaagent/common/cipher/AESCrypt;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;->insertOrReplaceWithoutException(Ljava/lang/String;Ljava/io/Serializable;)J

    return-void
.end method
