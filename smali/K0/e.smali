.class public final LK0/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le2/d;


# static fields
.field public static final a:LK0/e;

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

    new-instance v0, LK0/e;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LK0/e;->a:LK0/e;

    const-string v0, "eventTimeMs"

    invoke-static {v0}, Le2/c;->a(Ljava/lang/String;)Le2/c;

    move-result-object v0

    sput-object v0, LK0/e;->b:Le2/c;

    const-string v0, "eventCode"

    invoke-static {v0}, Le2/c;->a(Ljava/lang/String;)Le2/c;

    move-result-object v0

    sput-object v0, LK0/e;->c:Le2/c;

    const-string v0, "eventUptimeMs"

    invoke-static {v0}, Le2/c;->a(Ljava/lang/String;)Le2/c;

    move-result-object v0

    sput-object v0, LK0/e;->d:Le2/c;

    const-string v0, "sourceExtension"

    invoke-static {v0}, Le2/c;->a(Ljava/lang/String;)Le2/c;

    move-result-object v0

    sput-object v0, LK0/e;->e:Le2/c;

    const-string v0, "sourceExtensionJsonProto3"

    invoke-static {v0}, Le2/c;->a(Ljava/lang/String;)Le2/c;

    move-result-object v0

    sput-object v0, LK0/e;->f:Le2/c;

    const-string v0, "timezoneOffsetSeconds"

    invoke-static {v0}, Le2/c;->a(Ljava/lang/String;)Le2/c;

    move-result-object v0

    sput-object v0, LK0/e;->g:Le2/c;

    const-string v0, "networkConnectionInfo"

    invoke-static {v0}, Le2/c;->a(Ljava/lang/String;)Le2/c;

    move-result-object v0

    sput-object v0, LK0/e;->h:Le2/c;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    check-cast p1, LK0/r;

    check-cast p2, Le2/e;

    check-cast p1, LK0/k;

    iget-wide v0, p1, LK0/k;->a:J

    sget-object p0, LK0/e;->b:Le2/c;

    invoke-interface {p2, p0, v0, v1}, Le2/e;->d(Le2/c;J)Le2/e;

    iget-object p0, p1, LK0/k;->b:Ljava/lang/Integer;

    sget-object v0, LK0/e;->c:Le2/c;

    invoke-interface {p2, v0, p0}, Le2/e;->e(Le2/c;Ljava/lang/Object;)Le2/e;

    sget-object p0, LK0/e;->d:Le2/c;

    iget-wide v0, p1, LK0/k;->c:J

    invoke-interface {p2, p0, v0, v1}, Le2/e;->d(Le2/c;J)Le2/e;

    sget-object p0, LK0/e;->e:Le2/c;

    iget-object v0, p1, LK0/k;->d:[B

    invoke-interface {p2, p0, v0}, Le2/e;->e(Le2/c;Ljava/lang/Object;)Le2/e;

    sget-object p0, LK0/e;->f:Le2/c;

    iget-object v0, p1, LK0/k;->e:Ljava/lang/String;

    invoke-interface {p2, p0, v0}, Le2/e;->e(Le2/c;Ljava/lang/Object;)Le2/e;

    sget-object p0, LK0/e;->g:Le2/c;

    iget-wide v0, p1, LK0/k;->f:J

    invoke-interface {p2, p0, v0, v1}, Le2/e;->d(Le2/c;J)Le2/e;

    sget-object p0, LK0/e;->h:Le2/c;

    iget-object p1, p1, LK0/k;->g:LK0/v;

    invoke-interface {p2, p0, p1}, Le2/e;->e(Le2/c;Ljava/lang/Object;)Le2/e;

    return-void
.end method
