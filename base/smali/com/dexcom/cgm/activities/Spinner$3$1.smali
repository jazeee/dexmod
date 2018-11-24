.class Lcom/dexcom/cgm/activities/Spinner$3$1;
.super Ljava/lang/Object;
.source "Spinner.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/dexcom/cgm/activities/Spinner$3;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/Spinner$3;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/dexcom/cgm/activities/Spinner$3$1;->this$1:Lcom/dexcom/cgm/activities/Spinner$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/dexcom/cgm/activities/Spinner$3$1;->this$1:Lcom/dexcom/cgm/activities/Spinner$3;

    iget-object v0, v0, Lcom/dexcom/cgm/activities/Spinner$3;->val$progressBarCircularIndeterminate:Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;->setVisibility(I)V

    .line 80
    return-void
.end method
