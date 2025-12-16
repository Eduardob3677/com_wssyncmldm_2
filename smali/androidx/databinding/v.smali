.class public abstract Landroidx/databinding/v;
.super Landroidx/databinding/a;
.source "SourceFile"


# static fields
.field private static final BINDING_NUMBER_START:I = 0x8

.field public static final BINDING_TAG_PREFIX:Ljava/lang/String; = "binding_"

.field private static final CREATE_LIST_LISTENER:Landroidx/databinding/d;

.field private static final CREATE_LIVE_DATA_LISTENER:Landroidx/databinding/d;

.field private static final CREATE_MAP_LISTENER:Landroidx/databinding/d;

.field private static final CREATE_PROPERTY_LISTENER:Landroidx/databinding/d;

.field private static final HALTED:I = 0x2

.field private static final REBIND:I = 0x1

.field private static final REBIND_NOTIFIER:Landroidx/databinding/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/b;"
        }
    .end annotation
.end field

.field private static final REBOUND:I = 0x3

.field private static final ROOT_REATTACHED_LISTENER:Landroid/view/View$OnAttachStateChangeListener;

.field static SDK_INT:I

.field private static final USE_CHOREOGRAPHER:Z

.field private static final sReferenceQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Landroidx/databinding/v;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected final mBindingComponent:Landroidx/databinding/f;

.field private mChoreographer:Landroid/view/Choreographer;

.field private mContainingBinding:Landroidx/databinding/v;

.field private final mFrameCallback:Landroid/view/Choreographer$FrameCallback;

.field private mInLiveDataRegisterObserver:Z

.field protected mInStateFlowRegisterObserver:Z

.field private mIsExecutingPendingBindings:Z

.field private mLifecycleOwner:Landroidx/lifecycle/w;

.field private mLocalFieldObservers:[Landroidx/databinding/w;

.field private mOnStartListener:Landroidx/databinding/ViewDataBinding$OnStartListener;

.field private mPendingRebind:Z

.field private mRebindCallbacks:Landroidx/databinding/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/c;"
        }
    .end annotation
.end field

.field private mRebindHalted:Z

.field private final mRebindRunnable:Ljava/lang/Runnable;

.field private final mRoot:Landroid/view/View;

