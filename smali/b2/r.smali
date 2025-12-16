.class public final Lb2/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk2/a;


# static fields
.field public static final c:LE2/a;

.field public static final d:Lb2/h;


# instance fields
.field public a:LE2/a;

.field public volatile b:Lk2/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LE2/a;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, LE2/a;-><init>(I)V

    sput-object v0, Lb2/r;->c:LE2/a;

    new-instance v0, Lb2/h;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lb2/h;-><init>(I)V

    sput-object v0, Lb2/r;->d:Lb2/h;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lb2/r;->b:Lk2/a;

    invoke-interface {p0}, Lk2/a;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
