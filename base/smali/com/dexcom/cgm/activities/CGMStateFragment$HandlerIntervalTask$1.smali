.class Lcom/dexcom/cgm/activities/CGMStateFragment$HandlerIntervalTask$1;
.super Ljava/lang/Object;
.source "CGMStateFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/dexcom/cgm/activities/CGMStateFragment$HandlerIntervalTask;

.field final synthetic val$intervalMillis:J

.field final synthetic val$r:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/CGMStateFragment$HandlerIntervalTask;Ljava/lang/Runnable;J)V
    .locals 1

    .prologue
    .line 1359
    iput-object p1, p0, Lcom/dexcom/cgm/activities/CGMStateFragment$HandlerIntervalTask$1;->this$1:Lcom/dexcom/cgm/activities/CGMStateFragment$HandlerIntervalTask;

    iput-object p2, p0, Lcom/dexcom/cgm/activities/CGMStateFragment$HandlerIntervalTask$1;->val$r:Ljava/lang/Runnable;

    iput-wide p3, p0, Lcom/dexcom/cgm/activities/CGMStateFragment$HandlerIntervalTask$1;->val$intervalMillis:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1363
    iget-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateFragment$HandlerIntervalTask$1;->val$r:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1364
    iget-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateFragment$HandlerIntervalTask$1;->this$1:Lcom/dexcom/cgm/activities/CGMStateFragment$HandlerIntervalTask;

    iget-wide v2, p0, Lcom/dexcom/cgm/activities/CGMStateFragment$HandlerIntervalTask$1;->val$intervalMillis:J

    invoke-virtual {v0, p0, v2, v3}, Lcom/dexcom/cgm/activities/CGMStateFragment$HandlerIntervalTask;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1365
    return-void
.end method
