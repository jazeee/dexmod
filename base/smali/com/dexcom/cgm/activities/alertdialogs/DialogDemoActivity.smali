.class public Lcom/dexcom/cgm/activities/alertdialogs/DialogDemoActivity;
.super Landroid/app/Activity;
.source "DialogDemoActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/dexcom/cgm/activities/alertdialogs/DialogDemoActivity;Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;)Lcom/dexcom/cgm/model/AlertStateRecord;
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/activities/alertdialogs/DialogDemoActivity;->getAlertInfoForType(Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;)Lcom/dexcom/cgm/model/AlertStateRecord;

    move-result-object v0

    return-object v0
.end method

.method private createListAdapters()V
    .locals 3

    .prologue
    .line 177
    sget v0, Lcom/dexcom/cgm/activities/R$id;->dialog_list:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/alertdialogs/DialogDemoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 178
    new-instance v1, Lcom/dexcom/cgm/activities/alertdialogs/DialogDemoActivity$NotificationListAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/dexcom/cgm/activities/alertdialogs/DialogDemoActivity$NotificationListAdapter;-><init>(Lcom/dexcom/cgm/activities/alertdialogs/DialogDemoActivity;Lcom/dexcom/cgm/activities/alertdialogs/DialogDemoActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 179
    return-void
.end method

.method private getAlertInfoForType(Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;)Lcom/dexcom/cgm/model/AlertStateRecord;
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 104
    invoke-static {p1}, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->toAlertKind(Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;)Lcom/dexcom/cgm/model/enums/AlertKind;

    move-result-object v0

    .line 105
    invoke-static {}, Lcom/dexcom/cgm/k/j;->getCurrentSystemTime()Lcom/dexcom/cgm/k/j;

    move-result-object v2

    .line 107
    invoke-virtual {p1}, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->isGlucoseAlert()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/activities/alertdialogs/DialogDemoActivity;->getDemoEGVForType(Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;)Lcom/dexcom/cgm/model/Glucose;

    move-result-object v7

    .line 110
    sget-object v1, Lcom/dexcom/cgm/model/enums/AlertState;->AlertStateActiveAlarming:Lcom/dexcom/cgm/model/enums/AlertState;

    sget-object v3, Lcom/dexcom/cgm/k/j;->Unknown:Lcom/dexcom/cgm/k/j;

    sget-object v4, Lcom/dexcom/cgm/k/j;->Min:Lcom/dexcom/cgm/k/j;

    .line 117
    invoke-virtual {v7}, Lcom/dexcom/cgm/model/Glucose;->getGlucoseValue()I

    move-result v6

    .line 118
    invoke-virtual {v7}, Lcom/dexcom/cgm/model/Glucose;->getTrendArrow()Lcom/dexcom/cgm/model/enums/TrendArrow;

    move-result-object v7

    move v8, v5

    .line 110
    invoke-static/range {v0 .. v8}, Lcom/dexcom/cgm/model/AlertStateRecord;->createGlucoseAlertStateRecord(Lcom/dexcom/cgm/model/enums/AlertKind;Lcom/dexcom/cgm/model/enums/AlertState;Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/j;IILcom/dexcom/cgm/model/enums/TrendArrow;I)Lcom/dexcom/cgm/model/AlertStateRecord;

    move-result-object v0

    .line 121
    :goto_0
    return-object v0

    :cond_0
    sget-object v1, Lcom/dexcom/cgm/model/enums/AlertState;->AlertStateActiveAlarming:Lcom/dexcom/cgm/model/enums/AlertState;

    sget-object v3, Lcom/dexcom/cgm/k/j;->Unknown:Lcom/dexcom/cgm/k/j;

    sget-object v4, Lcom/dexcom/cgm/k/j;->Min:Lcom/dexcom/cgm/k/j;

    move v6, v5

    invoke-static/range {v0 .. v6}, Lcom/dexcom/cgm/model/AlertStateRecord;->createGeneralAlertStateRecord(Lcom/dexcom/cgm/model/enums/AlertKind;Lcom/dexcom/cgm/model/enums/AlertState;Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/j;II)Lcom/dexcom/cgm/model/AlertStateRecord;

    move-result-object v0

    goto :goto_0
.end method

.method private getDemoEGV(IF)Lcom/dexcom/cgm/model/Glucose;
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    .line 143
    new-instance v1, Lcom/dexcom/cgm/model/Glucose;

    sget-object v2, Lcom/dexcom/cgm/model/enums/AlgorithmState;->InCalibration:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    float-to-double v4, p2

    new-instance v6, Lcom/dexcom/cgm/k/m;

    .line 146
    invoke-static {}, Lcom/dexcom/cgm/k/j;->getCurrentSystemTime()Lcom/dexcom/cgm/k/j;

    move-result-object v0

    new-instance v3, Lcom/dexcom/cgm/k/n;

    invoke-direct {v3, v10, v11}, Lcom/dexcom/cgm/k/n;-><init>(J)V

    invoke-direct {v6, v0, v3}, Lcom/dexcom/cgm/k/m;-><init>(Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/n;)V

    .line 147
    invoke-static {}, Lcom/dexcom/cgm/model/TransmitterId;->GetDefaultId()Lcom/dexcom/cgm/model/TransmitterId;

    move-result-object v7

    new-instance v8, Lcom/dexcom/cgm/k/n;

    invoke-direct {v8, v10, v11}, Lcom/dexcom/cgm/k/n;-><init>(J)V

    const/4 v9, 0x0

    move v3, p1

    invoke-direct/range {v1 .. v9}, Lcom/dexcom/cgm/model/Glucose;-><init>(Lcom/dexcom/cgm/model/enums/AlgorithmState;IDLcom/dexcom/cgm/k/m;Lcom/dexcom/cgm/model/TransmitterId;Lcom/dexcom/cgm/k/n;Z)V

    return-object v1
.end method

.method private getDemoEGVForType(Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;)Lcom/dexcom/cgm/model/Glucose;
    .locals 6

    .prologue
    const/16 v5, 0xc8

    const/16 v4, 0x50

    const/16 v3, 0x27

    const/high16 v2, -0x3f800000    # -4.0f

    const v1, -0x3fff5c29    # -2.01f

    .line 127
    sget-object v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->UrgentLow:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    if-ne p1, v0, :cond_0

    .line 128
    const/16 v0, 0x37

    invoke-direct {p0, v3, v0}, Lcom/dexcom/cgm/activities/alertdialogs/DialogDemoActivity;->randomInt(II)I

    move-result v0

    invoke-direct {p0, v1, v2}, Lcom/dexcom/cgm/activities/alertdialogs/DialogDemoActivity;->randomFloat(FF)F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/activities/alertdialogs/DialogDemoActivity;->getDemoEGV(IF)Lcom/dexcom/cgm/model/Glucose;

    move-result-object v0

    .line 138
    :goto_0
    return-object v0

    .line 129
    :cond_0
    sget-object v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->Low:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    if-ne p1, v0, :cond_1

    .line 130
    const/16 v0, 0x38

    invoke-direct {p0, v0, v4}, Lcom/dexcom/cgm/activities/alertdialogs/DialogDemoActivity;->randomInt(II)I

    move-result v0

    const v1, -0x407eb852    # -1.01f

    const v2, -0x3fc0a3d7    # -2.99f

    invoke-direct {p0, v1, v2}, Lcom/dexcom/cgm/activities/alertdialogs/DialogDemoActivity;->randomFloat(FF)F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/activities/alertdialogs/DialogDemoActivity;->getDemoEGV(IF)Lcom/dexcom/cgm/model/Glucose;

    move-result-object v0

    goto :goto_0

    .line 131
    :cond_1
    sget-object v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->High:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    if-ne p1, v0, :cond_2

    .line 132
    const/16 v0, 0x191

    invoke-direct {p0, v5, v0}, Lcom/dexcom/cgm/activities/alertdialogs/DialogDemoActivity;->randomInt(II)I

    move-result v0

    const v1, 0x3f8147ae    # 1.01f

    const v2, 0x403f5c29    # 2.99f

    invoke-direct {p0, v1, v2}, Lcom/dexcom/cgm/activities/alertdialogs/DialogDemoActivity;->randomFloat(FF)F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/activities/alertdialogs/DialogDemoActivity;->getDemoEGV(IF)Lcom/dexcom/cgm/model/Glucose;

    move-result-object v0

    goto :goto_0

    .line 133
    :cond_2
    sget-object v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->RiseRate:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    if-ne p1, v0, :cond_3

    .line 134
    const/16 v0, 0x191

    invoke-direct {p0, v5, v0}, Lcom/dexcom/cgm/activities/alertdialogs/DialogDemoActivity;->randomInt(II)I

    move-result v0

    const v1, 0x4000a3d7    # 2.01f

    const/high16 v2, 0x40800000    # 4.0f

    invoke-direct {p0, v1, v2}, Lcom/dexcom/cgm/activities/alertdialogs/DialogDemoActivity;->randomFloat(FF)F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/activities/alertdialogs/DialogDemoActivity;->getDemoEGV(IF)Lcom/dexcom/cgm/model/Glucose;

    move-result-object v0

    goto :goto_0

    .line 135
    :cond_3
    sget-object v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->FallRate:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    if-ne p1, v0, :cond_4

    .line 136
    invoke-direct {p0, v3, v4}, Lcom/dexcom/cgm/activities/alertdialogs/DialogDemoActivity;->randomInt(II)I

    move-result v0

    invoke-direct {p0, v1, v2}, Lcom/dexcom/cgm/activities/alertdialogs/DialogDemoActivity;->randomFloat(FF)F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/activities/alertdialogs/DialogDemoActivity;->getDemoEGV(IF)Lcom/dexcom/cgm/model/Glucose;

    move-result-object v0

    goto :goto_0

    .line 138
    :cond_4
    invoke-static {}, Lcom/dexcom/cgm/model/Glucose;->getDefault()Lcom/dexcom/cgm/model/Glucose;

    move-result-object v0

    goto :goto_0
.end method

.method private randomFloat(FF)F
    .locals 4

    .prologue
    .line 163
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    sub-float v2, p2, p1

    float-to-double v2, v2

    mul-double/2addr v0, v2

    float-to-double v2, p1

    add-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method private randomInt(II)I
    .locals 6

    .prologue
    .line 155
    add-int/lit8 v0, p1, -0x1

    .line 156
    add-int/lit8 v1, p2, 0x1

    .line 158
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    sub-int/2addr v1, v0

    int-to-double v4, v1

    mul-double/2addr v2, v4

    int-to-double v0, v0

    add-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 169
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 170
    sget v0, Lcom/dexcom/cgm/activities/R$layout;->activity_demo_dialog_list:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/alertdialogs/DialogDemoActivity;->setContentView(I)V

    .line 172
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/alertdialogs/DialogDemoActivity;->createListAdapters()V

    .line 173
    return-void
.end method
