.class Lcom/dexcom/cgm/activities/MeterEntryActivity$3;
.super Ljava/lang/Object;
.source "MeterEntryActivity.java"

# interfaces
.implements Lcom/dexcom/cgm/activities/DexDialogBuilder$OnCustomLayout;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/MeterEntryActivity;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/MeterEntryActivity;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/dexcom/cgm/activities/MeterEntryActivity$3;->this$0:Lcom/dexcom/cgm/activities/MeterEntryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayout(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 154
    sget v0, Lcom/dexcom/cgm/activities/R$id;->dex_meter_unit:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 155
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 156
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/dexcom/cgm/activities/MeterEntryActivity$3;->this$0:Lcom/dexcom/cgm/activities/MeterEntryActivity;

    iget v4, v4, Lcom/dexcom/cgm/activities/MeterEntryActivity;->m_meterValue:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/dexcom/cgm/activities/MeterEntryActivity$3;->this$0:Lcom/dexcom/cgm/activities/MeterEntryActivity;

    sget v5, Lcom/dexcom/cgm/activities/R$string;->mgdl_unit_of_measurement:I

    .line 157
    invoke-virtual {v4, v5}, Lcom/dexcom/cgm/activities/MeterEntryActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 156
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    return-void
.end method
