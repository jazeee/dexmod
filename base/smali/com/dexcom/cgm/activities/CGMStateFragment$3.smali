.class Lcom/dexcom/cgm/activities/CGMStateFragment$3;
.super Ljava/lang/Object;
.source "CGMStateFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/CGMStateFragment;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/CGMStateFragment;)V
    .locals 0

    .prologue
    .line 332
    iput-object p1, p0, Lcom/dexcom/cgm/activities/CGMStateFragment$3;->this$0:Lcom/dexcom/cgm/activities/CGMStateFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 336
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v0

    .line 337
    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v0

    .line 338
    invoke-interface {v0}, Lcom/dexcom/cgm/i/a;->getCurrentCgmStateInformation()Lcom/dexcom/cgm/h/a/b;

    move-result-object v0

    .line 339
    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/CGMStateFragment$3;->updateWheel(Lcom/dexcom/cgm/h/a/b;)V

    .line 340
    return-void
.end method

.method updateWheel(Lcom/dexcom/cgm/h/a/b;)V
    .locals 2

    .prologue
    .line 344
    iget-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateFragment$3;->this$0:Lcom/dexcom/cgm/activities/CGMStateFragment;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/CGMStateFragment;->access$400(Lcom/dexcom/cgm/activities/CGMStateFragment;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateFragment$3;->this$0:Lcom/dexcom/cgm/activities/CGMStateFragment;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/CGMStateFragment;->access$400(Lcom/dexcom/cgm/activities/CGMStateFragment;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/dexcom/cgm/activities/CGMStateFragment$3$1;

    invoke-direct {v1, p0, p1}, Lcom/dexcom/cgm/activities/CGMStateFragment$3$1;-><init>(Lcom/dexcom/cgm/activities/CGMStateFragment$3;Lcom/dexcom/cgm/h/a/b;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 370
    :cond_0
    return-void
.end method
