.class Lcom/dexcom/cgm/activities/Spinner$3;
.super Ljava/lang/Object;
.source "Spinner.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/Spinner;

.field final synthetic val$progressBarCircularIndeterminate:Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;

.field final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/Spinner;Ljava/lang/Runnable;Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/dexcom/cgm/activities/Spinner$3;->this$0:Lcom/dexcom/cgm/activities/Spinner;

    iput-object p2, p0, Lcom/dexcom/cgm/activities/Spinner$3;->val$runnable:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/dexcom/cgm/activities/Spinner$3;->val$progressBarCircularIndeterminate:Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/dexcom/cgm/activities/Spinner$3;->val$runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 74
    iget-object v0, p0, Lcom/dexcom/cgm/activities/Spinner$3;->this$0:Lcom/dexcom/cgm/activities/Spinner;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/Spinner;->access$100(Lcom/dexcom/cgm/activities/Spinner;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/dexcom/cgm/activities/Spinner$3$1;

    invoke-direct {v1, p0}, Lcom/dexcom/cgm/activities/Spinner$3$1;-><init>(Lcom/dexcom/cgm/activities/Spinner$3;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 82
    return-void
.end method
