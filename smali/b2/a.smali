.class public final synthetic Lb2/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb2/f;


# instance fields
.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lb2/a;->c:I

    iput-object p2, p0, Lb2/a;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final m(Lb2/t;)Ljava/lang/Object;
    .locals 0

    iget p1, p0, Lb2/a;->c:I

    iget-object p0, p0, Lb2/a;->d:Ljava/lang/Object;

    return-object p0
.end method
