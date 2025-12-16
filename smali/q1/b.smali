.class public final Lq1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le2/d;


# static fields
.field public static final a:Lq1/b;

.field public static final b:Le2/c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lq1/b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lq1/b;->a:Lq1/b;

    new-instance v0, Lq1/i;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lq1/i;-><init>(I)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-class v2, Lq1/m;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Le2/c;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "messagingClientEvent"

    invoke-direct {v0, v2, v1}, Le2/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v0, Lq1/b;->b:Le2/c;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lr2/e;

    check-cast p2, Le2/e;

    iget-object p0, p1, Lr2/e;->a:Lr2/d;

    sget-object p1, Lq1/b;->b:Le2/c;

    invoke-interface {p2, p1, p0}, Le2/e;->e(Le2/c;Ljava/lang/Object;)Le2/e;

    return-void
.end method
