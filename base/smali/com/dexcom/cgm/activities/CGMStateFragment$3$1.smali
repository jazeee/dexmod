.class Lcom/dexcom/cgm/activities/CGMStateFragment$3$1;
.super Ljava/lang/Object;
.source "CGMStateFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/dexcom/cgm/activities/CGMStateFragment$3;

.field final synthetic val$dg:Lcom/dexcom/cgm/h/a/b;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/CGMStateFragment$3;Lcom/dexcom/cgm/h/a/b;)V
    .locals 0

    .prologue
    .line 347
    iput-object p1, p0, Lcom/dexcom/cgm/activities/CGMStateFragment$3$1;->this$1:Lcom/dexcom/cgm/activities/CGMStateFragment$3;

    iput-object p2, p0, Lcom/dexcom/cgm/activities/CGMStateFragment$3$1;->val$dg:Lcom/dexcom/cgm/h/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 351
    iget-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateFragment$3$1;->this$1:Lcom/dexcom/cgm/activities/CGMStateFragment$3;

    iget-object v0, v0, Lcom/dexcom/cgm/activities/CGMStateFragment$3;->this$0:Lcom/dexcom/cgm/activities/CGMStateFragment;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/CGMStateFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 367
    :cond_0
    :goto_0
    return-void

    .line 355
    :cond_1
    iget-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateFragment$3$1;->this$1:Lcom/dexcom/cgm/activities/CGMStateFragment$3;

    iget-object v0, v0, Lcom/dexcom/cgm/activities/CGMStateFragment$3;->this$0:Lcom/dexcom/cgm/activities/CGMStateFragment;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/CGMStateFragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateFragment$3$1;->val$dg:Lcom/dexcom/cgm/h/a/b;

    invoke-virtual {v0}, Lcom/dexcom/cgm/h/a/b;->getDisplayState()Lcom/dexcom/cgm/h/a/a/b;

    move-result-object v0

    sget-object v1, Lcom/dexcom/cgm/h/a/a/b;->TransmitterPairing:Lcom/dexcom/cgm/h/a/a/b;

    if-ne v0, v1, :cond_2

    .line 361
    iget-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateFragment$3$1;->this$1:Lcom/dexcom/cgm/activities/CGMStateFragment$3;

    iget-object v0, v0, Lcom/dexcom/cgm/activities/CGMStateFragment$3;->this$0:Lcom/dexcom/cgm/activities/CGMStateFragment;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/CGMStateFragment$3$1;->val$dg:Lcom/dexcom/cgm/h/a/b;

    invoke-static {v0, v1}, Lcom/dexcom/cgm/activities/CGMStateFragment;->access$500(Lcom/dexcom/cgm/activities/CGMStateFragment;Lcom/dexcom/cgm/h/a/b;)V

    goto :goto_0

    .line 363
    :cond_2
    iget-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateFragment$3$1;->val$dg:Lcom/dexcom/cgm/h/a/b;

    invoke-virtual {v0}, Lcom/dexcom/cgm/h/a/b;->getDisplayState()Lcom/dexcom/cgm/h/a/a/b;

    move-result-object v0

    sget-object v1, Lcom/dexcom/cgm/h/a/a/b;->StartUpPeriod:Lcom/dexcom/cgm/h/a/a/b;

    if-ne v0, v1, :cond_0

    .line 365
    iget-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateFragment$3$1;->this$1:Lcom/dexcom/cgm/activities/CGMStateFragment$3;

    iget-object v0, v0, Lcom/dexcom/cgm/activities/CGMStateFragment$3;->this$0:Lcom/dexcom/cgm/activities/CGMStateFragment;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/CGMStateFragment$3$1;->val$dg:Lcom/dexcom/cgm/h/a/b;

    invoke-static {v0, v1}, Lcom/dexcom/cgm/activities/CGMStateFragment;->access$600(Lcom/dexcom/cgm/activities/CGMStateFragment;Lcom/dexcom/cgm/h/a/b;)V

    goto :goto_0
.end method
