.class public final Ld4/z;
.super Ld3/k;
.source "SourceFile"

# interfaces
.implements Lc3/b;


# static fields
.field public static final d:Ld4/z;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ld4/z;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ld3/k;-><init>(I)V

    sput-object v0, Ld4/z;->d:Ld4/z;

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LL3/Q;

    const-string p0, "it"

    invoke-static {p0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p1, LL3/Q;->f:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
