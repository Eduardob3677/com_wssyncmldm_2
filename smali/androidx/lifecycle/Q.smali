.class public final Landroidx/lifecycle/Q;
.super Ld3/k;
.source "SourceFile"

# interfaces
.implements Lc3/b;


# static fields
.field public static final d:Landroidx/lifecycle/Q;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/lifecycle/Q;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ld3/k;-><init>(I)V

    sput-object v0, Landroidx/lifecycle/Q;->d:Landroidx/lifecycle/Q;

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lb0/b;

    const-string p0, "$this$initializer"

    invoke-static {p0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p0, Landroidx/lifecycle/U;

    invoke-direct {p0}, Landroidx/lifecycle/U;-><init>()V

    return-object p0
.end method
