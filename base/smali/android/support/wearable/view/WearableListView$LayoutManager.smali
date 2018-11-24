.class Landroid/support/wearable/view/WearableListView$LayoutManager;
.super Landroid/support/v7/widget/RecyclerView$LayoutManager;
.source "WearableListView.java"


# instance fields
.field private mAbsoluteScroll:I

.field private mDefaultSmoothScroller:Landroid/support/v7/widget/RecyclerView$SmoothScroller;

.field private mFirstPosition:I

.field private mPushFirstHigher:Z

.field private mSmoothScroller:Landroid/support/v7/widget/RecyclerView$SmoothScroller;

.field private mUseOldViewTop:Z

.field private mWasZoomedIn:Z

.field final synthetic this$0:Landroid/support/wearable/view/WearableListView;


# direct methods
.method private constructor <init>(Landroid/support/wearable/view/WearableListView;)V
    .locals 1

    .prologue
    .line 716
    iput-object p1, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->this$0:Landroid/support/wearable/view/WearableListView;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;-><init>()V

    .line 723
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->mUseOldViewTop:Z

    .line 725
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->mWasZoomedIn:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/wearable/view/WearableListView;Landroid/support/wearable/view/WearableListView$1;)V
    .locals 0

    .prologue
    .line 716
    invoke-direct {p0, p1}, Landroid/support/wearable/view/WearableListView$LayoutManager;-><init>(Landroid/support/wearable/view/WearableListView;)V

    return-void
.end method

.method private findCenterViewIndex()I
    .locals 8

    .prologue
    const/4 v4, -0x1

    .line 738
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getChildCount()I

    move-result v5

    .line 740
    const v1, 0x7fffffff

    .line 741
    iget-object v0, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->this$0:Landroid/support/wearable/view/WearableListView;

    invoke-static {v0}, Landroid/support/wearable/view/WearableListView;->access$800(Landroid/view/View;)I

    move-result v6

    .line 742
    const/4 v2, 0x0

    move v3, v4

    :goto_0
    if-ge v2, v5, :cond_0

    .line 743
    iget-object v0, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->this$0:Landroid/support/wearable/view/WearableListView;

    invoke-virtual {v0}, Landroid/support/wearable/view/WearableListView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 744
    iget-object v7, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->this$0:Landroid/support/wearable/view/WearableListView;

    invoke-virtual {v7}, Landroid/support/wearable/view/WearableListView;->getTop()I

    move-result v7

    invoke-static {v0}, Landroid/support/wearable/view/WearableListView;->access$800(Landroid/view/View;)I

    move-result v0

    add-int/2addr v0, v7

    .line 745
    sub-int v0, v6, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 746
    if-ge v0, v1, :cond_2

    move v1, v2

    .line 742
    :goto_1
    add-int/lit8 v2, v2, 0x1

    move v3, v1

    move v1, v0

    goto :goto_0

    .line 751
    :cond_0
    if-ne v3, v4, :cond_1

    .line 752
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t find central view."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 754
    :cond_1
    return v3

    :cond_2
    move v0, v1

    move v1, v3

    goto :goto_1
.end method

