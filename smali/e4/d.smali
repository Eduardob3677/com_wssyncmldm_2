.class public final Le4/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LK2/c;
.implements LN0/b;
.implements Lb1/l;
.implements Landroidx/databinding/d;
.implements Landroidx/lifecycle/b0;
.implements Landroidx/preference/q;
.implements Lh0/e;


# static fields
.field public static d:Ljava/util/concurrent/ExecutorService;

.field public static e:Le4/d;

.field public static f:Le4/d;


# instance fields
.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Le4/d;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(LD1/f;LD1/f;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Le4/d;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p0, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    cmpg-float p0, p0, p1

    if-gtz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public constructor <init>(Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;ILP1/k;Landroid/graphics/Rect;)V
    .locals 0

    const/16 p1, 0xc

    iput p1, p0, Le4/d;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget p0, p6, Landroid/graphics/Rect;->left:I

    invoke-static {p0}, LZ0/j;->l(I)V

    iget p0, p6, Landroid/graphics/Rect;->top:I

    invoke-static {p0}, LZ0/j;->l(I)V

    iget p0, p6, Landroid/graphics/Rect;->right:I

    invoke-static {p0}, LZ0/j;->l(I)V

    iget p0, p6, Landroid/graphics/Rect;->bottom:I

    invoke-static {p0}, LZ0/j;->l(I)V

    return-void
.end method

.method public constructor <init>(Lg4/o;)V
    .locals 2

    const/4 v0, 0x7

    iput v0, p0, Le4/d;->c:I

    const-string v0, "storageManager"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p0, Lg4/l;->d:Ljava/lang/String;

    new-instance p0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 p1, 0x3

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    return-void
.end method

.method public static c(Landroid/content/Context;I)Le4/d;
    .locals 12

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string v3, "Cannot create a CalendarItemStyle with a styleResId of 0"

    invoke-static {v3, v2}, LZ0/j;->k(Ljava/lang/String;Z)V

    sget-object v2, Lv1/a;->o:[I

    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    const/4 v4, 0x3

    invoke-virtual {p1, v4, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11, v2, v3, v0, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, LW1/a;->B(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v6

    const/16 v0, 0x9

    invoke-static {p0, p1, v0}, LW1/a;->B(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v7

    const/4 v0, 0x7

    invoke-static {p0, p1, v0}, LW1/a;->B(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v8

    const/16 v0, 0x8

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v9

    const/4 v0, 0x5

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    const/4 v2, 0x6

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    new-instance v3, LP1/a;

    int-to-float v1, v1

    invoke-direct {v3, v1}, LP1/a;-><init>(F)V

    invoke-static {p0, v0, v2, v3}, LP1/k;->a(Landroid/content/Context;IILP1/a;)LP1/j;

    move-result-object p0

    invoke-virtual {p0}, LP1/j;->a()LP1/k;

    move-result-object v10

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    new-instance p0, Le4/d;

    move-object v5, p0

    invoke-direct/range {v5 .. v11}, Le4/d;-><init>(Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;ILP1/k;Landroid/graphics/Rect;)V

    return-object p0
.end method

.method public static h()Le4/d;
    .locals 2

    sget-object v0, Le4/d;->e:Le4/d;

    if-nez v0, :cond_0

    new-instance v0, Le4/d;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Le4/d;-><init>(I)V

    new-instance v1, LK2/d;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    sput-object v1, Le4/d;->d:Ljava/util/concurrent/ExecutorService;

    sput-object v0, Le4/d;->e:Le4/d;

    :cond_0
    sget-object v0, Le4/d;->e:Le4/d;

    return-object v0
.end method

.method public static i(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1

    const-string v0, "path"

    invoke-static {v0, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-class v0, Le4/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/ClassLoader;->getSystemResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->setUseCaches(Z)V

    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Landroidx/lifecycle/Y;
    .locals 0

    new-instance p0, Landroidx/fragment/app/c0;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Landroidx/fragment/app/c0;-><init>(Z)V

    return-object p0
.end method

.method public b(Landroidx/preference/Preference;)Ljava/lang/CharSequence;
    .locals 0

    check-cast p1, Landroidx/preference/ListPreference;

    invoke-virtual {p1}, Landroidx/preference/ListPreference;->E()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f13018d

    iget-object p1, p1, Landroidx/preference/Preference;->c:Landroid/content/Context;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/preference/ListPreference;->E()Ljava/lang/CharSequence;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public d(Lcom/google/android/gms/common/api/Status;)Ljava/lang/Exception;
    .locals 1

    const/16 p0, 0x8

    iget-object v0, p1, Lcom/google/android/gms/common/api/Status;->e:Ljava/lang/String;

    iget p1, p1, Lcom/google/android/gms/common/api/Status;->d:I

    if-ne p1, p0, :cond_1

    new-instance p0, LW1/h;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, LZ0/j;->M(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0}, LW1/h;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_1
    new-instance p0, LW1/b;

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {p1}, LZ0/j;->M(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-direct {p0, v0}, LW1/h;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public f(Landroidx/databinding/v;ILjava/lang/ref/ReferenceQueue;)Landroidx/databinding/w;
    .locals 1

    new-instance p0, Landroidx/databinding/t;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/databinding/t;-><init>(Landroidx/databinding/v;ILjava/lang/ref/ReferenceQueue;I)V

    iget-object p0, p0, Landroidx/databinding/t;->b:Landroidx/databinding/w;

    return-object p0
.end method

.method public g(LK2/b;)V
    .locals 2

    sget-object p0, Le4/d;->d:Ljava/util/concurrent/ExecutorService;

    new-instance v0, LB1/h;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p1}, LB1/h;-><init>(ILjava/lang/Object;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public get()Ljava/lang/Object;
    .locals 1

    iget p0, p0, Le4/d;->c:I

    packed-switch p0, :pswitch_data_0

    new-instance p0, LT0/b;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, LT0/b;-><init>(I)V

    return-object p0

    :pswitch_0
    sget-object p0, LR0/j;->e:Ljava/util/List;

    const/4 p0, 0x4

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public n()V
    .locals 0

    return-void
.end method

.method public q(ILjava/lang/Object;)V
    .locals 0

    return-void
.end method
