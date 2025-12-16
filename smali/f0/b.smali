.class public final Lf0/b;
.super Le/k;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroidx/picker/widget/S;


# instance fields
.field public final i:Landroidx/picker/widget/SeslTimePicker;

.field public final j:LA2/b;

.field public final k:Lf0/a;

.field public final l:Landroid/view/inputmethod/InputMethodManager;

.field public m:Z


# direct methods
.method public constructor <init>(Landroidx/fragment/app/G;LA2/b;IIZ)V
    .locals 3

    invoke-static {p1}, LW1/a;->S(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f14030d

    goto :goto_0

    :cond_0
    const v0, 0x7f140311

    :goto_0
    invoke-direct {p0, p1, v0}, Le/k;-><init>(Landroid/content/Context;I)V

    new-instance p1, Lf0/a;

    invoke-direct {p1, p0}, Lf0/a;-><init>(Lf0/b;)V

    iput-object p1, p0, Lf0/b;->k:Lf0/a;

    iput-object p2, p0, Lf0/b;->j:LA2/b;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d00c5

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    iget-object v0, p0, Le/k;->h:Le/i;

    iput-object p2, v0, Le/i;->h:Landroid/view/View;

    const/4 v1, 0x0

    iput v1, v0, Le/i;->i:I

    iput-boolean v1, v0, Le/i;->j:Z

    const v0, 0x7f1301cc

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Le/k;->h:Le/i;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0, p0}, Le/i;->d(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const v0, 0x7f1301cb

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Le/k;->h:Le/i;

    const/4 v1, -0x2

    invoke-virtual {v0, v1, p1, p0}, Le/i;->d(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const p1, 0x7f0a028d

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/picker/widget/SeslTimePicker;

    iput-object p1, p0, Lf0/b;->i:Landroidx/picker/widget/SeslTimePicker;

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/picker/widget/SeslTimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    invoke-virtual {p1, p3}, Landroidx/picker/widget/SeslTimePicker;->setHour(I)V

    invoke-virtual {p1, p4}, Landroidx/picker/widget/SeslTimePicker;->setMinute(I)V

    invoke-virtual {p1, p0}, Landroidx/picker/widget/SeslTimePicker;->setOnTimeChangedListener(Landroidx/picker/widget/S;)V

    const p1, 0x7f1301ef

    invoke-virtual {p0, p1}, Le/k;->setTitle(I)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "input_method"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    iput-object p1, p0, Lf0/b;->l:Landroid/view/inputmethod/InputMethodManager;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 p1, -0x2

    const/4 v0, 0x0

    iget-object v1, p0, Lf0/b;->l:Landroid/view/inputmethod/InputMethodManager;

    if-eq p2, p1, :cond_4

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lf0/b;->m:Z

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lf0/b;->j:LA2/b;

    if-eqz p1, :cond_2

    iget-object p2, p0, Lf0/b;->i:Landroidx/picker/widget/SeslTimePicker;

    invoke-virtual {p2}, Landroid/view/View;->clearFocus()V

    invoke-virtual {p2}, Landroidx/picker/widget/SeslTimePicker;->getHour()I

    move-result v2

    invoke-virtual {p2}, Landroidx/picker/widget/SeslTimePicker;->getMinute()I

    move-result v3

    iget-object p1, p1, LA2/b;->d:Ljava/lang/Object;

    check-cast p1, Lcom/idm/fotaagent/enabler/ui/postpone/PostponeDialog;

    invoke-static {p1, p2, v2, v3}, Lcom/idm/fotaagent/enabler/ui/postpone/PostponeDialog;->j(Lcom/idm/fotaagent/enabler/ui/postpone/PostponeDialog;Landroidx/picker/widget/SeslTimePicker;II)V

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_3
    invoke-virtual {p0}, Le/k;->dismiss()V

    goto :goto_0

    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_5
    invoke-virtual {p0}, Landroid/app/Dialog;->cancel()V

    :goto_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 7

    invoke-super {p0, p1}, Le/k;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Le/k;->d(I)Landroid/widget/Button;

    move-result-object p1

    iget-object v0, p0, Lf0/b;->k:Lf0/a;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    const/4 p1, -0x2

    invoke-virtual {p0, p1}, Le/k;->d(I)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lf0/b;->m:Z

    new-instance p1, Lc1/w;

    invoke-direct {p1, p0}, Lc1/w;-><init>(Ljava/lang/Object;)V

    iget-object p0, p0, Lf0/b;->i:Landroidx/picker/widget/SeslTimePicker;

    iget-object p0, p0, Landroidx/picker/widget/SeslTimePicker;->c:Landroidx/picker/widget/W;

    iget-object v0, p0, Landroidx/picker/widget/W;->c:Ljava/util/Locale;

    const-string v1, "hm"

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x189

    const/16 v2, 0x152

    const/16 v3, 0x11b

    iget-object v4, p0, Landroidx/picker/widget/W;->j:Landroidx/picker/widget/SeslNumberPicker;

    iget-object v5, p0, Landroidx/picker/widget/W;->i:Landroidx/picker/widget/SeslNumberPicker;

    iget-object p0, p0, Landroidx/picker/widget/W;->k:Landroidx/picker/widget/SeslNumberPicker;

    const/4 v6, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v3, v6}, Landroidx/picker/widget/SeslNumberPicker;->b(ILc1/w;)V

    invoke-virtual {v5, v2, v6}, Landroidx/picker/widget/SeslNumberPicker;->b(ILc1/w;)V

    invoke-virtual {v4, v1, p1}, Landroidx/picker/widget/SeslNumberPicker;->b(ILc1/w;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v5, v3, v6}, Landroidx/picker/widget/SeslNumberPicker;->b(ILc1/w;)V

    invoke-virtual {v4, v2, p1}, Landroidx/picker/widget/SeslNumberPicker;->b(ILc1/w;)V

    invoke-virtual {p0, v1, v6}, Landroidx/picker/widget/SeslNumberPicker;->b(ILc1/w;)V

    :goto_0
    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string v0, "hour"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "minute"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "is24hour"

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iget-object p0, p0, Lf0/b;->i:Landroidx/picker/widget/SeslTimePicker;

    invoke-virtual {p0, p1}, Landroidx/picker/widget/SeslTimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    invoke-virtual {p0, v0}, Landroidx/picker/widget/SeslTimePicker;->setHour(I)V

    invoke-virtual {p0, v1}, Landroidx/picker/widget/SeslTimePicker;->setMinute(I)V

    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    invoke-super {p0}, Landroidx/activity/l;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    iget-object p0, p0, Lf0/b;->i:Landroidx/picker/widget/SeslTimePicker;

    invoke-virtual {p0}, Landroidx/picker/widget/SeslTimePicker;->getHour()I

    move-result v1

    const-string v2, "hour"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "minute"

    invoke-virtual {p0}, Landroidx/picker/widget/SeslTimePicker;->getMinute()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object p0, p0, Landroidx/picker/widget/SeslTimePicker;->c:Landroidx/picker/widget/W;

    iget-boolean p0, p0, Landroidx/picker/widget/W;->e:Z

    const-string v1, "is24hour"

    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method
