.class Landroid/support/wearable/view/DismissOverlayView$1;
.super Ljava/lang/Object;
.source "DismissOverlayView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Landroid/support/wearable/view/DismissOverlayView;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/support/wearable/view/DismissOverlayView;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Landroid/support/wearable/view/DismissOverlayView$1;->this$0:Landroid/support/wearable/view/DismissOverlayView;

    iput-object p2, p0, Landroid/support/wearable/view/DismissOverlayView$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Landroid/support/wearable/view/DismissOverlayView$1;->val$context:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Landroid/support/wearable/view/DismissOverlayView$1;->val$context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 67
    :cond_0
    return-void
.end method
