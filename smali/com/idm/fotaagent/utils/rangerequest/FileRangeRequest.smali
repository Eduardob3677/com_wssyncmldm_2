.class public Lcom/idm/fotaagent/utils/rangerequest/FileRangeRequest;
.super Lcom/idm/fotaagent/utils/rangerequest/RangeRequest;
.source "SourceFile"


# instance fields
.field private volatile fileInputStream:Ljava/io/FileInputStream;


# direct methods
.method public constructor <init>(Ljava/net/URL;Ljava/nio/file/Path;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/idm/fotaagent/utils/rangerequest/FileRangeRequest;-><init>(Ljava/net/URL;Ljava/nio/file/Path;Lcom/idm/fotaagent/utils/rangerequest/RangeRequest$OnFileLengthChangedListener;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Ljava/nio/file/Path;Lcom/idm/fotaagent/utils/rangerequest/RangeRequest$OnFileLengthChangedListener;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/idm/fotaagent/utils/rangerequest/RangeRequest;-><init>(Ljava/net/URL;Ljava/nio/file/Path;Lcom/idm/fotaagent/utils/rangerequest/RangeRequest$OnFileLengthChangedListener;)V

    return-void
.end method


# virtual methods
.method public finalize(Ljava/lang/Thread;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/idm/fotaagent/utils/rangerequest/RangeRequest;->finalize(Ljava/lang/Thread;)V

    :try_start_0
    iget-object p1, p0, Lcom/idm/fotaagent/utils/rangerequest/FileRangeRequest;->fileInputStream:Ljava/io/FileInputStream;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/idm/fotaagent/utils/rangerequest/FileRangeRequest;->fileInputStream:Ljava/io/FileInputStream;

    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public getInputStream(Lcom/idm/fotaagent/utils/rangerequest/RangeRequest$Range;)Ljava/io/InputStream;
    .locals 4

    new-instance v0, Ljava/io/FileInputStream;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/idm/fotaagent/utils/rangerequest/RangeRequest;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/idm/fotaagent/utils/rangerequest/FileRangeRequest;->fileInputStream:Ljava/io/FileInputStream;

    iget-object v0, p0, Lcom/idm/fotaagent/utils/rangerequest/FileRangeRequest;->fileInputStream:Ljava/io/FileInputStream;

    invoke-virtual {p1}, Lcom/idm/fotaagent/utils/rangerequest/RangeRequest$Range;->start()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/FileInputStream;->skip(J)J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/idm/fotaagent/utils/rangerequest/RangeRequest$Range;->start()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    iget-object p0, p0, Lcom/idm/fotaagent/utils/rangerequest/FileRangeRequest;->fileInputStream:Ljava/io/FileInputStream;

    return-object p0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "skippedBytes("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ") and start("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/idm/fotaagent/utils/rangerequest/RangeRequest$Range;->start()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ") is mismatched"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
