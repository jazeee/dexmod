.class Lcom/dexcom/cgm/activities/SettingsActivity$1;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Lcom/dexcom/cgm/activities/shealth/SHealthAdapter$SHealthCallback;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/SettingsActivity;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/dexcom/cgm/activities/SettingsActivity$1;->this$0:Lcom/dexcom/cgm/activities/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectionFailed(Lcom/samsung/android/sdk/healthdata/a;)V
    .locals 3

    .prologue
    .line 55
    invoke-virtual {p1}, Lcom/samsung/android/sdk/healthdata/a;->getErrorCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 61
    :goto_0
    iget-object v0, p0, Lcom/dexcom/cgm/activities/SettingsActivity$1;->this$0:Lcom/dexcom/cgm/activities/SettingsActivity;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/SettingsActivity;->access$100(Lcom/dexcom/cgm/activities/SettingsActivity;)Lcom/dexcom/cgm/activities/DexListNavView;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/activities/SettingsActivity$1;->this$0:Lcom/dexcom/cgm/activities/SettingsActivity;

    invoke-virtual {v1}, Lcom/dexcom/cgm/activities/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/dexcom/cgm/activities/R$string;->alert_text_off:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexListNavView;->setEndText(Ljava/lang/String;)V

    .line 62
    return-void

    .line 58
    :pswitch_0
    iget-object v0, p0, Lcom/dexcom/cgm/activities/SettingsActivity$1;->this$0:Lcom/dexcom/cgm/activities/SettingsActivity;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/dexcom/cgm/activities/SettingsActivity;->access$002(Lcom/dexcom/cgm/activities/SettingsActivity;I)I

    goto :goto_0

    .line 55
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onPermissionsAcquired()V
    .locals 3

    .prologue
    .line 66
    iget-object v0, p0, Lcom/dexcom/cgm/activities/SettingsActivity$1;->this$0:Lcom/dexcom/cgm/activities/SettingsActivity;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/SettingsActivity;->access$100(Lcom/dexcom/cgm/activities/SettingsActivity;)Lcom/dexcom/cgm/activities/DexListNavView;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/activities/SettingsActivity$1;->this$0:Lcom/dexcom/cgm/activities/SettingsActivity;

    invoke-virtual {v1}, Lcom/dexcom/cgm/activities/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/dexcom/cgm/activities/R$string;->alert_text_on:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexListNavView;->setEndText(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/dexcom/cgm/activities/SettingsActivity$1;->this$0:Lcom/dexcom/cgm/activities/SettingsActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/dexcom/cgm/activities/SettingsActivity;->access$002(Lcom/dexcom/cgm/activities/SettingsActivity;I)I

    .line 68
    return-void
.end method

.method public onPermissionsNotAcquired()V
    .locals 3

    .prologue
    .line 73
    iget-object v0, p0, Lcom/dexcom/cgm/activities/SettingsActivity$1;->this$0:Lcom/dexcom/cgm/activities/SettingsActivity;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/SettingsActivity;->access$100(Lcom/dexcom/cgm/activities/SettingsActivity;)Lcom/dexcom/cgm/activities/DexListNavView;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/activities/SettingsActivity$1;->this$0:Lcom/dexcom/cgm/activities/SettingsActivity;

    invoke-virtual {v1}, Lcom/dexcom/cgm/activities/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/dexcom/cgm/activities/R$string;->alert_text_off:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexListNavView;->setEndText(Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/dexcom/cgm/activities/SettingsActivity$1;->this$0:Lcom/dexcom/cgm/activities/SettingsActivity;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/dexcom/cgm/activities/SettingsActivity;->access$002(Lcom/dexcom/cgm/activities/SettingsActivity;I)I

    .line 75
    return-void
.end method
