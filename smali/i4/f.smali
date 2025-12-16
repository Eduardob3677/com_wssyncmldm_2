.class public final Li4/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Li4/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Li4/f;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Li4/f;->a:Li4/f;

    return-void
.end method


# virtual methods
.method public final a(Lk4/c;)Lh4/v;
    .locals 0

    const-string p0, "type"

    invoke-static {p0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p1, Lh4/v;

    return-object p1
.end method
