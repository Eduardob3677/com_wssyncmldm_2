.class public final synthetic LQ0/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LS0/b;


# instance fields
.field public final synthetic c:LQ0/j;

.field public final synthetic d:LL0/b;

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(LQ0/j;LL0/b;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LQ0/g;->c:LQ0/j;

    iput-object p2, p0, LQ0/g;->d:LL0/b;

    iput p3, p0, LQ0/g;->e:I

    return-void
.end method


# virtual methods
.method public final execute()Ljava/lang/Object;
    .locals 3

    iget v0, p0, LQ0/g;->e:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, LQ0/g;->c:LQ0/j;

    iget-object v1, v1, LQ0/j;->d:LQ0/d;

    const/4 v2, 0x0

    iget-object p0, p0, LQ0/g;->d:LL0/b;

    invoke-virtual {v1, p0, v0, v2}, LQ0/d;->a(LL0/b;IZ)V

    const/4 p0, 0x0

    return-object p0
.end method
