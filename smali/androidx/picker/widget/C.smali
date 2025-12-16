.class public final Landroidx/picker/widget/C;
.super Landroid/text/method/NumberKeyListener;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroidx/picker/widget/D;


# direct methods
.method public constructor <init>(Landroidx/picker/widget/D;)V
    .locals 0

    iput-object p1, p0, Landroidx/picker/widget/C;->a:Landroidx/picker/widget/D;

    invoke-direct {p0}, Landroid/text/method/NumberKeyListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 4

    iget-object v0, p0, Landroidx/picker/widget/C;->a:Landroidx/picker/widget/D;

    iget-object v1, v0, Landroidx/picker/widget/D;->l:[Ljava/lang/String;

    const-string v2, ""

    const/4 v3, 0x0

    if-nez v1, :cond_6

    invoke-super/range {p0 .. p6}, Landroid/text/method/NumberKeyListener;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p4, v3, p5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    move-result p2

    invoke-interface {p4, p6, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-object p1

    :cond_1
    invoke-virtual {v0, p1}, Landroidx/picker/widget/D;->h(Ljava/lang/String;)I

    move-result p2

    iget p3, v0, Landroidx/picker/widget/D;->n:I

    if-gt p2, p3, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iget p2, v0, Landroidx/picker/widget/D;->n:I

    invoke-virtual {v0, p2}, Landroidx/picker/widget/D;->f(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-le p1, p2, :cond_2

    goto :goto_0

    :cond_2
    return-object p0

    :cond_3
    :goto_0
    iget-boolean p0, v0, Landroidx/picker/widget/D;->h0:Z

    if-eqz p0, :cond_5

    iget-object p0, v0, Landroidx/picker/widget/D;->X0:Landroid/widget/Toast;

    if-nez p0, :cond_4

    invoke-static {v0}, Landroidx/picker/widget/D;->a(Landroidx/picker/widget/D;)V

    :cond_4
    iget-object p0, v0, Landroidx/picker/widget/D;->X0:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_5
    return-object v2

    :cond_6
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p4, v3, p5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    move-result p2

    invoke-interface {p4, p6, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p2

    const-string p3, "vi"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    iget-object p2, v0, Landroidx/picker/widget/D;->e:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/TextView;->getPrivateImeOptions()Ljava/lang/String;

    move-result-object p2

    const-string p3, "inputType=month_edittext"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    const/4 p2, 0x1

    goto :goto_1

    :cond_7
    move p2, v3

    :goto_1
    iget-object p3, v0, Landroidx/picker/widget/D;->l:[Ljava/lang/String;

    array-length p4, p3

    :goto_2
    if-ge v3, p4, :cond_b

    aget-object p5, p3, v3

    invoke-virtual {p5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p5

    if-eqz p2, :cond_8

    invoke-virtual {p5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-nez p6, :cond_9

    :cond_8
    invoke-virtual {p5, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p5

    if-eqz p5, :cond_a

    :cond_9
    return-object p0

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_b
    iget-boolean p0, v0, Landroidx/picker/widget/D;->h0:Z

    if-eqz p0, :cond_d

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_d

    iget-object p0, v0, Landroidx/picker/widget/D;->X0:Landroid/widget/Toast;

    if-nez p0, :cond_c

    invoke-static {v0}, Landroidx/picker/widget/D;->a(Landroidx/picker/widget/D;)V

    :cond_c
    iget-object p0, v0, Landroidx/picker/widget/D;->X0:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_d
    return-object v2
.end method

.method public final getAcceptedChars()[C
    .locals 0

    sget-object p0, Landroidx/picker/widget/D;->e1:[C

    return-object p0
.end method

.method public final getInputType()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
