.class public Lcom/idm/agent/dl/IDMDlDownloadInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private m_nDeltaDownState:I

.field private m_nDownloadPercent:I

.field private szDownloadSize:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/idm/agent/dl/IDMDlDownloadInfo;->m_nDeltaDownState:I

    iput v0, p0, Lcom/idm/agent/dl/IDMDlDownloadInfo;->m_nDownloadPercent:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/idm/agent/dl/IDMDlDownloadInfo;->szDownloadSize:J

    return-void
.end method


# virtual methods
.method public idmGetDeltaDownState()I
    .locals 0

    iget p0, p0, Lcom/idm/agent/dl/IDMDlDownloadInfo;->m_nDeltaDownState:I

    return p0
.end method

.method public idmGetDownloadPercent()I
    .locals 0

    iget p0, p0, Lcom/idm/agent/dl/IDMDlDownloadInfo;->m_nDownloadPercent:I

    return p0
.end method

.method public idmGetDownloadSize()J
    .locals 2

    iget-wide v0, p0, Lcom/idm/agent/dl/IDMDlDownloadInfo;->szDownloadSize:J

    return-wide v0
.end method

.method public idmSetDeltaDownState(I)V
    .locals 0

    iput p1, p0, Lcom/idm/agent/dl/IDMDlDownloadInfo;->m_nDeltaDownState:I

    return-void
.end method

.method public idmSetDownloadPercent(I)V
    .locals 0

    iput p1, p0, Lcom/idm/agent/dl/IDMDlDownloadInfo;->m_nDownloadPercent:I

    return-void
.end method

.method public idmSetDownloadSize(J)V
    .locals 0

    iput-wide p1, p0, Lcom/idm/agent/dl/IDMDlDownloadInfo;->szDownloadSize:J

    return-void
.end method
