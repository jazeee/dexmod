.class Lcom/dexcom/cgm/activities/SHealthActivity$2;
.super Ljava/lang/Object;
.source "SHealthActivity.java"

# interfaces
.implements Lcom/dexcom/cgm/activities/shealth/SHealthAdapter$SHealthCallback;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/SHealthActivity;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/SHealthActivity;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/dexcom/cgm/activities/SHealthActivity$2;->this$0:Lcom/dexcom/cgm/activities/SHealthActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectionFailed(Lcom/samsung/android/sdk/healthdata/a;)V
    .locals 3

    .prologue
    .line 101
    iget-object v0, p0, Lcom/dexcom/cgm/activities/SHealthActivity$2;->this$0:Lcom/dexcom/cgm/activities/SHealthActivity;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/SHealthActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/activities/SHealthActivity$2;->this$0:Lcom/dexcom/cgm/activities/SHealthActivity;

    .line 102
    invoke-virtual {v1}, Lcom/dexcom/cgm/activities/SHealthActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/dexcom/cgm/activities/R$string;->shealth_connection_error:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 101
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 103
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 104
    iget-object v0, p0, Lcom/dexcom/cgm/activities/SHealthActivity$2;->this$0:Lcom/dexcom/cgm/activities/SHealthActivity;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/SHealthActivity;->access$100(Lcom/dexcom/cgm/activities/SHealthActivity;)V

    .line 105
    return-void
.end method

.method public onPermissionsAcquired()V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/dexcom/cgm/activities/SHealthActivity$2;->this$0:Lcom/dexcom/cgm/activities/SHealthActivity;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/SHealthActivity;->access$200(Lcom/dexcom/cgm/activities/SHealthActivity;)V

    .line 111
    invoke-static {}, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;->triggerBackFill()V

    .line 112
    return-void
.end method

.method public onPermissionsNotAcquired()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/dexcom/cgm/activities/SHealthActivity$2;->this$0:Lcom/dexcom/cgm/activities/SHealthActivity;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/SHealthActivity;->access$100(Lcom/dexcom/cgm/activities/SHealthActivity;)V

    .line 118
    return-void
.end method
