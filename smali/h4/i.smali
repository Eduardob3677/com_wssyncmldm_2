.class public abstract Lh4/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:[Li3/o;

.field public static final b:Lcom/google/android/gms/internal/firebase-auth-api/Z3;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ld3/n;

    sget-object v1, Ld3/q;->a:Ld3/r;

    const-class v2, Lh4/i;

    const-string v3, "descriptors"

    invoke-virtual {v1, v2, v3}, Ld3/r;->c(Ljava/lang/Class;Ljava/lang/String;)Li3/e;

    move-result-object v2

    const-string v3, "annotationsAttribute"

    const-string v4, "getAnnotationsAttribute(Lorg/jetbrains/kotlin/types/TypeAttributes;)Lorg/jetbrains/kotlin/types/AnnotationsTypeAttribute;"

    invoke-direct {v0, v2, v3, v4}, Ld3/n;-><init>(Li3/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ld3/r;->e(Ld3/n;)Li3/n;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Li3/o;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    sput-object v2, Lh4/i;->a:[Li3/o;

    sget-object v0, Lh4/G;->d:Le/v;

    const-class v2, Lh4/h;

    invoke-virtual {v1, v2}, Ld3/r;->b(Ljava/lang/Class;)Li3/c;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/google/android/gms/internal/firebase-auth-api/Z3;

    invoke-virtual {v0, v1}, Le/v;->p(Li3/c;)I

    move-result v0

    invoke-direct {v2, v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/Z3;-><init>(Li3/c;I)V

    sput-object v2, Lh4/i;->b:Lcom/google/android/gms/internal/firebase-auth-api/Z3;

    return-void
.end method

.method public static final a(Lh4/G;)Ls3/h;
    .locals 3

    const-string v0, "<this>"

    invoke-static {v0, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lh4/i;->a:[Li3/o;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    sget-object v1, Lh4/i;->b:Lcom/google/android/gms/internal/firebase-auth-api/Z3;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "property"

    invoke-static {v2, v0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Ln4/d;->c:Ln4/a;

    iget v0, v1, Lcom/google/android/gms/internal/firebase-auth-api/Z3;->a:I

    invoke-virtual {p0, v0}, Ln4/a;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lh4/h;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lh4/h;->a:Ls3/h;

    if-nez p0, :cond_1

    :cond_0
    sget-object p0, Ls3/g;->a:Ls3/f;

    :cond_1
    return-object p0
.end method
