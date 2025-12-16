.class public final LC0/p;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lo/b;

.field public final synthetic b:LC0/t;


# direct methods
.method public constructor <init>(LC0/t;Lo/b;)V
    .locals 0

    iput-object p1, p0, LC0/p;->b:LC0/t;

    iput-object p2, p0, LC0/p;->a:Lo/b;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, LC0/p;->a:Lo/b;

    invoke-virtual {v0, p1}, Lo/k;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, LC0/p;->b:LC0/t;

    iget-object p0, p0, LC0/t;->o:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, LC0/p;->b:LC0/t;

    iget-object p0, p0, LC0/t;->o:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
