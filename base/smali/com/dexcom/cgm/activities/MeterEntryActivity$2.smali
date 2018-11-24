.class Lcom/dexcom/cgm/activities/MeterEntryActivity$2;
.super Ljava/lang/Object;
.source "MeterEntryActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/MeterEntryActivity;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/MeterEntryActivity;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/dexcom/cgm/activities/MeterEntryActivity$2;->this$0:Lcom/dexcom/cgm/activities/MeterEntryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 165
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 166
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v1

    .line 167
    invoke-virtual {v1}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v1

    .line 168
    invoke-interface {v1}, Lcom/dexcom/cgm/i/a;->getCurrentCgmStateInformation()Lcom/dexcom/cgm/h/a/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dexcom/cgm/h/a/b;->getEgv()I

    move-result v2

    .line 169
    const-string v3, "Difference"

    iget-object v4, p0, Lcom/dexcom/cgm/activities/MeterEntryActivity$2;->this$0:Lcom/dexcom/cgm/activities/MeterEntryActivity;

    iget v4, v4, Lcom/dexcom/cgm/activities/MeterEntryActivity;->m_meterValue:I

    sub-int/2addr v4, v2

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    const-string v3, "Calibration Value"

    iget-object v4, p0, Lcom/dexcom/cgm/activities/MeterEntryActivity$2;->this$0:Lcom/dexcom/cgm/activities/MeterEntryActivity;

    iget v4, v4, Lcom/dexcom/cgm/activities/MeterEntryActivity;->m_meterValue:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    const-string v3, "Transmitter Value"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    iget-object v2, p0, Lcom/dexcom/cgm/activities/MeterEntryActivity$2;->this$0:Lcom/dexcom/cgm/activities/MeterEntryActivity;

    invoke-virtual {v2}, Lcom/dexcom/cgm/activities/MeterEntryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/dexcom/cgm/activities/R$string;->flurry_evt_BG_Screen_Cal_vs_Xmitter:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/flurry/android/a;->logEvent(Ljava/lang/String;Ljava/util/Map;)Lcom/flurry/android/e;

    .line 175
    iget-object v0, p0, Lcom/dexcom/cgm/activities/MeterEntryActivity$2;->this$0:Lcom/dexcom/cgm/activities/MeterEntryActivity;

    iget v0, v0, Lcom/dexcom/cgm/activities/MeterEntryActivity;->m_meterValue:I

    invoke-static {}, Lcom/dexcom/cgm/k/j;->getCurrentSystemTime()Lcom/dexcom/cgm/k/j;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/dexcom/cgm/i/a;->calibrate(ILcom/dexcom/cgm/k/j;)V

    .line 176
    iget-object v0, p0, Lcom/dexcom/cgm/activities/MeterEntryActivity$2;->this$0:Lcom/dexcom/cgm/activities/MeterEntryActivity;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/MeterEntryActivity;->finish()V

    .line 177
    return-void
.end method
