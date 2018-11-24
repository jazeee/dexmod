.class Lcom/dexcom/cgm/activities/alertdialogs/GlucoseAlertDialogCreator;
.super Ljava/lang/Object;
.source "GlucoseAlertDialogCreator.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addAcknowledgeButton(Landroid/content/Context;Lcom/dexcom/cgm/activities/DexDialogBuilder;Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 173
    sget v0, Lcom/dexcom/cgm/activities/R$string;->ok:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/dexcom/cgm/activities/alertdialogs/GlucoseAlertDialogCreator$1;

    invoke-direct {v1, p2}, Lcom/dexcom/cgm/activities/alertdialogs/GlucoseAlertDialogCreator$1;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1, v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    .line 184
    return-void
.end method

.method public static createDialogForGlucoseAlert(Landroid/app/Activity;Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;ILcom/dexcom/cgm/model/enums/TrendArrow;Ljava/lang/Runnable;)Landroid/app/Dialog;
    .locals 2

    .prologue
    .line 35
    new-instance v0, Lcom/dexcom/cgm/activities/DexDialogBuilder;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/activities/DexDialogBuilder;-><init>(Landroid/app/Activity;)V

    .line 37
    invoke-static {p0, v0, p1, p2, p3}, Lcom/dexcom/cgm/activities/alertdialogs/GlucoseAlertDialogCreator;->initializeContentView(Landroid/content/Context;Lcom/dexcom/cgm/activities/DexDialogBuilder;Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;ILcom/dexcom/cgm/model/enums/TrendArrow;)V

    .line 39
    invoke-static {p0, v0, p4}, Lcom/dexcom/cgm/activities/alertdialogs/GlucoseAlertDialogCreator;->addAcknowledgeButton(Landroid/content/Context;Lcom/dexcom/cgm/activities/DexDialogBuilder;Ljava/lang/Runnable;)V

    .line 42
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setCancelable(Ljava/lang/Boolean;)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    .line 43
    invoke-virtual {p1}, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setLoggingText(Ljava/lang/String;)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    .line 45
    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->showAlert()Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method private static createMagClassCircle(Landroid/content/Context;Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;ILcom/dexcom/cgm/model/enums/TrendArrow;)Lcom/dexcom/cgm/activities/alertdialogs/MagGlassCircle;
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 74
    new-instance v0, Lcom/dexcom/cgm/activities/alertdialogs/MagGlassCircle;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/activities/alertdialogs/MagGlassCircle;-><init>(Landroid/content/Context;)V

    .line 76
    invoke-static {p1, p2, p3}, Lcom/dexcom/cgm/activities/alertdialogs/GlucoseAlertDialogCreator;->getMagGlassState(Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;ILcom/dexcom/cgm/model/enums/TrendArrow;)Lcom/dexcom/cgm/activities/MagGlassState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/alertdialogs/MagGlassCircle;->setMagGlassState(Lcom/dexcom/cgm/activities/MagGlassState;)V

    .line 80
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 82
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/alertdialogs/MagGlassCircle;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    return-object v0
.end method

