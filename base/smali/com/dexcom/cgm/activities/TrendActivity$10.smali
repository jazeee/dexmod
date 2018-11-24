.class Lcom/dexcom/cgm/activities/TrendActivity$10;
.super Ljava/lang/Object;
.source "TrendActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/TrendActivity;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$mLongPressed:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/TrendActivity;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 622
    iput-object p1, p0, Lcom/dexcom/cgm/activities/TrendActivity$10;->this$0:Lcom/dexcom/cgm/activities/TrendActivity;

    iput-object p2, p0, Lcom/dexcom/cgm/activities/TrendActivity$10;->val$handler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/dexcom/cgm/activities/TrendActivity$10;->val$mLongPressed:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 626
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 627
    if-nez v1, :cond_0

    .line 629
    iget-object v1, p0, Lcom/dexcom/cgm/activities/TrendActivity$10;->val$handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/dexcom/cgm/activities/TrendActivity$10;->val$mLongPressed:Ljava/lang/Runnable;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x2

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 636
    :goto_0
    return v0

    .line 632
    :cond_0
    if-ne v1, v0, :cond_1

    .line 634
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendActivity$10;->val$handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/TrendActivity$10;->val$mLongPressed:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 636
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    move-result v0

    goto :goto_0
.end method
