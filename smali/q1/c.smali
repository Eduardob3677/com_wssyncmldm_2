.class public final Lq1/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le2/d;


# static fields
.field public static final a:Lq1/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lq1/c;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lq1/c;->a:Lq1/c;

    const-string v0, "messagingClientEventExtension"

    invoke-static {v0}, Le2/c;->a(Ljava/lang/String;)Le2/c;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p1}, LB/f;->F(Ljava/lang/Object;)V

    check-cast p2, Le2/e;

    const/4 p0, 0x0

    throw p0
.end method
