.class Lcom/dexcom/cgm/activities/notifications/NotificationDemoActivity$NotificationListAdapter$1$1;
.super Ljava/lang/Object;
.source "NotificationDemoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$2:Lcom/dexcom/cgm/activities/notifications/NotificationDemoActivity$NotificationListAdapter$1;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/notifications/NotificationDemoActivity$NotificationListAdapter$1;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/dexcom/cgm/activities/notifications/NotificationDemoActivity$NotificationListAdapter$1$1;->this$2:Lcom/dexcom/cgm/activities/notifications/NotificationDemoActivity$NotificationListAdapter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/dexcom/cgm/activities/notifications/NotificationDemoActivity$NotificationListAdapter$1$1;->this$2:Lcom/dexcom/cgm/activities/notifications/NotificationDemoActivity$NotificationListAdapter$1;

    iget-object v0, v0, Lcom/dexcom/cgm/activities/notifications/NotificationDemoActivity$NotificationListAdapter$1;->val$notificationType:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/dexcom/cgm/activities/notifications/NotificationManager;->sendNotification(Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;I)V

    .line 92
    return-void
.end method
