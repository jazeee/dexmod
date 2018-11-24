.class Lcom/dexcom/cgm/activities/TrendGraphFragment$2;
.super Ljava/lang/Object;
.source "TrendGraphFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/TrendGraphFragment;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/TrendGraphFragment;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/dexcom/cgm/activities/TrendGraphFragment$2;->this$0:Lcom/dexcom/cgm/activities/TrendGraphFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphFragment$2;->this$0:Lcom/dexcom/cgm/activities/TrendGraphFragment;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/TrendGraphFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphFragment$2;->this$0:Lcom/dexcom/cgm/activities/TrendGraphFragment;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/TrendGraphFragment;->access$200(Lcom/dexcom/cgm/activities/TrendGraphFragment;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 174
    :cond_1
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v0

    .line 175
    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v0

    .line 176
    invoke-interface {v0}, Lcom/dexcom/cgm/i/a;->getCurrentCgmStateInformation()Lcom/dexcom/cgm/h/a/b;

    move-result-object v0

    .line 177
    invoke-virtual {v0}, Lcom/dexcom/cgm/h/a/b;->getDisplayState()Lcom/dexcom/cgm/h/a/a/b;

    move-result-object v0

    sget-object v1, Lcom/dexcom/cgm/h/a/a/b;->TimeLoss:Lcom/dexcom/cgm/h/a/a/b;

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    .line 178
    :goto_1
    if-eqz v0, :cond_3

    .line 180
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphFragment$2;->this$0:Lcom/dexcom/cgm/activities/TrendGraphFragment;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/TrendGraphFragment;->access$300(Lcom/dexcom/cgm/activities/TrendGraphFragment;)V

    goto :goto_0

    .line 177
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 184
    :cond_3
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v0

    .line 185
    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/dexcom/cgm/i/a;->hasCompletedSensorWarmUpAtLeastOnce()Z

    move-result v0

    .line 187
    if-eqz v0, :cond_4

    .line 189
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphFragment$2;->this$0:Lcom/dexcom/cgm/activities/TrendGraphFragment;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/TrendGraphFragment;->access$400(Lcom/dexcom/cgm/activities/TrendGraphFragment;)V

    goto :goto_0

    .line 193
    :cond_4
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphFragment$2;->this$0:Lcom/dexcom/cgm/activities/TrendGraphFragment;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/TrendGraphFragment;->access$500(Lcom/dexcom/cgm/activities/TrendGraphFragment;)V

    goto :goto_0
.end method
