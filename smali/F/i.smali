.class public final LF/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:LF/i;


# instance fields
.field public final a:LF/j;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/util/Locale;

    invoke-static {v0}, LF/h;->a([Ljava/util/Locale;)Landroid/os/LocaleList;

    move-result-object v0

    new-instance v1, LF/i;

    new-instance v2, LF/j;

    invoke-direct {v2, v0}, LF/j;-><init>(Ljava/lang/Object;)V

    invoke-direct {v1, v2}, LF/i;-><init>(LF/j;)V

    sput-object v1, LF/i;->b:LF/i;

    return-void
.end method

.method public constructor <init>(LF/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LF/i;->a:LF/j;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, LF/i;

    if-eqz v0, :cond_0

    check-cast p1, LF/i;

    iget-object p1, p1, LF/i;->a:LF/j;

    iget-object p0, p0, LF/i;->a:LF/j;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, LF/i;->a:LF/j;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LF/i;->a:LF/j;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
