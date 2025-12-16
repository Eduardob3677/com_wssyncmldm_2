.class public final LV3/w;
.super LV3/b;
.source "SourceFile"


# instance fields
.field public final c:Lh4/v;


# direct methods
.method public constructor <init>(Ljava/util/List;Lh4/v;)V
    .locals 2

    new-instance v0, LA3/d;

    const/16 v1, 0xd

    invoke-direct {v0, v1, p2}, LA3/d;-><init>(ILjava/lang/Object;)V

    invoke-direct {p0, p1, v0}, LV3/b;-><init>(Ljava/util/List;Lc3/b;)V

    iput-object p2, p0, LV3/w;->c:Lh4/v;

    return-void
.end method
