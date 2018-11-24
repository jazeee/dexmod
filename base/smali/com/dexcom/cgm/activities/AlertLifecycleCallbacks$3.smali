.class Lcom/dexcom/cgm/activities/AlertLifecycleCallbacks$3;
.super Ljava/lang/Object;
.source "AlertLifecycleCallbacks.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/AlertLifecycleCallbacks;

.field final synthetic val$event:Lcom/dexcom/cgm/a/l;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/AlertLifecycleCallbacks;Lcom/dexcom/cgm/a/l;)V
    .locals 0

    .prologue
    .line 409
    iput-object p1, p0, Lcom/dexcom/cgm/activities/AlertLifecycleCallbacks$3;->this$0:Lcom/dexcom/cgm/activities/AlertLifecycleCallbacks;

    iput-object p2, p0, Lcom/dexcom/cgm/activities/AlertLifecycleCallbacks$3;->val$event:Lcom/dexcom/cgm/a/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 413
    iget-object v0, p0, Lcom/dexcom/cgm/activities/AlertLifecycleCallbacks$3;->val$event:Lcom/dexcom/cgm/a/l;

    invoke-virtual {v0}, Lcom/dexcom/cgm/a/l;->getAlertKind()Lcom/dexcom/cgm/model/enums/AlertKind;

    move-result-object v0

    invoke-static {v0}, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger;->logAlertAcknowledged(Lcom/dexcom/cgm/model/enums/AlertKind;)V

    .line 414
    iget-object v0, p0, Lcom/dexcom/cgm/activities/AlertLifecycleCallbacks$3;->this$0:Lcom/dexcom/cgm/activities/AlertLifecycleCallbacks;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/AlertLifecycleCallbacks;->access$000(Lcom/dexcom/cgm/activities/AlertLifecycleCallbacks;)Lcom/dexcom/cgm/a/f;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/activities/AlertLifecycleCallbacks$3;->val$event:Lcom/dexcom/cgm/a/l;

    invoke-virtual {v1}, Lcom/dexcom/cgm/a/l;->getAlertKind()Lcom/dexcom/cgm/model/enums/AlertKind;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/dexcom/cgm/a/f;->acknowledgeAlert(Lcom/dexcom/cgm/model/enums/AlertKind;)V

    .line 415
    invoke-static {}, Lcom/dexcom/cgm/activities/notifications/VolumeManipulator;->stopSound()V

    .line 416
    return-void
.end method
