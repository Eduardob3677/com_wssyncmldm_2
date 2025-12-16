.class public final LA3/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LA3/n;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LA3/n;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LA3/n;->a:LA3/n;

    return-void
.end method

.method public static final a(LA3/n;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)LA3/F;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, LA3/F;

    invoke-static {p2}, LQ3/f;->e(Ljava/lang/String;)LQ3/f;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x28

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x29

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "internalName"

    invoke-static {p3, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p3, "jvmDescriptor"

    invoke-static {p3, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2e

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, LA3/F;-><init>(LQ3/f;Ljava/lang/String;)V

    return-object p0
.end method
