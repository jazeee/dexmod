.class Lcom/dexcom/cgm/activities/alertsettings/SoundsActivity$1;
.super Ljava/lang/Object;
.source "SoundsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/alertsettings/SoundsActivity;

.field final synthetic val$adapter:Lcom/dexcom/cgm/activities/alertsettings/SoundsActivity$SoundsArrayAdapter;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/alertsettings/SoundsActivity;Lcom/dexcom/cgm/activities/alertsettings/SoundsActivity$SoundsArrayAdapter;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/dexcom/cgm/activities/alertsettings/SoundsActivity$1;->this$0:Lcom/dexcom/cgm/activities/alertsettings/SoundsActivity;

    iput-object p2, p0, Lcom/dexcom/cgm/activities/alertsettings/SoundsActivity$1;->val$adapter:Lcom/dexcom/cgm/activities/alertsettings/SoundsActivity$SoundsArrayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 111
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/SoundsActivity$1;->this$0:Lcom/dexcom/cgm/activities/alertsettings/SoundsActivity;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/alertsettings/SoundsActivity;->access$000(Lcom/dexcom/cgm/activities/alertsettings/SoundsActivity;)Lcom/dexcom/cgm/activities/media/MediaHandler;

    move-result-object v0

    if-nez v0, :cond_1

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/SoundsActivity$1;->this$0:Lcom/dexcom/cgm/activities/alertsettings/SoundsActivity;

    invoke-static {v0, p3}, Lcom/dexcom/cgm/activities/alertsettings/SoundsActivity;->access$102(Lcom/dexcom/cgm/activities/alertsettings/SoundsActivity;I)I

    .line 113
    iget-object v1, p0, Lcom/dexcom/cgm/activities/alertsettings/SoundsActivity$1;->this$0:Lcom/dexcom/cgm/activities/alertsettings/SoundsActivity;

    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/SoundsActivity$1;->val$adapter:Lcom/dexcom/cgm/activities/alertsettings/SoundsActivity$SoundsArrayAdapter;

    invoke-virtual {v0, p3}, Lcom/dexcom/cgm/activities/alertsettings/SoundsActivity$SoundsArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/dexcom/cgm/activities/alertsettings/SoundsActivity;->access$202(Lcom/dexcom/cgm/activities/alertsettings/SoundsActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 114
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/SoundsActivity$1;->val$adapter:Lcom/dexcom/cgm/activities/alertsettings/SoundsActivity$SoundsArrayAdapter;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/alertsettings/SoundsActivity$SoundsArrayAdapter;->notifyDataSetChanged()V

    .line 116
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/SoundsActivity$1;->this$0:Lcom/dexcom/cgm/activities/alertsettings/SoundsActivity;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/alertsettings/SoundsActivity;->access$200(Lcom/dexcom/cgm/activities/alertsettings/SoundsActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dexcom/cgm/i/a/a/a;->fromString(Ljava/lang/String;)Lcom/dexcom/cgm/i/a/a/a;

    move-result-object v0

    .line 117
    if-eqz v0, :cond_0

    .line 120
    sget-object v1, Lcom/dexcom/cgm/i/a/a/a;->VibrateOnly:Lcom/dexcom/cgm/i/a/a/a;

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/i/a/a/a;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 122
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/SoundsActivity$1;->this$0:Lcom/dexcom/cgm/activities/alertsettings/SoundsActivity;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/alertsettings/SoundsActivity;->access$000(Lcom/dexcom/cgm/activities/alertsettings/SoundsActivity;)Lcom/dexcom/cgm/activities/media/MediaHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/media/MediaHandler;->stop()V

    .line 123
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/SoundsActivity$1;->this$0:Lcom/dexcom/cgm/activities/alertsettings/SoundsActivity;

    sget-object v1, Lcom/dexcom/cgm/i/a/a/a;->VibrateOnly:Lcom/dexcom/cgm/i/a/a/a;

    invoke-static {v0, v1}, Lcom/dexcom/cgm/activities/alertsettings/SoundsActivity;->access$302(Lcom/dexcom/cgm/activities/alertsettings/SoundsActivity;Lcom/dexcom/cgm/i/a/a/a;)Lcom/dexcom/cgm/i/a/a/a;

    .line 124
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/SoundsActivity$1;->this$0:Lcom/dexcom/cgm/activities/alertsettings/SoundsActivity;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/alertsettings/SoundsActivity;->access$400(Lcom/dexcom/cgm/activities/alertsettings/SoundsActivity;)Landroid/os/Vibrator;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0

    .line 126
    :cond_2
    iget-object v1, p0, Lcom/dexcom/cgm/activities/alertsettings/SoundsActivity$1;->this$0:Lcom/dexcom/cgm/activities/alertsettings/SoundsActivity;

    invoke-static {v1, v0}, Lcom/dexcom/cgm/activities/alertsettings/SoundsActivity;->access$302(Lcom/dexcom/cgm/activities/alertsettings/SoundsActivity;Lcom/dexcom/cgm/i/a/a/a;)Lcom/dexcom/cgm/i/a/a/a;

    .line 127
    iget-object v1, p0, Lcom/dexcom/cgm/activities/alertsettings/SoundsActivity$1;->this$0:Lcom/dexcom/cgm/activities/alertsettings/SoundsActivity;

    invoke-static {v1}, Lcom/dexcom/cgm/activities/alertsettings/SoundsActivity;->access$000(Lcom/dexcom/cgm/activities/alertsettings/SoundsActivity;)Lcom/dexcom/cgm/activities/media/MediaHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dexcom/cgm/activities/media/MediaHandler;->play(Lcom/dexcom/cgm/i/a/a/a;)V

    goto :goto_0
.end method