.method private static getAngleFromTrendArrow(Lcom/dexcom/cgm/model/enums/TrendArrow;)F
    .locals 2

    .prologue
    .line 117
    sget-object v0, Lcom/dexcom/cgm/activities/alertdialogs/GlucoseAlertDialogCreator$2;->$SwitchMap$com$dexcom$cgm$model$enums$TrendArrow:[I

    invoke-virtual {p0}, Lcom/dexcom/cgm/model/enums/TrendArrow;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 134
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 121
    :pswitch_0
    const/high16 v0, -0x3d4c0000    # -90.0f

    goto :goto_0

    .line 124
    :pswitch_1
    const/high16 v0, -0x3dcc0000    # -45.0f

    goto :goto_0

    .line 127
    :pswitch_2
    const/high16 v0, 0x42340000    # 45.0f

    goto :goto_0

    .line 131
    :pswitch_3
    const/high16 v0, 0x42b40000    # 90.0f

    goto :goto_0

    .line 117
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private static getGlucoseViewGroup(Landroid/content/Context;)Landroid/view/ViewGroup;
    .locals 3

    .prologue
    .line 66
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 68
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 69
    sget v2, Lcom/dexcom/cgm/activities/R$layout;->glucose_alert_base:I

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method private static getMagGlassState(Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;ILcom/dexcom/cgm/model/enums/TrendArrow;)Lcom/dexcom/cgm/activities/MagGlassState;
    .locals 2

    .prologue
    .line 89
    new-instance v0, Lcom/dexcom/cgm/activities/MagGlassState$Builder;

    invoke-direct {v0}, Lcom/dexcom/cgm/activities/MagGlassState$Builder;-><init>()V

    .line 91
    sget-object v1, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->RiseRate:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    if-ne p0, v1, :cond_3

    .line 92
    const/16 v1, 0x259

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/MagGlassState$Builder;->egv(I)Lcom/dexcom/cgm/activities/MagGlassState$Builder;

    .line 98
    :goto_0
    invoke-static {p2}, Lcom/dexcom/cgm/activities/alertdialogs/GlucoseAlertDialogCreator;->getAngleFromTrendArrow(Lcom/dexcom/cgm/model/enums/TrendArrow;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/MagGlassState$Builder;->angle(F)Lcom/dexcom/cgm/activities/MagGlassState$Builder;

    .line 100
    sget-object v1, Lcom/dexcom/cgm/model/enums/TrendArrow;->DoubleUp:Lcom/dexcom/cgm/model/enums/TrendArrow;

    if-eq p2, v1, :cond_0

    sget-object v1, Lcom/dexcom/cgm/model/enums/TrendArrow;->DoubleDown:Lcom/dexcom/cgm/model/enums/TrendArrow;

    if-ne p2, v1, :cond_5

    .line 101
    :cond_0
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/MagGlassState$Builder;->numTrendArrows(I)Lcom/dexcom/cgm/activities/MagGlassState$Builder;

    .line 105
    :goto_1
    sget-object v1, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->UrgentLow:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    if-eq p0, v1, :cond_1

    sget-object v1, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->Low:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    if-ne p0, v1, :cond_6

    .line 106
    :cond_1
    sget v1, Lcom/dexcom/cgm/activities/R$color;->dex_red:I

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/MagGlassState$Builder;->circleColor(I)Lcom/dexcom/cgm/activities/MagGlassState$Builder;

    .line 112
    :cond_2
    :goto_2
    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/MagGlassState$Builder;->build()Lcom/dexcom/cgm/activities/MagGlassState;

    move-result-object v0

    return-object v0

    .line 93
    :cond_3
    sget-object v1, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->FallRate:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    if-ne p0, v1, :cond_4

    .line 94
    const/16 v1, 0x25a

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/MagGlassState$Builder;->egv(I)Lcom/dexcom/cgm/activities/MagGlassState$Builder;

    goto :goto_0

    .line 96
    :cond_4
    invoke-virtual {v0, p1}, Lcom/dexcom/cgm/activities/MagGlassState$Builder;->egv(I)Lcom/dexcom/cgm/activities/MagGlassState$Builder;

    goto :goto_0

    .line 103
    :cond_5
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/MagGlassState$Builder;->numTrendArrows(I)Lcom/dexcom/cgm/activities/MagGlassState$Builder;

    goto :goto_1

    .line 107
    :cond_6
    sget-object v1, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->High:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    if-ne p0, v1, :cond_7

    .line 108
    sget v1, Lcom/dexcom/cgm/activities/R$color;->dex_yellow:I

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/MagGlassState$Builder;->circleColor(I)Lcom/dexcom/cgm/activities/MagGlassState$Builder;

    goto :goto_2

    .line 109
    :cond_7
    sget-object v1, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->RiseRate:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    if-eq p0, v1, :cond_8

    sget-object v1, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->FallRate:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    if-ne p0, v1, :cond_2

    .line 110
    :cond_8
    sget v1, Lcom/dexcom/cgm/activities/R$color;->dex_white:I

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/MagGlassState$Builder;->circleColor(I)Lcom/dexcom/cgm/activities/MagGlassState$Builder;

    goto :goto_2
.end method

.method private static getTitleForGlucoseAlert(Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    invoke-static {p0}, Lcom/dexcom/cgm/activities/alertdialogs/GlucoseAlertDialogCreator;->getTitleIDForGlucoseAlert(Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getTitleIDForGlucoseAlert(Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;)I
    .locals 3

    .prologue
    .line 145
    sget-object v0, Lcom/dexcom/cgm/activities/alertdialogs/GlucoseAlertDialogCreator$2;->$SwitchMap$com$dexcom$cgm$activities$alertdialogs$AlertDialogType:[I

    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 163
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid glucose alert sent to titleForGlucoseAlert(): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :pswitch_0
    sget v0, Lcom/dexcom/cgm/activities/R$string;->urgent_low_glucose_alarm:I

    .line 160
    :goto_0
    return v0

    .line 151
    :pswitch_1
    sget v0, Lcom/dexcom/cgm/activities/R$string;->low_glucose_alert:I

    goto :goto_0

    .line 154
    :pswitch_2
    sget v0, Lcom/dexcom/cgm/activities/R$string;->high_glucose_alert:I

    goto :goto_0

    .line 157
    :pswitch_3
    sget v0, Lcom/dexcom/cgm/activities/R$string;->rise_rate_alert:I

    goto :goto_0

    .line 160
    :pswitch_4
    sget v0, Lcom/dexcom/cgm/activities/R$string;->fall_rate_alert:I

    goto :goto_0

    .line 145
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static initializeContentView(Landroid/content/Context;Lcom/dexcom/cgm/activities/DexDialogBuilder;Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;ILcom/dexcom/cgm/model/enums/TrendArrow;)V
    .locals 3

    .prologue
    .line 50
    invoke-static {p0}, Lcom/dexcom/cgm/activities/alertdialogs/GlucoseAlertDialogCreator;->getGlucoseViewGroup(Landroid/content/Context;)Landroid/view/ViewGroup;

    move-result-object v1

    .line 52
    sget v0, Lcom/dexcom/cgm/activities/R$id;->magGlassContainerView:I

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 53
    invoke-static {p0, p2, p3, p4}, Lcom/dexcom/cgm/activities/alertdialogs/GlucoseAlertDialogCreator;->createMagClassCircle(Landroid/content/Context;Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;ILcom/dexcom/cgm/model/enums/TrendArrow;)Lcom/dexcom/cgm/activities/alertdialogs/MagGlassCircle;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 55
    sget v0, Lcom/dexcom/cgm/activities/R$id;->glucose_alert_title:I

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 56
    invoke-static {p2, p0}, Lcom/dexcom/cgm/activities/alertdialogs/GlucoseAlertDialogCreator;->getTitleForGlucoseAlert(Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    invoke-virtual {p1, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setContentView(Landroid/view/View;)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    .line 59
    return-void
.end method
