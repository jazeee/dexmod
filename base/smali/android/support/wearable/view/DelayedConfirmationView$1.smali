.class Landroid/support/wearable/view/DelayedConfirmationView$1;
.super Landroid/os/Handler;
.source "DelayedConfirmationView.java"


# instance fields
.field final synthetic this$0:Landroid/support/wearable/view/DelayedConfirmationView;


# direct methods
.method constructor <init>(Landroid/support/wearable/view/DelayedConfirmationView;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Landroid/support/wearable/view/DelayedConfirmationView$1;->this$0:Landroid/support/wearable/view/DelayedConfirmationView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    .line 41
    iget-object v0, p0, Landroid/support/wearable/view/DelayedConfirmationView$1;->this$0:Landroid/support/wearable/view/DelayedConfirmationView;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/support/wearable/view/DelayedConfirmationView;->access$002(Landroid/support/wearable/view/DelayedConfirmationView;J)J

    .line 42
    iget-object v0, p0, Landroid/support/wearable/view/DelayedConfirmationView$1;->this$0:Landroid/support/wearable/view/DelayedConfirmationView;

    invoke-virtual {v0}, Landroid/support/wearable/view/DelayedConfirmationView;->invalidate()V

    .line 44
    iget-object v0, p0, Landroid/support/wearable/view/DelayedConfirmationView$1;->this$0:Landroid/support/wearable/view/DelayedConfirmationView;

    invoke-static {v0}, Landroid/support/wearable/view/DelayedConfirmationView;->access$000(Landroid/support/wearable/view/DelayedConfirmationView;)J

    move-result-wide v0

    iget-object v2, p0, Landroid/support/wearable/view/DelayedConfirmationView$1;->this$0:Landroid/support/wearable/view/DelayedConfirmationView;

    invoke-static {v2}, Landroid/support/wearable/view/DelayedConfirmationView;->access$100(Landroid/support/wearable/view/DelayedConfirmationView;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object v2, p0, Landroid/support/wearable/view/DelayedConfirmationView$1;->this$0:Landroid/support/wearable/view/DelayedConfirmationView;

    invoke-static {v2}, Landroid/support/wearable/view/DelayedConfirmationView;->access$200(Landroid/support/wearable/view/DelayedConfirmationView;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 45
    iget-object v0, p0, Landroid/support/wearable/view/DelayedConfirmationView$1;->this$0:Landroid/support/wearable/view/DelayedConfirmationView;

    invoke-static {v0}, Landroid/support/wearable/view/DelayedConfirmationView;->access$400(Landroid/support/wearable/view/DelayedConfirmationView;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/support/wearable/view/DelayedConfirmationView$1;->this$0:Landroid/support/wearable/view/DelayedConfirmationView;

    invoke-static {v2}, Landroid/support/wearable/view/DelayedConfirmationView;->access$300(Landroid/support/wearable/view/DelayedConfirmationView;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 49
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    iget-object v0, p0, Landroid/support/wearable/view/DelayedConfirmationView$1;->this$0:Landroid/support/wearable/view/DelayedConfirmationView;

    invoke-static {v0}, Landroid/support/wearable/view/DelayedConfirmationView;->access$100(Landroid/support/wearable/view/DelayedConfirmationView;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/support/wearable/view/DelayedConfirmationView$1;->this$0:Landroid/support/wearable/view/DelayedConfirmationView;

    invoke-static {v0}, Landroid/support/wearable/view/DelayedConfirmationView;->access$500(Landroid/support/wearable/view/DelayedConfirmationView;)Landroid/support/wearable/view/DelayedConfirmationView$DelayedConfirmationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Landroid/support/wearable/view/DelayedConfirmationView$1;->this$0:Landroid/support/wearable/view/DelayedConfirmationView;

    invoke-static {v0}, Landroid/support/wearable/view/DelayedConfirmationView;->access$500(Landroid/support/wearable/view/DelayedConfirmationView;)Landroid/support/wearable/view/DelayedConfirmationView$DelayedConfirmationListener;

    move-result-object v0

    iget-object v1, p0, Landroid/support/wearable/view/DelayedConfirmationView$1;->this$0:Landroid/support/wearable/view/DelayedConfirmationView;

    invoke-interface {v0, v1}, Landroid/support/wearable/view/DelayedConfirmationView$DelayedConfirmationListener;->onTimerFinished(Landroid/view/View;)V

    goto :goto_0
.end method
