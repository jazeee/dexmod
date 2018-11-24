.class Lcom/dexcom/cgm/activities/notifications/NotificationDemoActivity$NotificationListAdapter$1;
.super Ljava/lang/Object;
.source "NotificationDemoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$1:Lcom/dexcom/cgm/activities/notifications/NotificationDemoActivity$NotificationListAdapter;

.field final synthetic val$notificationType:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/notifications/NotificationDemoActivity$NotificationListAdapter;Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/dexcom/cgm/activities/notifications/NotificationDemoActivity$NotificationListAdapter$1;->this$1:Lcom/dexcom/cgm/activities/notifications/NotificationDemoActivity$NotificationListAdapter;

    iput-object p2, p0, Lcom/dexcom/cgm/activities/notifications/NotificationDemoActivity$NotificationListAdapter$1;->val$notificationType:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 82
    iget-object v0, p0, Lcom/dexcom/cgm/activities/notifications/NotificationDemoActivity$NotificationListAdapter$1;->this$1:Lcom/dexcom/cgm/activities/notifications/NotificationDemoActivity$NotificationListAdapter;

    iget-object v0, v0, Lcom/dexcom/cgm/activities/notifications/NotificationDemoActivity$NotificationListAdapter;->this$0:Lcom/dexcom/cgm/activities/notifications/NotificationDemoActivity;

    const-string v1, "5 seconds until notification."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 85
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 86
    new-instance v1, Lcom/dexcom/cgm/activities/notifications/NotificationDemoActivity$NotificationListAdapter$1$1;

    invoke-direct {v1, p0}, Lcom/dexcom/cgm/activities/notifications/NotificationDemoActivity$NotificationListAdapter$1$1;-><init>(Lcom/dexcom/cgm/activities/notifications/NotificationDemoActivity$NotificationListAdapter$1;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x5

    .line 93
    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    .line 86
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 94
    return-void
.end method
