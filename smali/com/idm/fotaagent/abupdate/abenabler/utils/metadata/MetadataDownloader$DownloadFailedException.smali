.class public Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/MetadataDownloader$DownloadFailedException;
.super Lcom/idm/fotaagent/enabler/fumo/exception/insufficientmemory/InvalidStateException;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/abupdate/abenabler/utils/metadata/MetadataDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DownloadFailedException"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x6a884d27f07a7789L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/idm/fotaagent/enabler/fumo/exception/insufficientmemory/InvalidStateException;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/idm/fotaagent/enabler/fumo/exception/insufficientmemory/InvalidStateException;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method
