.class public final Lg4/c;
.super Lg4/i;
.source "SourceFile"


# instance fields
.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lg4/l;Lc3/a;)V
    .locals 1

    sget-object v0, LR2/u;->c:LR2/u;

    iput-object v0, p0, Lg4/c;->f:Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lg4/i;-><init>(Lg4/l;Lc3/a;)V

    return-void
.end method


# virtual methods
.method public final d(Z)LB1/c;
    .locals 2

    new-instance p1, LB1/c;

    const/4 v0, 0x0

    iget-object p0, p0, Lg4/c;->f:Ljava/lang/Object;

    const/4 v1, 0x5

    invoke-direct {p1, p0, v0, v1}, LB1/c;-><init>(Ljava/lang/Object;ZI)V

    return-object p1
.end method
