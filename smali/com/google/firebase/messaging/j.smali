.class public final synthetic Lcom/google/firebase/messaging/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public synthetic a:Lcom/google/firebase/messaging/k;


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 13

    iget-object p0, p0, Lcom/google/firebase/messaging/j;->a:Lcom/google/firebase/messaging/k;

    iget-object v0, p0, Lcom/google/firebase/messaging/k;->c:Ljava/net/URL;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Starting download of: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FirebaseMessaging"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/firebase/messaging/k;->c:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URLConnection;->getContentLength()I

    move-result v2

    const/high16 v3, 0x100000

    if-gt v2, v3, :cond_c

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    :try_start_0
    iput-object v0, p0, Lcom/google/firebase/messaging/k;->e:Ljava/io/InputStream;

    sget v2, Lq1/g;->a:I

    new-instance v2, Lq1/f;

    invoke-direct {v2, v0}, Lq1/f;-><init>(Ljava/io/InputStream;)V

    new-instance v4, Ljava/util/ArrayDeque;

    const/16 v5, 0x14

    invoke-direct {v4, v5}, Ljava/util/ArrayDeque;-><init>(I)V

    const/4 v5, 0x0

    const/16 v6, 0x2000

    move v7, v5

    :goto_0
    const/4 v8, -0x1

    const v9, 0x7ffffff7

    if-ge v7, v9, :cond_4

    sub-int/2addr v9, v7

    invoke-static {v6, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    new-array v10, v9, [B

    invoke-virtual {v4, v10}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    move v11, v5

    :goto_1
    if-ge v11, v9, :cond_1

    sub-int v12, v9, v11

    invoke-virtual {v2, v10, v11, v12}, Lq1/f;->read([BII)I

    move-result v12

    if-ne v12, v8, :cond_0

    new-array v2, v7, [B

    move v6, v7

    :goto_2
    if-lez v6, :cond_5

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    array-length v9, v8

    invoke-static {v6, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    sub-int v10, v7, v6

    invoke-static {v8, v5, v2, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr v6, v9

    goto :goto_2

    :cond_0
    add-int/2addr v11, v12

    add-int/2addr v7, v12

    goto :goto_1

    :cond_1
    int-to-long v8, v6

    add-long/2addr v8, v8

    const-wide/32 v10, 0x7fffffff

    cmp-long v6, v8, v10

    if-lez v6, :cond_2

    const v6, 0x7fffffff

    goto :goto_0

    :cond_2
    const-wide/32 v10, -0x80000000

    cmp-long v6, v8, v10

    if-gez v6, :cond_3

    const/high16 v6, -0x80000000

    goto :goto_0

    :cond_3
    long-to-int v6, v8

    goto :goto_0

    :cond_4
    invoke-virtual {v2}, Lq1/f;->read()I

    move-result v2

    if-ne v2, v8, :cond_a

    new-array v2, v9, [B

    move v6, v9

    :goto_3
    if-lez v6, :cond_5

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    array-length v8, v7

    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    sub-int v10, v9, v6

    invoke-static {v7, v5, v2, v10, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v6, v8

    goto :goto_3

    :cond_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    const/4 v0, 0x2

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/firebase/messaging/k;->c:Ljava/net/URL;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    new-instance v6, Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x22

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Downloaded "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, v2

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " bytes from "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    array-length v0, v2

    if-gt v0, v3, :cond_9

    array-length v0, v2

    invoke-static {v2, v5, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object p0, p0, Lcom/google/firebase/messaging/k;->c:Ljava/net/URL;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "Successfully downloaded image: "

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-object v0

    :cond_8
    new-instance v0, Ljava/io/IOException;

    iget-object p0, p0, Lcom/google/firebase/messaging/k;->c:Ljava/net/URL;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Failed to decode image: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Image exceeds max size of 1048576"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    :try_start_1
    new-instance p0, Ljava/lang/OutOfMemoryError;

    const-string v1, "input is too large to fit in a byte array"

    invoke-direct {p0, v1}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_b

    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    :cond_b
    throw p0

    :cond_c
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Content-Length exceeds max size of 1048576"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