.field private mUIThreadHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Landroidx/databinding/v;->SDK_INT:I

    const/4 v0, 0x1

    sput-boolean v0, Landroidx/databinding/v;->USE_CHOREOGRAPHER:Z

    new-instance v0, LZ0/h;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, LZ0/h;-><init>(I)V

    sput-object v0, Landroidx/databinding/v;->CREATE_PROPERTY_LISTENER:Landroidx/databinding/d;

    new-instance v0, Le4/d;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Le4/d;-><init>(I)V

    sput-object v0, Landroidx/databinding/v;->CREATE_LIST_LISTENER:Landroidx/databinding/d;

    new-instance v0, LP1/e;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, LP1/e;-><init>(I)V

    sput-object v0, Landroidx/databinding/v;->CREATE_MAP_LISTENER:Landroidx/databinding/d;

    new-instance v0, LZ0/h;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, LZ0/h;-><init>(I)V

    sput-object v0, Landroidx/databinding/v;->CREATE_LIVE_DATA_LISTENER:Landroidx/databinding/d;

    new-instance v0, Landroidx/databinding/o;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/databinding/o;-><init>(I)V

    sput-object v0, Landroidx/databinding/v;->REBIND_NOTIFIER:Landroidx/databinding/b;

    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    sput-object v0, Landroidx/databinding/v;->sReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    new-instance v0, LJ1/n;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, LJ1/n;-><init>(I)V

    sput-object v0, Landroidx/databinding/v;->ROOT_REATTACHED_LISTENER:Landroid/view/View$OnAttachStateChangeListener;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Landroid/view/View;I)V
    .locals 1

    if-nez p1, :cond_2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, LB1/h;

    const/16 v0, 0x9

    invoke-direct {p1, v0, p0}, LB1/h;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Landroidx/databinding/v;->mRebindRunnable:Ljava/lang/Runnable;

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/databinding/v;->mPendingRebind:Z

    iput-boolean p1, p0, Landroidx/databinding/v;->mRebindHalted:Z

    new-array p1, p3, [Landroidx/databinding/w;

    iput-object p1, p0, Landroidx/databinding/v;->mLocalFieldObservers:[Landroidx/databinding/w;

    iput-object p2, p0, Landroidx/databinding/v;->mRoot:Landroid/view/View;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    if-eqz p1, :cond_1

    sget-boolean p1, Landroidx/databinding/v;->USE_CHOREOGRAPHER:Z

    if-eqz p1, :cond_0

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    iput-object p1, p0, Landroidx/databinding/v;->mChoreographer:Landroid/view/Choreographer;

    new-instance p1, LV/a;

    const/4 p2, 0x1

    invoke-direct {p1, p2, p0}, LV/a;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Landroidx/databinding/v;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/databinding/v;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Landroidx/databinding/v;->mUIThreadHandler:Landroid/os/Handler;

    :goto_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "DataBinding must be created in view\'s UI Thread"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The provided bindingComponent parameter must be an instance of DataBindingComponent. See  https://issuetracker.google.com/issues/116541301 for details of why this parameter is not defined as DataBindingComponent"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic access$002(Landroidx/databinding/v;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroidx/databinding/v;->mRebindHalted:Z

    return p1
.end method

.method public static synthetic access$100(Landroidx/databinding/v;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Landroidx/databinding/v;->mRebindRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic access$202(Landroidx/databinding/v;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroidx/databinding/v;->mPendingRebind:Z

    return p1
.end method

.method public static access$300()V
    .locals 2

    :cond_0
    :goto_0
    sget-object v0, Landroidx/databinding/v;->sReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroidx/databinding/w;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/databinding/w;

    invoke-virtual {v0}, Landroidx/databinding/w;->a()Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static synthetic access$400(Landroidx/databinding/v;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Landroidx/databinding/v;->mRoot:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$500()Landroid/view/View$OnAttachStateChangeListener;
    .locals 1

    sget-object v0, Landroidx/databinding/v;->ROOT_REATTACHED_LISTENER:Landroid/view/View$OnAttachStateChangeListener;

    return-object v0
.end method

.method public static b(Landroid/view/View;[Ljava/lang/Object;Landroid/util/SparseIntArray;Z)V
    .locals 5

    invoke-static {p0}, Landroidx/databinding/v;->getBinding(Landroid/view/View;)Landroidx/databinding/v;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-eqz p3, :cond_6

    if-eqz v0, :cond_6

    const-string p3, "layout"

    invoke-virtual {v0, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_6

    const/16 p3, 0x5f

    invoke-virtual {v0, p3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p3

    if-lez p3, :cond_8

    add-int/lit8 p3, p3, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, p3, :cond_2

    goto :goto_4

    :cond_2
    move v3, p3

    :goto_1
    if-ge v3, v2, :cond_4

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_4

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    move v3, v1

    :goto_2
    if-ge p3, v2, :cond_5

    mul-int/lit8 v3, v3, 0xa

    invoke-virtual {v0, p3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, -0x30

    add-int/2addr v3, v4

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_5
    aget-object p3, p1, v3

    if-nez p3, :cond_9

    aput-object p0, p1, v3

    goto :goto_5

    :cond_6
    if-eqz v0, :cond_8

    const-string p3, "binding_"

    invoke-virtual {v0, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_8

    sget p3, Landroidx/databinding/v;->BINDING_NUMBER_START:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    move v3, v1

    :goto_3
    if-ge p3, v2, :cond_7

    mul-int/lit8 v3, v3, 0xa

    invoke-virtual {v0, p3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, -0x30

    add-int/2addr v3, v4

    add-int/lit8 p3, p3, 0x1

    goto :goto_3

    :cond_7
    aget-object p3, p1, v3

    if-nez p3, :cond_9

    aput-object p0, p1, v3

    goto :goto_5

    :cond_8
    :goto_4
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result p3

    if-lez p3, :cond_9

    if-eqz p2, :cond_9

    const/4 v0, -0x1

    invoke-virtual {p2, p3, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result p3

    if-ltz p3, :cond_9

    aget-object v0, p1, p3

    if-nez v0, :cond_9

    aput-object p0, p1, p3

    :cond_9
    :goto_5
    instance-of p3, p0, Landroid/view/ViewGroup;

    if-eqz p3, :cond_a

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    move v0, v1

    :goto_6
    if-ge v0, p3, :cond_a

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2, p1, p2, v1}, Landroidx/databinding/v;->b(Landroid/view/View;[Ljava/lang/Object;Landroid/util/SparseIntArray;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_a
    return-void
.end method

.method public static bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/v;
    .locals 1

    if-nez p0, :cond_0

    sget-object p0, Landroidx/databinding/g;->a:Landroidx/databinding/DataBinderMapperImpl;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Landroidx/databinding/MergedDataBinderMapper;->getDataBinder(Landroidx/databinding/f;Landroid/view/View;I)Landroidx/databinding/v;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The provided bindingComponent parameter must be an instance of DataBindingComponent. See  https://issuetracker.google.com/issues/116541301 for details of why this parameter is not defined as DataBindingComponent"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static executeBindingsOn(Landroidx/databinding/v;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/databinding/v;->a()V

    return-void
.end method

.method public static getBinding(Landroid/view/View;)Landroidx/databinding/v;
    .locals 1

    if-eqz p0, :cond_0

    const v0, 0x7f0a00b0

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/databinding/v;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getBuildSdkInt()I
    .locals 1

    sget v0, Landroidx/databinding/v;->SDK_INT:I

    return v0
.end method

.method public static getColorFromResource(Landroid/view/View;I)I
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    return p0
.end method

.method public static getColorStateListFromResource(Landroid/view/View;I)Landroid/content/res/ColorStateList;
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public static getDrawableFromResource(Landroid/view/View;I)Landroid/graphics/drawable/Drawable;
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static getFrom(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TT;>;TK;)TT;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getFromArray([BI)B
    .locals 1

    if-eqz p0, :cond_1

    if-ltz p1, :cond_1

    array-length v0, p0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    aget-byte p0, p0, p1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static getFromArray([CI)C
    .locals 1

    if-eqz p0, :cond_1

    if-ltz p1, :cond_1

    array-length v0, p0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    aget-char p0, p0, p1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static getFromArray([DI)D
    .locals 1

    if-eqz p0, :cond_1

    if-ltz p1, :cond_1

    array-length v0, p0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    aget-wide p0, p0, p1

    return-wide p0

    :cond_1
    :goto_0
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public static getFromArray([FI)F
    .locals 1

    if-eqz p0, :cond_1

    if-ltz p1, :cond_1

    array-length v0, p0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    aget p0, p0, p1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static getFromArray([II)I
    .locals 1

    if-eqz p0, :cond_1

    if-ltz p1, :cond_1

    array-length v0, p0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    aget p0, p0, p1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static getFromArray([JI)J
    .locals 1

    if-eqz p0, :cond_1

    if-ltz p1, :cond_1

    array-length v0, p0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    aget-wide p0, p0, p1

    return-wide p0

    :cond_1
    :goto_0
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public static getFromArray([Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)TT;"
        }
    .end annotation

    if-eqz p0, :cond_1

    if-ltz p1, :cond_1

    array-length v0, p0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    aget-object p0, p0, p1

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getFromArray([SI)S
    .locals 1

    if-eqz p0, :cond_1

    if-ltz p1, :cond_1

    array-length v0, p0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    aget-short p0, p0, p1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static getFromArray([ZI)Z
    .locals 1

    if-eqz p0, :cond_1

    if-ltz p1, :cond_1

    array-length v0, p0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    aget-boolean p0, p0, p1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static getFromList(Landroid/util/SparseIntArray;I)I
    .locals 0

    if-eqz p0, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static getFromList(Landroid/util/SparseLongArray;I)J
    .locals 0

    if-eqz p0, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide p0

    return-wide p0

    :cond_1
    :goto_0
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public static getFromList(Landroid/util/LongSparseArray;I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/LongSparseArray<",
            "TT;>;I)TT;"
        }
    .end annotation

    if-eqz p0, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getFromList(Landroid/util/SparseArray;I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/SparseArray<",
            "TT;>;I)TT;"
        }
    .end annotation

    if-eqz p0, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getFromList(Ljava/util/List;I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;I)TT;"
        }
    .end annotation

    if-eqz p0, :cond_1

    if-ltz p1, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getFromList(Lo/e;I)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/e;",
            "I)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    int-to-long v1, p1

    invoke-virtual {p0, v1, v2, v0}, Lo/e;->d(JLjava/lang/Long;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static getFromList(Landroid/util/SparseBooleanArray;I)Z
    .locals 0

    if-eqz p0, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/v;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/databinding/v;",
            ">(",
            "Landroid/view/LayoutInflater;",
            "I",
            "Landroid/view/ViewGroup;",
            "Z",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    if-nez p4, :cond_0

    invoke-static {p0, p1, p2, p3}, Landroidx/databinding/g;->c(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/v;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The provided bindingComponent parameter must be an instance of DataBindingComponent. See  https://issuetracker.google.com/issues/116541301 for details of why this parameter is not defined as DataBindingComponent"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static mapBindings(Landroidx/databinding/f;Landroid/view/View;ILandroidx/databinding/q;Landroid/util/SparseIntArray;)[Ljava/lang/Object;
    .locals 0

    new-array p0, p2, [Ljava/lang/Object;

    const/4 p2, 0x1

    invoke-static {p1, p0, p4, p2}, Landroidx/databinding/v;->b(Landroid/view/View;[Ljava/lang/Object;Landroid/util/SparseIntArray;Z)V

    return-object p0
.end method

.method public static mapBindings(Landroidx/databinding/f;[Landroid/view/View;ILandroidx/databinding/q;Landroid/util/SparseIntArray;)[Ljava/lang/Object;
    .locals 1

    new-array p0, p2, [Ljava/lang/Object;

    const/4 p2, 0x0

    :goto_0
    array-length p3, p1

    if-ge p2, p3, :cond_0

    aget-object p3, p1, p2

    const/4 v0, 0x1

    invoke-static {p3, p0, p4, v0}, Landroidx/databinding/v;->b(Landroid/view/View;[Ljava/lang/Object;Landroid/util/SparseIntArray;Z)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public static parse(Ljava/lang/String;B)B
    .locals 0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return p1
.end method

.method public static parse(Ljava/lang/String;C)C
    .locals 1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    return p0

    :cond_1
    :goto_0
    return p1
.end method

.method public static parse(Ljava/lang/String;D)D
    .locals 0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    return-wide p1
.end method

.method public static parse(Ljava/lang/String;F)F
    .locals 0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return p1
.end method

.method public static parse(Ljava/lang/String;I)I
    .locals 0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return p1
.end method

.method public static parse(Ljava/lang/String;J)J
    .locals 0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    return-wide p1
.end method

.method public static parse(Ljava/lang/String;S)S
    .locals 0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return p1
.end method

.method public static parse(Ljava/lang/String;Z)Z
    .locals 0

    if-nez p0, :cond_0

    return p1

    :cond_0
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static safeUnbox(Ljava/lang/Byte;)B
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    :goto_0
    return p0
.end method

.method public static safeUnbox(Ljava/lang/Character;)C
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    move-result p0

    :goto_0
    return p0
.end method

.method public static safeUnbox(Ljava/lang/Double;)D
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public static safeUnbox(Ljava/lang/Float;)F
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    :goto_0
    return p0
.end method

.method public static safeUnbox(Ljava/lang/Integer;)I
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_0
    return p0
.end method

.method public static safeUnbox(Ljava/lang/Long;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public static safeUnbox(Ljava/lang/Short;)S
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Short;->shortValue()S

    move-result p0

    :goto_0
    return p0
.end method

.method public static safeUnbox(Ljava/lang/Boolean;)Z
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    :goto_0
    return p0
.end method

.method public static setBindingInverseListener(Landroidx/databinding/v;Landroidx/databinding/h;Landroidx/databinding/s;)V
    .locals 0

    if-eq p1, p2, :cond_0

    if-eqz p1, :cond_0

    invoke-static {p1}, LB/f;->F(Ljava/lang/Object;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/databinding/a;->removeOnPropertyChangedCallback(Landroidx/databinding/i;)V

    :cond_0
    return-void
.end method

.method public static setTo(Landroid/util/LongSparseArray;ILjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/LongSparseArray<",
            "TT;>;ITT;)V"
        }
    .end annotation

    if-eqz p0, :cond_1

    if-ltz p1, :cond_1

    invoke-virtual {p0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1, p2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static setTo(Landroid/util/SparseArray;ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/SparseArray<",
            "TT;>;ITT;)V"
        }
    .end annotation

    if-eqz p0, :cond_1

    if-ltz p1, :cond_1

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static setTo(Landroid/util/SparseBooleanArray;IZ)V
    .locals 1

    if-eqz p0, :cond_1

    if-ltz p1, :cond_1

    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static setTo(Landroid/util/SparseIntArray;II)V
    .locals 1

    if-eqz p0, :cond_1

    if-ltz p1, :cond_1

    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static setTo(Landroid/util/SparseLongArray;IJ)V
    .locals 1

    if-eqz p0, :cond_1

    if-ltz p1, :cond_1

    invoke-virtual {p0}, Landroid/util/SparseLongArray;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/util/SparseLongArray;->put(IJ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static setTo(Ljava/util/List;ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;ITT;)V"
        }
    .end annotation

    if-eqz p0, :cond_1

    if-ltz p1, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public static setTo(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TT;>;TK;TT;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static setTo(Lo/e;ILjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/e;",
            "ITT;)V"
        }
    .end annotation

    if-eqz p0, :cond_1

    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lo/e;->f()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1, p2}, Lo/e;->e(JLjava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static setTo([BIB)V
    .locals 1

    if-eqz p0, :cond_1

    if-ltz p1, :cond_1

    array-length v0, p0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    aput-byte p2, p0, p1

    :cond_1
    :goto_0
    return-void
.end method

.method public static setTo([CIC)V
    .locals 1

    if-eqz p0, :cond_1

    if-ltz p1, :cond_1

    array-length v0, p0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    aput-char p2, p0, p1

    :cond_1
    :goto_0
    return-void
.end method

.method public static setTo([DID)V
    .locals 1

    if-eqz p0, :cond_1

    if-ltz p1, :cond_1

    array-length v0, p0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    aput-wide p2, p0, p1

    :cond_1
    :goto_0
    return-void
.end method

.method public static setTo([FIF)V
    .locals 1

    if-eqz p0, :cond_1

    if-ltz p1, :cond_1

    array-length v0, p0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    aput p2, p0, p1

    :cond_1
    :goto_0
    return-void
.end method

.method public static setTo([III)V
    .locals 1

    if-eqz p0, :cond_1

    if-ltz p1, :cond_1

    array-length v0, p0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    aput p2, p0, p1

    :cond_1
    :goto_0
    return-void
.end method

.method public static setTo([JIJ)V
    .locals 1

    if-eqz p0, :cond_1

    if-ltz p1, :cond_1

    array-length v0, p0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    aput-wide p2, p0, p1

    :cond_1
    :goto_0
    return-void
.end method

.method public static setTo([Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;ITT;)V"
        }
    .end annotation

    if-eqz p0, :cond_1

    if-ltz p1, :cond_1

    array-length v0, p0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    aput-object p2, p0, p1

    :cond_1
    :goto_0
    return-void
.end method

.method public static setTo([SIS)V
    .locals 1

    if-eqz p0, :cond_1

    if-ltz p1, :cond_1

    array-length v0, p0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    aput-short p2, p0, p1

    :cond_1
    :goto_0
    return-void
.end method

.method public static setTo([ZIZ)V
    .locals 1

    if-eqz p0, :cond_1

    if-ltz p1, :cond_1

    array-length v0, p0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    aput-boolean p2, p0, p1

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-boolean v0, p0, Landroidx/databinding/v;->mIsExecutingPendingBindings:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/databinding/v;->requestRebind()V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/databinding/v;->hasPendingBindings()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/databinding/v;->mIsExecutingPendingBindings:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/databinding/v;->mRebindHalted:Z

    iget-object v2, p0, Landroidx/databinding/v;->mRebindCallbacks:Landroidx/databinding/c;

    if-eqz v2, :cond_2

    invoke-virtual {v2, v0, p0}, Landroidx/databinding/c;->c(ILjava/lang/Object;)V

    iget-boolean v0, p0, Landroidx/databinding/v;->mRebindHalted:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/databinding/v;->mRebindCallbacks:Landroidx/databinding/c;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, p0}, Landroidx/databinding/c;->c(ILjava/lang/Object;)V

    :cond_2
    iget-boolean v0, p0, Landroidx/databinding/v;->mRebindHalted:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroidx/databinding/v;->executeBindings()V

    iget-object v0, p0, Landroidx/databinding/v;->mRebindCallbacks:Landroidx/databinding/c;

    if-eqz v0, :cond_3

    const/4 v2, 0x3

    invoke-virtual {v0, v2, p0}, Landroidx/databinding/c;->c(ILjava/lang/Object;)V

    :cond_3
    iput-boolean v1, p0, Landroidx/databinding/v;->mIsExecutingPendingBindings:Z

    return-void
.end method

.method public addOnRebindCallback(Landroidx/databinding/n;)V
    .locals 2

    iget-object v0, p0, Landroidx/databinding/v;->mRebindCallbacks:Landroidx/databinding/c;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/databinding/c;

    sget-object v1, Landroidx/databinding/v;->REBIND_NOTIFIER:Landroidx/databinding/b;

    invoke-direct {v0, v1}, Landroidx/databinding/c;-><init>(Landroidx/databinding/b;)V

    iput-object v0, p0, Landroidx/databinding/v;->mRebindCallbacks:Landroidx/databinding/c;

    :cond_0
    iget-object p0, p0, Landroidx/databinding/v;->mRebindCallbacks:Landroidx/databinding/c;

    invoke-virtual {p0, p1}, Landroidx/databinding/c;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public ensureBindingComponentIsNotNull(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Required DataBindingComponent is null in class "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ". A BindingAdapter in "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is not static and requires an object to use, retrieved from the DataBindingComponent. If you don\'t use an inflation method taking a DataBindingComponent, use DataBindingUtil.setDefaultComponent or make all BindingAdapter methods static."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract executeBindings()V
.end method

.method public executePendingBindings()V
    .locals 1

    iget-object v0, p0, Landroidx/databinding/v;->mContainingBinding:Landroidx/databinding/v;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/databinding/v;->a()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/databinding/v;->executePendingBindings()V

    :goto_0
    return-void
.end method

.method public forceExecuteBindings()V
    .locals 0

    invoke-virtual {p0}, Landroidx/databinding/v;->executeBindings()V

    return-void
.end method

.method public getLifecycleOwner()Landroidx/lifecycle/w;
    .locals 0

    iget-object p0, p0, Landroidx/databinding/v;->mLifecycleOwner:Landroidx/lifecycle/w;

    return-object p0
.end method

.method public getObservedField(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/databinding/v;->mLocalFieldObservers:[Landroidx/databinding/w;

    aget-object p0, p0, p1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Landroidx/databinding/w;->c:Ljava/lang/Object;

    return-object p0
.end method

.method public getRoot()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Landroidx/databinding/v;->mRoot:Landroid/view/View;

    return-object p0
.end method

.method public handleFieldChange(ILjava/lang/Object;I)V
    .locals 1

    iget-boolean v0, p0, Landroidx/databinding/v;->mInLiveDataRegisterObserver:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroidx/databinding/v;->mInStateFlowRegisterObserver:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/databinding/v;->onFieldChange(ILjava/lang/Object;I)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/databinding/v;->requestRebind()V

    :cond_1
    :goto_0
    return-void
.end method

.method public abstract hasPendingBindings()Z
.end method

.method public abstract invalidateAll()V
.end method

.method public abstract onFieldChange(ILjava/lang/Object;I)Z
.end method

.method public registerTo(ILjava/lang/Object;Landroidx/databinding/d;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/databinding/v;->mLocalFieldObservers:[Landroidx/databinding/w;

    aget-object v0, v0, p1

    if-nez v0, :cond_1

    sget-object v0, Landroidx/databinding/v;->sReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-interface {p3, p0, p1, v0}, Landroidx/databinding/d;->f(Landroidx/databinding/v;ILjava/lang/ref/ReferenceQueue;)Landroidx/databinding/w;

    move-result-object v0

    iget-object p3, p0, Landroidx/databinding/v;->mLocalFieldObservers:[Landroidx/databinding/w;

    aput-object v0, p3, p1

    iget-object p0, p0, Landroidx/databinding/v;->mLifecycleOwner:Landroidx/lifecycle/w;

    if-eqz p0, :cond_1

    iget-object p1, v0, Landroidx/databinding/w;->a:Landroidx/databinding/m;

    invoke-interface {p1, p0}, Landroidx/databinding/m;->b(Landroidx/lifecycle/w;)V

    :cond_1
    invoke-virtual {v0}, Landroidx/databinding/w;->a()Z

    iput-object p2, v0, Landroidx/databinding/w;->c:Ljava/lang/Object;

    iget-object p0, v0, Landroidx/databinding/w;->a:Landroidx/databinding/m;

    invoke-interface {p0, p2}, Landroidx/databinding/m;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public removeOnRebindCallback(Landroidx/databinding/n;)V
    .locals 0

    iget-object p0, p0, Landroidx/databinding/v;->mRebindCallbacks:Landroidx/databinding/c;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/databinding/c;->f(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public requestRebind()V
    .locals 2

    iget-object v0, p0, Landroidx/databinding/v;->mContainingBinding:Landroidx/databinding/v;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/databinding/v;->requestRebind()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/databinding/v;->mLifecycleOwner:Landroidx/lifecycle/w;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroidx/lifecycle/w;->getLifecycle()Landroidx/lifecycle/r;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/y;

    iget-object v0, v0, Landroidx/lifecycle/y;->c:Landroidx/lifecycle/q;

    sget-object v1, Landroidx/lifecycle/q;->f:Landroidx/lifecycle/q;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/q;->a(Landroidx/lifecycle/q;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroidx/databinding/v;->mPendingRebind:Z

    if-eqz v0, :cond_2

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/databinding/v;->mPendingRebind:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-boolean v0, Landroidx/databinding/v;->USE_CHOREOGRAPHER:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/databinding/v;->mChoreographer:Landroid/view/Choreographer;

    iget-object p0, p0, Landroidx/databinding/v;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Landroidx/databinding/v;->mUIThreadHandler:Landroid/os/Handler;

    iget-object p0, p0, Landroidx/databinding/v;->mRebindRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setContainedBinding(Landroidx/databinding/v;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p0, p1, Landroidx/databinding/v;->mContainingBinding:Landroidx/databinding/v;

    :cond_0
    return-void
.end method

.method public setLifecycleOwner(Landroidx/lifecycle/w;)V
    .locals 3

    instance-of v0, p1, Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    const-string v0, "DataBinding"

    const-string v1, "Setting the fragment as the LifecycleOwner might cause memory leaks because views lives shorter than the Fragment. Consider using Fragment\'s view lifecycle"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroidx/databinding/v;->mLifecycleOwner:Landroidx/lifecycle/w;

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroidx/lifecycle/w;->getLifecycle()Landroidx/lifecycle/r;

    move-result-object v0

    iget-object v1, p0, Landroidx/databinding/v;->mOnStartListener:Landroidx/databinding/ViewDataBinding$OnStartListener;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/r;->b(Landroidx/lifecycle/v;)V

    :cond_2
    iput-object p1, p0, Landroidx/databinding/v;->mLifecycleOwner:Landroidx/lifecycle/w;

    if-eqz p1, :cond_4

    iget-object v0, p0, Landroidx/databinding/v;->mOnStartListener:Landroidx/databinding/ViewDataBinding$OnStartListener;

    if-nez v0, :cond_3

    new-instance v0, Landroidx/databinding/ViewDataBinding$OnStartListener;

    invoke-direct {v0, p0}, Landroidx/databinding/ViewDataBinding$OnStartListener;-><init>(Landroidx/databinding/v;)V

    iput-object v0, p0, Landroidx/databinding/v;->mOnStartListener:Landroidx/databinding/ViewDataBinding$OnStartListener;

    :cond_3
    invoke-interface {p1}, Landroidx/lifecycle/w;->getLifecycle()Landroidx/lifecycle/r;

    move-result-object v0

    iget-object v1, p0, Landroidx/databinding/v;->mOnStartListener:Landroidx/databinding/ViewDataBinding$OnStartListener;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/r;->a(Landroidx/lifecycle/v;)V

    :cond_4
    iget-object p0, p0, Landroidx/databinding/v;->mLocalFieldObservers:[Landroidx/databinding/w;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_6

    aget-object v2, p0, v1

    if-eqz v2, :cond_5

    iget-object v2, v2, Landroidx/databinding/w;->a:Landroidx/databinding/m;

    invoke-interface {v2, p1}, Landroidx/databinding/m;->b(Landroidx/lifecycle/w;)V

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method public setRootTag(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f0a00b0

    invoke-virtual {p1, v0, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public setRootTag([Landroid/view/View;)V
    .locals 4

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    const v3, 0x7f0a00b0

    invoke-virtual {v2, v3, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public abstract setVariable(ILjava/lang/Object;)Z
.end method

.method public unbind()V
    .locals 3

    iget-object p0, p0, Landroidx/databinding/v;->mLocalFieldObservers:[Landroidx/databinding/w;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroidx/databinding/w;->a()Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public unregisterFrom(I)Z
    .locals 0

    iget-object p0, p0, Landroidx/databinding/v;->mLocalFieldObservers:[Landroidx/databinding/w;

    aget-object p0, p0, p1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/databinding/w;->a()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public updateLiveDataRegistration(ILandroidx/lifecycle/C;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/lifecycle/C;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/databinding/v;->mInLiveDataRegisterObserver:Z

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Landroidx/databinding/v;->CREATE_LIVE_DATA_LISTENER:Landroidx/databinding/d;

    invoke-virtual {p0, p1, p2, v1}, Landroidx/databinding/v;->updateRegistration(ILjava/lang/Object;Landroidx/databinding/d;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v0, p0, Landroidx/databinding/v;->mInLiveDataRegisterObserver:Z

    return p1

    :catchall_0
    move-exception p1

    iput-boolean v0, p0, Landroidx/databinding/v;->mInLiveDataRegisterObserver:Z

    throw p1
.end method

.method public updateRegistration(ILandroidx/databinding/j;)Z
    .locals 1

    sget-object v0, Landroidx/databinding/v;->CREATE_PROPERTY_LISTENER:Landroidx/databinding/d;

    invoke-virtual {p0, p1, p2, v0}, Landroidx/databinding/v;->updateRegistration(ILjava/lang/Object;Landroidx/databinding/d;)Z

    move-result p0

    return p0
.end method

.method public updateRegistration(ILandroidx/databinding/k;)Z
    .locals 1

    sget-object v0, Landroidx/databinding/v;->CREATE_LIST_LISTENER:Landroidx/databinding/d;

    invoke-virtual {p0, p1, p2, v0}, Landroidx/databinding/v;->updateRegistration(ILjava/lang/Object;Landroidx/databinding/d;)Z

    move-result p0

    return p0
.end method

.method public updateRegistration(ILandroidx/databinding/l;)Z
    .locals 1

    sget-object v0, Landroidx/databinding/v;->CREATE_MAP_LISTENER:Landroidx/databinding/d;

    invoke-virtual {p0, p1, p2, v0}, Landroidx/databinding/v;->updateRegistration(ILjava/lang/Object;Landroidx/databinding/d;)Z

    move-result p0

    return p0
.end method

.method public updateRegistration(ILjava/lang/Object;Landroidx/databinding/d;)Z
    .locals 2

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Landroidx/databinding/v;->unregisterFrom(I)Z

    move-result p0

    return p0

    :cond_0
    iget-object v0, p0, Landroidx/databinding/v;->mLocalFieldObservers:[Landroidx/databinding/w;

    aget-object v0, v0, p1

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p0, p1, p2, p3}, Landroidx/databinding/v;->registerTo(ILjava/lang/Object;Landroidx/databinding/d;)V

    return v1

    :cond_1
    iget-object v0, v0, Landroidx/databinding/w;->c:Ljava/lang/Object;

    if-ne v0, p2, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    invoke-virtual {p0, p1}, Landroidx/databinding/v;->unregisterFrom(I)Z

    invoke-virtual {p0, p1, p2, p3}, Landroidx/databinding/v;->registerTo(ILjava/lang/Object;Landroidx/databinding/d;)V

    return v1
.end method
