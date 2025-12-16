.class public final LK0/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le2/d;


# static fields
.field public static final a:LK0/g;

.field public static final b:Le2/c;

.field public static final c:Le2/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LK0/g;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LK0/g;->a:LK0/g;

    const-string v0, "networkType"

    invoke-static {v0}, Le2/c;->a(Ljava/lang/String;)Le2/c;

    move-result-object v0

    sput-object v0, LK0/g;->b:Le2/c;

    const-string v0, "mobileSubtype"

    invoke-static {v0}, Le2/c;->a(Ljava/lang/String;)Le2/c;

    move-result-object v0

    sput-object v0, LK0/g;->c:Le2/c;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    check-cast p1, LK0/v;

    check-cast p2, Le2/e;

    check-cast p1, LK0/n;

    iget-object p0, p1, LK0/n;->a:LK0/u;

    sget-object v0, LK0/g;->b:Le2/c;

    invoke-interface {p2, v0, p0}, Le2/e;->e(Le2/c;Ljava/lang/Object;)Le2/e;

    sget-object p0, LK0/g;->c:Le2/c;

    iget-object p1, p1, LK0/n;->b:LK0/t;

    invoke-interface {p2, p0, p1}, Le2/e;->e(Le2/c;Ljava/lang/Object;)Le2/e;

    return-void
.end method
