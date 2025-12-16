.class public final LD3/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD3/g;


# static fields
.field public static final a:LD3/b;

.field public static final b:LD3/b;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, LD3/b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LD3/b;->a:LD3/b;

    new-instance v0, LD3/b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LD3/b;->b:LD3/b;

    return-void
.end method


# virtual methods
.method public a(Lx3/C;)Lr3/Q;
    .locals 0

    const-string p0, "javaTypeParameter"

    invoke-static {p0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method
