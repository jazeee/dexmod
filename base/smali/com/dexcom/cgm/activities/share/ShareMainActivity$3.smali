.class Lcom/dexcom/cgm/activities/share/ShareMainActivity$3;
.super Ljava/lang/Object;
.source "ShareMainActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/share/ShareMainActivity;

.field final synthetic val$list:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/share/ShareMainActivity;Landroid/widget/ListView;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/dexcom/cgm/activities/share/ShareMainActivity$3;->this$0:Lcom/dexcom/cgm/activities/share/ShareMainActivity;

    iput-object p2, p0, Lcom/dexcom/cgm/activities/share/ShareMainActivity$3;->val$list:Landroid/widget/ListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 133
    iget-object v1, p0, Lcom/dexcom/cgm/activities/share/ShareMainActivity$3;->val$list:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 138
    :goto_0
    return-void

    .line 136
    :cond_0
    iget-object v1, p0, Lcom/dexcom/cgm/activities/share/ShareMainActivity$3;->val$list:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    .line 137
    iget-object v2, p0, Lcom/dexcom/cgm/activities/share/ShareMainActivity$3;->this$0:Lcom/dexcom/cgm/activities/share/ShareMainActivity;

    invoke-static {v2}, Lcom/dexcom/cgm/activities/share/ShareMainActivity;->access$100(Lcom/dexcom/cgm/activities/share/ShareMainActivity;)Landroid/support/v4/widget/SwipeRefreshLayout;

    move-result-object v2

    if-nez p2, :cond_1

    if-ltz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {v2, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    .prologue
    .line 119
    return-void
.end method
