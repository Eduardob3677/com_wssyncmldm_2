.class public final Lc0/b;
.super Landroidx/lifecycle/Y;
.source "SourceFile"


# static fields
.field public static final b:LZ0/h;


# instance fields
.field public final a:Lo/l;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LZ0/h;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, LZ0/h;-><init>(I)V

    sput-object v0, Lc0/b;->b:LZ0/h;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/lifecycle/Y;-><init>()V

    new-instance v0, Lo/l;

    invoke-direct {v0}, Lo/l;-><init>()V

    iput-object v0, p0, Lc0/b;->a:Lo/l;

    return-void
.end method


# virtual methods
.method public final onCleared()V
    .locals 5

    invoke-super {p0}, Landroidx/lifecycle/Y;->onCleared()V

    iget-object p0, p0, Lc0/b;->a:Lo/l;

    iget v0, p0, Lo/l;->e:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-gtz v0, :cond_1

    iget-object v3, p0, Lo/l;->d:[Ljava/lang/Object;

    move v4, v2

    :goto_0
    if-ge v4, v0, :cond_0

    aput-object v1, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iput v2, p0, Lo/l;->e:I

    return-void

    :cond_1
    iget-object p0, p0, Lo/l;->d:[Ljava/lang/Object;

    aget-object p0, p0, v2

    invoke-static {p0}, LB/f;->F(Ljava/lang/Object;)V

    throw v1
.end method
