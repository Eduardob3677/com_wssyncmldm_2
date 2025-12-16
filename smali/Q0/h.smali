.class public final synthetic LQ0/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LS0/b;
.implements LR0/f;
.implements Lb2/f;


# instance fields
.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, LQ0/h;->d:Ljava/lang/Object;

    iput-object p2, p0, LQ0/h;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    iget-object v0, p0, LQ0/h;->d:Ljava/lang/Object;

    move-object v9, v0

    check-cast v9, LR0/h;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, LQ0/h;->c:Ljava/lang/Object;

    check-cast p0, LL0/b;

    invoke-static {p1, p0}, LR0/h;->h(Landroid/database/sqlite/SQLiteDatabase;LL0/b;)Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v7, "code"

    const-string v8, "inline"

    const-string v1, "_id"

    const-string v2, "transport_name"

    const-string v3, "timestamp_ms"

    const-string v4, "uptime_ms"

    const-string v5, "payload_encoding"

    const-string v6, "payload"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    iget-object v0, v9, LR0/h;->f:LR0/a;

    iget v0, v0, LR0/a;->b:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    const-string v3, "context_id = ?"

    const/4 v5, 0x0

    const-string v1, "events"

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    new-instance v1, LP0/b;

    invoke-direct {v1, v9, v10, p0}, LP0/b;-><init>(LR0/h;Ljava/util/ArrayList;LL0/b;)V

    invoke-static {v0, v1}, LR0/h;->o(Landroid/database/Cursor;LR0/f;)Ljava/lang/Object;

    :goto_0
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "event_id IN ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x0

    move v1, v8

    :goto_1
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v9, 0x1

    if-ge v1, v2, :cond_2

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LR0/b;

    iget-wide v2, v2, LR0/b;->a:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v9

    if-ge v1, v2, :cond_1

    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "value"

    const-string v2, "event_id"

    const-string v3, "name"

    filled-new-array {v2, v3, v1}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v1, "event_metadata"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    :goto_2
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    if-nez v2, :cond_3

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p0, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    new-instance v0, LR0/g;

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, LR0/g;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_4
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    invoke-virtual {v10}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LR0/b;

    iget-wide v1, v0, LR0/b;->a:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_3

    :cond_5
    iget-object v1, v0, LR0/b;->c:LL0/a;

    invoke-virtual {v1}, LL0/a;->c()LJ3/d;

    move-result-object v1

    iget-wide v2, v0, LR0/b;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LR0/g;

    iget-object v6, v5, LR0/g;->a:Ljava/lang/String;

    iget-object v5, v5, LR0/g;->b:Ljava/lang/String;

    invoke-virtual {v1, v6, v5}, LJ3/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_6
    invoke-virtual {v1}, LJ3/d;->d()LL0/a;

    move-result-object v1

    new-instance v4, LR0/b;

    iget-object v0, v0, LR0/b;->b:LL0/b;

    invoke-direct {v4, v2, v3, v0, v1}, LR0/b;-><init>(JLL0/b;LL0/a;)V

    invoke-interface {p1, v4}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    goto :goto_3

    :cond_7
    return-object v10

    :catchall_0
    move-exception p0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    throw p0
.end method

.method public execute()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, LQ0/h;->d:Ljava/lang/Object;

    check-cast v0, LQ0/j;

    iget-object v0, v0, LQ0/j;->c:LR0/c;

    check-cast v0, LR0/h;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, LQ0/h;

    iget-object p0, p0, LQ0/h;->c:Ljava/lang/Object;

    check-cast p0, LL0/b;

    invoke-direct {v1, v0, p0}, LQ0/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, LR0/h;->l(LR0/f;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    return-object p0
.end method

.method public m(Lb2/t;)Ljava/lang/Object;
    .locals 1

    const-class v0, Landroid/content/Context;

    invoke-virtual {p1, v0}, Lb2/t;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iget-object v0, p0, LQ0/h;->c:Ljava/lang/Object;

    check-cast v0, LE2/a;

    invoke-virtual {v0, p1}, LE2/a;->z(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ls2/a;

    iget-object p0, p0, LQ0/h;->d:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-direct {v0, p0, p1}, Ls2/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
