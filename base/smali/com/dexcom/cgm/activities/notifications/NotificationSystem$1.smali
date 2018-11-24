.class final Lcom/dexcom/cgm/activities/notifications/NotificationSystem$1;
.super Lcom/dexcom/cgm/activities/notifications/NotificationCallbackReceiver$OnAcknowledge;
.source "NotificationSystem.java"


# instance fields
.field final synthetic val$alertSystem:Lcom/dexcom/cgm/a/f;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/a/f;)V
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lcom/dexcom/cgm/activities/notifications/NotificationSystem$1;->val$alertSystem:Lcom/dexcom/cgm/a/f;

    invoke-direct {p0}, Lcom/dexcom/cgm/activities/notifications/NotificationCallbackReceiver$OnAcknowledge;-><init>()V

    return-void
.end method


# virtual methods
.method protected final onAcknowledge(Lcom/dexcom/cgm/h/a/a/a;)V
    .locals 2

    .prologue
    .line 24
    invoke-static {p1}, Lcom/dexcom/cgm/activities/notifications/NotificationSystem;->clearNotification(Lcom/dexcom/cgm/h/a/a/a;)V

    .line 25
    iget-object v0, p0, Lcom/dexcom/cgm/activities/notifications/NotificationSystem$1;->val$alertSystem:Lcom/dexcom/cgm/a/f;

    invoke-virtual {p1}, Lcom/dexcom/cgm/h/a/a/a;->toInternal()Lcom/dexcom/cgm/model/enums/AlertKind;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/dexcom/cgm/a/f;->acknowledgeAlert(Lcom/dexcom/cgm/model/enums/AlertKind;)V

    .line 26
    return-void
.end method
