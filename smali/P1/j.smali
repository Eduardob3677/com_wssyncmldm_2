.class public final LP1/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:LZ0/j;

.field public b:LZ0/j;

.field public c:LZ0/j;

.field public d:LZ0/j;

.field public e:LP1/c;

.field public f:LP1/c;

.field public g:LP1/c;

.field public h:LP1/c;

.field public i:LP1/e;

.field public j:LP1/e;

.field public k:LP1/e;

.field public l:LP1/e;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LP1/i;

    invoke-direct {v0}, LP1/i;-><init>()V

    iput-object v0, p0, LP1/j;->a:LZ0/j;

    new-instance v0, LP1/i;

    invoke-direct {v0}, LP1/i;-><init>()V

    iput-object v0, p0, LP1/j;->b:LZ0/j;

    new-instance v0, LP1/i;

    invoke-direct {v0}, LP1/i;-><init>()V

    iput-object v0, p0, LP1/j;->c:LZ0/j;

    new-instance v0, LP1/i;

    invoke-direct {v0}, LP1/i;-><init>()V

    iput-object v0, p0, LP1/j;->d:LZ0/j;

    new-instance v0, LP1/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LP1/a;-><init>(F)V

    iput-object v0, p0, LP1/j;->e:LP1/c;

    new-instance v0, LP1/a;

    invoke-direct {v0, v1}, LP1/a;-><init>(F)V

    iput-object v0, p0, LP1/j;->f:LP1/c;

    new-instance v0, LP1/a;

    invoke-direct {v0, v1}, LP1/a;-><init>(F)V

    iput-object v0, p0, LP1/j;->g:LP1/c;

    new-instance v0, LP1/a;

    invoke-direct {v0, v1}, LP1/a;-><init>(F)V

    iput-object v0, p0, LP1/j;->h:LP1/c;

    new-instance v0, LP1/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LP1/e;-><init>(I)V

    iput-object v0, p0, LP1/j;->i:LP1/e;

    new-instance v0, LP1/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LP1/e;-><init>(I)V

    iput-object v0, p0, LP1/j;->j:LP1/e;

    new-instance v0, LP1/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LP1/e;-><init>(I)V

    iput-object v0, p0, LP1/j;->k:LP1/e;

    new-instance v0, LP1/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LP1/e;-><init>(I)V

    iput-object v0, p0, LP1/j;->l:LP1/e;

    return-void
.end method

.method public static b(LZ0/j;)V
    .locals 1

    instance-of v0, p0, LP1/i;

    if-eqz v0, :cond_0

    check-cast p0, LP1/i;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :cond_0
    instance-of v0, p0, LP1/d;

    if-eqz v0, :cond_1

    check-cast p0, LP1/d;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1
    return-void
.end method


# virtual methods
.method public final a()LP1/k;
    .locals 2

    new-instance v0, LP1/k;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget-object v1, p0, LP1/j;->a:LZ0/j;

    iput-object v1, v0, LP1/k;->a:LZ0/j;

    iget-object v1, p0, LP1/j;->b:LZ0/j;

    iput-object v1, v0, LP1/k;->b:LZ0/j;

    iget-object v1, p0, LP1/j;->c:LZ0/j;

    iput-object v1, v0, LP1/k;->c:LZ0/j;

    iget-object v1, p0, LP1/j;->d:LZ0/j;

    iput-object v1, v0, LP1/k;->d:LZ0/j;

    iget-object v1, p0, LP1/j;->e:LP1/c;

    iput-object v1, v0, LP1/k;->e:LP1/c;

    iget-object v1, p0, LP1/j;->f:LP1/c;

    iput-object v1, v0, LP1/k;->f:LP1/c;

    iget-object v1, p0, LP1/j;->g:LP1/c;

    iput-object v1, v0, LP1/k;->g:LP1/c;

    iget-object v1, p0, LP1/j;->h:LP1/c;

    iput-object v1, v0, LP1/k;->h:LP1/c;

    iget-object v1, p0, LP1/j;->i:LP1/e;

    iput-object v1, v0, LP1/k;->i:LP1/e;

    iget-object v1, p0, LP1/j;->j:LP1/e;

    iput-object v1, v0, LP1/k;->j:LP1/e;

    iget-object v1, p0, LP1/j;->k:LP1/e;

    iput-object v1, v0, LP1/k;->k:LP1/e;

    iget-object p0, p0, LP1/j;->l:LP1/e;

    iput-object p0, v0, LP1/k;->l:LP1/e;

    return-object v0
.end method
