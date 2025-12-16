.class public final Lr4/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/k;
.implements Lr4/c;


# static fields
.field public static final a:Lr4/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lr4/d;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lr4/d;->a:Lr4/d;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Lr4/k;
    .locals 0

    sget-object p0, Lr4/d;->a:Lr4/d;

    return-object p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 0

    sget-object p0, LR2/t;->c:LR2/t;

    return-object p0
.end method
