.class Lcom/dexcom/cgm/activities/AlertLifecycleCallbacks$1$1;
.super Ljava/lang/Object;
.source "AlertLifecycleCallbacks.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/dexcom/cgm/activities/AlertLifecycleCallbacks$1;

.field final synthetic val$event:Lcom/dexcom/cgm/a/l;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/AlertLifecycleCallbacks$1;Lcom/dexcom/cgm/a/l;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/dexcom/cgm/activities/AlertLifecycleCallbacks$1$1;->this$1:Lcom/dexcom/cgm/activities/AlertLifecycleCallbacks$1;

    iput-object p2, p0, Lcom/dexcom/cgm/activities/AlertLifecycleCallbacks$1$1;->val$event:Lcom/dexcom/cgm/a/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/dexcom/cgm/activities/AlertLifecycleCallbacks$1$1;->this$1:Lcom/dexcom/cgm/activities/AlertLifecycleCallbacks$1;

    iget-object v0, v0, Lcom/dexcom/cgm/activities/AlertLifecycleCallbacks$1;->this$0:Lcom/dexcom/cgm/activities/AlertLifecycleCallbacks;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/AlertLifecycleCallbacks$1$1;->val$event:Lcom/dexcom/cgm/a/l;

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/AlertLifecycleCallbacks;->evAlertCallback(Lcom/dexcom/cgm/a/l;)V

    .line 60
    return-void
.end method
