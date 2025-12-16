.class public final synthetic LP0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LS0/b;
.implements LR0/f;


# instance fields
.field public final synthetic c:I

.field public final synthetic d:LL0/b;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(LR0/h;Ljava/util/ArrayList;LL0/b;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, LP0/b;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LP0/b;->f:Ljava/lang/Object;

    iput-object p2, p0, LP0/b;->e:Ljava/lang/Object;

    iput-object p3, p0, LP0/b;->d:LL0/b;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;LL0/b;LL0/a;I)V
    .locals 0

    iput p4, p0, LP0/b;->c:I

    iput-object p1, p0, LP0/b;->f:Ljava/lang/Object;

    iput-object p2, p0, LP0/b;->d:LL0/b;

    iput-object p3, p0, LP0/b;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    iget v1, v0, LP0/b;->c:I

    packed-switch v1, :pswitch_data_0

    move-object/from16 v1, p1

    check-cast v1, Landroid/database/Cursor;

    iget-object v2, v0, LP0/b;->f:Ljava/lang/Object;

    check-cast v2, LR0/h;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_8

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const/4 v6, 0x7

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_0

    move v6, v7

    goto :goto_1

    :cond_0
    move v6, v3

    :goto_1
    new-instance v8, LJ3/d;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, v8, LJ3/d;->h:Ljava/lang/Object;

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_7

    iput-object v7, v8, LJ3/d;->c:Ljava/lang/Object;

    const/4 v7, 0x2

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iput-object v7, v8, LJ3/d;->f:Ljava/lang/Object;

    const/4 v7, 0x3

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iput-object v7, v8, LJ3/d;->g:Ljava/lang/Object;

    const/4 v7, 0x4

    if-eqz v6, :cond_2

    new-instance v3, LL0/f;

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1

    sget-object v6, LR0/h;->g:LI0/b;

    goto :goto_2

    :cond_1
    new-instance v7, LI0/b;

    invoke-direct {v7, v6}, LI0/b;-><init>(Ljava/lang/String;)V

    move-object v6, v7

    :goto_2
    const/4 v7, 0x5

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v7

    invoke-direct {v3, v6, v7}, LL0/f;-><init>(LI0/b;[B)V

    iput-object v3, v8, LJ3/d;->e:Ljava/lang/Object;

    goto :goto_6

    :cond_2
    new-instance v6, LL0/f;

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_3

    sget-object v7, LR0/h;->g:LI0/b;

    goto :goto_3

    :cond_3
    new-instance v9, LI0/b;

    invoke-direct {v9, v7}, LI0/b;-><init>(Ljava/lang/String;)V

    move-object v7, v9

    :goto_3
    invoke-virtual {v2}, LR0/h;->g()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9

    const-string v10, "bytes"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v13

    const/4 v15, 0x0

    const-string v16, "sequence_num"

    const-string v10, "event_payloads"

    const-string v12, "event_id = ?"

    const/4 v14, 0x0

    invoke-virtual/range {v9 .. v16}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    :try_start_0
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move v11, v3

    :goto_4
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    array-length v12, v12

    add-int/2addr v11, v12

    goto :goto_4

    :cond_4
    new-array v11, v11, [B

    move v12, v3

    move v13, v12

    :goto_5
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v12, v14, :cond_5

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [B

    array-length v15, v14

    invoke-static {v14, v3, v11, v13, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v14, v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v13, v14

    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    :cond_5
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    invoke-direct {v6, v7, v11}, LL0/f;-><init>(LI0/b;[B)V

    iput-object v6, v8, LJ3/d;->e:Ljava/lang/Object;

    :goto_6
    const/4 v3, 0x6

    invoke-interface {v1, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-nez v6, :cond_6

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v8, LJ3/d;->d:Ljava/lang/Object;

    :cond_6
    invoke-virtual {v8}, LJ3/d;->d()LL0/a;

    move-result-object v3

    new-instance v6, LR0/b;

    iget-object v7, v0, LP0/b;->d:LL0/b;

    invoke-direct {v6, v4, v5, v7, v3}, LR0/b;-><init>(JLL0/b;LL0/a;)V

    iget-object v3, v0, LP0/b;->e:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_7
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null transportName"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    move-object/from16 v1, p1

    check-cast v1, Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, v0, LP0/b;->f:Ljava/lang/Object;

    check-cast v2, LR0/h;

    invoke-virtual {v2}, LR0/h;->g()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "PRAGMA page_count"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v3

    invoke-virtual {v2}, LR0/h;->g()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    const-string v6, "PRAGMA page_size"

    invoke-virtual {v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v5

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v5

    mul-long/2addr v5, v3

    iget-object v2, v2, LR0/h;->f:LR0/a;

    iget-wide v3, v2, LR0/a;->a:J

    cmp-long v3, v5, v3

    if-ltz v3, :cond_9

    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_c

    :cond_9
    iget-object v3, v0, LP0/b;->d:LL0/b;

    invoke-static {v1, v3}, LR0/h;->h(Landroid/database/sqlite/SQLiteDatabase;LL0/b;)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v4, :cond_a

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    goto :goto_7

    :cond_a
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v7, "backend_name"

    iget-object v8, v3, LL0/b;->a:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, v3, LL0/b;->c:LI0/c;

    invoke-static {v7}, LU0/a;->a(LI0/c;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "priority"

    invoke-virtual {v4, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "next_request_ms"

    invoke-virtual {v4, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v3, v3, LL0/b;->b:[B

    if-eqz v3, :cond_b

    invoke-static {v3, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    const-string v7, "extras"

    invoke-virtual {v4, v7, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    const-string v3, "transport_contexts"

    invoke-virtual {v1, v3, v5, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    :goto_7
    iget-object v0, v0, LP0/b;->e:Ljava/lang/Object;

    check-cast v0, LL0/a;

    iget-object v7, v0, LL0/a;->c:LL0/f;

    iget-object v7, v7, LL0/f;->b:[B

    array-length v8, v7

    const/4 v9, 0x1

    iget v2, v2, LR0/a;->e:I

    if-gt v8, v2, :cond_c

    move v8, v9

    goto :goto_8

    :cond_c
    move v8, v6

    :goto_8
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "context_id"

    invoke-virtual {v10, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "transport_name"

    iget-object v4, v0, LL0/a;->a:Ljava/lang/String;

    invoke-virtual {v10, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v3, v0, LL0/a;->d:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "timestamp_ms"

    invoke-virtual {v10, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-wide v3, v0, LL0/a;->e:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "uptime_ms"

    invoke-virtual {v10, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v3, v0, LL0/a;->c:LL0/f;

    iget-object v3, v3, LL0/f;->a:LI0/b;

    iget-object v3, v3, LI0/b;->a:Ljava/lang/String;

    const-string v4, "payload_encoding"

    invoke-virtual {v10, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "code"

    iget-object v4, v0, LL0/a;->b:Ljava/lang/Integer;

    invoke-virtual {v10, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "num_attempts"

    invoke-virtual {v10, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "inline"

    invoke-virtual {v10, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    if-eqz v8, :cond_d

    move-object v3, v7

    goto :goto_9

    :cond_d
    new-array v3, v6, [B

    :goto_9
    const-string v4, "payload"

    invoke-virtual {v10, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v3, "events"

    invoke-virtual {v1, v3, v5, v10}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    const-string v6, "event_id"

    if-nez v8, :cond_e

    array-length v8, v7

    int-to-double v10, v8

    int-to-double v12, v2

    div-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v8, v10

    :goto_a
    if-gt v9, v8, :cond_e

    add-int/lit8 v10, v9, -0x1

    mul-int/2addr v10, v2

    mul-int v11, v9, v2

    array-length v12, v7

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    invoke-static {v7, v10, v11}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v10

    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v11, v6, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v13, "sequence_num"

    invoke-virtual {v11, v13, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v12, "bytes"

    invoke-virtual {v11, v12, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v10, "event_payloads"

    invoke-virtual {v1, v10, v5, v11}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    add-int/lit8 v9, v9, 0x1

    goto :goto_a

    :cond_e
    iget-object v0, v0, LL0/a;->f:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v9, "name"

    invoke-virtual {v7, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v8, "value"

    invoke-virtual {v7, v8, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "event_metadata"

    invoke-virtual {v1, v2, v5, v7}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_b

    :cond_f
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_c
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public execute()Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, LP0/b;->f:Ljava/lang/Object;

    check-cast v0, LP0/c;

    iget-object v1, v0, LP0/c;->d:LR0/c;

    check-cast v1, LR0/h;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, LP0/b;->d:LL0/b;

    iget-object v3, v2, LL0/b;->c:LI0/c;

    iget-object p0, p0, LP0/b;->e:Ljava/lang/Object;

    check-cast p0, LL0/a;

    iget-object v4, p0, LL0/a;->a:Ljava/lang/String;

    const-string v5, "TransportRuntime."

    const-string v6, "SQLiteEventStore"

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Storing event with priority="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", name="

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for destination "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, LL0/b;->a:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, LP0/b;

    const/4 v4, 0x1

    invoke-direct {v3, v1, v2, p0, v4}, LP0/b;-><init>(Ljava/lang/Object;LL0/b;LL0/a;I)V

    invoke-virtual {v1, v3}, LR0/h;->l(LR0/f;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, v0, LP0/c;->a:LQ0/d;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v2, v1, v0}, LQ0/d;->a(LL0/b;IZ)V

    const/4 p0, 0x0

    return-object p0
.end method
