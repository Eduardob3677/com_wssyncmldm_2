.class final enum Lcom/idm/fotaagent/utils/storage/StorageType$1;
.super Lcom/idm/fotaagent/utils/storage/StorageType;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/utils/storage/StorageType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/idm/fotaagent/utils/storage/StorageType;-><init>(Ljava/lang/String;IILcom/idm/fotaagent/utils/storage/StorageType$1;)V

    return-void
.end method


# virtual methods
.method public path()Ljava/lang/String;
    .locals 0

    const-string p0, "/cache"

    return-object p0
.end method
