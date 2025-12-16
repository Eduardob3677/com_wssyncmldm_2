.class public final Ls3/k;
.super Ld3/k;
.source "SourceFile"

# interfaces
.implements Lc3/b;


# static fields
.field public static final d:Ls3/k;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ls3/k;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ld3/k;-><init>(I)V

    sput-object v0, Ls3/k;->d:Ls3/k;

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ls3/h;

    const-string p0, "it"

    invoke-static {p0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p1}, LR2/m;->G0(Ljava/lang/Iterable;)LR2/l;

    move-result-object p0

    return-object p0
.end method
