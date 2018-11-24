.class Landroid/support/wearable/view/WearableListView$4;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "WearableListView.java"


# instance fields
.field final synthetic this$0:Landroid/support/wearable/view/WearableListView;


# direct methods
.method constructor <init>(Landroid/support/wearable/view/WearableListView;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Landroid/support/wearable/view/WearableListView$4;->this$0:Landroid/support/wearable/view/WearableListView;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 2

    .prologue
    .line 167
    if-nez p2, :cond_0

    iget-object v0, p0, Landroid/support/wearable/view/WearableListView$4;->this$0:Landroid/support/wearable/view/WearableListView;

    invoke-virtual {v0}, Landroid/support/wearable/view/WearableListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 168
    iget-object v0, p0, Landroid/support/wearable/view/WearableListView$4;->this$0:Landroid/support/wearable/view/WearableListView;

    const/4 v1, 0x0

    invoke-static {v0, v1, p2}, Landroid/support/wearable/view/WearableListView;->access$400(Landroid/support/wearable/view/WearableListView;Landroid/view/MotionEvent;I)V

    .line 170
    :cond_0
    iget-object v0, p0, Landroid/support/wearable/view/WearableListView$4;->this$0:Landroid/support/wearable/view/WearableListView;

    invoke-static {v0}, Landroid/support/wearable/view/WearableListView;->access$500(Landroid/support/wearable/view/WearableListView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/wearable/view/WearableListView$OnScrollListener;

    .line 171
    invoke-interface {v0, p2}, Landroid/support/wearable/view/WearableListView$OnScrollListener;->onScrollStateChanged(I)V

    goto :goto_0

    .line 173
    :cond_1
    return-void
.end method

.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Landroid/support/wearable/view/WearableListView$4;->this$0:Landroid/support/wearable/view/WearableListView;

    invoke-static {v0, p3}, Landroid/support/wearable/view/WearableListView;->access$600(Landroid/support/wearable/view/WearableListView;I)V

    .line 178
    return-void
.end method
