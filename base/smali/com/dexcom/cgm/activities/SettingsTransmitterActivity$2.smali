.class Lcom/dexcom/cgm/activities/SettingsTransmitterActivity$2;
.super Ljava/lang/Object;
.source "SettingsTransmitterActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/SettingsTransmitterActivity;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/SettingsTransmitterActivity;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/dexcom/cgm/activities/SettingsTransmitterActivity$2;->this$0:Lcom/dexcom/cgm/activities/SettingsTransmitterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 135
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v0

    .line 136
    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v0

    .line 137
    invoke-static {}, Lcom/dexcom/cgm/k/j;->getCurrentSystemTime()Lcom/dexcom/cgm/k/j;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/dexcom/cgm/i/a;->stopSensor(Lcom/dexcom/cgm/k/j;)V

    .line 138
    iget-object v0, p0, Lcom/dexcom/cgm/activities/SettingsTransmitterActivity$2;->this$0:Lcom/dexcom/cgm/activities/SettingsTransmitterActivity;

    const-class v1, Lcom/dexcom/cgm/activities/TransmitterSnScanActivity;

    invoke-static {v0, v1}, Lcom/dexcom/cgm/activities/SettingsTransmitterActivity;->access$000(Lcom/dexcom/cgm/activities/SettingsTransmitterActivity;Ljava/lang/Class;)V

    .line 139
    return-void
.end method
