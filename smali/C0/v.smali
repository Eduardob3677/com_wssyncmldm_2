.class public final LC0/v;
.super LC0/u;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lo/b;

.field public final synthetic b:LC0/w;


# direct methods
.method public constructor <init>(LC0/w;Lo/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LC0/v;->b:LC0/w;

    iput-object p2, p0, LC0/v;->a:Lo/b;

    return-void
.end method


# virtual methods
.method public final c(LC0/t;)V
    .locals 3

    iget-object v0, p0, LC0/v;->b:LC0/w;

    iget-object v0, v0, LC0/w;->d:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    iget-object v2, p0, LC0/v;->a:Lo/b;

    invoke-virtual {v2, v0, v1}, Lo/k;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1, p0}, LC0/t;->w(LC0/s;)V

    return-void
.end method
