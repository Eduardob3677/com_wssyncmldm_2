.class public final enum Landroidx/lifecycle/q;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum c:Landroidx/lifecycle/q;

.field public static final enum d:Landroidx/lifecycle/q;

.field public static final enum e:Landroidx/lifecycle/q;

.field public static final enum f:Landroidx/lifecycle/q;

.field public static final enum g:Landroidx/lifecycle/q;

.field public static final synthetic h:[Landroidx/lifecycle/q;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Landroidx/lifecycle/q;

    const-string v1, "DESTROYED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/lifecycle/q;->c:Landroidx/lifecycle/q;

    new-instance v1, Landroidx/lifecycle/q;

    const-string v2, "INITIALIZED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroidx/lifecycle/q;->d:Landroidx/lifecycle/q;

    new-instance v2, Landroidx/lifecycle/q;

    const-string v3, "CREATED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Landroidx/lifecycle/q;->e:Landroidx/lifecycle/q;

    new-instance v3, Landroidx/lifecycle/q;

    const-string v4, "STARTED"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroidx/lifecycle/q;->f:Landroidx/lifecycle/q;

    new-instance v4, Landroidx/lifecycle/q;

    const-string v5, "RESUMED"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Landroidx/lifecycle/q;->g:Landroidx/lifecycle/q;

    filled-new-array {v0, v1, v2, v3, v4}, [Landroidx/lifecycle/q;

    move-result-object v0

    sput-object v0, Landroidx/lifecycle/q;->h:[Landroidx/lifecycle/q;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/lifecycle/q;
    .locals 1

    const-class v0, Landroidx/lifecycle/q;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/q;

    return-object p0
.end method

.method public static values()[Landroidx/lifecycle/q;
    .locals 1

    sget-object v0, Landroidx/lifecycle/q;->h:[Landroidx/lifecycle/q;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/lifecycle/q;

    return-object v0
.end method


# virtual methods
.method public final a(Landroidx/lifecycle/q;)Z
    .locals 0

    invoke-virtual {p0, p1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
