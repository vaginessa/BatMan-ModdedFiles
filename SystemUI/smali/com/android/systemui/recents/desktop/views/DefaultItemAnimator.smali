.class public Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;
.super Landroid/support/v7/widget/SimpleItemAnimator;
.source "DefaultItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$ChangeInfo;,
        Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$MoveInfo;,
        Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$VpaListenerAdapter;
    }
.end annotation


# instance fields
.field private mAddAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mAdditionsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;>;"
        }
    .end annotation
.end field

.field private mChangeAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mChangesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$ChangeInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mMoveAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mMovesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$MoveInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPendingAdditions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingChanges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$ChangeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingMoves:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$MoveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingRemovals:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mRemoveAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field removeViewOrigX:I

.field removeViewOrigY:I


# direct methods
.method static synthetic -get0(Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->animateAddImpl(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$ChangeInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->animateChangeImpl(Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$ChangeInfo;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;Landroid/support/v7/widget/RecyclerView$ViewHolder;IIII)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->animateMoveImpl(Landroid/support/v7/widget/RecyclerView$ViewHolder;IIII)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->dispatchFinishedWhenDone()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/widget/SimpleItemAnimator;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    return-void
.end method

.method private animateAddImpl(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 6

    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->getAddDuration()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$5;

    invoke-direct {v3, p0, p1, v0}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$5;-><init>(Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v4/view/ViewPropertyAnimatorCompat;)V

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    return-void
.end method

.method private animateChangeImpl(Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$ChangeInfo;)V
    .locals 11

    const/4 v10, 0x0

    iget-object v0, p1, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$ChangeInfo;->oldHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-nez v0, :cond_2

    const/4 v5, 0x0

    :goto_0
    iget-object v1, p1, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$ChangeInfo;->newHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-eqz v1, :cond_3

    iget-object v2, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    :goto_1
    if-eqz v5, :cond_0

    invoke-static {v5}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->getChangeDuration()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v4

    iget-object v6, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    iget-object v7, p1, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$ChangeInfo;->oldHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v6, p1, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$ChangeInfo;->toX:I

    iget v7, p1, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$ChangeInfo;->fromX:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationX(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    iget v6, p1, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$ChangeInfo;->toY:I

    iget v7, p1, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$ChangeInfo;->fromY:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-virtual {v4, v10}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v6

    new-instance v7, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$7;

    invoke-direct {v7, p0, p1, v4}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$7;-><init>(Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$ChangeInfo;Landroid/support/v4/view/ViewPropertyAnimatorCompat;)V

    invoke-virtual {v6, v7}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    :cond_0
    if-eqz v2, :cond_1

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v3

    iget-object v6, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    iget-object v7, p1, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$ChangeInfo;->newHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3, v10}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationX(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->getChangeDuration()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v6

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v6, v7}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v6

    new-instance v7, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$8;

    invoke-direct {v7, p0, p1, v3, v2}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$8;-><init>(Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$ChangeInfo;Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)V

    invoke-virtual {v6, v7}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    :cond_1
    return-void

    :cond_2
    iget-object v5, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private animateMoveImpl(Landroid/support/v7/widget/RecyclerView$ViewHolder;IIII)V
    .locals 8

    const/4 v1, 0x0

    iget-object v6, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sub-int v3, p4, p2

    sub-int v4, p5, p3

    if-eqz v3, :cond_0

    invoke-static {v6}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationX(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    :cond_0
    if-eqz v4, :cond_1

    invoke-static {v6}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    :cond_1
    invoke-static {v6}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v5

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->getMoveDuration()J

    move-result-wide v0

    invoke-virtual {v5, v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v7

    new-instance v0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$6;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$6;-><init>(Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;Landroid/support/v7/widget/RecyclerView$ViewHolder;IILandroid/support/v4/view/ViewPropertyAnimatorCompat;)V

    invoke-virtual {v7, v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    return-void
.end method

.method private animateRemoveImpl(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 4

    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v2, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->removeViewOrigX:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->removeViewOrigX:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->x(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    iget v2, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->removeViewOrigY:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->y(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->getRemoveDuration()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$4;

    invoke-direct {v3, p0, p1, v0}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$4;-><init>(Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v4/view/ViewPropertyAnimatorCompat;)V

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    return-void
.end method

.method private dispatchFinishedWhenDone()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->dispatchAnimationsFinished()V

    :cond_0
    return-void
.end method

.method private endChangeAnimation(Ljava/util/List;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$ChangeInfo;",
            ">;",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ")V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_0
    if-ltz v1, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$ChangeInfo;

    invoke-direct {p0, v0, p2}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->endChangeAnimationIfNecessary(Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$ChangeInfo;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$ChangeInfo;->oldHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$ChangeInfo;->newHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-nez v2, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private endChangeAnimationIfNecessary(Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$ChangeInfo;)V
    .locals 1

    iget-object v0, p1, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$ChangeInfo;->oldHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$ChangeInfo;->oldHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->endChangeAnimationIfNecessary(Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$ChangeInfo;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    :cond_0
    iget-object v0, p1, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$ChangeInfo;->newHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$ChangeInfo;->newHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->endChangeAnimationIfNecessary(Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$ChangeInfo;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    :cond_1
    return-void
.end method

.method private endChangeAnimationIfNecessary(Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$ChangeInfo;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 4

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x0

    iget-object v1, p1, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$ChangeInfo;->newHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-ne v1, p2, :cond_0

    iput-object v2, p1, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$ChangeInfo;->newHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    :goto_0
    iget-object v1, p2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    iget-object v1, p2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v1, v3}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    iget-object v1, p2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v1, v3}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    invoke-virtual {p0, p2, v0}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->dispatchChangeFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;Z)V

    const/4 v1, 0x1

    return v1

    :cond_0
    iget-object v1, p1, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$ChangeInfo;->oldHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-ne v1, p2, :cond_1

    iput-object v2, p1, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$ChangeInfo;->oldHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private resetAnimation(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 1

    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/animation/AnimatorCompatHelper;->clearInterpolator(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->endAnimation(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    return-void
.end method


# virtual methods
.method public animateAdd(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->resetAnimation(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    return v0
.end method

.method public animateChange(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;IIII)Z
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    if-ne v0, v1, :cond_0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->animateMove(Landroid/support/v7/widget/RecyclerView$ViewHolder;IIII)Z

    move-result v2

    return v2

    :cond_0
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->getTranslationX(Landroid/view/View;)F

    move-result v13

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->getTranslationY(Landroid/view/View;)F

    move-result v14

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->getAlpha(Landroid/view/View;)F

    move-result v12

    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->resetAnimation(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    sub-int v2, p5, p3

    int-to-float v2, v2

    sub-float/2addr v2, v13

    float-to-int v10, v2

    sub-int v2, p6, p4

    int-to-float v2, v2

    sub-float/2addr v2, v14

    float-to-int v11, v2

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v2, v13}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v2, v14}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v2, v12}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    if-eqz p2, :cond_1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->resetAnimation(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    neg-int v3, v10

    int-to-float v3, v3

    invoke-static {v2, v3}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    neg-int v3, v11

    int-to-float v3, v3

    invoke-static {v2, v3}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$ChangeInfo;

    const/4 v9, 0x0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-direct/range {v2 .. v9}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$ChangeInfo;-><init>(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;IIIILcom/android/systemui/recents/desktop/views/DefaultItemAnimator$ChangeInfo;)V

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    return v2
.end method

.method public animateMove(Landroid/support/v7/widget/RecyclerView$ViewHolder;IIII)Z
    .locals 11

    iget-object v9, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    int-to-float v0, p2

    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getTranslationX(Landroid/view/View;)F

    move-result v1

    add-float/2addr v0, v1

    float-to-int p2, v0

    int-to-float v0, p3

    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getTranslationY(Landroid/view/View;)F

    move-result v1

    add-float/2addr v0, v1

    float-to-int p3, v0

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->resetAnimation(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    sub-int v7, p4, p2

    sub-int v8, p5, p3

    if-nez v7, :cond_0

    if-nez v8, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->dispatchMoveFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    const/4 v0, 0x0

    return v0

    :cond_0
    if-eqz v7, :cond_1

    neg-int v0, v7

    int-to-float v0, v0

    invoke-static {v9, v0}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    :cond_1
    if-eqz v8, :cond_2

    neg-int v0, v8

    int-to-float v0, v0

    invoke-static {v9, v0}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    :cond_2
    iget-object v10, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$MoveInfo;

    const/4 v6, 0x0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$MoveInfo;-><init>(Landroid/support/v7/widget/RecyclerView$ViewHolder;IIIILcom/android/systemui/recents/desktop/views/DefaultItemAnimator$MoveInfo;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    return v0
.end method

.method public animateRemove(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->resetAnimation(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    return v0
.end method

.method public canReuseUpdatedViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/util/List;)Z
    .locals 1
    .param p1    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/SimpleItemAnimator;->canReuseUpdatedViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/util/List;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method cancelAll(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->cancel()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public endAnimation(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 10

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    iget-object v6, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v6}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->cancel()V

    iget-object v7, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v2, v7, -0x1

    :goto_0
    if-ltz v2, :cond_1

    iget-object v7, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$MoveInfo;

    iget-object v7, v4, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$MoveInfo;->holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-ne v7, p1, :cond_0

    invoke-static {v6, v8}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    invoke-static {v6, v8}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->dispatchMoveFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    iget-object v7, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    iget-object v7, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-direct {p0, v7, p1}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->endChangeAnimation(Ljava/util/List;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    iget-object v7, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {v6, v9}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->dispatchRemoveFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    :cond_2
    iget-object v7, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-static {v6, v9}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->dispatchAddFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    :cond_3
    iget-object v7, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v2, v7, -0x1

    :goto_1
    if-ltz v2, :cond_5

    iget-object v7, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->endChangeAnimation(Ljava/util/List;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_5
    iget-object v7, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v2, v7, -0x1

    :goto_2
    if-ltz v2, :cond_8

    iget-object v7, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v3, v7, -0x1

    :goto_3
    if-ltz v3, :cond_6

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$MoveInfo;

    iget-object v7, v4, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$MoveInfo;->holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-ne v7, p1, :cond_7

    invoke-static {v6, v8}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    invoke-static {v6, v8}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->dispatchMoveFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_6
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_7
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    :cond_8
    iget-object v7, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v2, v7, -0x1

    :goto_4
    if-ltz v2, :cond_a

    iget-object v7, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-static {v6, v9}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->dispatchAddFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_9
    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    :cond_a
    iget-object v7, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    :cond_b
    iget-object v7, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    :cond_c
    iget-object v7, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    :cond_d
    iget-object v7, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    :cond_e
    invoke-direct {p0}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->dispatchFinishedWhenDone()V

    return-void
.end method

.method public endAnimations()V
    .locals 14

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    iget-object v11, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v3, v2, -0x1

    :goto_0
    if-ltz v3, :cond_0

    iget-object v11, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$MoveInfo;

    iget-object v11, v5, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$MoveInfo;->holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v10, v11, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v10, v12}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    invoke-static {v10, v12}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    iget-object v11, v5, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$MoveInfo;->holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {p0, v11}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->dispatchMoveFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    iget-object v11, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_0
    iget-object v11, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v3, v2, -0x1

    :goto_1
    if-ltz v3, :cond_1

    iget-object v11, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {p0, v4}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->dispatchRemoveFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    iget-object v11, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_1
    iget-object v11, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v3, v2, -0x1

    :goto_2
    if-ltz v3, :cond_2

    iget-object v11, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v10, v4, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v10, v13}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    invoke-virtual {p0, v4}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->dispatchAddFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    iget-object v11, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    :cond_2
    iget-object v11, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v3, v2, -0x1

    :goto_3
    if-ltz v3, :cond_3

    iget-object v11, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$ChangeInfo;

    invoke-direct {p0, v11}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->endChangeAnimationIfNecessary(Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$ChangeInfo;)V

    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    :cond_3
    iget-object v11, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->isRunning()Z

    move-result v11

    if-nez v11, :cond_4

    return-void

    :cond_4
    iget-object v11, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v3, v7, -0x1

    :goto_4
    if-ltz v3, :cond_7

    iget-object v11, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v6, v2, -0x1

    :goto_5
    if-ltz v6, :cond_6

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$MoveInfo;

    iget-object v4, v8, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$MoveInfo;->holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v10, v4, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v10, v12}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    invoke-static {v10, v12}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    iget-object v11, v8, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$MoveInfo;->holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {p0, v11}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->dispatchMoveFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_5

    iget-object v11, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v6, v6, -0x1

    goto :goto_5

    :cond_6
    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    :cond_7
    iget-object v11, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v3, v7, -0x1

    :goto_6
    if-ltz v3, :cond_a

    iget-object v11, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v6, v2, -0x1

    :goto_7
    if-ltz v6, :cond_9

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v10, v4, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v10, v13}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    invoke-virtual {p0, v4}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->dispatchAddFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_8

    iget-object v11, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v6, v6, -0x1

    goto :goto_7

    :cond_9
    add-int/lit8 v3, v3, -0x1

    goto :goto_6

    :cond_a
    iget-object v11, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v3, v7, -0x1

    :goto_8
    if-ltz v3, :cond_d

    iget-object v11, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v6, v2, -0x1

    :goto_9
    if-ltz v6, :cond_c

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$ChangeInfo;

    invoke-direct {p0, v11}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->endChangeAnimationIfNecessary(Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$ChangeInfo;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_b

    iget-object v11, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_b
    add-int/lit8 v6, v6, -0x1

    goto :goto_9

    :cond_c
    add-int/lit8 v3, v3, -0x1

    goto :goto_8

    :cond_d
    iget-object v11, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {p0, v11}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->cancelAll(Ljava/util/List;)V

    iget-object v11, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {p0, v11}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->cancelAll(Ljava/util/List;)V

    iget-object v11, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    invoke-virtual {p0, v11}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->cancelAll(Ljava/util/List;)V

    iget-object v11, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    invoke-virtual {p0, v11}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->cancelAll(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->dispatchAnimationsFinished()V

    return-void
.end method

.method public isRunning()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public runPendingAnimations()V
    .locals 28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v25

    if-eqz v25, :cond_1

    const/16 v19, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v25

    if-eqz v25, :cond_2

    const/16 v18, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v25

    if-eqz v25, :cond_3

    const/4 v11, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v25

    if-eqz v25, :cond_4

    const/4 v6, 0x0

    :goto_3
    if-nez v19, :cond_0

    if-eqz v18, :cond_5

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->animateRemoveImpl(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    goto :goto_4

    :cond_1
    const/16 v19, 0x1

    goto :goto_0

    :cond_2
    const/16 v18, 0x1

    goto :goto_1

    :cond_3
    const/4 v11, 0x1

    goto :goto_2

    :cond_4
    const/4 v6, 0x1

    goto :goto_3

    :cond_5
    if-nez v6, :cond_0

    if-nez v11, :cond_0

    return-void

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->clear()V

    if-eqz v18, :cond_7

    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->clear()V

    new-instance v16, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$1;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$1;-><init>(Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;Ljava/util/ArrayList;)V

    if-eqz v19, :cond_b

    const/16 v25, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$MoveInfo;

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$MoveInfo;->holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v24, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->getRemoveDuration()J

    move-result-wide v26

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    move-wide/from16 v2, v26

    invoke-static {v0, v1, v2, v3}, Landroid/support/v4/view/ViewCompat;->postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V

    :cond_7
    :goto_5
    if-eqz v11, :cond_8

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->clear()V

    new-instance v7, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$2;

    move-object/from16 v0, p0

    invoke-direct {v7, v0, v10}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$2;-><init>(Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;Ljava/util/ArrayList;)V

    if-eqz v19, :cond_c

    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$ChangeInfo;

    move-object/from16 v0, v25

    iget-object v12, v0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$ChangeInfo;->oldHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v0, v12, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v25, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->getRemoveDuration()J

    move-result-wide v26

    move-object/from16 v0, v25

    move-wide/from16 v1, v26

    invoke-static {v0, v7, v1, v2}, Landroid/support/v4/view/ViewCompat;->postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V

    :cond_8
    :goto_6
    if-eqz v6, :cond_a

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->clear()V

    new-instance v4, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$3;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$3;-><init>(Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;Ljava/util/ArrayList;)V

    if-nez v19, :cond_9

    if-nez v18, :cond_9

    if-eqz v11, :cond_10

    :cond_9
    if-eqz v19, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->getRemoveDuration()J

    move-result-wide v20

    :goto_7
    if-eqz v18, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->getMoveDuration()J

    move-result-wide v14

    :goto_8
    if-eqz v11, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->getChangeDuration()J

    move-result-wide v8

    :goto_9
    invoke-static {v14, v15, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v26

    add-long v22, v20, v26

    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-wide/from16 v1, v22

    invoke-static {v0, v4, v1, v2}, Landroid/support/v4/view/ViewCompat;->postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V

    :cond_a
    :goto_a
    return-void

    :cond_b
    invoke-interface/range {v16 .. v16}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_5

    :cond_c
    invoke-interface {v7}, Ljava/lang/Runnable;->run()V

    goto :goto_6

    :cond_d
    const-wide/16 v20, 0x0

    goto :goto_7

    :cond_e
    const-wide/16 v14, 0x0

    goto :goto_8

    :cond_f
    const-wide/16 v8, 0x0

    goto :goto_9

    :cond_10
    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    goto :goto_a
.end method
