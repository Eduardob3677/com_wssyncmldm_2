.class public enum LA3/H;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum d:LA3/H;

.field public static final enum e:LA3/H;

.field public static final enum f:LA3/H;

.field public static final enum g:LA3/G;

.field public static final synthetic h:[LA3/H;


# instance fields
.field public final c:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v0, 0x3

    new-instance v1, LA3/H;

    const-string v2, "NULL"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, LA3/H;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v1, LA3/H;->d:LA3/H;

    new-instance v2, LA3/H;

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "INDEX"

    const/4 v7, 0x1

    invoke-direct {v2, v6, v7, v5}, LA3/H;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v2, LA3/H;->e:LA3/H;

    new-instance v5, LA3/H;

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v8, "FALSE"

    const/4 v9, 0x2

    invoke-direct {v5, v8, v9, v6}, LA3/H;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v5, LA3/H;->f:LA3/H;

    new-instance v6, LA3/G;

    const-string v8, "MAP_GET_OR_DEFAULT"

    invoke-direct {v6, v8, v0, v4}, LA3/H;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v6, LA3/H;->g:LA3/G;

    const/4 v4, 0x4

    new-array v4, v4, [LA3/H;

    aput-object v1, v4, v3

    aput-object v2, v4, v7

    aput-object v5, v4, v9

    aput-object v6, v4, v0

    sput-object v4, LA3/H;->h:[LA3/H;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, LA3/H;->c:Ljava/lang/Object;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LA3/H;
    .locals 1

    const-class v0, LA3/H;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LA3/H;

    return-object p0
.end method

.method public static values()[LA3/H;
    .locals 1

    sget-object v0, LA3/H;->h:[LA3/H;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LA3/H;

    return-object v0
.end method
