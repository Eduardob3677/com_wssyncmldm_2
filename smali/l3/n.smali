.class public final Ll3/n;
.super Ll3/r0;
.source "SourceFile"


# instance fields
.field public final d:Ll3/j;

.field public final e:Ll3/j;


# direct methods
.method public constructor <init>(Ll3/j;Ll3/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll3/n;->d:Ll3/j;

    iput-object p2, p0, Ll3/n;->e:Ll3/j;

    return-void
.end method


# virtual methods
.method public final e()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ll3/n;->d:Ll3/j;

    iget-object p0, p0, Ll3/j;->e:Ljava/lang/String;

    return-object p0
.end method
