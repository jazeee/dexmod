.class Landroid/support/wearable/view/WearableListView$3;
.super Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;
.source "WearableListView.java"


# instance fields
.field final synthetic this$0:Landroid/support/wearable/view/WearableListView;


# direct methods
.method constructor <init>(Landroid/support/wearable/view/WearableListView;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Landroid/support/wearable/view/WearableListView$3;->this$0:Landroid/support/wearable/view/WearableListView;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Landroid/support/wearable/view/WearableListView$3;->this$0:Landroid/support/wearable/view/WearableListView;

    new-instance v1, Landroid/support/wearable/view/WearableListView$3$1;

    invoke-direct {v1, p0}, Landroid/support/wearable/view/WearableListView$3$1;-><init>(Landroid/support/wearable/view/WearableListView$3;)V

    invoke-virtual {v0, v1}, Landroid/support/wearable/view/WearableListView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 147
    return-void
.end method
