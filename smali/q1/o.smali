.class public final Lq1/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le2/e;


# static fields
.field public static final f:Ljava/nio/charset/Charset;

.field public static final g:Le2/c;

.field public static final h:Le2/c;

.field public static final i:Lq1/n;


# instance fields
.field public a:Ljava/io/OutputStream;

.field public final b:Ljava/util/Map;

.field public final c:Ljava/util/Map;

.field public final d:Le2/d;

.field public final e:Lq1/p;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lq1/o;->f:Ljava/nio/charset/Charset;

    new-instance v0, Lq1/i;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lq1/i;-><init>(I)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-class v2, Lq1/m;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Le2/c;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "key"

    invoke-direct {v0, v3, v1}, Le2/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v0, Lq1/o;->g:Le2/c;

    new-instance v0, Lq1/i;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lq1/i;-><init>(I)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Le2/c;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "value"

    invoke-direct {v0, v2, v1}, Le2/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v0, Lq1/o;->h:Le2/c;

    sget-object v0, Lq1/n;->b:Lq1/n;

    sput-object v0, Lq1/o;->i:Lq1/n;

    return-void
.end method

.method public constructor <init>(Ljava/io/ByteArrayOutputStream;Ljava/util/Map;Ljava/util/Map;Le2/d;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lq1/p;

    invoke-direct {v0, p0}, Lq1/p;-><init>(Lq1/o;)V

    iput-object v0, p0, Lq1/o;->e:Lq1/p;

    iput-object p1, p0, Lq1/o;->a:Ljava/io/OutputStream;

    iput-object p2, p0, Lq1/o;->b:Ljava/util/Map;

    iput-object p3, p0, Lq1/o;->c:Ljava/util/Map;

    iput-object p4, p0, Lq1/o;->d:Le2/d;

    return-void
.end method

.method public static f(Le2/c;)I
    .locals 1

    const-class v0, Lq1/m;

    iget-object p0, p0, Le2/c;->b:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/annotation/Annotation;

    check-cast p0, Lq1/m;

    if-eqz p0, :cond_0

    check-cast p0, Lq1/i;

    iget p0, p0, Lq1/i;->a:I

    return p0

    :cond_0
    new-instance p0, Le2/b;

    const-string v0, "Field has no @Protobuf config"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a(Le2/c;Ljava/lang/Object;Z)V
    .locals 4

    if-nez p2, :cond_0

    return-void

    :cond_0
    instance-of v0, p2, Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    check-cast p2, Ljava/lang/CharSequence;

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p3

    if-nez p3, :cond_1

    return-void

    :cond_1
    invoke-static {p1}, Lq1/o;->f(Le2/c;)I

    move-result p1

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lq1/o;->h(I)V

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lq1/o;->f:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    array-length p2, p1

    invoke-virtual {p0, p2}, Lq1/o;->h(I)V

    iget-object p0, p0, Lq1/o;->a:Ljava/io/OutputStream;

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    return-void

    :cond_2
    instance-of v0, p2, Ljava/util/Collection;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p0, p1, p3, v1}, Lq1/o;->a(Le2/c;Ljava/lang/Object;Z)V

    goto :goto_0

    :cond_3
    return-void

    :cond_4
    instance-of v0, p2, Ljava/util/Map;

    if-eqz v0, :cond_6

    check-cast p2, Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    sget-object v0, Lq1/o;->i:Lq1/n;

    invoke-virtual {p0, v0, p1, p3, v1}, Lq1/o;->g(Le2/d;Le2/c;Ljava/lang/Object;Z)V

    goto :goto_1

    :cond_5
    return-void

    :cond_6
    instance-of v0, p2, Ljava/lang/Double;

    const/4 v2, 0x1

    if-eqz v0, :cond_8

    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    if-eqz p3, :cond_7

    const-wide/16 p2, 0x0

    cmpl-double p2, v0, p2

    if-nez p2, :cond_7

    goto :goto_2

    :cond_7
    invoke-static {p1}, Lq1/o;->f(Le2/c;)I

    move-result p1

    shl-int/lit8 p1, p1, 0x3

    or-int/2addr p1, v2

    invoke-virtual {p0, p1}, Lq1/o;->h(I)V

    iget-object p0, p0, Lq1/o;->a:Ljava/io/OutputStream;

    const/16 p1, 0x8

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    sget-object p2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    :goto_2
    return-void

    :cond_8
    instance-of v0, p2, Ljava/lang/Float;

    if-eqz v0, :cond_a

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    if-eqz p3, :cond_9

    const/4 p3, 0x0

    cmpl-float p3, p2, p3

    if-nez p3, :cond_9

    goto :goto_3

    :cond_9
    invoke-static {p1}, Lq1/o;->f(Le2/c;)I

    move-result p1

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x5

    invoke-virtual {p0, p1}, Lq1/o;->h(I)V

    iget-object p0, p0, Lq1/o;->a:Ljava/io/OutputStream;

    const/4 p1, 0x4

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    sget-object p3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    :goto_3
    return-void

    :cond_a
    instance-of v0, p2, Ljava/lang/Number;

    if-eqz v0, :cond_e

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    if-eqz p3, :cond_b

    const-wide/16 p2, 0x0

    cmp-long p2, v0, p2

    if-eqz p2, :cond_c

    :cond_b
    const-class p2, Lq1/m;

    iget-object p1, p1, Le2/c;->b:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/annotation/Annotation;

    check-cast p1, Lq1/m;

    if-eqz p1, :cond_d

    check-cast p1, Lq1/i;

    iget p1, p1, Lq1/i;->a:I

    shl-int/lit8 p1, p1, 0x3

    invoke-virtual {p0, p1}, Lq1/o;->h(I)V

    invoke-virtual {p0, v0, v1}, Lq1/o;->i(J)V

    :cond_c
    return-void

    :cond_d
    new-instance p0, Le2/b;

    const-string p1, "Field has no @Protobuf config"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_e
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_f

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p0, p1, p2, p3}, Lq1/o;->b(Le2/c;IZ)V

    return-void

    :cond_f
    instance-of v0, p2, [B

    if-eqz v0, :cond_11

    check-cast p2, [B

    if-eqz p3, :cond_10

    array-length p3, p2

    if-nez p3, :cond_10

    return-void

    :cond_10
    invoke-static {p1}, Lq1/o;->f(Le2/c;)I

    move-result p1

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lq1/o;->h(I)V

    array-length p1, p2

    invoke-virtual {p0, p1}, Lq1/o;->h(I)V

    iget-object p0, p0, Lq1/o;->a:Ljava/io/OutputStream;

    invoke-virtual {p0, p2}, Ljava/io/OutputStream;->write([B)V

    return-void

    :cond_11
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v3, p0, Lq1/o;->b:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le2/d;

    if-eqz v0, :cond_12

    invoke-virtual {p0, v0, p1, p2, p3}, Lq1/o;->g(Le2/d;Le2/c;Ljava/lang/Object;Z)V

    return-void

    :cond_12
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v3, p0, Lq1/o;->c:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le2/f;

    if-eqz v0, :cond_13

    iget-object p0, p0, Lq1/o;->e:Lq1/p;

    iput-boolean v1, p0, Lq1/p;->a:Z

    iput-object p1, p0, Lq1/p;->c:Le2/c;

    iput-boolean p3, p0, Lq1/p;->b:Z

    invoke-interface {v0, p2, p0}, Le2/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_13
    instance-of v0, p2, Lq1/k;

    if-eqz v0, :cond_14

    check-cast p2, Lq1/k;

    invoke-interface {p2}, Lq1/k;->a()I

    move-result p2

    invoke-virtual {p0, p1, p2, v2}, Lq1/o;->b(Le2/c;IZ)V

    return-void

    :cond_14
    instance-of v0, p2, Ljava/lang/Enum;

    if-eqz v0, :cond_15

    check-cast p2, Ljava/lang/Enum;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    invoke-virtual {p0, p1, p2, v2}, Lq1/o;->b(Le2/c;IZ)V

    return-void

    :cond_15
    iget-object v0, p0, Lq1/o;->d:Le2/d;

    invoke-virtual {p0, v0, p1, p2, p3}, Lq1/o;->g(Le2/d;Le2/c;Ljava/lang/Object;Z)V

    return-void
.end method

.method public final b(Le2/c;IZ)V
    .locals 0

    if-eqz p3, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    const-class p3, Lq1/m;

    iget-object p1, p1, Le2/c;->b:Ljava/util/Map;

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/annotation/Annotation;

    check-cast p1, Lq1/m;

    if-eqz p1, :cond_2

    check-cast p1, Lq1/i;

    iget p1, p1, Lq1/i;->a:I

    shl-int/lit8 p1, p1, 0x3

    invoke-virtual {p0, p1}, Lq1/o;->h(I)V

    invoke-virtual {p0, p2}, Lq1/o;->h(I)V

    return-void

    :cond_2
    new-instance p0, Le2/b;

    const-string p1, "Field has no @Protobuf config"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final synthetic c(Le2/c;I)Le2/e;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lq1/o;->b(Le2/c;IZ)V

    return-object p0
.end method

.method public final d(Le2/c;J)Le2/e;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_1

    const-class v0, Lq1/m;

    iget-object p1, p1, Le2/c;->b:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/annotation/Annotation;

    check-cast p1, Lq1/m;

    if-eqz p1, :cond_0

    check-cast p1, Lq1/i;

    iget p1, p1, Lq1/i;->a:I

    shl-int/lit8 p1, p1, 0x3

    invoke-virtual {p0, p1}, Lq1/o;->h(I)V

    invoke-virtual {p0, p2, p3}, Lq1/o;->i(J)V

    goto :goto_0

    :cond_0
    new-instance p0, Le2/b;

    const-string p1, "Field has no @Protobuf config"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public final e(Le2/c;Ljava/lang/Object;)Le2/e;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lq1/o;->a(Le2/c;Ljava/lang/Object;Z)V

    return-object p0
.end method

.method public final g(Le2/d;Le2/c;Ljava/lang/Object;Z)V
    .locals 5

    new-instance v0, Lq1/j;

    invoke-direct {v0}, Ljava/io/OutputStream;-><init>()V

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lq1/j;->c:J

    :try_start_0
    iget-object v3, p0, Lq1/o;->a:Ljava/io/OutputStream;

    iput-object v0, p0, Lq1/o;->a:Ljava/io/OutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {p1, p3, p0}, Le2/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iput-object v3, p0, Lq1/o;->a:Ljava/io/OutputStream;

    iget-wide v3, v0, Lq1/j;->c:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    if-eqz p4, :cond_0

    cmp-long p4, v3, v1

    if-nez p4, :cond_0

    return-void

    :cond_0
    invoke-static {p2}, Lq1/o;->f(Le2/c;)I

    move-result p2

    shl-int/lit8 p2, p2, 0x3

    or-int/lit8 p2, p2, 0x2

    invoke-virtual {p0, p2}, Lq1/o;->h(I)V

    invoke-virtual {p0, v3, v4}, Lq1/o;->i(J)V

    invoke-interface {p1, p3, p0}, Le2/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_3
    iput-object v3, p0, Lq1/o;->a:Ljava/io/OutputStream;

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    :try_start_4
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    throw p0
.end method

.method public final h(I)V
    .locals 4

    :goto_0
    and-int/lit8 v0, p1, -0x80

    int-to-long v0, v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lq1/o;->a:Ljava/io/OutputStream;

    and-int/lit8 v1, p1, 0x7f

    or-int/lit16 v1, v1, 0x80

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lq1/o;->a:Ljava/io/OutputStream;

    and-int/lit8 p1, p1, 0x7f

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public final i(J)V
    .locals 4

    :goto_0
    const-wide/16 v0, -0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lq1/o;->a:Ljava/io/OutputStream;

    long-to-int v1, p1

    and-int/lit8 v1, v1, 0x7f

    or-int/lit16 v1, v1, 0x80

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    const/4 v0, 0x7

    ushr-long/2addr p1, v0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lq1/o;->a:Ljava/io/OutputStream;

    long-to-int p1, p1

    and-int/lit8 p1, p1, 0x7f

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method
