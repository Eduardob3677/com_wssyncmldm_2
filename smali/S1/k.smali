.class public final LS1/k;
.super LJ1/l;
.source "SourceFile"


# instance fields
.field public final synthetic c:LS1/n;


# direct methods
.method public constructor <init>(LS1/n;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LS1/k;->c:LS1/n;

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    iget-object p0, p0, LS1/k;->c:LS1/n;

    invoke-virtual {p0}, LS1/n;->b()LS1/o;

    move-result-object p0

    invoke-virtual {p0}, LS1/o;->a()V

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    iget-object p0, p0, LS1/k;->c:LS1/n;

    invoke-virtual {p0}, LS1/n;->b()LS1/o;

    move-result-object p0

    invoke-virtual {p0}, LS1/o;->b()V

    return-void
.end method
