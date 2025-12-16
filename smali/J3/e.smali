.class public final LJ3/e;
.super Ld3/k;
.source "SourceFile"

# interfaces
.implements Lc3/a;


# static fields
.field public static final d:LJ3/e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LJ3/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ld3/k;-><init>(I)V

    sput-object v0, LJ3/e;->d:LJ3/e;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 0

    sget-object p0, LR2/u;->c:LR2/u;

    return-object p0
.end method
