.class public final LK0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le2/d;


# static fields
.field public static final a:LK0/c;

.field public static final b:Le2/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LK0/c;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LK0/c;->a:LK0/c;

    const-string v0, "logRequest"

    invoke-static {v0}, Le2/c;->a(Ljava/lang/String;)Le2/c;

    move-result-object v0

    sput-object v0, LK0/c;->b:Le2/c;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, LK0/o;

    check-cast p2, Le2/e;

    check-cast p1, LK0/i;

    iget-object p0, p1, LK0/i;->a:Ljava/util/List;

    sget-object p1, LK0/c;->b:Le2/c;

    invoke-interface {p2, p1, p0}, Le2/e;->e(Le2/c;Ljava/lang/Object;)Le2/e;

    return-void
.end method
