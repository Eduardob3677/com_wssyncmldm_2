.class public final LZ0/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LN0/b;
.implements Landroidx/databinding/d;
.implements Landroidx/preference/q;
.implements Landroidx/lifecycle/b0;


# static fields
.field public static d:LZ0/h;

.field public static e:LZ0/h;

.field public static f:LZ0/h;

.field public static g:LZ0/h;


# instance fields
.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, LZ0/h;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c(Lr3/Q;LF3/a;Lcom/google/firebase/messaging/p;Lh4/v;)Lh4/N;
    .locals 2

    const-string v0, "typeAttr"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "typeParameterUpperBoundEraser"

    invoke-static {v0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p2, "erasedUpperBound"

    invoke-static {p2, p3}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean p2, p1, LF3/a;->c:Z

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, LF3/a;->b(I)LF3/a;

    move-result-object p1

    :goto_0
    iget p2, p1, LF3/a;->b:I

    invoke-static {p2}, Lk/Q0;->f(I)I

    move-result p2

    if-eqz p2, :cond_2

    if-eq p2, v0, :cond_2

    const/4 p0, 0x2

    if-ne p2, p0, :cond_1

    new-instance p0, Lh4/O;

    invoke-direct {p0, v0, p3}, Lh4/O;-><init>(ILh4/v;)V

    goto :goto_1

    :cond_1
    new-instance p0, LA0/c;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_2
    invoke-interface {p0}, Lr3/Q;->A()I

    move-result p2

    invoke-static {p2}, Lh0/c;->b(I)Z

    move-result p2

    if-nez p2, :cond_3

    new-instance p1, Lh4/O;

    invoke-static {p0}, LX3/f;->e(Lr3/j;)Lo3/i;

    move-result-object p0

    invoke-virtual {p0}, Lo3/i;->n()Lh4/z;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Lh4/O;-><init>(ILh4/v;)V

    move-object p0, p1

    goto :goto_1

    :cond_3
    invoke-virtual {p3}, Lh4/v;->J0()Lh4/J;

    move-result-object p2

    invoke-interface {p2}, Lh4/J;->k()Ljava/util/List;

    move-result-object p2

    const-string v1, "erasedUpperBound.constructor.parameters"

    invoke-static {v1, p2}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    xor-int/2addr p2, v0

    if-eqz p2, :cond_4

    new-instance p0, Lh4/O;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p3}, Lh4/O;-><init>(ILh4/v;)V

    goto :goto_1

    :cond_4
    invoke-static {p0, p1}, Lh4/X;->l(Lr3/Q;LF3/a;)Lh4/N;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public static d(FFFF)Landroid/graphics/Path;
    .locals 1

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {v0, p0, p1}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {v0, p2, p3}, Landroid/graphics/Path;->lineTo(FF)V

    return-object v0
.end method

.method public static g(Ljava/lang/String;LQ3/c;)Lp3/d;
    .locals 7

    const-string v0, "packageFqName"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lp3/e;->values()[Lp3/e;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x0

    if-ge v3, v1, :cond_1

    aget-object v5, v0, v3

    iget-object v6, v5, Lp3/e;->c:LQ3/c;

    invoke-static {v6, p1}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, v5, Lp3/e;->d:Ljava/lang/String;

    invoke-static {p0, v6}, Ls4/h;->s(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move-object v5, v4

    :goto_1
    if-nez v5, :cond_2

    return-object v4

    :cond_2
    iget-object p1, v5, Lp3/e;->d:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "this as java.lang.String).substring(startIndex)"

    invoke-static {p1, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_4

    :cond_3
    move-object p0, v4

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    move v0, v2

    :goto_2
    if-ge v2, p1, :cond_5

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    if-ltz v1, :cond_3

    const/16 v3, 0xa

    if-ge v1, v3, :cond_3

    mul-int/lit8 v0, v0, 0xa

    add-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_3
    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    new-instance p1, Lp3/d;

    invoke-direct {p1, v5, p0}, Lp3/d;-><init>(Lp3/e;I)V

    return-object p1

    :cond_6
    return-object v4
.end method

.method public static varargs h(Landroid/content/pm/PackageInfo;[LZ0/k;)LZ0/k;
    .locals 3

    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    array-length v0, v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const-string p0, "GoogleSignatureVerifier"

    const-string p1, "Package has more than one signature."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    new-instance v0, LZ0/l;

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v2, 0x0

    aget-object p0, p0, v2

    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p0

    invoke-direct {v0, p0}, LZ0/l;-><init>([B)V

    :goto_0
    array-length p0, p1

    if-ge v2, p0, :cond_3

    aget-object p0, p1, v2

    invoke-virtual {p0, v0}, LZ0/k;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    aget-object p0, p1, v2

    return-object p0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public static i(Landroid/content/pm/PackageInfo;)Z
    .locals 1

    if-eqz p0, :cond_0

    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v0, :cond_0

    sget-object v0, LZ0/n;->a:[LZ0/k;

    invoke-static {p0, v0}, LZ0/h;->h(Landroid/content/pm/PackageInfo;[LZ0/k;)LZ0/k;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Landroidx/lifecycle/Y;
    .locals 0

    new-instance p0, Lc0/b;

    invoke-direct {p0}, Lc0/b;-><init>()V

    return-object p0
.end method

.method public b(Landroidx/preference/Preference;)Ljava/lang/CharSequence;
    .locals 0

    check-cast p1, Landroidx/preference/EditTextPreference;

    iget-object p0, p1, Landroidx/preference/EditTextPreference;->d0:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f13018d

    iget-object p1, p1, Landroidx/preference/Preference;->c:Landroid/content/Context;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p1, Landroidx/preference/EditTextPreference;->d0:Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method public f(Landroidx/databinding/v;ILjava/lang/ref/ReferenceQueue;)Landroidx/databinding/w;
    .locals 0

    iget p0, p0, LZ0/h;->c:I

    packed-switch p0, :pswitch_data_0

    new-instance p0, Landroidx/databinding/r;

    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/r;-><init>(Landroidx/databinding/v;ILjava/lang/ref/ReferenceQueue;)V

    iget-object p0, p0, Landroidx/databinding/r;->a:Landroidx/databinding/w;

    return-object p0

    :pswitch_0
    new-instance p0, Landroidx/databinding/u;

    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/u;-><init>(Landroidx/databinding/v;ILjava/lang/ref/ReferenceQueue;)V

    iget-object p0, p0, Landroidx/databinding/u;->a:Landroidx/databinding/w;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    const-string p0, "com.google.android.datatransport.events"

    return-object p0
.end method
