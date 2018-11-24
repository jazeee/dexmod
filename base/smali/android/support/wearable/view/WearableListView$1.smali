.class Landroid/support/wearable/view/WearableListView$1;
.super Ljava/lang/Object;
.source "WearableListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Landroid/support/wearable/view/WearableListView;


# direct methods
.method constructor <init>(Landroid/support/wearable/view/WearableListView;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Landroid/support/wearable/view/WearableListView$1;->this$0:Landroid/support/wearable/view/WearableListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 118
    iget-object v0, p0, Landroid/support/wearable/view/WearableListView$1;->this$0:Landroid/support/wearable/view/WearableListView;

    invoke-virtual {v0}, Landroid/support/wearable/view/WearableListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 119
    iget-object v0, p0, Landroid/support/wearable/view/WearableListView$1;->this$0:Landroid/support/wearable/view/WearableListView;

    iget-object v1, p0, Landroid/support/wearable/view/WearableListView$1;->this$0:Landroid/support/wearable/view/WearableListView;

    iget-object v2, p0, Landroid/support/wearable/view/WearableListView$1;->this$0:Landroid/support/wearable/view/WearableListView;

    invoke-static {v2}, Landroid/support/wearable/view/WearableListView;->access$100(Landroid/support/wearable/view/WearableListView;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/wearable/view/WearableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/wearable/view/WearableListView;->access$002(Landroid/support/wearable/view/WearableListView;Landroid/view/View;)Landroid/view/View;

    .line 120
    iget-object v0, p0, Landroid/support/wearable/view/WearableListView$1;->this$0:Landroid/support/wearable/view/WearableListView;

    invoke-static {v0}, Landroid/support/wearable/view/WearableListView;->access$000(Landroid/support/wearable/view/WearableListView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 124
    :goto_0
    return-void

    .line 122
    :cond_0
    const-string v0, "WearableListView"

    const-string v1, "mPressedRunnable: the children were removed, skipping."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
