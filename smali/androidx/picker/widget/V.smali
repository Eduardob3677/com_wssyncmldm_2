.class public final Landroidx/picker/widget/V;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field public final c:I

.field public final d:I

.field public e:I

.field public f:Ljava/lang/String;

.field public final synthetic g:Landroidx/picker/widget/W;


# direct methods
.method public constructor <init>(Landroidx/picker/widget/W;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/picker/widget/V;->g:Landroidx/picker/widget/W;

    const/4 p1, 0x0

    iput p1, p0, Landroidx/picker/widget/V;->e:I

    iput p2, p0, Landroidx/picker/widget/V;->c:I

    add-int/lit8 p2, p2, 0x1

    const/4 p1, 0x2

    if-lt p2, p1, :cond_0

    const/4 p2, -0x1

    :cond_0
    iput p2, p0, Landroidx/picker/widget/V;->d:I

    return-void
.end method

.method public static b(Ljava/lang/String;)I
    .locals 4

    sget-object v0, Landroidx/picker/widget/W;->H:[C

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/16 v3, 0x46

    if-ge v1, v3, :cond_1

    aget-char v3, v0, v1

    invoke-static {v3}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    rem-int/lit8 v2, v2, 0xa

    return v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Landroidx/picker/widget/V;->g:Landroidx/picker/widget/W;

    iget-object v1, v0, Landroidx/picker/widget/W;->b:Landroid/content/Context;

    const-string v2, "accessibility"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    iget v2, p0, Landroidx/picker/widget/V;->c:I

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-nez v2, :cond_0

    iget-object p0, v0, Landroidx/picker/widget/W;->E:[Landroid/widget/EditText;

    aget-object p0, p0, v2

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0, v3}, Landroidx/picker/widget/W;->f(IZ)V

    iget-object p0, v0, Landroidx/picker/widget/W;->E:[Landroid/widget/EditText;

    aget-object p0, p0, v2

    invoke-virtual {p0}, Landroid/widget/EditText;->selectAll()V

    goto :goto_0

    :cond_0
    if-ne v2, v3, :cond_1

    iget-object p0, v0, Landroidx/picker/widget/W;->E:[Landroid/widget/EditText;

    aget-object p0, p0, v2

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/picker/widget/W;->h(I)V

    iget-object p0, v0, Landroidx/picker/widget/W;->E:[Landroid/widget/EditText;

    aget-object p0, p0, v2

    invoke-virtual {p0}, Landroid/widget/EditText;->selectAll()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget p0, p0, Landroidx/picker/widget/V;->d:I

    if-ltz p0, :cond_3

    iget-object v1, v0, Landroidx/picker/widget/W;->E:[Landroid/widget/EditText;

    aget-object p0, v1, p0

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    iget-object p0, v0, Landroidx/picker/widget/W;->E:[Landroid/widget/EditText;

    aget-object p0, p0, v2

    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result p0

    if-eqz p0, :cond_4

    iget-object p0, v0, Landroidx/picker/widget/W;->E:[Landroid/widget/EditText;

    aget-object p0, p0, v2

    invoke-virtual {p0}, Landroid/view/View;->clearFocus()V

    goto :goto_1

    :cond_3
    if-ne v2, v3, :cond_4

    iget-object p0, v0, Landroidx/picker/widget/W;->E:[Landroid/widget/EditText;

    aget-object p0, p0, v2

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/picker/widget/W;->h(I)V

    iget-object p0, v0, Landroidx/picker/widget/W;->E:[Landroid/widget/EditText;

    aget-object p0, p0, v2

    invoke-virtual {p0}, Landroid/widget/EditText;->selectAll()V

    :cond_4
    :goto_1
    return-void
.end method

.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/picker/widget/V;->f:Ljava/lang/String;

    iput p4, p0, Landroidx/picker/widget/V;->e:I

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    iget-object p2, p0, Landroidx/picker/widget/V;->g:Landroidx/picker/widget/W;

    iget-object p3, p2, Landroidx/picker/widget/W;->E:[Landroid/widget/EditText;

    iget p4, p0, Landroidx/picker/widget/V;->c:I

    aget-object p3, p3, p4

    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    if-eqz p3, :cond_1

    const-string v0, "onClick"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "onLongClick"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    :cond_0
    iget-object p0, p2, Landroidx/picker/widget/W;->E:[Landroid/widget/EditText;

    aget-object p0, p0, p4

    const-string p1, ""

    invoke-virtual {p0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void

    :cond_1
    const/4 p3, 0x2

    const/4 v0, 0x1

    if-eqz p4, :cond_7

    if-eq p4, v0, :cond_2

    iget-object v0, p0, Landroidx/picker/widget/V;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_a

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-ne p1, p3, :cond_a

    iget-object p1, p2, Landroidx/picker/widget/W;->E:[Landroid/widget/EditText;

    aget-object p1, p1, p4

    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Landroidx/picker/widget/V;->a()V

    goto/16 :goto_0

    :cond_2
    iget v1, p0, Landroidx/picker/widget/V;->e:I

    if-ne v1, v0, :cond_a

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ne v1, p3, :cond_3

    iget-object p1, p2, Landroidx/picker/widget/W;->E:[Landroid/widget/EditText;

    aget-object p1, p1, p4

    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Landroidx/picker/widget/V;->a()V

    goto/16 :goto_0

    :cond_3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p3

    if-lez p3, :cond_a

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroidx/picker/widget/V;->b(Ljava/lang/String;)I

    move-result p1

    const/4 p3, 0x6

    if-lt p1, p3, :cond_4

    const/16 p3, 0x9

    if-gt p1, p3, :cond_4

    iget-object p1, p2, Landroidx/picker/widget/W;->E:[Landroid/widget/EditText;

    aget-object p1, p1, p4

    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result p1

    if-eqz p1, :cond_a

    iput-boolean v0, p2, Landroidx/picker/widget/W;->g:Z

    invoke-virtual {p0}, Landroidx/picker/widget/V;->a()V

    goto :goto_0

    :cond_4
    iget-boolean p0, p2, Landroidx/picker/widget/W;->g:Z

    const/4 p3, 0x0

    if-eqz p0, :cond_6

    const/4 p0, 0x5

    if-eq p1, p0, :cond_5

    if-nez p1, :cond_6

    :cond_5
    iput-boolean p3, p2, Landroidx/picker/widget/W;->g:Z

    iput-boolean v0, p2, Landroidx/picker/widget/W;->h:Z

    goto :goto_0

    :cond_6
    iput-boolean p3, p2, Landroidx/picker/widget/W;->g:Z

    iput-boolean p3, p2, Landroidx/picker/widget/W;->h:Z

    goto :goto_0

    :cond_7
    iget v1, p0, Landroidx/picker/widget/V;->e:I

    if-ne v1, v0, :cond_a

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ne v1, p3, :cond_8

    iget-object p1, p2, Landroidx/picker/widget/W;->E:[Landroid/widget/EditText;

    aget-object p1, p1, p4

    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Landroidx/picker/widget/V;->a()V

    goto :goto_0

    :cond_8
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_a

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroidx/picker/widget/V;->b(Ljava/lang/String;)I

    move-result p1

    if-gt p1, p3, :cond_9

    if-le p1, v0, :cond_a

    iget-boolean p1, p2, Landroidx/picker/widget/W;->e:Z

    if-nez p1, :cond_a

    :cond_9
    iget-object p1, p2, Landroidx/picker/widget/W;->E:[Landroid/widget/EditText;

    aget-object p1, p1, p4

    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Landroidx/picker/widget/V;->a()V

    :cond_a
    :goto_0
    return-void
.end method
