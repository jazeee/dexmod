.class Lcom/dexcom/cgm/activities/TrendActivity$8;
.super Ljava/lang/Object;
.source "TrendActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/TrendActivity;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/TrendActivity;)V
    .locals 0

    .prologue
    .line 518
    iput-object p1, p0, Lcom/dexcom/cgm/activities/TrendActivity$8;->this$0:Lcom/dexcom/cgm/activities/TrendActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 522
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendActivity$8;->this$0:Lcom/dexcom/cgm/activities/TrendActivity;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/TrendActivity;->access$500(Lcom/dexcom/cgm/activities/TrendActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 527
    :goto_0
    return-void

    .line 523
    :cond_0
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendActivity$8;->this$0:Lcom/dexcom/cgm/activities/TrendActivity;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/TrendActivity;->access$600(Lcom/dexcom/cgm/activities/TrendActivity;)V

    .line 524
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendActivity$8;->this$0:Lcom/dexcom/cgm/activities/TrendActivity;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/TrendActivity;->access$200(Lcom/dexcom/cgm/activities/TrendActivity;)V

    .line 525
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendActivity$8;->this$0:Lcom/dexcom/cgm/activities/TrendActivity;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/TrendActivity;->access$700(Lcom/dexcom/cgm/activities/TrendActivity;)V

    .line 526
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendActivity$8;->this$0:Lcom/dexcom/cgm/activities/TrendActivity;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/TrendActivity;->refreshAlertSoundVisibility()V

    goto :goto_0
.end method
