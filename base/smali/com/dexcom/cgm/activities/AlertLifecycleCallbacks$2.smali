.class Lcom/dexcom/cgm/activities/AlertLifecycleCallbacks$2;
.super Ljava/lang/Object;
.source "AlertLifecycleCallbacks.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/AlertLifecycleCallbacks;

.field final synthetic val$oneAlert:Lcom/dexcom/cgm/a/l;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/AlertLifecycleCallbacks;Lcom/dexcom/cgm/a/l;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/dexcom/cgm/activities/AlertLifecycleCallbacks$2;->this$0:Lcom/dexcom/cgm/activities/AlertLifecycleCallbacks;

    iput-object p2, p0, Lcom/dexcom/cgm/activities/AlertLifecycleCallbacks$2;->val$oneAlert:Lcom/dexcom/cgm/a/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/dexcom/cgm/activities/AlertLifecycleCallbacks$2;->val$oneAlert:Lcom/dexcom/cgm/a/l;

    invoke-virtual {v0}, Lcom/dexcom/cgm/a/l;->getAlertKind()Lcom/dexcom/cgm/model/enums/AlertKind;

    move-result-object v0

    invoke-static {v0}, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger;->logAlertAcknowledged(Lcom/dexcom/cgm/model/enums/AlertKind;)V

    .line 144
    iget-object v0, p0, Lcom/dexcom/cgm/activities/AlertLifecycleCallbacks$2;->this$0:Lcom/dexcom/cgm/activities/AlertLifecycleCallbacks;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/AlertLifecycleCallbacks;->access$000(Lcom/dexcom/cgm/activities/AlertLifecycleCallbacks;)Lcom/dexcom/cgm/a/f;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/activities/AlertLifecycleCallbacks$2;->val$oneAlert:Lcom/dexcom/cgm/a/l;

    invoke-virtual {v1}, Lcom/dexcom/cgm/a/l;->getAlertKind()Lcom/dexcom/cgm/model/enums/AlertKind;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/dexcom/cgm/a/f;->acknowledgeAlert(Lcom/dexcom/cgm/model/enums/AlertKind;)V

    .line 145
    return-void
.end method
