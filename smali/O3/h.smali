.class public final enum LO3/h;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements LR3/r;


# static fields
.field public static final enum d:LO3/h;

.field public static final enum e:LO3/h;

.field public static final enum f:LO3/h;

.field public static final synthetic g:[LO3/h;


# instance fields
.field public final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, LO3/h;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, LO3/h;-><init>(Ljava/lang/String;II)V

    sput-object v0, LO3/h;->d:LO3/h;

    new-instance v1, LO3/h;

    const-string v2, "INTERNAL_TO_CLASS_ID"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, LO3/h;-><init>(Ljava/lang/String;II)V

    sput-object v1, LO3/h;->e:LO3/h;

    new-instance v2, LO3/h;

    const-string v3, "DESC_TO_CLASS_ID"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, LO3/h;-><init>(Ljava/lang/String;II)V

    sput-object v2, LO3/h;->f:LO3/h;

    filled-new-array {v0, v1, v2}, [LO3/h;

    move-result-object v0

    sput-object v0, LO3/h;->g:[LO3/h;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, LO3/h;->c:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LO3/h;
    .locals 1

    const-class v0, LO3/h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LO3/h;

    return-object p0
.end method

.method public static values()[LO3/h;
    .locals 1

    sget-object v0, LO3/h;->g:[LO3/h;

    invoke-virtual {v0}, [LO3/h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LO3/h;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget p0, p0, LO3/h;->c:I

    return p0
.end method
