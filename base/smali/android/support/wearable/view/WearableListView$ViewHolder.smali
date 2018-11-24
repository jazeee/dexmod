.class public Landroid/support/wearable/view/WearableListView$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "WearableListView.java"


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1262
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 1263
    return-void
.end method


# virtual methods
.method protected onCenterProximity(ZZ)V
    .locals 1

    .prologue
    .line 1274
    iget-object v0, p0, Landroid/support/wearable/view/WearableListView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, v0, Landroid/support/wearable/view/WearableListView$OnCenterProximityListener;

    if-nez v0, :cond_0

    .line 1283
    :goto_0
    return-void

    .line 1277
    :cond_0
    iget-object v0, p0, Landroid/support/wearable/view/WearableListView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Landroid/support/wearable/view/WearableListView$OnCenterProximityListener;

    .line 1278
    if-eqz p1, :cond_1

    .line 1279
    invoke-interface {v0, p2}, Landroid/support/wearable/view/WearableListView$OnCenterProximityListener;->onCenterPosition(Z)V

    goto :goto_0

    .line 1281
    :cond_1
    invoke-interface {v0, p2}, Landroid/support/wearable/view/WearableListView$OnCenterProximityListener;->onNonCenterPosition(Z)V

    goto :goto_0
.end method
