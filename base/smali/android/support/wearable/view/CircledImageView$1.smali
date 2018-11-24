.class Landroid/support/wearable/view/CircledImageView$1;
.super Ljava/lang/Object;
.source "CircledImageView.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# instance fields
.field final synthetic this$0:Landroid/support/wearable/view/CircledImageView;


# direct methods
.method constructor <init>(Landroid/support/wearable/view/CircledImageView;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Landroid/support/wearable/view/CircledImageView$1;->this$0:Landroid/support/wearable/view/CircledImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Landroid/support/wearable/view/CircledImageView$1;->this$0:Landroid/support/wearable/view/CircledImageView;

    invoke-virtual {v0}, Landroid/support/wearable/view/CircledImageView;->invalidate()V

    .line 69
    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0

    .prologue
    .line 74
    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 79
    return-void
.end method
