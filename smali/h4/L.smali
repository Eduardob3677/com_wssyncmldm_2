.class public abstract Lh4/L;
.super Lh4/S;
.source "SourceFile"


# static fields
.field public static final b:Lh4/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lh4/d;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lh4/L;->b:Lh4/d;

    return-void
.end method


# virtual methods
.method public final d(Lh4/v;)Lh4/N;
    .locals 0

    invoke-virtual {p1}, Lh4/v;->J0()Lh4/J;

    move-result-object p1

    invoke-virtual {p0, p1}, Lh4/L;->g(Lh4/J;)Lh4/N;

    move-result-object p0

    return-object p0
.end method

.method public abstract g(Lh4/J;)Lh4/N;
.end method
