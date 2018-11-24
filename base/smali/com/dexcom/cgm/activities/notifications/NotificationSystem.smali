.class public Lcom/dexcom/cgm/activities/notifications/NotificationSystem;
.super Ljava/lang/Object;
.source "NotificationSystem.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearAllNotifications()V
    .locals 3

    .prologue
    .line 71
    invoke-static {}, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->values()[Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    move-result-object v1

    .line 72
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 74
    aget-object v2, v1, v0

    invoke-static {v2}, Lcom/dexcom/cgm/activities/notifications/NotificationManager;->clearNotification(Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;)V

    .line 72
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 76
    :cond_0
    return-void
.end method

.method public static clearNotification(Lcom/dexcom/cgm/h/a/a/a;)V
    .locals 1

    .prologue
    .line 57
    invoke-static {p0}, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->fromAlertKind(Lcom/dexcom/cgm/h/a/a/a;)Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    move-result-object v0

    .line 60
    if-nez v0, :cond_0

    .line 64
    :goto_0
    return-void

    .line 63
    :cond_0
    invoke-static {v0}, Lcom/dexcom/cgm/activities/notifications/NotificationManager;->clearNotification(Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;)V

    goto :goto_0
.end method

.method public static initialize(Lcom/dexcom/cgm/a/f;)V
    .locals 3

    .prologue
    .line 19
    new-instance v0, Lcom/dexcom/cgm/activities/notifications/NotificationSystem$1;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/activities/notifications/NotificationSystem$1;-><init>(Lcom/dexcom/cgm/a/f;)V

    invoke-static {v0}, Lcom/dexcom/cgm/activities/notifications/NotificationCallbackReceiver;->setup(Lcom/dexcom/cgm/activities/notifications/NotificationCallbackReceiver$OnAcknowledge;)V

    .line 30
    invoke-static {}, Lcom/dexcom/cgm/activities/notifications/NotificationSystem;->clearAllNotifications()V

    .line 32
    invoke-interface {p0}, Lcom/dexcom/cgm/a/f;->getAlertsCurrentlyOnDisplay()Ljava/lang/Iterable;

    move-result-object v0

    .line 33
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/a/l;

    .line 35
    invoke-virtual {v0}, Lcom/dexcom/cgm/a/l;->isActive()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 37
    invoke-static {v0}, Lcom/dexcom/cgm/activities/notifications/NotificationSystem;->sendNotification(Lcom/dexcom/cgm/a/l;)V

    goto :goto_0

    .line 40
    :cond_1
    return-void
.end method

.method public static sendNotification(Lcom/dexcom/cgm/a/l;)V
    .locals 2

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/dexcom/cgm/a/l;->getAlertKind()Lcom/dexcom/cgm/model/enums/AlertKind;

    move-result-object v0

    invoke-static {v0}, Lcom/dexcom/cgm/h/a/a/a;->fromInternal(Lcom/dexcom/cgm/model/enums/AlertKind;)Lcom/dexcom/cgm/h/a/a/a;

    move-result-object v0

    invoke-static {v0}, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->fromAlertKind(Lcom/dexcom/cgm/h/a/a/a;)Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    move-result-object v0

    .line 47
    if-nez v0, :cond_0

    .line 53
    :goto_0
    return-void

    .line 50
    :cond_0
    invoke-virtual {p0}, Lcom/dexcom/cgm/a/l;->getAlertStateRecord()Lcom/dexcom/cgm/model/AlertStateRecord;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dexcom/cgm/model/AlertStateRecord;->getDisplayedCount()I

    move-result v1

    .line 52
    invoke-static {v0, v1}, Lcom/dexcom/cgm/activities/notifications/NotificationManager;->sendNotification(Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;I)V

    goto :goto_0
.end method
