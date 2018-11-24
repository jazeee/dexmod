.class Landroid/support/wearable/view/WearableListView$SetScrollVerticallyProperty;
.super Landroid/util/Property;
.source "WearableListView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property",
        "<",
        "Landroid/support/wearable/view/WearableListView;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/wearable/view/WearableListView;


# direct methods
.method public constructor <init>(Landroid/support/wearable/view/WearableListView;)V
    .locals 2

    .prologue
    .line 1287
    iput-object p1, p0, Landroid/support/wearable/view/WearableListView$SetScrollVerticallyProperty;->this$0:Landroid/support/wearable/view/WearableListView;

    .line 1288
    const-class v0, Ljava/lang/Integer;

    const-string v1, "scrollVertically"

    invoke-direct {p0, v0, v1}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 1289
    return-void
.end method


# virtual methods
.method public get(Landroid/support/wearable/view/WearableListView;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 1293
    invoke-static {p1}, Landroid/support/wearable/view/WearableListView;->access$1600(Landroid/support/wearable/view/WearableListView;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1286
    check-cast p1, Landroid/support/wearable/view/WearableListView;

    invoke-virtual {p0, p1}, Landroid/support/wearable/view/WearableListView$SetScrollVerticallyProperty;->get(Landroid/support/wearable/view/WearableListView;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public set(Landroid/support/wearable/view/WearableListView;Ljava/lang/Integer;)V
    .locals 1

    .prologue
    .line 1298
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/wearable/view/WearableListView;->access$1700(Landroid/support/wearable/view/WearableListView;I)V

    .line 1299
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1286
    check-cast p1, Landroid/support/wearable/view/WearableListView;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Landroid/support/wearable/view/WearableListView$SetScrollVerticallyProperty;->set(Landroid/support/wearable/view/WearableListView;Ljava/lang/Integer;)V

    return-void
.end method
