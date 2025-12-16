.class public final Landroidx/appcompat/widget/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public final synthetic c:Landroidx/appcompat/widget/SearchView;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/SearchView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/widget/b;->c:Landroidx/appcompat/widget/SearchView;

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 7

    iget-object p0, p0, Landroidx/appcompat/widget/b;->c:Landroidx/appcompat/widget/SearchView;

    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->k0:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.folder_type"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "input_method"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    const/16 v2, 0x17

    if-ne p2, v2, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/inputmethod/InputMethodManager;->viewClicked(Landroid/view/View;)V

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->h0:Landroid/app/SearchableInfo;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->r:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v3

    const/16 v4, 0xa0

    const/16 v5, 0x42

    if-eqz v3, :cond_a

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getListSelection()I

    move-result v3

    const/4 v6, -0x1

    if-eq v3, v6, :cond_a

    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->h0:Landroid/app/SearchableInfo;

    if-nez p1, :cond_3

    :cond_2
    :goto_0
    move v1, v2

    goto :goto_4

    :cond_3
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->R:LP/b;

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result p1

    if-eqz p1, :cond_2

    if-eq p2, v5, :cond_9

    const/16 p1, 0x54

    if-eq p2, p1, :cond_9

    const/16 p1, 0x3d

    if-eq p2, p1, :cond_9

    if-ne p2, v4, :cond_5

    goto :goto_3

    :cond_5
    const/16 p0, 0x15

    if-eq p2, p0, :cond_7

    const/16 p1, 0x16

    if-ne p2, p1, :cond_6

    goto :goto_1

    :cond_6
    const/16 p0, 0x13

    if-ne p2, p0, :cond_2

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getListSelection()I

    goto :goto_0

    :cond_7
    :goto_1
    if-ne p2, p0, :cond_8

    move p0, v2

    goto :goto_2

    :cond_8
    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result p0

    :goto_2
    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setSelection(I)V

    invoke-virtual {v0, v2}, Landroid/widget/AutoCompleteTextView;->setListSelection(I)V

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->clearListSelection()V

    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->a()V

    goto :goto_4

    :cond_9
    :goto_3
    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getListSelection()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SearchView;->o(I)V

    :goto_4
    return v1

    :cond_a
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v3

    if-nez v3, :cond_b

    goto :goto_5

    :cond_b
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p3

    if-ne p3, v1, :cond_d

    if-eq p2, v5, :cond_c

    if-ne p2, v4, :cond_d

    :cond_c
    invoke-virtual {p1}, Landroid/view/View;->cancelLongPress()V

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const-string p3, "android.intent.action.SEARCH"

    invoke-virtual {p0, p3, p2, p2, p1}, Landroidx/appcompat/widget/SearchView;->l(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v1

    :cond_d
    :goto_5
    return v2
.end method
