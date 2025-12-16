.class public final LG/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:I

.field public final d:I

.field public final e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILH0/n;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, LG/b;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LG/b;->d:I

    iput-object p2, p0, LG/b;->e:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;I)V
    .locals 0

    iput p3, p0, LG/b;->c:I

    iput-object p2, p0, LG/b;->e:Ljava/lang/Object;

    iput p1, p0, LG/b;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;ILjava/lang/Throwable;)V
    .locals 0

    const/4 p3, 0x2

    iput p3, p0, LG/b;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p3, "initCallbacks cannot be null"

    invoke-static {p3, p1}, LZ0/j;->m(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p3, p0, LG/b;->e:Ljava/lang/Object;

    iput p2, p0, LG/b;->d:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, LG/b;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LG/b;->e:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/datepicker/l;

    iget-object v0, v0, Lcom/google/android/material/datepicker/l;->j:Landroidx/recyclerview/widget/RecyclerView;

    iget p0, p0, LG/b;->d:I

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->B0(I)V

    return-void

    :pswitch_0
    iget-object v0, p0, LG/b;->e:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget p0, p0, LG/b;->d:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p0, v2, :cond_0

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/emoji2/text/h;

    invoke-virtual {p0}, Landroidx/emoji2/text/h;->a()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v3, v1, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/emoji2/text/h;

    invoke-virtual {p0}, Landroidx/emoji2/text/h;->b()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-void

    :pswitch_1
    iget-object v0, p0, LG/b;->e:Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iget p0, p0, LG/b;->d:I

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->B0(I)V

    return-void

    :pswitch_2
    iget-object v0, p0, LG/b;->e:Ljava/lang/Object;

    check-cast v0, Ls2/c;

    iget-object v0, v0, Ls2/c;->c:Ljava/lang/Object;

    check-cast v0, LA/b;

    if-eqz v0, :cond_2

    iget p0, p0, LG/b;->d:I

    invoke-virtual {v0, p0}, LA/b;->h(I)V

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
