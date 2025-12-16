.class public Lcom/idm/agent/dm/IDMDmAgent$IDMSyncMLDataInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/agent/dm/IDMDmAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IDMSyncMLDataInfo"
.end annotation


# instance fields
.field private SyncMLData:Lcom/idm/core/syncml/SyncML;

.field private errorCode:I

.field private responseCode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public idmGetSyncMLData()Lcom/idm/core/syncml/SyncML;
    .locals 0

    iget-object p0, p0, Lcom/idm/agent/dm/IDMDmAgent$IDMSyncMLDataInfo;->SyncMLData:Lcom/idm/core/syncml/SyncML;

    return-object p0
.end method

.method public idmSetSyncMLData(Lcom/idm/core/syncml/SyncML;)V
    .locals 0

    iput-object p1, p0, Lcom/idm/agent/dm/IDMDmAgent$IDMSyncMLDataInfo;->SyncMLData:Lcom/idm/core/syncml/SyncML;

    return-void
.end method
