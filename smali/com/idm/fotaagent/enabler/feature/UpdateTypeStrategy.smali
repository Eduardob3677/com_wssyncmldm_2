.class public abstract Lcom/idm/fotaagent/enabler/feature/UpdateTypeStrategy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idm/fotaagent/enabler/feature/UpdateTypeStrategy$AB;,
        Lcom/idm/fotaagent/enabler/feature/UpdateTypeStrategy$NonAB;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getDownloadConfirmHighEmphasisButtonTitleId()I
.end method

.method public abstract getInstallConfirmHighEmphasisButtonTitleId()I
.end method

.method public abstract getInstallConfirmImportantTitleId()I
.end method

.method public abstract getInstallConfirmMediumEmphasisButtonTitleId()I
.end method
