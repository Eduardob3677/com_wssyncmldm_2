.class public final LQ0/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:LM0/f;

.field public final c:LR0/c;

.field public final d:LQ0/d;

.field public final e:Ljava/util/concurrent/Executor;

.field public final f:LS0/c;

.field public final g:LT0/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;LM0/f;LR0/c;LQ0/d;Ljava/util/concurrent/Executor;LS0/c;LT0/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LQ0/j;->a:Landroid/content/Context;

    iput-object p2, p0, LQ0/j;->b:LM0/f;

    iput-object p3, p0, LQ0/j;->c:LR0/c;

    iput-object p4, p0, LQ0/j;->d:LQ0/d;

    iput-object p5, p0, LQ0/j;->e:Ljava/util/concurrent/Executor;

    iput-object p6, p0, LQ0/j;->f:LS0/c;

    iput-object p7, p0, LQ0/j;->g:LT0/b;

    return-void
.end method


# virtual methods
.method public final a(LL0/b;I)V
    .locals 41

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    iget-object v0, v5, LL0/b;->a:Ljava/lang/String;

    iget-object v1, v2, LQ0/j;->b:LM0/f;

    invoke-virtual {v1, v0}, LM0/f;->a(Ljava/lang/String;)LM0/g;

    move-result-object v0

    new-instance v1, LQ0/h;

    invoke-direct {v1, v2, v5}, LQ0/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v3, v2, LQ0/j;->f:LS0/c;

    move-object v7, v3

    check-cast v7, LR0/h;

    invoke-virtual {v7, v1}, LR0/h;->m(LS0/b;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/lang/Iterable;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x3

    const-wide/16 v8, -0x1

    if-nez v0, :cond_1

    const-string v0, "Uploader"

    const-string v3, "Unknown backend for %s, deleting event batch for it..."

    invoke-static {v0, v3, v5}, LW1/a;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, LM0/a;

    invoke-direct {v0, v1, v8, v9}, LM0/a;-><init>(IJ)V

    move-object v3, v0

    move-object/from16 v24, v4

    move-object/from16 v23, v7

    goto/16 :goto_23

    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, LR0/b;

    iget-object v10, v10, LR0/b;->c:LL0/a;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    move-object v6, v0

    check-cast v6, LJ0/c;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, LL0/a;

    iget-object v11, v10, LL0/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    const/4 v13, 0x0

    const-string v14, "CctTransportBackend"

    const-string v11, "TransportRuntime."

    if-eqz v10, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, LL0/a;

    sget-object v25, LK0/w;->c:LK0/w;

    iget-object v13, v6, LJ0/c;->f:LT0/b;

    invoke-virtual {v13}, LT0/b;->a()J

    move-result-wide v17

    iget-object v13, v6, LJ0/c;->e:LT0/b;

    invoke-virtual {v13}, LT0/b;->a()J

    move-result-wide v19

    sget-object v13, LK0/p;->c:LK0/p;

    const-string v15, "sdk-version"

    invoke-virtual {v12, v15}, LL0/a;->b(Ljava/lang/String;)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    const-string v15, "model"

    invoke-virtual {v12, v15}, LL0/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    const-string v15, "hardware"

    invoke-virtual {v12, v15}, LL0/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    const-string v15, "device"

    invoke-virtual {v12, v15}, LL0/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    const-string v15, "product"

    invoke-virtual {v12, v15}, LL0/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    const-string v15, "os-uild"

    invoke-virtual {v12, v15}, LL0/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    const-string v15, "manufacturer"

    invoke-virtual {v12, v15}, LL0/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    const-string v15, "fingerprint"

    invoke-virtual {v12, v15}, LL0/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    const-string v15, "country"

    invoke-virtual {v12, v15}, LL0/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    const-string v15, "locale"

    invoke-virtual {v12, v15}, LL0/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    const-string v15, "mcc_mnc"

    invoke-virtual {v12, v15}, LL0/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    const-string v15, "application_build"

    invoke-virtual {v12, v15}, LL0/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    new-instance v12, LK0/h;

    move-object/from16 v26, v12

    invoke-direct/range {v26 .. v38}, LK0/h;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v15, LK0/j;

    invoke-direct {v15, v13, v12}, LK0/j;-><init>(LK0/p;LK0/a;)V

    :try_start_0
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v22, v12

    const/16 v23, 0x0

    goto :goto_3

    :catch_0
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    move-object/from16 v23, v12

    const/16 v22, 0x0

    :goto_3
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_d

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, LL0/a;

    iget-object v1, v13, LL0/a;->c:LL0/f;

    iget-object v8, v1, LL0/f;->a:LI0/b;

    new-instance v9, LI0/b;

    move-object/from16 v29, v0

    const-string v0, "proto"

    invoke-direct {v9, v0}, LI0/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9}, LI0/b;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, v1, LL0/f;->b:[B

    if-eqz v0, :cond_5

    new-instance v0, LJ3/c;

    invoke-direct {v0}, LJ3/c;-><init>()V

    iput-object v1, v0, LJ3/c;->g:Ljava/lang/Object;

    goto :goto_5

    :cond_5
    new-instance v0, LI0/b;

    const-string v9, "json"

    invoke-direct {v0, v9}, LI0/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, LI0/b;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/String;

    const-string v8, "UTF-8"

    invoke-static {v8}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v8

    invoke-direct {v0, v1, v8}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    new-instance v1, LJ3/c;

    invoke-direct {v1}, LJ3/c;-><init>()V

    iput-object v0, v1, LJ3/c;->h:Ljava/lang/Object;

    move-object v0, v1

    :goto_5
    iget-wide v8, v13, LL0/a;->d:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, LJ3/c;->d:Ljava/lang/Object;

    iget-wide v8, v13, LL0/a;->e:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, LJ3/c;->f:Ljava/lang/Object;

    iget-object v1, v13, LL0/a;->f:Ljava/util/Map;

    const-string v8, "tz-offset"

    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_6

    const-wide/16 v8, 0x0

    goto :goto_6

    :cond_6
    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    :goto_6
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, LJ3/c;->i:Ljava/lang/Object;

    const-string v1, "net-type"

    invoke-virtual {v13, v1}, LL0/a;->b(Ljava/lang/String;)I

    move-result v1

    sget-object v8, LK0/u;->c:Landroid/util/SparseArray;

    invoke-virtual {v8, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LK0/u;

    const-string v8, "mobile-subtype"

    invoke-virtual {v13, v8}, LL0/a;->b(Ljava/lang/String;)I

    move-result v8

    sget-object v9, LK0/t;->c:Landroid/util/SparseArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, LK0/t;

    new-instance v9, LK0/n;

    invoke-direct {v9, v1, v8}, LK0/n;-><init>(LK0/u;LK0/t;)V

    iput-object v9, v0, LJ3/c;->j:Ljava/lang/Object;

    iget-object v1, v13, LL0/a;->b:Ljava/lang/Integer;

    if-eqz v1, :cond_7

    iput-object v1, v0, LJ3/c;->e:Ljava/lang/Object;

    :cond_7
    iget-object v1, v0, LJ3/c;->d:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    if-nez v1, :cond_8

    const-string v1, " eventTimeMs"

    goto :goto_7

    :cond_8
    const-string v1, ""

    :goto_7
    iget-object v8, v0, LJ3/c;->f:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Long;

    if-nez v8, :cond_9

    const-string v8, " eventUptimeMs"

    invoke-virtual {v1, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_9
    iget-object v8, v0, LJ3/c;->i:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Long;

    if-nez v8, :cond_a

    const-string v8, " timezoneOffsetSeconds"

    invoke-static {v1, v8}, Lh0/c;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_a
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_b

    new-instance v1, LK0/k;

    iget-object v8, v0, LJ3/c;->d:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v31

    iget-object v8, v0, LJ3/c;->e:Ljava/lang/Object;

    move-object/from16 v33, v8

    check-cast v33, Ljava/lang/Integer;

    iget-object v8, v0, LJ3/c;->f:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v34

    iget-object v8, v0, LJ3/c;->g:Ljava/lang/Object;

    move-object/from16 v36, v8

    check-cast v36, [B

    iget-object v8, v0, LJ3/c;->h:Ljava/lang/Object;

    move-object/from16 v37, v8

    check-cast v37, Ljava/lang/String;

    iget-object v8, v0, LJ3/c;->i:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v38

    iget-object v0, v0, LJ3/c;->j:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, LK0/v;

    move-object/from16 v30, v1

    invoke-direct/range {v30 .. v40}, LK0/k;-><init>(JLjava/lang/Integer;J[BLjava/lang/String;JLK0/v;)V

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_8
    move-object/from16 v0, v29

    const/4 v1, 0x3

    const-wide/16 v8, -0x1

    goto/16 :goto_4

    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Missing required properties:"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    invoke-virtual {v11, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v9, "Received event of unsupported encoding "

    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ". Skipping..."

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_d
    move-object/from16 v29, v0

    new-instance v0, LK0/l;

    move-object/from16 v16, v0

    move-object/from16 v21, v15

    move-object/from16 v24, v12

    invoke-direct/range {v16 .. v25}, LK0/l;-><init>(JJLK0/q;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;LK0/w;)V

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v29

    const/4 v1, 0x3

    const-wide/16 v8, -0x1

    goto/16 :goto_2

    :cond_e
    new-instance v0, LK0/i;

    invoke-direct {v0, v3}, LK0/i;-><init>(Ljava/util/ArrayList;)V

    iget-object v1, v5, LL0/b;->b:[B

    iget-object v3, v6, LJ0/c;->d:Ljava/net/URL;

    if-eqz v1, :cond_10

    :try_start_1
    invoke-static {v1}, LJ0/a;->a([B)LJ0/a;

    move-result-object v1

    iget-object v8, v1, LJ0/a;->b:Ljava/lang/String;

    if-eqz v8, :cond_f

    goto :goto_9

    :cond_f
    const/4 v8, 0x0

    :goto_9
    iget-object v1, v1, LJ0/a;->a:Ljava/lang/String;

    if-eqz v1, :cond_11

    invoke-static {v1}, LJ0/c;->b(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_a

    :catch_1
    new-instance v0, LM0/a;

    const/4 v1, 0x3

    const-wide/16 v8, -0x1

    invoke-direct {v0, v1, v8, v9}, LM0/a;-><init>(IJ)V

    move-object/from16 v24, v4

    move-object/from16 v23, v7

    goto/16 :goto_22

    :cond_10
    const/4 v8, 0x0

    :cond_11
    :goto_a
    :try_start_2
    new-instance v9, LJ/r0;

    invoke-direct {v9, v3, v0, v8}, LJ/r0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x5

    move v3, v0

    :goto_b
    iget-object v0, v9, LJ/r0;->c:Ljava/lang/Object;

    check-cast v0, Ljava/net/URL;

    const-string v8, "Making request to: %s"

    invoke-static {v14, v8, v0}, LW1/a;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, v9, LJ/r0;->c:Ljava/lang/Object;

    check-cast v0, Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const/16 v8, 0x7530

    invoke-virtual {v0, v8}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    iget v8, v6, LJ0/c;->g:I

    invoke-virtual {v0, v8}, Ljava/net/URLConnection;->setReadTimeout(I)V

    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Ljava/net/URLConnection;->setDoOutput(Z)V

    invoke-virtual {v0, v13}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const-string v10, "POST"

    invoke-virtual {v0, v10}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v10, "User-Agent"

    const-string v12, "datatransport/3.0.0 android/"

    invoke-virtual {v0, v10, v12}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "Content-Encoding"

    const-string v12, "gzip"

    invoke-virtual {v0, v10, v12}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v15, "Content-Type"

    const-string v13, "application/json"

    invoke-virtual {v0, v15, v13}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v13, "Accept-Encoding"

    invoke-virtual {v0, v13, v12}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v13, v9, LJ/r0;->e:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    if-eqz v13, :cond_12

    const-string v1, "X-Goog-Api-Key"

    invoke-virtual {v0, v1, v13}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    :cond_12
    :try_start_3
    invoke-virtual {v0}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8
    :try_end_3
    .catch Ljava/net/ConnectException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Le2/b; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    :try_start_4
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, v8}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_d

    :try_start_5
    iget-object v13, v6, LJ0/c;->a:Lc1/w;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_a

    :try_start_6
    iget-object v2, v9, LJ/r0;->d:Ljava/lang/Object;

    check-cast v2, LK0/o;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_b

    :try_start_7
    new-instance v5, Ljava/io/BufferedWriter;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_a

    move-object/from16 v22, v6

    :try_start_8
    new-instance v6, Ljava/io/OutputStreamWriter;

    invoke-direct {v6, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_9

    :try_start_9
    new-instance v6, Lg2/e;

    iget-object v13, v13, Lc1/w;->c:Ljava/lang/Object;

    check-cast v13, Lg2/d;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    move-object/from16 v23, v7

    :try_start_a
    iget-object v7, v13, Lg2/d;->a:Ljava/util/HashMap;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    move-object/from16 v24, v4

    :try_start_b
    iget-object v4, v13, Lg2/d;->b:Ljava/util/HashMap;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    move/from16 v25, v3

    :try_start_c
    iget-object v3, v13, Lg2/d;->c:Lg2/a;

    iget-boolean v13, v13, Lg2/d;->d:Z

    move-object/from16 v29, v6

    move-object/from16 v30, v5

    move-object/from16 v31, v7

    move-object/from16 v32, v4

    move-object/from16 v33, v3

    move/from16 v34, v13

    invoke-direct/range {v29 .. v34}, Lg2/e;-><init>(Ljava/io/BufferedWriter;Ljava/util/HashMap;Ljava/util/HashMap;Lg2/a;Z)V

    invoke-virtual {v6, v2}, Lg2/e;->f(Ljava/lang/Object;)Lg2/e;

    invoke-virtual {v6}, Lg2/e;->h()V

    iget-object v2, v6, Lg2/e;->b:Landroid/util/JsonWriter;

    invoke-virtual {v2}, Landroid/util/JsonWriter;->flush()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    :try_start_d
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    if-eqz v8, :cond_13

    :try_start_e
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_e
    .catch Ljava/net/ConnectException; {:try_start_e .. :try_end_e} :catch_3
    .catch Ljava/net/UnknownHostException; {:try_start_e .. :try_end_e} :catch_3
    .catch Le2/b; {:try_start_e .. :try_end_e} :catch_2
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_2

    goto :goto_c

    :catch_2
    move-exception v0

    goto/16 :goto_1b

    :catch_3
    move-exception v0

    goto/16 :goto_1c

    :cond_13
    :goto_c
    :try_start_f
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Status Code: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Content-Type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v15}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Content-Encoding: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x12e

    if-eq v1, v2, :cond_1b

    const/16 v2, 0x12d

    if-eq v1, v2, :cond_1b

    const/16 v2, 0x133

    if-ne v1, v2, :cond_14

    goto/16 :goto_13

    :cond_14
    const/16 v2, 0xc8

    if-eq v1, v2, :cond_16

    new-instance v0, LJ0/b;

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, LJ0/b;-><init>(ILjava/net/URL;J)V

    :cond_15
    :goto_d
    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    goto/16 :goto_1d

    :cond_16
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_6

    :try_start_10
    invoke-virtual {v0, v10}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    move-object v3, v0

    goto :goto_e

    :cond_17
    move-object v3, v2

    :goto_e
    :try_start_11
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-static {v0}, LK0/m;->a(Ljava/io/BufferedReader;)LK0/m;

    move-result-object v0

    iget-wide v4, v0, LK0/m;->a:J

    new-instance v0, LJ0/b;

    const/4 v6, 0x0

    invoke-direct {v0, v1, v6, v4, v5}, LJ0/b;-><init>(ILjava/net/URL;J)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    if-eqz v3, :cond_18

    :try_start_12
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto :goto_f

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto :goto_11

    :cond_18
    :goto_f
    if-eqz v2, :cond_15

    :try_start_13
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_6

    goto :goto_d

    :catchall_1
    move-exception v0

    move-object v1, v0

    if-eqz v3, :cond_19

    :try_start_14
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    goto :goto_10

    :catchall_2
    move-exception v0

    move-object v3, v0

    :try_start_15
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_19
    :goto_10
    throw v1
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    :goto_11
    if-eqz v2, :cond_1a

    :try_start_16
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    goto :goto_12

    :catchall_3
    move-exception v0

    move-object v2, v0

    :try_start_17
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1a
    :goto_12
    throw v1

    :cond_1b
    :goto_13
    const-string v2, "Location"

    invoke-virtual {v0, v2}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, LJ0/b;

    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    invoke-direct {v2, v1, v3, v4, v5}, LJ0/b;-><init>(ILjava/net/URL;J)V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_6

    move-object v0, v2

    goto :goto_d

    :catchall_4
    move-exception v0

    :goto_14
    move-object v1, v0

    goto :goto_19

    :catchall_5
    move-exception v0

    goto :goto_15

    :catchall_6
    move-exception v0

    move/from16 v25, v3

    goto :goto_15

    :catchall_7
    move-exception v0

    move/from16 v25, v3

    move-object/from16 v24, v4

    goto :goto_15

    :catchall_8
    move-exception v0

    move/from16 v25, v3

    move-object/from16 v24, v4

    goto :goto_16

    :goto_15
    move-object v2, v0

    goto :goto_17

    :catchall_9
    move-exception v0

    move/from16 v25, v3

    move-object/from16 v24, v4

    :goto_16
    move-object/from16 v23, v7

    goto :goto_15

    :catchall_a
    move-exception v0

    move/from16 v25, v3

    move-object/from16 v24, v4

    move-object/from16 v22, v6

    goto :goto_16

    :catchall_b
    move-exception v0

    move/from16 v25, v3

    move-object/from16 v24, v4

    move-object/from16 v22, v6

    goto :goto_16

    :goto_17
    :try_start_18
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_c

    goto :goto_18

    :catchall_c
    move-exception v0

    move-object v1, v0

    :try_start_19
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_18
    throw v2
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_4

    :catchall_d
    move-exception v0

    move/from16 v25, v3

    move-object/from16 v24, v4

    move-object/from16 v22, v6

    move-object/from16 v23, v7

    goto :goto_14

    :goto_19
    if-eqz v8, :cond_1c

    :try_start_1a
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_e

    goto :goto_1a

    :catchall_e
    move-exception v0

    move-object v2, v0

    :try_start_1b
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1c
    :goto_1a
    throw v1
    :try_end_1b
    .catch Ljava/net/ConnectException; {:try_start_1b .. :try_end_1b} :catch_3
    .catch Ljava/net/UnknownHostException; {:try_start_1b .. :try_end_1b} :catch_3
    .catch Le2/b; {:try_start_1b .. :try_end_1b} :catch_2
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_2

    :catch_4
    move-exception v0

    move/from16 v25, v3

    move-object/from16 v24, v4

    move-object/from16 v22, v6

    move-object/from16 v23, v7

    :goto_1b
    :try_start_1c
    invoke-virtual {v11, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Couldn\'t encode request, returning with 400"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, LJ0/b;

    const/16 v1, 0x190

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, LJ0/b;-><init>(ILjava/net/URL;J)V

    goto/16 :goto_d

    :catch_5
    move-exception v0

    move/from16 v25, v3

    move-object/from16 v24, v4

    move-object/from16 v22, v6

    move-object/from16 v23, v7

    :goto_1c
    invoke-virtual {v11, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Couldn\'t open connection, returning with 500"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, LJ0/b;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x1f4

    invoke-direct {v0, v4, v3, v1, v2}, LJ0/b;-><init>(ILjava/net/URL;J)V

    :goto_1d
    iget-object v4, v0, LJ0/b;->c:Ljava/lang/Object;

    check-cast v4, Ljava/net/URL;

    if-eqz v4, :cond_1d

    const-string v5, "Following redirect to: %s"

    invoke-static {v14, v5, v4}, LW1/a;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v5, LJ/r0;

    iget-object v6, v9, LJ/r0;->d:Ljava/lang/Object;

    check-cast v6, LK0/o;

    iget-object v7, v9, LJ/r0;->e:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-direct {v5, v4, v6, v7}, LJ/r0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v9, v5

    goto :goto_1e

    :cond_1d
    move-object v9, v3

    :goto_1e
    if-eqz v9, :cond_1f

    add-int/lit8 v4, v25, -0x1

    const/4 v5, 0x1

    if-ge v4, v5, :cond_1e

    goto :goto_1f

    :cond_1e
    move-object/from16 v2, p0

    move-object/from16 v5, p1

    move v3, v4

    move-object/from16 v6, v22

    move-object/from16 v7, v23

    move-object/from16 v4, v24

    const/4 v13, 0x0

    goto/16 :goto_b

    :cond_1f
    const/4 v5, 0x1

    :goto_1f
    iget v1, v0, LJ0/b;->a:I

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_20

    iget-wide v0, v0, LJ0/b;->b:J

    new-instance v2, LM0/a;

    invoke-direct {v2, v5, v0, v1}, LM0/a;-><init>(IJ)V

    move-object v0, v2

    goto :goto_22

    :catch_6
    move-exception v0

    goto :goto_21

    :cond_20
    const/16 v2, 0x1f4

    if-ge v1, v2, :cond_22

    const/16 v0, 0x194

    if-ne v1, v0, :cond_21

    goto :goto_20

    :cond_21
    new-instance v0, LM0/a;

    const/4 v1, 0x3

    const-wide/16 v2, -0x1

    invoke-direct {v0, v1, v2, v3}, LM0/a;-><init>(IJ)V

    goto :goto_22

    :cond_22
    :goto_20
    new-instance v0, LM0/a;

    const-wide/16 v1, -0x1

    const/4 v3, 0x2

    invoke-direct {v0, v3, v1, v2}, LM0/a;-><init>(IJ)V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_6

    goto :goto_22

    :catch_7
    move-exception v0

    move-object/from16 v24, v4

    move-object/from16 v23, v7

    :goto_21
    invoke-virtual {v11, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Could not make request to the backend"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, LM0/a;

    const-wide/16 v1, -0x1

    const/4 v3, 0x2

    invoke-direct {v0, v3, v1, v2}, LM0/a;-><init>(IJ)V

    :goto_22
    move-object v3, v0

    :goto_23
    new-instance v0, LQ0/i;

    move-object v1, v0

    move-object/from16 v2, p0

    move-object/from16 v4, v24

    move-object/from16 v5, p1

    move/from16 v6, p2

    invoke-direct/range {v1 .. v6}, LQ0/i;-><init>(LQ0/j;LM0/a;Ljava/lang/Iterable;LL0/b;I)V

    move-object/from16 v3, v23

    invoke-virtual {v3, v0}, LR0/h;->m(LS0/b;)Ljava/lang/Object;

    return-void
.end method
