.class public final Lq1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le2/d;


# static fields
.field public static final a:Lq1/a;

.field public static final b:Le2/c;

.field public static final c:Le2/c;

.field public static final d:Le2/c;

.field public static final e:Le2/c;

.field public static final f:Le2/c;

.field public static final g:Le2/c;

.field public static final h:Le2/c;

.field public static final i:Le2/c;

.field public static final j:Le2/c;

.field public static final k:Le2/c;

.field public static final l:Le2/c;

.field public static final m:Le2/c;

.field public static final n:Le2/c;

.field public static final o:Le2/c;

.field public static final p:Le2/c;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lq1/a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lq1/a;->a:Lq1/a;

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

    const-string v3, "projectNumber"

    invoke-direct {v0, v3, v1}, Le2/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v0, Lq1/a;->b:Le2/c;

    new-instance v0, Lq1/i;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lq1/i;-><init>(I)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Le2/c;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "messageId"

    invoke-direct {v0, v3, v1}, Le2/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v0, Lq1/a;->c:Le2/c;

    new-instance v0, Lq1/i;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lq1/i;-><init>(I)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Le2/c;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "instanceId"

    invoke-direct {v0, v3, v1}, Le2/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v0, Lq1/a;->d:Le2/c;

    new-instance v0, Lq1/i;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lq1/i;-><init>(I)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Le2/c;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "messageType"

    invoke-direct {v0, v3, v1}, Le2/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v0, Lq1/a;->e:Le2/c;

    new-instance v0, Lq1/i;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lq1/i;-><init>(I)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Le2/c;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "sdkPlatform"

    invoke-direct {v0, v3, v1}, Le2/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v0, Lq1/a;->f:Le2/c;

    new-instance v0, Lq1/i;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lq1/i;-><init>(I)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Le2/c;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "packageName"

    invoke-direct {v0, v3, v1}, Le2/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v0, Lq1/a;->g:Le2/c;

    new-instance v0, Lq1/i;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lq1/i;-><init>(I)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Le2/c;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "collapseKey"

    invoke-direct {v0, v3, v1}, Le2/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v0, Lq1/a;->h:Le2/c;

    new-instance v0, Lq1/i;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lq1/i;-><init>(I)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Le2/c;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "priority"

    invoke-direct {v0, v3, v1}, Le2/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v0, Lq1/a;->i:Le2/c;

    new-instance v0, Lq1/i;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lq1/i;-><init>(I)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Le2/c;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "ttl"

    invoke-direct {v0, v3, v1}, Le2/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v0, Lq1/a;->j:Le2/c;

    new-instance v0, Lq1/i;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lq1/i;-><init>(I)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Le2/c;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "topic"

    invoke-direct {v0, v3, v1}, Le2/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v0, Lq1/a;->k:Le2/c;

    new-instance v0, Lq1/i;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lq1/i;-><init>(I)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Le2/c;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "bulkId"

    invoke-direct {v0, v3, v1}, Le2/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v0, Lq1/a;->l:Le2/c;

    new-instance v0, Lq1/i;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lq1/i;-><init>(I)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Le2/c;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "event"

    invoke-direct {v0, v3, v1}, Le2/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v0, Lq1/a;->m:Le2/c;

    new-instance v0, Lq1/i;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Lq1/i;-><init>(I)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Le2/c;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "analyticsLabel"

    invoke-direct {v0, v3, v1}, Le2/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v0, Lq1/a;->n:Le2/c;

    new-instance v0, Lq1/i;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Lq1/i;-><init>(I)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Le2/c;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "campaignId"

    invoke-direct {v0, v3, v1}, Le2/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v0, Lq1/a;->o:Le2/c;

    new-instance v0, Lq1/i;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Lq1/i;-><init>(I)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Le2/c;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "composerLabel"

    invoke-direct {v0, v2, v1}, Le2/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v0, Lq1/a;->p:Le2/c;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lr2/d;

    check-cast p2, Le2/e;

    iget-wide v0, p1, Lr2/d;->a:J

    sget-object p0, Lq1/a;->b:Le2/c;

    invoke-interface {p2, p0, v0, v1}, Le2/e;->d(Le2/c;J)Le2/e;

    sget-object p0, Lq1/a;->c:Le2/c;

    iget-object v0, p1, Lr2/d;->b:Ljava/lang/String;

    invoke-interface {p2, p0, v0}, Le2/e;->e(Le2/c;Ljava/lang/Object;)Le2/e;

    sget-object p0, Lq1/a;->d:Le2/c;

    iget-object v0, p1, Lr2/d;->c:Ljava/lang/String;

    invoke-interface {p2, p0, v0}, Le2/e;->e(Le2/c;Ljava/lang/Object;)Le2/e;

    sget-object p0, Lq1/a;->e:Le2/c;

    iget-object v0, p1, Lr2/d;->d:Lr2/b;

    invoke-interface {p2, p0, v0}, Le2/e;->e(Le2/c;Ljava/lang/Object;)Le2/e;

    sget-object p0, Lq1/a;->f:Le2/c;

    iget-object v0, p1, Lr2/d;->e:Lr2/c;

    invoke-interface {p2, p0, v0}, Le2/e;->e(Le2/c;Ljava/lang/Object;)Le2/e;

    sget-object p0, Lq1/a;->g:Le2/c;

    iget-object v0, p1, Lr2/d;->f:Ljava/lang/String;

    invoke-interface {p2, p0, v0}, Le2/e;->e(Le2/c;Ljava/lang/Object;)Le2/e;

    sget-object p0, Lq1/a;->h:Le2/c;

    iget-object v0, p1, Lr2/d;->g:Ljava/lang/String;

    invoke-interface {p2, p0, v0}, Le2/e;->e(Le2/c;Ljava/lang/Object;)Le2/e;

    sget-object p0, Lq1/a;->i:Le2/c;

    const/4 v0, 0x0

    invoke-interface {p2, p0, v0}, Le2/e;->c(Le2/c;I)Le2/e;

    sget-object p0, Lq1/a;->j:Le2/c;

    iget v0, p1, Lr2/d;->h:I

    invoke-interface {p2, p0, v0}, Le2/e;->c(Le2/c;I)Le2/e;

    sget-object p0, Lq1/a;->k:Le2/c;

    iget-object v0, p1, Lr2/d;->i:Ljava/lang/String;

    invoke-interface {p2, p0, v0}, Le2/e;->e(Le2/c;Ljava/lang/Object;)Le2/e;

    sget-object p0, Lq1/a;->l:Le2/c;

    const-wide/16 v0, 0x0

    invoke-interface {p2, p0, v0, v1}, Le2/e;->d(Le2/c;J)Le2/e;

    sget-object p0, Lq1/a;->m:Le2/c;

    iget-object v2, p1, Lr2/d;->j:Lr2/a;

    invoke-interface {p2, p0, v2}, Le2/e;->e(Le2/c;Ljava/lang/Object;)Le2/e;

    sget-object p0, Lq1/a;->n:Le2/c;

    iget-object v2, p1, Lr2/d;->k:Ljava/lang/String;

    invoke-interface {p2, p0, v2}, Le2/e;->e(Le2/c;Ljava/lang/Object;)Le2/e;

    sget-object p0, Lq1/a;->o:Le2/c;

    invoke-interface {p2, p0, v0, v1}, Le2/e;->d(Le2/c;J)Le2/e;

    sget-object p0, Lq1/a;->p:Le2/c;

    iget-object p1, p1, Lr2/d;->l:Ljava/lang/String;

    invoke-interface {p2, p0, p1}, Le2/e;->e(Le2/c;Ljava/lang/Object;)Le2/e;

    return-void
.end method
