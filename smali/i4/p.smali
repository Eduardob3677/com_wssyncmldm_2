.class public final Li4/p;
.super Li4/r;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "START"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final a(Lh4/Z;)Li4/r;
    .locals 0

    const-string p0, "nextType"

    invoke-static {p0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p1}, Li4/r;->b(Lh4/Z;)Li4/r;

    move-result-object p0

    return-object p0
.end method
