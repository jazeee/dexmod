.class Lcom/dexcom/cgm/activities/notifications/NotificationDemoActivity$NotificationListAdapter;
.super Landroid/widget/BaseAdapter;
.source "NotificationDemoActivity.java"


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/notifications/NotificationDemoActivity;


# direct methods
.method private constructor <init>(Lcom/dexcom/cgm/activities/notifications/NotificationDemoActivity;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/dexcom/cgm/activities/notifications/NotificationDemoActivity$NotificationListAdapter;->this$0:Lcom/dexcom/cgm/activities/notifications/NotificationDemoActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dexcom/cgm/activities/notifications/NotificationDemoActivity;Lcom/dexcom/cgm/activities/notifications/NotificationDemoActivity$1;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/activities/notifications/NotificationDemoActivity$NotificationListAdapter;-><init>(Lcom/dexcom/cgm/activities/notifications/NotificationDemoActivity;)V

    return-void
.end method

.method private configureListClickListener(ILandroid/view/View;)V
    .locals 3

    .prologue
    .line 75
    invoke-virtual {p0, p1}, Lcom/dexcom/cgm/activities/notifications/NotificationDemoActivity$NotificationListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    .line 77
    sget v1, Lcom/dexcom/cgm/activities/R$id;->notification_list_item:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/dexcom/cgm/activities/notifications/NotificationDemoActivity$NotificationListAdapter$1;

    invoke-direct {v2, p0, v0}, Lcom/dexcom/cgm/activities/notifications/NotificationDemoActivity$NotificationListAdapter$1;-><init>(Lcom/dexcom/cgm/activities/notifications/NotificationDemoActivity$NotificationListAdapter;Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    return-void
.end method

.method private getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/dexcom/cgm/activities/notifications/NotificationDemoActivity$NotificationListAdapter;->this$0:Lcom/dexcom/cgm/activities/notifications/NotificationDemoActivity;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/notifications/NotificationDemoActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 35
    invoke-static {}, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->values()[Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 41
    invoke-static {}, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->values()[Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 47
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 59
    if-nez p2, :cond_0

    .line 61
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/notifications/NotificationDemoActivity$NotificationListAdapter;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$layout;->demo_notification_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 64
    :cond_0
    invoke-virtual {p0, p1}, Lcom/dexcom/cgm/activities/notifications/NotificationDemoActivity$NotificationListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    .line 65
    sget v1, Lcom/dexcom/cgm/activities/R$id;->notification_list_item_text:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 67
    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/dexcom/cgm/activities/notifications/NotificationDemoActivity$NotificationListAdapter;->configureListClickListener(ILandroid/view/View;)V

    .line 70
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x1

    return v0
.end method
