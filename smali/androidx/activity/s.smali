.class public final Landroidx/activity/s;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroidx/activity/s;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/activity/s;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/activity/s;->a:Landroidx/activity/s;

    return-void
.end method


# virtual methods
.method public final a(Lc3/b;Lc3/b;Lc3/a;Lc3/a;)Landroid/window/OnBackInvokedCallback;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc3/b;",
            "Lc3/b;",
            "Lc3/a;",
            "Lc3/a;",
            ")",
            "Landroid/window/OnBackInvokedCallback;"
        }
    .end annotation

    const-string p0, "onBackStarted"

    invoke-static {p0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "onBackProgressed"

    invoke-static {p0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "onBackInvoked"

    invoke-static {p0, p3}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "onBackCancelled"

    invoke-static {p0, p4}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p0, Landroidx/activity/r;

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/activity/r;-><init>(Lc3/b;Lc3/b;Lc3/a;Lc3/a;)V

    return-object p0
.end method
