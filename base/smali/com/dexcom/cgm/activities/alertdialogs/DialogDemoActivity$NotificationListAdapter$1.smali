.class Lcom/dexcom/cgm/activities/alertdialogs/DialogDemoActivity$NotificationListAdapter$1;
.super Ljava/lang/Object;
.source "DialogDemoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$1:Lcom/dexcom/cgm/activities/alertdialogs/DialogDemoActivity$NotificationListAdapter;

.field final synthetic val$alertType:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/alertdialogs/DialogDemoActivity$NotificationListAdapter;Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/dexcom/cgm/activities/alertdialogs/DialogDemoActivity$NotificationListAdapter$1;->this$1:Lcom/dexcom/cgm/activities/alertdialogs/DialogDemoActivity$NotificationListAdapter;

    iput-object p2, p0, Lcom/dexcom/cgm/activities/alertdialogs/DialogDemoActivity$NotificationListAdapter$1;->val$alertType:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 86
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertdialogs/DialogDemoActivity$NotificationListAdapter$1;->this$1:Lcom/dexcom/cgm/activities/alertdialogs/DialogDemoActivity$NotificationListAdapter;

    iget-object v0, v0, Lcom/dexcom/cgm/activities/alertdialogs/DialogDemoActivity$NotificationListAdapter;->this$0:Lcom/dexcom/cgm/activities/alertdialogs/DialogDemoActivity;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/alertdialogs/DialogDemoActivity$NotificationListAdapter$1;->val$alertType:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    invoke-static {v0, v1}, Lcom/dexcom/cgm/activities/alertdialogs/DialogDemoActivity;->access$000(Lcom/dexcom/cgm/activities/alertdialogs/DialogDemoActivity;Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;)Lcom/dexcom/cgm/model/AlertStateRecord;

    move-result-object v0

    .line 87
    new-instance v1, Lcom/dexcom/cgm/a/l;

    const/4 v2, 0x1

    sget-object v3, Lcom/dexcom/cgm/model/enums/AlertSound;->Beep:Lcom/dexcom/cgm/model/enums/AlertSound;

    invoke-direct {v1, v0, v2, v3}, Lcom/dexcom/cgm/a/l;-><init>(Lcom/dexcom/cgm/model/AlertStateRecord;ZLcom/dexcom/cgm/model/enums/AlertSound;)V

    .line 88
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertdialogs/DialogDemoActivity$NotificationListAdapter$1;->this$1:Lcom/dexcom/cgm/activities/alertdialogs/DialogDemoActivity$NotificationListAdapter;

    iget-object v0, v0, Lcom/dexcom/cgm/activities/alertdialogs/DialogDemoActivity$NotificationListAdapter;->this$0:Lcom/dexcom/cgm/activities/alertdialogs/DialogDemoActivity;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/dexcom/cgm/activities/alertdialogs/DialogCreator;->createDialogForAlert(Landroid/app/Activity;Lcom/dexcom/cgm/a/l;Ljava/lang/Runnable;)V

    .line 91
    return-void
.end method
