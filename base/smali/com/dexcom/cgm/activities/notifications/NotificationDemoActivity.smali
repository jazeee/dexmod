.class public Lcom/dexcom/cgm/activities/notifications/NotificationDemoActivity;
.super Landroid/app/Activity;
.source "NotificationDemoActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private createListAdapters()V
    .locals 3

    .prologue
    .line 116
    sget v0, Lcom/dexcom/cgm/activities/R$id;->notification_list:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/notifications/NotificationDemoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 117
    new-instance v1, Lcom/dexcom/cgm/activities/notifications/NotificationDemoActivity$NotificationListAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/dexcom/cgm/activities/notifications/NotificationDemoActivity$NotificationListAdapter;-><init>(Lcom/dexcom/cgm/activities/notifications/NotificationDemoActivity;Lcom/dexcom/cgm/activities/notifications/NotificationDemoActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 118
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 108
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 109
    sget v0, Lcom/dexcom/cgm/activities/R$layout;->activity_demo_notification_list:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/notifications/NotificationDemoActivity;->setContentView(I)V

    .line 111
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/notifications/NotificationDemoActivity;->createListAdapters()V

    .line 112
    return-void
.end method
