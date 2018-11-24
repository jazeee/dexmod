.class Landroid/support/wearable/view/DismissOverlayView$3;
.super Ljava/lang/Object;
.source "DismissOverlayView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Landroid/support/wearable/view/DismissOverlayView;


# direct methods
.method constructor <init>(Landroid/support/wearable/view/DismissOverlayView;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Landroid/support/wearable/view/DismissOverlayView$3;->this$0:Landroid/support/wearable/view/DismissOverlayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Landroid/support/wearable/view/DismissOverlayView$3;->this$0:Landroid/support/wearable/view/DismissOverlayView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/wearable/view/DismissOverlayView;->setVisibility(I)V

    .line 141
    iget-object v0, p0, Landroid/support/wearable/view/DismissOverlayView$3;->this$0:Landroid/support/wearable/view/DismissOverlayView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/support/wearable/view/DismissOverlayView;->setAlpha(F)V

    .line 142
    return-void
.end method
