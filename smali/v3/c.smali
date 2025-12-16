.class public final Lv3/c;
.super Lr3/f0;
.source "SourceFile"


# static fields
.field public static final c:Lv3/c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lv3/c;

    const-string v1, "protected_static"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lr3/f0;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lv3/c;->c:Lv3/c;

    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 0

    const-string p0, "protected/*protected static*/"

    return-object p0
.end method

.method public final c()Lr3/f0;
    .locals 0

    sget-object p0, Lr3/b0;->c:Lr3/b0;

    return-object p0
.end method