.method private measureThirdView(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 934
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40400000    # 3.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    invoke-direct {p0, p1, v0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->measureView(Landroid/view/View;I)V

    .line 935
    return-void
.end method

.method private measureView(Landroid/view/View;I)V
    .locals 5

    .prologue
    .line 923
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 924
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->leftMargin:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->width:I

    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->canScrollHorizontally()Z

    move-result v4

    invoke-static {v1, v2, v3, v4}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getChildMeasureSpec(IIIZ)I

    move-result v1

    .line 927
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->topMargin:I

    add-int/2addr v3, v4

    iget v0, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v3

    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->canScrollVertically()Z

    move-result v3

    invoke-static {v2, v0, p2, v3}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getChildMeasureSpec(IIIZ)I

    move-result v0

    .line 930
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 931
    return-void
.end method

.method private measureZoomView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 938
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getHeight()I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->measureView(Landroid/view/View;I)V

    .line 939
    return-void
.end method

.method private notifyChildrenAboutProximity(Z)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 758
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getChildCount()I

    move-result v3

    .line 759
    invoke-direct {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->findCenterViewIndex()I

    move-result v4

    move v2, v1

    .line 760
    :goto_0
    if-ge v2, v3, :cond_1

    .line 761
    invoke-virtual {p0, v2}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 762
    iget-object v5, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->this$0:Landroid/support/wearable/view/WearableListView;

    invoke-virtual {v5, v0}, Landroid/support/wearable/view/WearableListView;->getChildViewHolder(Landroid/view/View;)Landroid/support/wearable/view/WearableListView$ViewHolder;

    move-result-object v5

    .line 763
    if-ne v2, v4, :cond_0

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v5, v0, p1}, Landroid/support/wearable/view/WearableListView$ViewHolder;->onCenterProximity(ZZ)V

    .line 760
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 763
    goto :goto_1

    .line 765
    :cond_1
    iget-object v0, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->this$0:Landroid/support/wearable/view/WearableListView;

    invoke-virtual {p0, v4}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/wearable/view/WearableListView;->getChildViewHolder(Landroid/view/View;)Landroid/support/wearable/view/WearableListView$ViewHolder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/wearable/view/WearableListView$ViewHolder;->getPosition()I

    move-result v1

    .line 766
    iget-object v0, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->this$0:Landroid/support/wearable/view/WearableListView;

    invoke-static {v0}, Landroid/support/wearable/view/WearableListView;->access$900(Landroid/support/wearable/view/WearableListView;)I

    move-result v0

    if-eq v1, v0, :cond_4

    .line 767
    iget-object v0, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->this$0:Landroid/support/wearable/view/WearableListView;

    invoke-static {v0}, Landroid/support/wearable/view/WearableListView;->access$500(Landroid/support/wearable/view/WearableListView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/wearable/view/WearableListView$OnScrollListener;

    .line 768
    invoke-interface {v0, v1}, Landroid/support/wearable/view/WearableListView$OnScrollListener;->onCentralPositionChanged(I)V

    goto :goto_2

    .line 771
    :cond_2
    iget-object v0, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->this$0:Landroid/support/wearable/view/WearableListView;

    invoke-static {v0}, Landroid/support/wearable/view/WearableListView;->access$1000(Landroid/support/wearable/view/WearableListView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/wearable/view/WearableListView$OnCentralPositionChangedListener;

    .line 772
    invoke-interface {v0, v1}, Landroid/support/wearable/view/WearableListView$OnCentralPositionChangedListener;->onCentralPositionChanged(I)V

    goto :goto_3

    .line 774
    :cond_3
    iget-object v0, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->this$0:Landroid/support/wearable/view/WearableListView;

    invoke-static {v0, v1}, Landroid/support/wearable/view/WearableListView;->access$902(Landroid/support/wearable/view/WearableListView;I)I

    .line 776
    :cond_4
    return-void
.end method

.method private performLayoutChildren(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;II)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 872
    invoke-virtual {p0, p1}, Landroid/support/wearable/view/WearableListView$LayoutManager;->detachAndScrapAttachedViews(Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 874
    iget-object v0, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->this$0:Landroid/support/wearable/view/WearableListView;

    invoke-static {v0}, Landroid/support/wearable/view/WearableListView;->access$1300(Landroid/support/wearable/view/WearableListView;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 875
    invoke-direct {p0, p1, p3}, Landroid/support/wearable/view/WearableListView$LayoutManager;->performLayoutOneChild(Landroid/support/v7/widget/RecyclerView$Recycler;I)V

    .line 876
    iput-boolean v2, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->mWasZoomedIn:Z

    .line 882
    :goto_0
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 883
    invoke-direct {p0, v1}, Landroid/support/wearable/view/WearableListView$LayoutManager;->notifyChildrenAboutProximity(Z)V

    .line 885
    :cond_0
    return-void

    .line 878
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/wearable/view/WearableListView$LayoutManager;->performLayoutMultipleChildren(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;II)V

    .line 879
    iput-boolean v1, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->mWasZoomedIn:Z

    goto :goto_0
.end method

.method private performLayoutMultipleChildren(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;II)V
    .locals 6

    .prologue
    .line 898
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getPaddingLeft()I

    move-result v2

    .line 899
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getPaddingRight()I

    move-result v1

    sub-int v3, v0, v1

    .line 900
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v4

    .line 903
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getFirstPosition()I

    move-result v1

    add-int/2addr v1, v0

    if-ge v1, v4, :cond_0

    .line 904
    if-ge p4, p3, :cond_0

    .line 907
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getFirstPosition()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object v5

    .line 908
    invoke-virtual {p0, v5, v0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->addView(Landroid/view/View;I)V

    .line 909
    invoke-direct {p0, v5}, Landroid/support/wearable/view/WearableListView$LayoutManager;->measureThirdView(Landroid/view/View;)V

    .line 910
    iget-object v1, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->this$0:Landroid/support/wearable/view/WearableListView;

    invoke-static {v1}, Landroid/support/wearable/view/WearableListView;->access$1200(Landroid/support/wearable/view/WearableListView;)I

    move-result v1

    add-int/2addr v1, p4

    .line 911
    invoke-virtual {v5, v2, p4, v3, v1}, Landroid/view/View;->layout(IIII)V

    .line 903
    add-int/lit8 v0, v0, 0x1

    move p4, v1

    goto :goto_0

    .line 913
    :cond_0
    return-void
.end method

.method private performLayoutOneChild(Landroid/support/v7/widget/RecyclerView$Recycler;I)V
    .locals 4

    .prologue
    .line 888
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 889
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getFirstPosition()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object v1

    .line 890
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/support/wearable/view/WearableListView$LayoutManager;->addView(Landroid/view/View;I)V

    .line 891
    invoke-direct {p0, v1}, Landroid/support/wearable/view/WearableListView$LayoutManager;->measureZoomView(Landroid/view/View;)V

    .line 892
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getPaddingTop()I

    move-result v3

    invoke-virtual {v1, v2, v3, v0, p2}, Landroid/view/View;->layout(IIII)V

    .line 893
    return-void
.end method

.method private recycleViewsOutOfBounds(Landroid/support/v7/widget/RecyclerView$Recycler;)V
    .locals 12

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 1066
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getChildCount()I

    move-result v6

    .line 1067
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getWidth()I

    move-result v7

    .line 1070
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getHeight()I

    move-result v8

    move v1, v5

    move v4, v5

    move v0, v5

    move v2, v5

    .line 1074
    :goto_0
    if-ge v1, v6, :cond_2

    .line 1075
    invoke-virtual {p0, v1}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 1076
    invoke-virtual {v9}, Landroid/view/View;->hasFocus()Z

    move-result v10

    if-nez v10, :cond_0

    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v10

    if-ltz v10, :cond_7

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v10

    if-gt v10, v7, :cond_7

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v10

    if-ltz v10, :cond_7

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v9

    if-gt v9, v8, :cond_7

    .line 1078
    :cond_0
    if-nez v2, :cond_1

    move v0, v1

    move v2, v3

    :cond_1
    move v4, v2

    move v2, v0

    move v0, v1

    .line 1074
    :goto_1
    add-int/lit8 v1, v1, 0x1

    move v11, v0

    move v0, v2

    move v2, v4

    move v4, v11

    goto :goto_0

    .line 1085
    :cond_2
    add-int/lit8 v1, v6, -0x1

    :goto_2
    if-le v1, v4, :cond_3

    .line 1086
    invoke-virtual {p0, v1, p1}, Landroid/support/wearable/view/WearableListView$LayoutManager;->removeAndRecycleViewAt(ILandroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 1085
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 1088
    :cond_3
    add-int/lit8 v1, v0, -0x1

    :goto_3
    if-ltz v1, :cond_4

    .line 1089
    invoke-virtual {p0, v1, p1}, Landroid/support/wearable/view/WearableListView$LayoutManager;->removeAndRecycleViewAt(ILandroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 1088
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 1091
    :cond_4
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getChildCount()I

    move-result v1

    if-nez v1, :cond_6

    .line 1092
    iput v5, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->mFirstPosition:I

    .line 1097
    :cond_5
    :goto_4
    return-void

    .line 1093
    :cond_6
    if-lez v0, :cond_5

    .line 1094
    iput-boolean v3, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->mPushFirstHigher:Z

    .line 1095
    iget v1, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->mFirstPosition:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->mFirstPosition:I

    goto :goto_4

    :cond_7
    move v11, v4

    move v4, v2

    move v2, v0

    move v0, v11

    goto :goto_1
.end method

.method private setAbsoluteScroll(I)V
    .locals 3

    .prologue
    .line 916
    iput p1, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->mAbsoluteScroll:I

    .line 917
    iget-object v0, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->this$0:Landroid/support/wearable/view/WearableListView;

    invoke-static {v0}, Landroid/support/wearable/view/WearableListView;->access$500(Landroid/support/wearable/view/WearableListView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/wearable/view/WearableListView$OnScrollListener;

    .line 918
    iget v2, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->mAbsoluteScroll:I

    invoke-interface {v0, v2}, Landroid/support/wearable/view/WearableListView$OnScrollListener;->onAbsoluteScrollChange(I)V

    goto :goto_0

    .line 920
    :cond_0
    return-void
.end method


# virtual methods
.method public canScrollVertically()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 950
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getItemCount()I

    move-result v1

    if-ne v1, v0, :cond_0

    iget-boolean v1, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->mWasZoomedIn:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clearCustomSmoothScroller()V
    .locals 1

    .prologue
    .line 1044
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->mSmoothScroller:Landroid/support/v7/widget/RecyclerView$SmoothScroller;

    .line 1045
    return-void
.end method

.method public generateDefaultLayoutParams()Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .locals 3

    .prologue
    .line 943
    new-instance v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public getDefaultSmoothScroller(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$SmoothScroller;
    .locals 2

    .prologue
    .line 1048
    iget-object v0, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->mDefaultSmoothScroller:Landroid/support/v7/widget/RecyclerView$SmoothScroller;

    if-nez v0, :cond_0

    .line 1049
    new-instance v0, Landroid/support/wearable/view/WearableListView$SmoothScroller;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/support/wearable/view/WearableListView$SmoothScroller;-><init>(Landroid/content/Context;Landroid/support/wearable/view/WearableListView$LayoutManager;)V

    iput-object v0, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->mDefaultSmoothScroller:Landroid/support/v7/widget/RecyclerView$SmoothScroller;

    .line 1052
    :cond_0
    iget-object v0, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->mDefaultSmoothScroller:Landroid/support/v7/widget/RecyclerView$SmoothScroller;

    return-object v0
.end method

.method public getFirstPosition()I
    .locals 1

    .prologue
    .line 1100
    iget v0, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->mFirstPosition:I

    return v0
.end method

.method public onAdapterChanged(Landroid/support/v7/widget/RecyclerView$Adapter;Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 0

    .prologue
    .line 1106
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->removeAllViews()V

    .line 1107
    return-void
.end method

.method public onLayoutChildren(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/4 v8, -0x1

    .line 780
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getPaddingBottom()I

    move-result v1

    sub-int v5, v0, v1

    .line 783
    iget-object v0, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->this$0:Landroid/support/wearable/view/WearableListView;

    invoke-virtual {v0}, Landroid/support/wearable/view/WearableListView;->getCentralViewTop()I

    move-result v0

    iget-object v1, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->this$0:Landroid/support/wearable/view/WearableListView;

    invoke-static {v1}, Landroid/support/wearable/view/WearableListView;->access$1100(Landroid/support/wearable/view/WearableListView;)I

    move-result v1

    add-int/2addr v1, v0

    .line 786
    iget-boolean v0, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->mUseOldViewTop:Z

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getChildCount()I

    move-result v0

    if-lez v0, :cond_9

    .line 790
    invoke-direct {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->findCenterViewIndex()I

    move-result v2

    .line 791
    invoke-virtual {p0, v2}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    .line 792
    if-ne v0, v8, :cond_1

    .line 795
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getChildCount()I

    move-result v6

    move v3, v4

    :goto_0
    add-int v7, v2, v3

    if-lt v7, v6, :cond_0

    sub-int v7, v2, v3

    if-ltz v7, :cond_1

    .line 796
    :cond_0
    add-int v7, v2, v3

    invoke-virtual {p0, v7}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 797
    if-eqz v7, :cond_2

    .line 798
    invoke-virtual {p0, v7}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    .line 799
    if-eq v0, v8, :cond_2

    .line 800
    add-int/2addr v2, v3

    .line 814
    :cond_1
    :goto_1
    if-ne v0, v8, :cond_4

    .line 817
    invoke-virtual {p0, v4}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    .line 818
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    .line 821
    :goto_2
    iget v2, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->mFirstPosition:I

    if-lt v2, v0, :cond_8

    iget v2, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->mFirstPosition:I

    if-lez v2, :cond_8

    .line 822
    iget v2, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->mFirstPosition:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->mFirstPosition:I

    goto :goto_2

    .line 804
    :cond_2
    sub-int v7, v2, v3

    invoke-virtual {p0, v7}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 805
    if-eqz v7, :cond_3

    .line 806
    invoke-virtual {p0, v7}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    .line 807
    if-eq v0, v8, :cond_3

    .line 808
    sub-int/2addr v2, v3

    .line 809
    goto :goto_1

    .line 795
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 827
    :cond_4
    iget-boolean v3, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->mWasZoomedIn:Z

    if-nez v3, :cond_5

    .line 834
    invoke-virtual {p0, v2}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    .line 836
    :cond_5
    :goto_3
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getPaddingTop()I

    move-result v2

    if-le v1, v2, :cond_6

    if-lez v0, :cond_6

    .line 837
    add-int/lit8 v0, v0, -0x1

    .line 838
    iget-object v2, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->this$0:Landroid/support/wearable/view/WearableListView;

    invoke-static {v2}, Landroid/support/wearable/view/WearableListView;->access$1200(Landroid/support/wearable/view/WearableListView;)I

    move-result v2

    sub-int/2addr v1, v2

    goto :goto_3

    .line 840
    :cond_6
    if-nez v0, :cond_7

    iget-object v2, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->this$0:Landroid/support/wearable/view/WearableListView;

    invoke-virtual {v2}, Landroid/support/wearable/view/WearableListView;->getCentralViewTop()I

    move-result v2

    if-le v1, v2, :cond_7

    .line 844
    iget-object v1, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->this$0:Landroid/support/wearable/view/WearableListView;

    invoke-virtual {v1}, Landroid/support/wearable/view/WearableListView;->getCentralViewTop()I

    move-result v1

    .line 846
    :cond_7
    iput v0, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->mFirstPosition:I

    .line 854
    :cond_8
    :goto_4
    invoke-direct {p0, p1, p2, v5, v1}, Landroid/support/wearable/view/WearableListView$LayoutManager;->performLayoutChildren(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;II)V

    .line 858
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_a

    .line 859
    invoke-direct {p0, v4}, Landroid/support/wearable/view/WearableListView$LayoutManager;->setAbsoluteScroll(I)V

    .line 866
    :goto_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->mUseOldViewTop:Z

    .line 867
    iput-boolean v4, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->mPushFirstHigher:Z

    .line 868
    return-void

    .line 848
    :cond_9
    iget-boolean v0, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->mPushFirstHigher:Z

    if-eqz v0, :cond_8

    .line 851
    iget-object v0, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->this$0:Landroid/support/wearable/view/WearableListView;

    invoke-virtual {v0}, Landroid/support/wearable/view/WearableListView;->getCentralViewTop()I

    move-result v0

    iget-object v1, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->this$0:Landroid/support/wearable/view/WearableListView;

    invoke-static {v1}, Landroid/support/wearable/view/WearableListView;->access$1200(Landroid/support/wearable/view/WearableListView;)I

    move-result v1

    sub-int v1, v0, v1

    goto :goto_4

    .line 861
    :cond_a
    invoke-direct {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->findCenterViewIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 862
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    iget-object v2, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->this$0:Landroid/support/wearable/view/WearableListView;

    invoke-virtual {v2}, Landroid/support/wearable/view/WearableListView;->getCentralViewTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    iget-object v2, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->this$0:Landroid/support/wearable/view/WearableListView;

    invoke-static {v2}, Landroid/support/wearable/view/WearableListView;->access$1200(Landroid/support/wearable/view/WearableListView;)I

    move-result v2

    mul-int/2addr v0, v2

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->setAbsoluteScroll(I)V

    goto :goto_5
.end method

.method public scrollToPosition(I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1028
    iput-boolean v0, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->mUseOldViewTop:Z

    .line 1029
    if-lez p1, :cond_0

    .line 1030
    add-int/lit8 v0, p1, -0x1

    iput v0, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->mFirstPosition:I

    .line 1031
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->mPushFirstHigher:Z

    .line 1036
    :goto_0
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->requestLayout()V

    .line 1037
    return-void

    .line 1033
    :cond_0
    iput p1, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->mFirstPosition:I

    .line 1034
    iput-boolean v0, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->mPushFirstHigher:Z

    goto :goto_0
.end method

.method public scrollVerticallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 956
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 1023
    :goto_0
    return v1

    .line 960
    :cond_0
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getPaddingLeft()I

    move-result v3

    .line 961
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getPaddingRight()I

    move-result v2

    sub-int v4, v0, v2

    .line 962
    if-gez p1, :cond_4

    move v2, v1

    .line 963
    :goto_1
    if-le v2, p1, :cond_7

    .line 964
    invoke-virtual {p0, v1}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 965
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getFirstPosition()I

    move-result v0

    if-lez v0, :cond_1

    .line 966
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v0

    neg-int v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 967
    sub-int v6, v2, p1

    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 968
    sub-int v0, v2, v6

    .line 969
    invoke-virtual {p0, v6}, Landroid/support/wearable/view/WearableListView$LayoutManager;->offsetChildrenVertical(I)V

    .line 970
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getFirstPosition()I

    move-result v2

    if-lez v2, :cond_2

    if-le v0, p1, :cond_2

    .line 971
    iget v2, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->mFirstPosition:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->mFirstPosition:I

    .line 972
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getFirstPosition()I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/support/v7/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object v2

    .line 973
    invoke-virtual {p0, v2, v1}, Landroid/support/wearable/view/WearableListView$LayoutManager;->addView(Landroid/view/View;I)V

    .line 974
    invoke-direct {p0, v2}, Landroid/support/wearable/view/WearableListView$LayoutManager;->measureThirdView(Landroid/view/View;)V

    .line 975
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    .line 976
    iget-object v6, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->this$0:Landroid/support/wearable/view/WearableListView;

    invoke-static {v6}, Landroid/support/wearable/view/WearableListView;->access$1200(Landroid/support/wearable/view/WearableListView;)I

    move-result v6

    sub-int v6, v5, v6

    .line 977
    invoke-virtual {v2, v3, v6, v4, v5}, Landroid/view/View;->layout(IIII)V

    move v2, v0

    .line 981
    goto :goto_1

    .line 982
    :cond_1
    iput-boolean v1, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->mPushFirstHigher:Z

    .line 983
    iget-object v0, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->this$0:Landroid/support/wearable/view/WearableListView;

    invoke-static {v0}, Landroid/support/wearable/view/WearableListView;->access$1400(Landroid/support/wearable/view/WearableListView;)Landroid/support/wearable/view/WearableListView$OnOverScrollListener;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getHeight()I

    move-result v0

    .line 985
    :goto_2
    neg-int v1, p1

    add-int/2addr v1, v2

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 986
    sub-int v0, v2, v1

    .line 987
    invoke-virtual {p0, v1}, Landroid/support/wearable/view/WearableListView$LayoutManager;->offsetChildrenVertical(I)V

    .line 1020
    :cond_2
    :goto_3
    invoke-direct {p0, p2}, Landroid/support/wearable/view/WearableListView$LayoutManager;->recycleViewsOutOfBounds(Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 1021
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/support/wearable/view/WearableListView$LayoutManager;->notifyChildrenAboutProximity(Z)V

    .line 1022
    iget v1, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->mAbsoluteScroll:I

    add-int/2addr v1, v0

    invoke-direct {p0, v1}, Landroid/support/wearable/view/WearableListView$LayoutManager;->setAbsoluteScroll(I)V

    move v1, v0

    .line 1023
    goto/16 :goto_0

    .line 983
    :cond_3
    iget-object v0, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->this$0:Landroid/support/wearable/view/WearableListView;

    invoke-static {v0}, Landroid/support/wearable/view/WearableListView;->access$1500(Landroid/support/wearable/view/WearableListView;)I

    move-result v0

    goto :goto_2

    .line 991
    :cond_4
    if-lez p1, :cond_6

    .line 992
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getHeight()I

    move-result v2

    move v0, v1

    .line 993
    :goto_4
    if-ge v0, p1, :cond_2

    .line 994
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p0, v5}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 995
    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v6

    iget v7, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getChildCount()I

    move-result v8

    add-int/2addr v7, v8

    if-le v6, v7, :cond_5

    .line 996
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 998
    sub-int v6, p1, v0

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    neg-int v5, v5

    .line 999
    sub-int/2addr v0, v5

    .line 1000
    invoke-virtual {p0, v5}, Landroid/support/wearable/view/WearableListView$LayoutManager;->offsetChildrenVertical(I)V

    .line 1001
    if-ge v0, p1, :cond_2

    .line 1002
    iget v5, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getChildCount()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {p2, v5}, Landroid/support/v7/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object v5

    .line 1003
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getChildCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p0, v6}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v6

    .line 1004
    invoke-virtual {p0, v5}, Landroid/support/wearable/view/WearableListView$LayoutManager;->addView(Landroid/view/View;)V

    .line 1005
    invoke-direct {p0, v5}, Landroid/support/wearable/view/WearableListView$LayoutManager;->measureThirdView(Landroid/view/View;)V

    .line 1006
    iget-object v7, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->this$0:Landroid/support/wearable/view/WearableListView;

    invoke-static {v7}, Landroid/support/wearable/view/WearableListView;->access$1200(Landroid/support/wearable/view/WearableListView;)I

    move-result v7

    add-int/2addr v7, v6

    .line 1007
    invoke-virtual {v5, v3, v6, v4, v7}, Landroid/view/View;->layout(IIII)V

    goto :goto_4

    .line 1012
    :cond_5
    neg-int v1, p1

    add-int/2addr v1, v0

    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1014
    sub-int/2addr v0, v1

    .line 1015
    invoke-virtual {p0, v1}, Landroid/support/wearable/view/WearableListView$LayoutManager;->offsetChildrenVertical(I)V

    goto/16 :goto_3

    :cond_6
    move v0, v1

    goto/16 :goto_3

    :cond_7
    move v0, v2

    goto/16 :goto_3
.end method

.method public setCustomSmoothScroller(Landroid/support/v7/widget/RecyclerView$SmoothScroller;)V
    .locals 0

    .prologue
    .line 1040
    iput-object p1, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->mSmoothScroller:Landroid/support/v7/widget/RecyclerView$SmoothScroller;

    .line 1041
    return-void
.end method

.method public smoothScrollToPosition(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;I)V
    .locals 1

    .prologue
    .line 1057
    iget-object v0, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->mSmoothScroller:Landroid/support/v7/widget/RecyclerView$SmoothScroller;

    .line 1058
    if-nez v0, :cond_0

    .line 1059
    invoke-virtual {p0, p1}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getDefaultSmoothScroller(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$SmoothScroller;

    move-result-object v0

    .line 1061
    :cond_0
    invoke-virtual {v0, p3}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    .line 1062
    invoke-virtual {p0, v0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->startSmoothScroll(Landroid/support/v7/widget/RecyclerView$SmoothScroller;)V

    .line 1063
    return-void
.end method
