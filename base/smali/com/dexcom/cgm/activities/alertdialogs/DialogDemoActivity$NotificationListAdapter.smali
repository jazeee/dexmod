.class Lcom/dexcom/cgm/activities/alertdialogs/DialogDemoActivity$NotificationListAdapter;
.super Landroid/widget/BaseAdapter;
.source "DialogDemoActivity.java"


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/alertdialogs/DialogDemoActivity;


# direct methods
.method private constructor <init>(Lcom/dexcom/cgm/activities/alertdialogs/DialogDemoActivity;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/dexcom/cgm/activities/alertdialogs/DialogDemoActivity$NotificationListAdapter;->this$0:Lcom/dexcom/cgm/activities/alertdialogs/DialogDemoActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dexcom/cgm/activities/alertdialogs/DialogDemoActivity;Lcom/dexcom/cgm/activities/alertdialogs/DialogDemoActivity$1;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/activities/alertdialogs/DialogDemoActivity$NotificationListAdapter;-><init>(Lcom/dexcom/cgm/activities/alertdialogs/DialogDemoActivity;)V

    return-void
.end method

.method private configureListClickListener(ILandroid/view/View;)V
    .locals 3

    .prologue
    .line 79
    invoke-virtual {p0, p1}, Lcom/dexcom/cgm/activities/alertdialogs/DialogDemoActivity$NotificationListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    .line 81
    sget v1, Lcom/dexcom/cgm/activities/R$id;->dialog_list_item:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/dexcom/cgm/activities/alertdialogs/DialogDemoActivity$NotificationListAdapter$1;

    invoke-direct {v2, p0, v0}, Lcom/dexcom/cgm/activities/alertdialogs/DialogDemoActivity$NotificationListAdapter$1;-><init>(Lcom/dexcom/cgm/activities/alertdialogs/DialogDemoActivity$NotificationListAdapter;Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    return-void
.end method

.method private getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertdialogs/DialogDemoActivity$NotificationListAdapter;->this$0:Lcom/dexcom/cgm/activities/alertdialogs/DialogDemoActivity;

    const-string v1, "layout_inflater"

    .line 98
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/alertdialogs/DialogDemoActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 40
    invoke-static {}, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->values()[Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 46
    invoke-static {}, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->values()[Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 52
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 64
    if-nez p2, :cond_0

    .line 66
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/alertdialogs/DialogDemoActivity$NotificationListAdapter;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$layout;->demo_dialog_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 69
    :cond_0
    invoke-virtual {p0, p1}, Lcom/dexcom/cgm/activities/alertdialogs/DialogDemoActivity$NotificationListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    .line 70
    sget v1, Lcom/dexcom/cgm/activities/R$id;->dialog_list_item_text:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 71
    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/dexcom/cgm/activities/alertdialogs/DialogDemoActivity$NotificationListAdapter;->configureListClickListener(ILandroid/view/View;)V

    .line 74
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x1

    return v0
.end method
