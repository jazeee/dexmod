.class Landroid/support/wearable/view/WearableListView$3$1;
.super Ljava/lang/Object;
.source "WearableListView.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field final synthetic this$1:Landroid/support/wearable/view/WearableListView$3;


# direct methods
.method constructor <init>(Landroid/support/wearable/view/WearableListView$3;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Landroid/support/wearable/view/WearableListView$3$1;->this$1:Landroid/support/wearable/view/WearableListView$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Landroid/support/wearable/view/WearableListView$3$1;->this$1:Landroid/support/wearable/view/WearableListView$3;

    iget-object v0, v0, Landroid/support/wearable/view/WearableListView$3;->this$0:Landroid/support/wearable/view/WearableListView;

    invoke-virtual {v0, p0}, Landroid/support/wearable/view/WearableListView;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 142
    iget-object v0, p0, Landroid/support/wearable/view/WearableListView$3$1;->this$1:Landroid/support/wearable/view/WearableListView$3;

    iget-object v0, v0, Landroid/support/wearable/view/WearableListView$3;->this$0:Landroid/support/wearable/view/WearableListView;

    invoke-virtual {v0}, Landroid/support/wearable/view/WearableListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 143
    iget-object v0, p0, Landroid/support/wearable/view/WearableListView$3$1;->this$1:Landroid/support/wearable/view/WearableListView$3;

    iget-object v0, v0, Landroid/support/wearable/view/WearableListView$3;->this$0:Landroid/support/wearable/view/WearableListView;

    invoke-virtual {v0}, Landroid/support/wearable/view/WearableListView;->animateToCenter()V

    .line 145
    :cond_0
    return-void
.end method
