.class public final LK0/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le2/d;


# static fields
.field public static final a:LK0/f;

.field public static final b:Le2/c;

.field public static final c:Le2/c;

.field public static final d:Le2/c;

.field public static final e:Le2/c;

.field public static final f:Le2/c;

.field public static final g:Le2/c;

.field public static final h:Le2/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LK0/f;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LK0/f;->a:LK0/f;

    const-string v0, "requestTimeMs"

    invoke-static {v0}, Le2/c;->a(Ljava/lang/String;)Le2/c;

    move-result-object v0

    sput-object v0, LK0/f;->b:Le2/c;

    const-string v0, "requestUptimeMs"

    invoke-static {v0}, Le2/c;->a(Ljava/lang/String;)Le2/c;

    move-result-object v0

    sput-object v0, LK0/f;->c:Le2/c;

    const-string v0, "clientInfo"

    invoke-static {v0}, Le2/c;->a(Ljava/lang/String;)Le2/c;

    move-result-object v0

    sput-object v0, LK0/f;->d:Le2/c;

    const-string v0, "logSource"

    invoke-static {v0}, Le2/c;->a(Ljava/lang/String;)Le2/c;

    move-result-object v0

    sput-object v0, LK0/f;->e:Le2/c;

    const-string v0, "logSourceName"

    invoke-static {v0}, Le2/c;->a(Ljava/lang/String;)Le2/c;

    move-result-object v0

    sput-object v0, LK0/f;->f:Le2/c;

    const-string v0, "logEvent"

    invoke-static {v0}, Le2/c;->a(Ljava/lang/String;)Le2/c;

    move-result-object v0

    sput-object v0, LK0/f;->g:Le2/c;

    const-string v0, "qosTier"

    invoke-static {v0}, Le2/c;->a(Ljava/lang/String;)Le2/c;

    move-result-object v0

    sput-object v0, LK0/f;->h:Le2/c;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    check-cast p1, LK0/s;

    check-cast p2, Le2/e;

    check-cast p1, LK0/l;

    iget-wide v0, p1, LK0/l;->a:J

    sget-object p0, LK0/f;->b:Le2/c;

    invoke-interface {p2, p0, v0, v1}, Le2/e;->d(Le2/c;J)Le2/e;

    iget-wide v0, p1, LK0/l;->b:J

    sget-object p0, LK0/f;->c:Le2/c;

    invoke-interface {p2, p0, v0, v1}, Le2/e;->d(Le2/c;J)Le2/e;

    sget-object p0, LK0/f;->d:Le2/c;

    iget-object v0, p1, LK0/l;->c:LK0/q;

    invoke-interface {p2, p0, v0}, Le2/e;->e(Le2/c;Ljava/lang/Object;)Le2/e;

    sget-object p0, LK0/f;->e:Le2/c;

    iget-object v0, p1, LK0/l;->d:Ljava/lang/Integer;

    invoke-interface {p2, p0, v0}, Le2/e;->e(Le2/c;Ljava/lang/Object;)Le2/e;

    sget-object p0, LK0/f;->f:Le2/c;

    iget-object v0, p1, LK0/l;->e:Ljava/lang/String;

    invoke-interface {p2, p0, v0}, Le2/e;->e(Le2/c;Ljava/lang/Object;)Le2/e;

    sget-object p0, LK0/f;->g:Le2/c;

    iget-object v0, p1, LK0/l;->f:Ljava/util/List;

    invoke-interface {p2, p0, v0}, Le2/e;->e(Le2/c;Ljava/lang/Object;)Le2/e;

    sget-object p0, LK0/f;->h:Le2/c;

    iget-object p1, p1, LK0/l;->g:LK0/w;

    invoke-interface {p2, p0, p1}, Le2/e;->e(Le2/c;Ljava/lang/Object;)Le2/e;

    return-void
.end method
