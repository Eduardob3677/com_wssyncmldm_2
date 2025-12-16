.class public final LK/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final e:LK/c;

.field public static final f:LK/c;

.field public static final g:LK/c;

.field public static final h:LK/c;

.field public static final i:LK/c;

.field public static final j:LK/c;

.field public static final k:LK/c;

.field public static final l:LK/c;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:I

.field public final c:Ljava/lang/Class;

.field public final d:LK/r;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    new-instance v0, LK/c;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, LK/c;-><init>(I)V

    new-instance v0, LK/c;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, LK/c;-><init>(I)V

    new-instance v0, LK/c;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, LK/c;-><init>(I)V

    new-instance v0, LK/c;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, LK/c;-><init>(I)V

    new-instance v0, LK/c;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, LK/c;-><init>(I)V

    sput-object v0, LK/c;->e:LK/c;

    new-instance v0, LK/c;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, LK/c;-><init>(I)V

    new-instance v0, LK/c;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, LK/c;-><init>(I)V

    new-instance v0, LK/c;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, LK/c;-><init>(I)V

    new-instance v0, LK/c;

    const/16 v1, 0x100

    const-class v2, LK/k;

    invoke-direct {v0, v1, v2}, LK/c;-><init>(ILjava/lang/Class;)V

    new-instance v0, LK/c;

    const/16 v1, 0x200

    invoke-direct {v0, v1, v2}, LK/c;-><init>(ILjava/lang/Class;)V

    new-instance v0, LK/c;

    const/16 v1, 0x400

    const-class v2, LK/l;

    invoke-direct {v0, v1, v2}, LK/c;-><init>(ILjava/lang/Class;)V

    new-instance v0, LK/c;

    const/16 v1, 0x800

    invoke-direct {v0, v1, v2}, LK/c;-><init>(ILjava/lang/Class;)V

    new-instance v0, LK/c;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, LK/c;-><init>(I)V

    sput-object v0, LK/c;->f:LK/c;

    new-instance v0, LK/c;

    const/16 v1, 0x2000

    invoke-direct {v0, v1}, LK/c;-><init>(I)V

    sput-object v0, LK/c;->g:LK/c;

    new-instance v0, LK/c;

    const/16 v1, 0x4000

    invoke-direct {v0, v1}, LK/c;-><init>(I)V

    new-instance v0, LK/c;

    const v1, 0x8000

    invoke-direct {v0, v1}, LK/c;-><init>(I)V

    new-instance v0, LK/c;

    const/high16 v1, 0x10000

    invoke-direct {v0, v1}, LK/c;-><init>(I)V

    new-instance v0, LK/c;

    const/high16 v1, 0x20000

    const-class v2, LK/p;

    invoke-direct {v0, v1, v2}, LK/c;-><init>(ILjava/lang/Class;)V

    new-instance v0, LK/c;

    const/high16 v1, 0x40000

    invoke-direct {v0, v1}, LK/c;-><init>(I)V

    sput-object v0, LK/c;->h:LK/c;

    new-instance v0, LK/c;

    const/high16 v1, 0x80000

    invoke-direct {v0, v1}, LK/c;-><init>(I)V

    sput-object v0, LK/c;->i:LK/c;

    new-instance v0, LK/c;

    const/high16 v1, 0x100000

    invoke-direct {v0, v1}, LK/c;-><init>(I)V

    sput-object v0, LK/c;->j:LK/c;

    new-instance v0, LK/c;

    const/high16 v1, 0x200000

    const-class v2, LK/q;

    invoke-direct {v0, v1, v2}, LK/c;-><init>(ILjava/lang/Class;)V

    new-instance v3, LK/c;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sget-object v4, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SHOW_ON_SCREEN:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const v5, 0x1020036

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v8}, LK/c;-><init>(Ljava/lang/Object;ILjava/lang/String;LK/r;Ljava/lang/Class;)V

    new-instance v9, LK/c;

    sget-object v10, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_TO_POSITION:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const v11, 0x1020037

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-class v14, LK/n;

    invoke-direct/range {v9 .. v14}, LK/c;-><init>(Ljava/lang/Object;ILjava/lang/String;LK/r;Ljava/lang/Class;)V

    new-instance v7, LK/c;

    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_UP:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const v3, 0x1020038

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, LK/c;-><init>(Ljava/lang/Object;ILjava/lang/String;LK/r;Ljava/lang/Class;)V

    sput-object v7, LK/c;->k:LK/c;

    new-instance v8, LK/c;

    sget-object v9, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_LEFT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const v10, 0x1020039

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v8 .. v13}, LK/c;-><init>(Ljava/lang/Object;ILjava/lang/String;LK/r;Ljava/lang/Class;)V

    new-instance v7, LK/c;

    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_DOWN:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const v3, 0x102003a

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, LK/c;-><init>(Ljava/lang/Object;ILjava/lang/String;LK/r;Ljava/lang/Class;)V

    sput-object v7, LK/c;->l:LK/c;

    new-instance v8, LK/c;

    sget-object v9, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_RIGHT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const v10, 0x102003b

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v8 .. v13}, LK/c;-><init>(Ljava/lang/Object;ILjava/lang/String;LK/r;Ljava/lang/Class;)V

    new-instance v1, LK/c;

    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_PAGE_UP:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const v3, 0x1020046

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, LK/c;-><init>(Ljava/lang/Object;ILjava/lang/String;LK/r;Ljava/lang/Class;)V

    new-instance v7, LK/c;

    sget-object v8, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_PAGE_DOWN:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const v9, 0x1020047

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v7 .. v12}, LK/c;-><init>(Ljava/lang/Object;ILjava/lang/String;LK/r;Ljava/lang/Class;)V

    new-instance v1, LK/c;

    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_PAGE_LEFT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const v3, 0x1020048

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, LK/c;-><init>(Ljava/lang/Object;ILjava/lang/String;LK/r;Ljava/lang/Class;)V

    new-instance v7, LK/c;

    sget-object v8, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_PAGE_RIGHT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const v9, 0x1020049

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v7 .. v12}, LK/c;-><init>(Ljava/lang/Object;ILjava/lang/String;LK/r;Ljava/lang/Class;)V

    new-instance v1, LK/c;

    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CONTEXT_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const v3, 0x102003c

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, LK/c;-><init>(Ljava/lang/Object;ILjava/lang/String;LK/r;Ljava/lang/Class;)V

    new-instance v7, LK/c;

    sget-object v8, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SET_PROGRESS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const v9, 0x102003d

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-class v12, LK/o;

    invoke-direct/range {v7 .. v12}, LK/c;-><init>(Ljava/lang/Object;ILjava/lang/String;LK/r;Ljava/lang/Class;)V

    new-instance v1, LK/c;

    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_MOVE_WINDOW:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const v3, 0x1020042

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-class v6, LK/m;

    invoke-direct/range {v1 .. v6}, LK/c;-><init>(Ljava/lang/Object;ILjava/lang/String;LK/r;Ljava/lang/Class;)V

    new-instance v7, LK/c;

    sget-object v8, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SHOW_TOOLTIP:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const v9, 0x1020044

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v7 .. v12}, LK/c;-><init>(Ljava/lang/Object;ILjava/lang/String;LK/r;Ljava/lang/Class;)V

    new-instance v1, LK/c;

    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_HIDE_TOOLTIP:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const v3, 0x1020045

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, LK/c;-><init>(Ljava/lang/Object;ILjava/lang/String;LK/r;Ljava/lang/Class;)V

    new-instance v7, LK/c;

    sget-object v8, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_PRESS_AND_HOLD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const v9, 0x102004a

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v7 .. v12}, LK/c;-><init>(Ljava/lang/Object;ILjava/lang/String;LK/r;Ljava/lang/Class;)V

    new-instance v1, LK/c;

    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_IME_ENTER:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const v3, 0x1020054

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, LK/c;-><init>(Ljava/lang/Object;ILjava/lang/String;LK/r;Ljava/lang/Class;)V

    new-instance v7, LK/c;

    sget-object v8, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_DRAG_START:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const v9, 0x1020055

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v7 .. v12}, LK/c;-><init>(Ljava/lang/Object;ILjava/lang/String;LK/r;Ljava/lang/Class;)V

    new-instance v1, LK/c;

    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_DRAG_DROP:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const v3, 0x1020056

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, LK/c;-><init>(Ljava/lang/Object;ILjava/lang/String;LK/r;Ljava/lang/Class;)V

    new-instance v7, LK/c;

    sget-object v8, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_DRAG_CANCEL:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const v9, 0x1020057

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v7 .. v12}, LK/c;-><init>(Ljava/lang/Object;ILjava/lang/String;LK/r;Ljava/lang/Class;)V

    new-instance v1, LK/c;

    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SHOW_TEXT_SUGGESTIONS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const v3, 0x1020058

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, LK/c;-><init>(Ljava/lang/Object;ILjava/lang/String;LK/r;Ljava/lang/Class;)V

    new-instance v7, LK/c;

    const/16 v1, 0x22

    if-lt v0, v1, :cond_0

    invoke-static {}, LK/f;->a()Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    move-result-object v0

    :goto_0
    move-object v8, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    const v9, 0x102005e

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v7 .. v12}, LK/c;-><init>(Ljava/lang/Object;ILjava/lang/String;LK/r;Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 6

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v2, p1

    invoke-direct/range {v0 .. v5}, LK/c;-><init>(Ljava/lang/Object;ILjava/lang/String;LK/r;Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/Class;)V
    .locals 6

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, LK/c;-><init>(Ljava/lang/Object;ILjava/lang/String;LK/r;Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;ILjava/lang/String;LK/r;Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, LK/c;->b:I

    iput-object p4, p0, LK/c;->d:LK/r;

    if-nez p1, :cond_0

    new-instance p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-direct {p1, p2, p3}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    iput-object p1, p0, LK/c;->a:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iput-object p1, p0, LK/c;->a:Ljava/lang/Object;

    :goto_0
    iput-object p5, p0, LK/c;->c:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget-object p0, p0, LK/c;->a:Ljava/lang/Object;

    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    move-result p0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, LK/c;

    if-nez v1, :cond_1

    return v0

    :cond_1
    check-cast p1, LK/c;

    iget-object p1, p1, LK/c;->a:Ljava/lang/Object;

    iget-object p0, p0, LK/c;->a:Ljava/lang/Object;

    if-nez p0, :cond_2

    if-eqz p1, :cond_3

    return v0

    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, LK/c;->a:Ljava/lang/Object;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AccessibilityActionCompat: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, LK/c;->b:I

    invoke-static {v1}, LK/h;->d(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ACTION_UNKNOWN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p0, p0, LK/c;->a:Ljava/lang/Object;

    move-object v2, p0

    check-cast v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getLabel()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_0

    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getLabel()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
