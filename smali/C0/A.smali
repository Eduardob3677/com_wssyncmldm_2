.class public abstract LC0/A;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LC0/c;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, LC0/c;

    const-class v1, Ljava/lang/Float;

    const-string v2, "translationAlpha"

    const/4 v3, 0x5

    invoke-direct {v0, v2, v3, v1}, LC0/c;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, LC0/A;->a:LC0/c;

    new-instance v0, LC0/c;

    const-class v1, Landroid/graphics/Rect;

    const-string v2, "clipBounds"

    const/4 v3, 0x6

    invoke-direct {v0, v2, v3, v1}, LC0/c;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    return-void
.end method
