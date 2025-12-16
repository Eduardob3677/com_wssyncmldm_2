.class public abstract Landroidx/databinding/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroidx/databinding/DataBinderMapperImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/databinding/DataBinderMapperImpl;

    invoke-direct {v0}, Landroidx/databinding/DataBinderMapperImpl;-><init>()V

    sput-object v0, Landroidx/databinding/g;->a:Landroidx/databinding/DataBinderMapperImpl;

    return-void
.end method

.method public static a(Landroid/view/View;)Landroidx/databinding/v;
    .locals 3

    invoke-static {p0}, Landroidx/databinding/v;->getBinding(Landroid/view/View;)Landroidx/databinding/v;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    sget-object v2, Landroidx/databinding/g;->a:Landroidx/databinding/DataBinderMapperImpl;

    invoke-virtual {v2, v1}, Landroidx/databinding/MergedDataBinderMapper;->getLayoutId(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {v2, v0, p0, v1}, Landroidx/databinding/MergedDataBinderMapper;->getDataBinder(Landroidx/databinding/f;Landroid/view/View;I)Landroidx/databinding/v;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "View is not a binding layout. Tag: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "View is not a binding layout"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(Landroid/view/ViewGroup;II)Landroidx/databinding/v;
    .locals 6

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    sub-int v1, v0, p1

    sget-object v2, Landroidx/databinding/g;->a:Landroidx/databinding/DataBinderMapperImpl;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    sub-int/2addr v0, v4

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {v2, v3, p0, p2}, Landroidx/databinding/MergedDataBinderMapper;->getDataBinder(Landroidx/databinding/f;Landroid/view/View;I)Landroidx/databinding/v;

    move-result-object p0

    return-object p0

    :cond_0
    new-array v0, v1, [Landroid/view/View;

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_1

    add-int v5, v4, p1

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    aput-object v5, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2, v3, v0, p2}, Landroidx/databinding/MergedDataBinderMapper;->getDataBinder(Landroidx/databinding/f;[Landroid/view/View;I)Landroidx/databinding/v;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/v;
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz v1, :cond_2

    invoke-static {p2, v0, p1}, Landroidx/databinding/g;->b(Landroid/view/ViewGroup;II)Landroidx/databinding/v;

    move-result-object p0

    return-object p0

    :cond_2
    sget-object p2, Landroidx/databinding/g;->a:Landroidx/databinding/DataBinderMapperImpl;

    const/4 p3, 0x0

    invoke-virtual {p2, p3, p0, p1}, Landroidx/databinding/MergedDataBinderMapper;->getDataBinder(Landroidx/databinding/f;Landroid/view/View;I)Landroidx/databinding/v;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/app/Activity;I)Landroidx/databinding/v;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const v0, 0x1020002

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Landroidx/databinding/g;->b(Landroid/view/ViewGroup;II)Landroidx/databinding/v;

    move-result-object p0

    return-object p0
.end method
