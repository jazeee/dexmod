.class Lcom/dexcom/cgm/activities/Spinner$2;
.super Ljava/lang/Object;
.source "Spinner.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/Spinner;

.field final synthetic val$progressBarCircularIndeterminate:Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/Spinner;Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/dexcom/cgm/activities/Spinner$2;->this$0:Lcom/dexcom/cgm/activities/Spinner;

    iput-object p2, p0, Lcom/dexcom/cgm/activities/Spinner$2;->val$progressBarCircularIndeterminate:Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/dexcom/cgm/activities/Spinner$2;->val$progressBarCircularIndeterminate:Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;->setVisibility(I)V

    .line 65
    return-void
.end method
