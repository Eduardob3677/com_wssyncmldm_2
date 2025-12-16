.class public Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/MetadataDownloader$AlreadyDownloadingException;
.super Lcom/idm/fotaagent/enabler/fumo/exception/insufficientmemory/InvalidStateException;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/MetadataDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlreadyDownloadingException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x35b3e0d5538cd7dbL


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/fumo/exception/insufficientmemory/InvalidStateException;-><init>()V

    return-void
.end method
