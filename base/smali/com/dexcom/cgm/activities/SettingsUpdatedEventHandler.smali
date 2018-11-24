.class public Lcom/dexcom/cgm/activities/SettingsUpdatedEventHandler;
.super Ljava/lang/Object;
.source "SettingsUpdatedEventHandler.java"


# static fields
.field private static final ACTION_SETTINGS_CHANGED:Ljava/lang/String; = "CGM_SETTINGS_UPDATED"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 2

    .prologue
    .line 31
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 32
    const-string v1, "CGM_SETTINGS_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 34
    invoke-static {}, Lcom/dexcom/cgm/activities/TheApplicationContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 35
    return-void
.end method

.method public static onSettingsUpdated()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 43
    new-instance v0, Landroid/content/Intent;

    const-string v1, "CGM_SETTINGS_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 44
    invoke-static {}, Lcom/dexcom/cgm/activities/TheApplicationContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 50
    :try_start_0
    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
