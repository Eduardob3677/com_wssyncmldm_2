.class public final LC0/m;
.super LC0/u;
.source "SourceFile"


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/util/ArrayList;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/util/ArrayList;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/util/ArrayList;

.field public final synthetic g:LC0/o;


# direct methods
.method public constructor <init>(LC0/o;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LC0/m;->g:LC0/o;

    iput-object p2, p0, LC0/m;->a:Ljava/lang/Object;

    iput-object p3, p0, LC0/m;->b:Ljava/util/ArrayList;

    const/4 p1, 0x0

    iput-object p1, p0, LC0/m;->c:Ljava/lang/Object;

    iput-object p1, p0, LC0/m;->d:Ljava/util/ArrayList;

    iput-object p4, p0, LC0/m;->e:Ljava/lang/Object;

    iput-object p5, p0, LC0/m;->f:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final c(LC0/t;)V
    .locals 0

    invoke-virtual {p1, p0}, LC0/t;->w(LC0/s;)V

    return-void
.end method

.method public final d(LC0/t;)V
    .locals 3

    const/4 p1, 0x0

    iget-object v0, p0, LC0/m;->g:LC0/o;

    iget-object v1, p0, LC0/m;->a:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v2, p0, LC0/m;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2, p1}, LC0/o;->s(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_0
    iget-object v1, p0, LC0/m;->c:Ljava/lang/Object;

    if-eqz v1, :cond_1

    iget-object v2, p0, LC0/m;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2, p1}, LC0/o;->s(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_1
    iget-object v1, p0, LC0/m;->e:Ljava/lang/Object;

    if-eqz v1, :cond_2

    iget-object p0, p0, LC0/m;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p0, p1}, LC0/o;->s(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_2
    return-void
.end method
