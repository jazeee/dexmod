.class final Lcom/dexcom/cgm/activities/DatabaseCorruptionHandler$4;
.super Ljava/lang/Object;
.source "DatabaseCorruptionHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/dexcom/cgm/activities/DatabaseCorruptionHandler$4;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 158
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/dexcom/cgm/i/a;->resetAlertSettings()V

    .line 159
    invoke-static {}, Lcom/dexcom/cgm/activities/SettingsUpdatedEventHandler;->onSettingsUpdated()V

    .line 160
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/dexcom/cgm/activities/DatabaseCorruptionHandler;->access$202(Z)Z

    .line 161
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/DatabaseCorruptionHandler$4;->val$activity:Landroid/app/Activity;

    const-class v2, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 162
    const v1, 0x8000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 163
    iget-object v1, p0, Lcom/dexcom/cgm/activities/DatabaseCorruptionHandler$4;->val$activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 164
    return-void
.end method
