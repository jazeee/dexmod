.class public Lcom/dexcom/cgm/activities/CGMStateFragment;
.super Landroid/support/v4/app/Fragment;
.source "CGMStateFragment.java"


# instance fields
.field private final EGV_20:Ljava/lang/String;

.field private final EGV_600:Ljava/lang/String;

.field private final REQUEST_ENABLE_BT:I

.field private m_CGMStateCircle:Lcom/dexcom/cgm/activities/CGMStateCircle;

.field private m_activity:Landroid/app/Activity;

.field private m_bluetoothReceiver:Lcom/dexcom/cgm/activities/CGMStateFragment$BluetoothChangeReceiver;

.field private m_cgmStateIconView:Landroid/widget/ImageView;

.field private m_cgmStateTopIconView:Landroid/widget/ImageView;

.field private m_circleText:Landroid/widget/TextView;

.field private m_context:Landroid/content/Context;

.field private m_handlerIntervalTask:Lcom/dexcom/cgm/activities/CGMStateFragment$HandlerIntervalTask;

.field private m_keyReceiver:Lcom/dexcom/cgm/activities/VolumeKeyReceiver;

.field private m_magGlassCompass:Lcom/dexcom/cgm/activities/MagGlassCompass;

.field private m_magGlassCompassView:Landroid/view/View;

.field private m_magGlassState:Lcom/dexcom/cgm/activities/MagGlassState;

.field private m_magGlassView:Landroid/widget/FrameLayout;

.field private m_previousDisplayState:Lcom/dexcom/cgm/h/a/a/b;

.field private m_receiverRegistered:Z

.field private m_refreshCallback:Lcom/dexcom/cgm/h/c;

.field private m_ringerFilter:Landroid/content/IntentFilter;

.field private m_switchView:Landroid/widget/Switch;

.field private m_textViewEGV:Landroid/widget/TextView;

.field private m_textViewEGVUnits:Landroid/widget/TextView;

.field private m_view:Landroid/view/View;

.field warmupProgressLoop:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 70
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 80
    new-instance v0, Lcom/dexcom/cgm/activities/MagGlassState$Builder;

    invoke-direct {v0}, Lcom/dexcom/cgm/activities/MagGlassState$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/MagGlassState$Builder;->build()Lcom/dexcom/cgm/activities/MagGlassState;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateFragment;->m_magGlassState:Lcom/dexcom/cgm/activities/MagGlassState;

    .line 88
    new-instance v0, Lcom/dexcom/cgm/activities/CGMStateFragment$HandlerIntervalTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/dexcom/cgm/activities/CGMStateFragment$HandlerIntervalTask;-><init>(Lcom/dexcom/cgm/activities/CGMStateFragment;Lcom/dexcom/cgm/activities/CGMStateFragment$1;)V

    iput-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateFragment;->m_handlerIntervalTask:Lcom/dexcom/cgm/activities/CGMStateFragment$HandlerIntervalTask;

    .line 92
    const-string v0, "20"

    iput-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateFragment;->EGV_20:Ljava/lang/String;

    .line 93
    const-string v0, "600"

    iput-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateFragment;->EGV_600:Ljava/lang/String;

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dexcom/cgm/activities/CGMStateFragment;->m_receiverRegistered:Z

    .line 100
    new-instance v0, Lcom/dexcom/cgm/activities/CGMStateFragment$1;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/activities/CGMStateFragment$1;-><init>(Lcom/dexcom/cgm/activities/CGMStateFragment;)V

    iput-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateFragment;->m_refreshCallback:Lcom/dexcom/cgm/h/c;

    .line 331
    new-instance v0, Lcom/dexcom/cgm/activities/CGMStateFragment$3;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/activities/CGMStateFragment$3;-><init>(Lcom/dexcom/cgm/activities/CGMStateFragment;)V

    iput-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateFragment;->warmupProgressLoop:Ljava/lang/Runnable;

    .line 819
    const/4 v0, 0x1

    iput v0, p0, Lcom/dexcom/cgm/activities/CGMStateFragment;->REQUEST_ENABLE_BT:I

    return-void
.end method

.method static synthetic access$100(Lcom/dexcom/cgm/activities/CGMStateFragment;)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/CGMStateFragment;->refreshUi()V

    return-void
.end method

.method static synthetic access$1000(Lcom/dexcom/cgm/activities/CGMStateFragment;)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/CGMStateFragment;->displayDialogSensorOutOfCal()V

    return-void
.end method

.method static synthetic access$1100(Lcom/dexcom/cgm/activities/CGMStateFragment;)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/CGMStateFragment;->displayDialogWedgeError()V

    return-void
.end method

.method static synthetic access$1200(Lcom/dexcom/cgm/activities/CGMStateFragment;)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/CGMStateFragment;->displayDialogStartSensorWarmupIfNeeded()V

    return-void
.end method

.method static synthetic access$1300(Lcom/dexcom/cgm/activities/CGMStateFragment;)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/CGMStateFragment;->displayDialogTransmitterNotFound()V

    return-void
.end method

.method static synthetic access$1400(Lcom/dexcom/cgm/activities/CGMStateFragment;)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/CGMStateFragment;->goToPairNewTransmitter()V

    return-void
.end method

.method static synthetic access$1500(Lcom/dexcom/cgm/activities/CGMStateFragment;)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/CGMStateFragment;->displayDialogBluetoothIsOff()V

    return-void
.end method

.method static synthetic access$1600(Lcom/dexcom/cgm/activities/CGMStateFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/CGMStateFragment;->getMessageToDisplayWithWedgeErrors()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/dexcom/cgm/activities/CGMStateFragment;)Landroid/widget/Switch;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateFragment;->m_switchView:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/dexcom/cgm/activities/CGMStateFragment;Landroid/widget/Switch;)Landroid/widget/Switch;
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/dexcom/cgm/activities/CGMStateFragment;->m_switchView:Landroid/widget/Switch;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/dexcom/cgm/activities/CGMStateFragment;Z)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/activities/CGMStateFragment;->setSensorWarmupDialogEnabled(Z)V

    return-void
.end method

.method static synthetic access$1900(Lcom/dexcom/cgm/activities/CGMStateFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateFragment;->m_magGlassCompassView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/dexcom/cgm/activities/CGMStateFragment;)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/CGMStateFragment;->refreshStatusDisplay()V

    return-void
.end method

.method static synthetic access$300(Lcom/dexcom/cgm/activities/CGMStateFragment;)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/CGMStateFragment;->logDisplayState()V

    return-void
.end method

.method static synthetic access$400(Lcom/dexcom/cgm/activities/CGMStateFragment;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateFragment;->m_activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$500(Lcom/dexcom/cgm/activities/CGMStateFragment;Lcom/dexcom/cgm/h/a/b;)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/activities/CGMStateFragment;->displayTransmitterPairingPeriod(Lcom/dexcom/cgm/h/a/b;)V

    return-void
.end method

.method static synthetic access$600(Lcom/dexcom/cgm/activities/CGMStateFragment;Lcom/dexcom/cgm/h/a/b;)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/activities/CGMStateFragment;->displaySensorWarmUpPeriod(Lcom/dexcom/cgm/h/a/b;)V

    return-void
.end method

.method static synthetic access$700(Lcom/dexcom/cgm/activities/CGMStateFragment;)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/CGMStateFragment;->displayDialogSevereNoise()V

    return-void
.end method

.method static synthetic access$800(Lcom/dexcom/cgm/activities/CGMStateFragment;Ljava/lang/Class;)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/activities/CGMStateFragment;->showActivityFromBottom(Ljava/lang/Class;)V

    return-void
.end method

.method static synthetic access$900(Lcom/dexcom/cgm/activities/CGMStateFragment;)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/CGMStateFragment;->displayDialogSignalLoss()V

    return-void
.end method

.method private checkOnHandlerTimerTask(Lcom/dexcom/cgm/h/a/b;)V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 287
    iget-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateFragment;->m_previousDisplayState:Lcom/dexcom/cgm/h/a/a/b;

    if-eqz v0, :cond_1

    .line 289
    iget-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateFragment;->m_previousDisplayState:Lcom/dexcom/cgm/h/a/a/b;

    sget-object v3, Lcom/dexcom/cgm/h/a/a/b;->TransmitterPairing:Lcom/dexcom/cgm/h/a/a/b;

    if-eq v0, v3, :cond_0

    iget-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateFragment;->m_previousDisplayState:Lcom/dexcom/cgm/h/a/a/b;

    sget-object v3, Lcom/dexcom/cgm/h/a/a/b;->StartUpPeriod:Lcom/dexcom/cgm/h/a/a/b;

    if-ne v0, v3, :cond_2

    :cond_0
    move v0, v2

    .line 292
    :goto_0
    invoke-virtual {p1}, Lcom/dexcom/cgm/h/a/b;->getDisplayState()Lcom/dexcom/cgm/h/a/a/b;

    move-result-object v3

    sget-object v4, Lcom/dexcom/cgm/h/a/a/b;->TransmitterPairing:Lcom/dexcom/cgm/h/a/a/b;

    if-eq v3, v4, :cond_3

    .line 294
    invoke-virtual {p1}, Lcom/dexcom/cgm/h/a/b;->getDisplayState()Lcom/dexcom/cgm/h/a/a/b;

    move-result-object v3

    sget-object v4, Lcom/dexcom/cgm/h/a/a/b;->StartUpPeriod:Lcom/dexcom/cgm/h/a/a/b;

    if-eq v3, v4, :cond_3

    .line 295
    :goto_1
    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    .line 297
    iget-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateFragment;->m_handlerIntervalTask:Lcom/dexcom/cgm/activities/CGMStateFragment$HandlerIntervalTask;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/CGMStateFragment$HandlerIntervalTask;->stop()V

    .line 300
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 289
    goto :goto_0

    :cond_3
    move v2, v1

    .line 294
    goto :goto_1
.end method

.method private displayAberrationStatus()V
    .locals 3

    .prologue
    .line 588
    sget v0, Lcom/dexcom/cgm/activities/R$drawable;->ic_hourglass_white:I

    sget v1, Lcom/dexcom/cgm/activities/R$color;->dex_black:I

    sget v2, Lcom/dexcom/cgm/activities/R$drawable;->ic_help_blue:I

    invoke-direct {p0, v0, v1, v2}, Lcom/dexcom/cgm/activities/CGMStateFragment;->displayCircleIcons(III)V

    .line 591
    return-void
.end method

.method private displayBlueToothIsOff()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 393
    iget-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateFragment;->m_CGMStateCircle:Lcom/dexcom/cgm/activities/CGMStateCircle;

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/CGMStateCircle;->setVisibility(I)V

    .line 394
    iget-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateFragment;->m_cgmStateIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 395
    iget-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateFragment;->m_magGlassView:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 396
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/CGMStateFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$string;->main_screen_bluetooth_is_off:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 397
    sget v1, Lcom/dexcom/cgm/activities/R$color;->dex_black:I

    sget v2, Lcom/dexcom/cgm/activities/R$drawable;->ic_help_blue:I

    invoke-direct {p0, v0, v1, v2}, Lcom/dexcom/cgm/activities/CGMStateFragment;->displayCircleData(Ljava/lang/String;II)V

    .line 398
    return-void
.end method

.method private displayCircleData(Ljava/lang/String;II)V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 751
    if-nez p3, :cond_0

    .line 753
    iget-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateFragment;->m_cgmStateIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 761
    :goto_0
    iget-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateFragment;->m_cgmStateTopIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 762
    iget-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateFragment;->m_circleText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 763
    iget-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateFragment;->m_circleText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 765
    iget-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateFragment;->m_CGMStateCircle:Lcom/dexcom/cgm/activities/CGMStateCircle;

    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/CGMStateFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/CGMStateCircle;->displayCircleWithoutProgress(I)V

    .line 767
    return-void

    .line 757
    :cond_0
    iget-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateFragment;->m_cgmStateIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 758
    iget-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateFragment;->m_cgmStateIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private displayCircleIcons(III)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 725
    if-nez p3, :cond_0

    .line 727
    iget-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateFragment;->m_cgmStateIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 736
    :goto_0
    if-nez p1, :cond_1

    .line 738
    iget-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateFragment;->m_cgmStateTopIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 746
    :goto_1
    iget-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateFragment;->m_CGMStateCircle:Lcom/dexcom/cgm/activities/CGMStateCircle;

    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/CGMStateFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/CGMStateCircle;->displayCircleWithoutProgress(I)V

    .line 747
    return-void

    .line 731
    :cond_0
    iget-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateFragment;->m_cgmStateIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 732
    iget-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateFragment;->m_cgmStateIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 742
    :cond_1
    iget-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateFragment;->m_circleText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 743
    iget-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateFragment;->m_cgmStateTopIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 744
    iget-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateFragment;->m_cgmStateTopIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method private displayDialogBluetoothIsOff()V
    .locals 2

    .prologue
    .line 823
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 825
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.adapter.action.REQUEST_ENABLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 826
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/dexcom/cgm/activities/CGMStateFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 828
    :cond_0
    return-void
.end method

.method private displayDialogSensorFailed()V
    .locals 3

    .prologue
    .line 970
    new-instance v0, Lcom/dexcom/cgm/activities/DexDialogBuilder;

    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/CGMStateFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;-><init>(Landroid/app/Activity;)V

    sget v1, Lcom/dexcom/cgm/activities/R$layout;->dialog_sensor_failed:I

    new-instance v2, Lcom/dexcom/cgm/activities/CGMStateFragment$8;

    invoke-direct {v2, p0}, Lcom/dexcom/cgm/activities/CGMStateFragment$8;-><init>(Lcom/dexcom/cgm/activities/CGMStateFragment;)V

    .line 971
    invoke-virtual {v0, v1, v2}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setContentLayout(ILcom/dexcom/cgm/activities/DexDialogBuilder$OnCustomLayout;)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$string;->ok:I

    .line 1006
    invoke-virtual {p0, v1}, Lcom/dexcom/cgm/activities/CGMStateFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/dexcom/cgm/activities/CGMStateFragment$7;

    invoke-direct {v2, p0}, Lcom/dexcom/cgm/activities/CGMStateFragment$7;-><init>(Lcom/dexcom/cgm/activities/CGMStateFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$string;->main_screen_error_text_40:I

    .line 1014
    invoke-virtual {p0, v1}, Lcom/dexcom/cgm/activities/CGMStateFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setLoggingText(Ljava/lang/String;)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    .line 1015
    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->show()Landroid/app/Dialog;

    .line 1016
    return-void
.end method

.method private displayDialogSensorOutOfCal()V
    .locals 3

    .prologue
    .line 870
    new-instance v0, Lcom/dexcom/cgm/activities/DexDialogBuilder;

    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/CGMStateFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;-><init>(Landroid/app/Activity;)V

    sget v1, Lcom/dexcom/cgm/activities/R$layout;->dialog_sensor_out_of_cal:I

    new-instance v2, Lcom/dexcom/cgm/activities/CGMStateFragment$5;

    invoke-direct {v2, p0}, Lcom/dexcom/cgm/activities/CGMStateFragment$5;-><init>(Lcom/dexcom/cgm/activities/CGMStateFragment;)V

    .line 871
    invoke-virtual {v0, v1, v2}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setContentLayout(ILcom/dexcom/cgm/activities/DexDialogBuilder$OnCustomLayout;)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    const/4 v1, 0x1

    .line 911
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setDismissButtonVisibility(Z)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$string;->main_screen_error_new_bg_needed:I

    .line 912
    invoke-virtual {p0, v1}, Lcom/dexcom/cgm/activities/CGMStateFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setLoggingText(Ljava/lang/String;)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    .line 913
    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->show()Landroid/app/Dialog;

    .line 914
    return-void
.end method

.method private displayDialogSevereNoise()V
    .locals 3

    .prologue
    .line 1060
    new-instance v0, Lcom/dexcom/cgm/activities/DexDialogBuilder;

    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/CGMStateFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;-><init>(Landroid/app/Activity;)V

    sget v1, Lcom/dexcom/cgm/activities/R$layout;->dialog_severe_noise:I

    new-instance v2, Lcom/dexcom/cgm/activities/CGMStateFragment$11;

    invoke-direct {v2, p0}, Lcom/dexcom/cgm/activities/CGMStateFragment$11;-><init>(Lcom/dexcom/cgm/activities/CGMStateFragment;)V

    .line 1061
    invoke-virtual {v0, v1, v2}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setContentLayout(ILcom/dexcom/cgm/activities/DexDialogBuilder$OnCustomLayout;)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    const/4 v1, 0x1

    .line 1106
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setDismissButtonVisibility(Z)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$string;->main_screen_error_text_22:I

    .line 1107
    invoke-virtual {p0, v1}, Lcom/dexcom/cgm/activities/CGMStateFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setLoggingText(Ljava/lang/String;)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    .line 1108
    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->show()Landroid/app/Dialog;

    .line 1109
    return-void
.end method

.method private displayDialogSignalLoss()V
    .locals 2

    .prologue
    .line 862
    new-instance v0, Lcom/dexcom/cgm/activities/DexDialogBuilder;

    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/CGMStateFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;-><init>(Landroid/app/Activity;)V

    sget v1, Lcom/dexcom/cgm/activities/R$layout;->dialog_signal_loss:I

    .line 863
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setContentLayout(I)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    const/4 v1, 0x1

    .line 864
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setDismissButtonVisibility(Z)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    .line 865
    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->show()Landroid/app/Dialog;

    .line 866
    return-void
.end method

.method private displayDialogStartSensorWarmupIfNeeded()V
    .locals 3

    .prologue
    .line 1022
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/dexcom/cgm/i/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v0

    .line 1023
    invoke-virtual {v0}, Lcom/dexcom/cgm/d/e;->getStartSensorWarmupDialogEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1056
    :cond_0
    :goto_0
    return-void

    .line 1028
    :cond_1
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v0

    .line 1029
    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v0

    .line 1030
    invoke-interface {v0}, Lcom/dexcom/cgm/i/a;->hasCompletedSensorWarmUpAtLeastOnce()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1035
    new-instance v0, Lcom/dexcom/cgm/activities/DexDialogBuilder;

    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/CGMStateFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;-><init>(Landroid/app/Activity;)V

    sget v1, Lcom/dexcom/cgm/activities/R$layout;->dialog_start_sensor_warmup:I

    new-instance v2, Lcom/dexcom/cgm/activities/CGMStateFragment$10;

    invoke-direct {v2, p0}, Lcom/dexcom/cgm/activities/CGMStateFragment$10;-><init>(Lcom/dexcom/cgm/activities/CGMStateFragment;)V

    .line 1036
    invoke-virtual {v0, v1, v2}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setContentLayout(ILcom/dexcom/cgm/activities/DexDialogBuilder$OnCustomLayout;)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$string;->ok:I

    .line 1046
    invoke-virtual {p0, v1}, Lcom/dexcom/cgm/activities/CGMStateFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/dexcom/cgm/activities/CGMStateFragment$9;

    invoke-direct {v2, p0}, Lcom/dexcom/cgm/activities/CGMStateFragment$9;-><init>(Lcom/dexcom/cgm/activities/CGMStateFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$string;->main_screen_sensor_warmup:I

    .line 1054
    invoke-virtual {p0, v1}, Lcom/dexcom/cgm/activities/CGMStateFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setLoggingText(Ljava/lang/String;)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    .line 1055
    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->show()Landroid/app/Dialog;

    goto :goto_0
.end method

.method private displayDialogTransmitterNotFound()V
    .locals 3

    .prologue
    .line 781
    new-instance v0, Lcom/dexcom/cgm/activities/DexDialogBuilder;

    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/CGMStateFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;-><init>(Landroid/app/Activity;)V

    sget v1, Lcom/dexcom/cgm/activities/R$layout;->dialog_transmitter_not_found:I

    new-instance v2, Lcom/dexcom/cgm/activities/CGMStateFragment$4;

    invoke-direct {v2, p0}, Lcom/dexcom/cgm/activities/CGMStateFragment$4;-><init>(Lcom/dexcom/cgm/activities/CGMStateFragment;)V

    .line 782
    invoke-virtual {v0, v1, v2}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setContentLayout(ILcom/dexcom/cgm/activities/DexDialogBuilder$OnCustomLayout;)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    const/4 v1, 0x1

    .line 814
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setDismissButtonVisibility(Z)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$string;->main_screen_error_text_20:I

    .line 815
    invoke-virtual {p0, v1}, Lcom/dexcom/cgm/activities/CGMStateFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setLoggingText(Ljava/lang/String;)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    .line 816
    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->show()Landroid/app/Dialog;

    .line 817
    return-void
.end method

.method private displayDialogWedgeError()V
    .locals 3

    .prologue
    .line 918
    new-instance v0, Lcom/dexcom/cgm/activities/DexDialogBuilder;

    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/CGMStateFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;-><init>(Landroid/app/Activity;)V

    sget v1, Lcom/dexcom/cgm/activities/R$layout;->dialog_enter_a_new_bg_in_15:I

    new-instance v2, Lcom/dexcom/cgm/activities/CGMStateFragment$6;

    invoke-direct {v2, p0}, Lcom/dexcom/cgm/activities/CGMStateFragment$6;-><init>(Lcom/dexcom/cgm/activities/CGMStateFragment;)V

    .line 919
    invoke-virtual {v0, v1, v2}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setContentLayout(ILcom/dexcom/cgm/activities/DexDialogBuilder$OnCustomLayout;)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    const/4 v1, 0x1

    .line 963
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setDismissButtonVisibility(Z)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$string;->main_screen_error_new_bg_needed:I

    .line 964
    invoke-virtual {p0, v1}, Lcom/dexcom/cgm/activities/CGMStateFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setLoggingText(Ljava/lang/String;)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    .line 965
    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->show()Landroid/app/Dialog;

    .line 966
    return-void
.end method

.method private displayEgvAndArrow(Lcom/dexcom/cgm/h/a/b;)V
    .locals 8

    .prologue
    const/high16 v4, 0x42b40000    # 90.0f

    const/high16 v3, -0x3d4c0000    # -90.0f

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 498
    iget-object v5, p0, Lcom/dexcom/cgm/activities/CGMStateFragment;->m_CGMStateCircle:Lcom/dexcom/cgm/activities/CGMStateCircle;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/dexcom/cgm/activities/CGMStateCircle;->setVisibility(I)V

    .line 499
    iget-object v5, p0, Lcom/dexcom/cgm/activities/CGMStateFragment;->m_cgmStateIconView:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 500
    iget-object v5, p0, Lcom/dexcom/cgm/activities/CGMStateFragment;->m_magGlassView:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 504
    sget-object v5, Lcom/dexcom/cgm/activities/CGMStateFragment$13;->$SwitchMap$com$dexcom$cgm$presentation$model$enums$DexTrendArrow:[I

    invoke-virtual {p1}, Lcom/dexcom/cgm/h/a/b;->getTrendArrow()Lcom/dexcom/cgm/h/a/a/e;

    move-result-object v6

    invoke-virtual {v6}, Lcom/dexcom/cgm/h/a/a/e;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    move v1, v2

    .line 543
    :goto_0
    invoke-virtual {p1}, Lcom/dexcom/cgm/h/a/b;->getEgv()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/dexcom/cgm/activities/CGMStateFragment;->getMagGlassCircleColor(I)I

    move-result v2

    .line 544
    new-instance v3, Lcom/dexcom/cgm/activities/MagGlassState$Builder;

    invoke-direct {v3}, Lcom/dexcom/cgm/activities/MagGlassState$Builder;-><init>()V

    .line 545
    invoke-virtual {v3, v1}, Lcom/dexcom/cgm/activities/MagGlassState$Builder;->angle(F)Lcom/dexcom/cgm/activities/MagGlassState$Builder;

    move-result-object v1

    .line 546
    invoke-virtual {v1, v0}, Lcom/dexcom/cgm/activities/MagGlassState$Builder;->numTrendArrows(I)Lcom/dexcom/cgm/activities/MagGlassState$Builder;

    move-result-object v0

    .line 547
    invoke-virtual {v0, v2}, Lcom/dexcom/cgm/activities/MagGlassState$Builder;->circleColor(I)Lcom/dexcom/cgm/activities/MagGlassState$Builder;

    move-result-object v0

    .line 548
    invoke-virtual {p1}, Lcom/dexcom/cgm/h/a/b;->getEgv()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/MagGlassState$Builder;->egv(I)Lcom/dexcom/cgm/activities/MagGlassState$Builder;

    move-result-object v0

    .line 549
    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/MagGlassState$Builder;->build()Lcom/dexcom/cgm/activities/MagGlassState;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateFragment;->m_magGlassState:Lcom/dexcom/cgm/activities/MagGlassState;

    .line 550
    iget-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateFragment;->m_magGlassState:Lcom/dexcom/cgm/activities/MagGlassState;

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/CGMStateFragment;->updateMagGlass(Lcom/dexcom/cgm/activities/MagGlassState;)V

    .line 551
    return-void

    :pswitch_0
    move v1, v2

    .line 507
    goto :goto_0

    .line 510
    :pswitch_1
    const/4 v0, 0x2

    move v1, v3

    .line 511
    goto :goto_0

    :pswitch_2
    move v0, v1

    move v1, v3

    .line 515
    goto :goto_0

    .line 517
    :pswitch_3
    const/high16 v0, -0x3dcc0000    # -45.0f

    move v7, v1

    move v1, v0

    move v0, v7

    .line 519
    goto :goto_0

    :pswitch_4
    move v0, v1

    move v1, v2

    .line 523
    goto :goto_0

    .line 525
    :pswitch_5
    const/high16 v0, 0x42340000    # 45.0f

    move v7, v1

    move v1, v0

    move v0, v7

    .line 527
    goto :goto_0

    :pswitch_6
    move v0, v1

    move v1, v4

    .line 531
    goto :goto_0

    .line 534
    :pswitch_7
    const/4 v0, 0x2

    move v1, v4

    .line 535
    goto :goto_0

    .line 504
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private displayFingerStickRequest(Lcom/dexcom/cgm/h/a/b;)V
    .locals 0

    .prologue
    .line 487
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/activities/CGMStateFragment;->displayEgvAndArrow(Lcom/dexcom/cgm/h/a/b;)V

    .line 488
    return-void
.end method

.method private displayNoSignal()V
    .locals 3

    .prologue
    .line 479
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/CGMStateFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$string;->main_screen_error_signal_loss:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 480
    sget v1, Lcom/dexcom/cgm/activities/R$color;->dex_black:I

    sget v2, Lcom/dexcom/cgm/activities/R$drawable;->ic_help_blue:I

    invoke-direct {p0, v0, v1, v2}, Lcom/dexcom/cgm/activities/CGMStateFragment;->displayCircleData(Ljava/lang/String;II)V

    .line 481
    new-instance v0, Lcom/dexcom/cgm/activities/notifications/PersistentNotificationBuilder;

    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/CGMStateFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dexcom/cgm/activities/notifications/PersistentNotificationBuilder;-><init>(Landroid/content/Context;)V

    .line 482
    return-void
.end method

.method private displayNotInSensorSession()V
    .locals 3

    .prologue
    .line 719
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/CGMStateFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$string;->main_screen_tap_to_start_sensor_session:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 720
    sget v1, Lcom/dexcom/cgm/activities/R$color;->dex_green:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/dexcom/cgm/activities/CGMStateFragment;->displayCircleData(Ljava/lang/String;II)V

    .line 721
    return-void
.end method

.method private displayPairNewTransmitter()V
    .locals 3

    .prologue
    .line 304
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/CGMStateFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$string;->main_screen_error_pair_transmitter:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 305
    sget v1, Lcom/dexcom/cgm/activities/R$color;->dex_black:I

    sget v2, Lcom/dexcom/cgm/activities/R$drawable;->ic_help_blue:I

    invoke-direct {p0, v0, v1, v2}, Lcom/dexcom/cgm/activities/CGMStateFragment;->displayCircleData(Ljava/lang/String;II)V

    .line 306
    return-void
.end method

.method private displaySecondOfTwoBgsNeeded()V
    .locals 3

    .prologue
    .line 473
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/CGMStateFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$string;->main_screen_tap_for_second_bg:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 474
    sget v1, Lcom/dexcom/cgm/activities/R$color;->dex_green:I

    sget v2, Lcom/dexcom/cgm/activities/R$drawable;->ic_meter_badge_1_white:I

    invoke-direct {p0, v0, v1, v2}, Lcom/dexcom/cgm/activities/CGMStateFragment;->displayCircleData(Ljava/lang/String;II)V

    .line 475
    return-void
.end method

.method private displaySensorOutOfCal()V
    .locals 3

    .prologue
    .line 467
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/CGMStateFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$string;->main_screen_error_new_bg_needed:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 468
    sget v1, Lcom/dexcom/cgm/activities/R$color;->dex_black:I

    sget v2, Lcom/dexcom/cgm/activities/R$drawable;->ic_help_blue:I

    invoke-direct {p0, v0, v1, v2}, Lcom/dexcom/cgm/activities/CGMStateFragment;->displayCircleData(Ljava/lang/String;II)V

    .line 469
    return-void
.end method

.method private displaySensorWarmUpPeriod(Lcom/dexcom/cgm/h/a/b;)V
    .locals 6

    .prologue
    const/high16 v0, 0x42c40000    # 98.0f

    const/high16 v1, 0x40000000    # 2.0f

    .line 698
    iget-object v2, p0, Lcom/dexcom/cgm/activities/CGMStateFragment;->m_handlerIntervalTask:Lcom/dexcom/cgm/activities/CGMStateFragment$HandlerIntervalTask;

    invoke-virtual {v2}, Lcom/dexcom/cgm/activities/CGMStateFragment$HandlerIntervalTask;->hasTask()Z

    move-result v2

    if-nez v2, :cond_0

    .line 700
    iget-object v2, p0, Lcom/dexcom/cgm/activities/CGMStateFragment;->m_handlerIntervalTask:Lcom/dexcom/cgm/activities/CGMStateFragment$HandlerIntervalTask;

    iget-object v3, p0, Lcom/dexcom/cgm/activities/CGMStateFragment;->warmupProgressLoop:Ljava/lang/Runnable;

    const-wide/16 v4, 0xfa0

    invoke-virtual {v2, v3, v4, v5}, Lcom/dexcom/cgm/activities/CGMStateFragment$HandlerIntervalTask;->repeatWithInterval(Ljava/lang/Runnable;J)V

    .line 703
    :cond_0
    invoke-virtual {p1}, Lcom/dexcom/cgm/h/a/b;->getSessionStartTime()Lcom/dexcom/cgm/k/j;

    move-result-object v2

    .line 704
    new-instance v3, Lcom/dexcom/cgm/k/j;

    invoke-static {}, Lcom/dexcom/cgm/k/a;->currentTimeSeconds()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Lcom/dexcom/cgm/k/j;-><init>(J)V

    .line 705
    invoke-virtual {v3, v2}, Lcom/dexcom/cgm/k/j;->subtract(Lcom/dexcom/cgm/k/j;)Lcom/dexcom/cgm/k/k;

    move-result-object v2

    .line 706
    invoke-virtual {v2}, Lcom/dexcom/cgm/k/k;->getSeconds()J

    move-result-wide v2

    long-to-float v2, v2

    const/high16 v3, 0x45e10000    # 7200.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v2, v3

    .line 707
    cmpg-float v3, v2, v1

    if-gez v3, :cond_1

    .line 708
    :goto_0
    cmpl-float v2, v1, v0

    if-lez v2, :cond_2

    .line 710
    :goto_1
    iget-object v1, p0, Lcom/dexcom/cgm/activities/CGMStateFragment;->m_cgmStateIconView:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 711
    iget-object v1, p0, Lcom/dexcom/cgm/activities/CGMStateFragment;->m_circleText:Landroid/widget/TextView;

    sget v2, Lcom/dexcom/cgm/activities/R$string;->main_screen_sensor_warmup:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 713
    iget-object v1, p0, Lcom/dexcom/cgm/activities/CGMStateFragment;->m_CGMStateCircle:Lcom/dexcom/cgm/activities/CGMStateCircle;

    .line 714
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/CGMStateFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/dexcom/cgm/activities/R$color;->dex_green:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 713
    invoke-virtual {v1, v0, v2}, Lcom/dexcom/cgm/activities/CGMStateCircle;->displayProgress(FI)V

    .line 715
    return-void

    :cond_1
    move v1, v2

    .line 707
    goto :goto_0

    :cond_2
    move v0, v1

    .line 708
    goto :goto_1
.end method

.method private displaySevereNoise()V
    .locals 3

    .prologue
    .line 408
    sget v0, Lcom/dexcom/cgm/activities/R$drawable;->ic_question_mark_white:I

    sget v1, Lcom/dexcom/cgm/activities/R$color;->dex_black:I

    sget v2, Lcom/dexcom/cgm/activities/R$drawable;->ic_help_blue:I

    invoke-direct {p0, v0, v1, v2}, Lcom/dexcom/cgm/activities/CGMStateFragment;->displayCircleIcons(III)V

    .line 411
    return-void
.end method

.method private displayTimeLoss()V
    .locals 3

    .prologue
    .line 492
    sget v0, Lcom/dexcom/cgm/activities/R$string;->main_screen_error_text_17:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/CGMStateFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 493
    sget v1, Lcom/dexcom/cgm/activities/R$color;->dex_black:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/dexcom/cgm/activities/CGMStateFragment;->displayCircleData(Ljava/lang/String;II)V

    .line 494
    return-void
.end method

.method private displayTransmitterNotFound()V
    .locals 3

    .prologue
    .line 402
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/CGMStateFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$string;->main_screen_error_transmitter_not_found:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 403
    sget v1, Lcom/dexcom/cgm/activities/R$color;->dex_black:I

    sget v2, Lcom/dexcom/cgm/activities/R$drawable;->ic_help_blue:I

    invoke-direct {p0, v0, v1, v2}, Lcom/dexcom/cgm/activities/CGMStateFragment;->displayCircleData(Ljava/lang/String;II)V

    .line 404
    return-void
.end method

.method private displayTransmitterPairingPeriod(Lcom/dexcom/cgm/h/a/b;)V
    .locals 6

    .prologue
    const/high16 v0, 0x42c40000    # 98.0f

    const/high16 v1, 0x40000000    # 2.0f

    .line 310
    iget-object v2, p0, Lcom/dexcom/cgm/activities/CGMStateFragment;->m_handlerIntervalTask:Lcom/dexcom/cgm/activities/CGMStateFragment$HandlerIntervalTask;

    invoke-virtual {v2}, Lcom/dexcom/cgm/activities/CGMStateFragment$HandlerIntervalTask;->hasTask()Z

    move-result v2

    if-nez v2, :cond_0

    .line 312
    iget-object v2, p0, Lcom/dexcom/cgm/activities/CGMStateFragment;->m_handlerIntervalTask:Lcom/dexcom/cgm/activities/CGMStateFragment$HandlerIntervalTask;

    iget-object v3, p0, Lcom/dexcom/cgm/activities/CGMStateFragment;->warmupProgressLoop:Ljava/lang/Runnable;

    const-wide/16 v4, 0xfa0

    invoke-virtual {v2, v3, v4, v5}, Lcom/dexcom/cgm/activities/CGMStateFragment$HandlerIntervalTask;->repeatWithInterval(Ljava/lang/Runnable;J)V

    .line 314
    :cond_0
    invoke-virtual {p1}, Lcom/dexcom/cgm/h/a/b;->getTransmitterIdSettingTime()Lcom/dexcom/cgm/k/j;

    move-result-object v2

    .line 315
    new-instance v3, Lcom/dexcom/cgm/k/j;

    invoke-static {}, Lcom/dexcom/cgm/k/a;->currentTimeSeconds()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Lcom/dexcom/cgm/k/j;-><init>(J)V

    .line 316
    invoke-virtual {v3, v2}, Lcom/dexcom/cgm/k/j;->subtract(Lcom/dexcom/cgm/k/j;)Lcom/dexcom/cgm/k/k;

    move-result-object v2

    .line 317
    sget-object v3, Lcom/dexcom/cgm/h/a;->TimeSpanForPairingFailed:Lcom/dexcom/cgm/k/k;

    .line 318
    invoke-virtual {v3}, Lcom/dexcom/cgm/k/k;->getSeconds()J

    move-result-wide v4

    long-to-float v3, v4

    .line 319
    invoke-virtual {v2}, Lcom/dexcom/cgm/k/k;->getSeconds()J

    move-result-wide v4

    long-to-float v2, v4

    div-float/2addr v2, v3

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v2, v3

    .line 321
    cmpg-float v3, v2, v1

    if-gez v3, :cond_1

    .line 322
    :goto_0
    cmpl-float v2, v1, v0

    if-lez v2, :cond_2

    .line 324
    :goto_1
    iget-object v1, p0, Lcom/dexcom/cgm/activities/CGMStateFragment;->m_cgmStateIconView:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 325
    iget-object v1, p0, Lcom/dexcom/cgm/activities/CGMStateFragment;->m_circleText:Landroid/widget/TextView;

    sget v2, Lcom/dexcom/cgm/activities/R$string;->dex_pairing_tx_device_message:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 327
    iget-object v1, p0, Lcom/dexcom/cgm/activities/CGMStateFragment;->m_CGMStateCircle:Lcom/dexcom/cgm/activities/CGMStateCircle;

    .line 328
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/CGMStateFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/dexcom/cgm/activities/R$color;->dex_green:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 327
    invoke-virtual {v1, v0, v2}, Lcom/dexcom/cgm/activities/CGMStateCircle;->displayProgress(FI)V

    .line 329
    return-void

    :cond_1
    move v1, v2

    .line 321
    goto :goto_0

    :cond_2
    move v0, v1

    .line 322
    goto :goto_1
.end method

.method private displayTwoStartupBgsNeeded()V
    .locals 3

    .prologue
    .line 581
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/CGMStateFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$string;->main_screen_tap_for_first_bg:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 582
    sget v1, Lcom/dexcom/cgm/activities/R$color;->dex_green:I

    sget v2, Lcom/dexcom/cgm/activities/R$drawable;->ic_meter_badge_2_white:I

    invoke-direct {p0, v0, v1, v2}, Lcom/dexcom/cgm/activities/CGMStateFragment;->displayCircleData(Ljava/lang/String;II)V

    .line 583
    return-void
.end method

.method private displayWedgeError()V
    .locals 3

    .prologue
    .line 415
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/CGMStateFragment;->getMessageToDisplayWithWedgeErrors()Ljava/lang/String;

    move-result-object v0

    .line 416
    sget v1, Lcom/dexcom/cgm/activities/R$color;->dex_black:I

    sget v2, Lcom/dexcom/cgm/activities/R$drawable;->ic_help_blue:I

    invoke-direct {p0, v0, v1, v2}, Lcom/dexcom/cgm/activities/CGMStateFragment;->displayCircleData(Ljava/lang/String;II)V

    .line 417
    return-void
.end method

.method private getMagGlassCircleColor(I)I
    .locals 3

    .prologue
    .line 555
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v0

    .line 556
    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v0

    .line 557
    invoke-interface {v0}, Lcom/dexcom/cgm/i/a;->getActiveAlertSettings()Lcom/dexcom/cgm/i/a/a;

    move-result-object v1

    .line 559
    invoke-virtual {v1}, Lcom/dexcom/cgm/i/a/a;->getUrgentLow()Lcom/dexcom/cgm/i/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/i/a/b;->getThreshold()I

    move-result v0

    .line 560
    invoke-virtual {v1}, Lcom/dexcom/cgm/i/a/a;->getUserLow()Lcom/dexcom/cgm/i/a/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dexcom/cgm/i/a/b;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 562
    invoke-virtual {v1}, Lcom/dexcom/cgm/i/a/a;->getUserLow()Lcom/dexcom/cgm/i/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/i/a/b;->getThreshold()I

    move-result v0

    .line 564
    :cond_0
    if-gt p1, v0, :cond_1

    .line 566
    sget v0, Lcom/dexcom/cgm/activities/R$color;->dex_red:I

    .line 576
    :goto_0
    return v0

    .line 568
    :cond_1
    invoke-virtual {v1}, Lcom/dexcom/cgm/i/a/a;->getUserHigh()Lcom/dexcom/cgm/i/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/i/a/b;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 570
    invoke-virtual {v1}, Lcom/dexcom/cgm/i/a/a;->getUserHigh()Lcom/dexcom/cgm/i/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/i/a/b;->getThreshold()I

    move-result v0

    if-lt p1, v0, :cond_2

    .line 572
    sget v0, Lcom/dexcom/cgm/activities/R$color;->dex_yellow:I

    goto :goto_0

    .line 576
    :cond_2
    sget v0, Lcom/dexcom/cgm/activities/R$color;->dex_light_gray:I

    goto :goto_0
.end method

.method private getMessageToDisplayWithWedgeErrors()Ljava/lang/String;
    .locals 8
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 422
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v0

    .line 423
    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v0

    .line 424
    invoke-interface {v0}, Lcom/dexcom/cgm/i/a;->getLastCalibration()Lcom/dexcom/cgm/h/a/d;

    move-result-object v1

    .line 425
    invoke-interface {v0}, Lcom/dexcom/cgm/i/a;->getMetersFromCurrentSession()Ljava/util/List;

    move-result-object v0

    .line 426
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 427
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/h/a/d;

    .line 428
    :goto_0
    if-nez v0, :cond_3

    move-object v0, v1

    .line 443
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/CGMStateFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/dexcom/cgm/activities/R$string;->main_screen_error_new_bg_needed:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 444
    if-eqz v0, :cond_4

    .line 446
    invoke-static {}, Lcom/dexcom/cgm/k/j;->getCurrentSystemTime()Lcom/dexcom/cgm/k/j;

    move-result-object v1

    .line 447
    invoke-virtual {v0}, Lcom/dexcom/cgm/h/a/d;->getMeterTimeStamp()Lcom/dexcom/cgm/k/j;

    move-result-object v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0xf

    .line 448
    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    .line 447
    invoke-virtual {v0, v2, v3}, Lcom/dexcom/cgm/k/j;->addSeconds(J)Lcom/dexcom/cgm/k/j;

    move-result-object v2

    .line 449
    new-instance v0, Lorg/joda/time/LocalDateTime;

    invoke-virtual {v2}, Lcom/dexcom/cgm/k/j;->getTimeInSeconds()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-direct {v0, v4, v5}, Lorg/joda/time/LocalDateTime;-><init>(J)V

    .line 453
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/CGMStateFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v3

    .line 454
    invoke-virtual {v0}, Lorg/joda/time/LocalDateTime;->toDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 456
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/CGMStateFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/dexcom/cgm/activities/R$string;->main_screen_error_bg_after_time:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 457
    invoke-virtual {v1}, Lcom/dexcom/cgm/k/j;->getTimeInSeconds()J

    move-result-wide v4

    invoke-virtual {v2}, Lcom/dexcom/cgm/k/j;->getTimeInSeconds()J

    move-result-wide v2

    cmp-long v1, v4, v2

    if-lez v1, :cond_1

    .line 459
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/CGMStateFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$string;->main_screen_error_new_bg_needed:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 462
    :cond_1
    :goto_2
    return-object v0

    .line 427
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 434
    :cond_3
    if-eqz v1, :cond_0

    .line 436
    invoke-virtual {v0}, Lcom/dexcom/cgm/h/a/d;->getMeterTimeStamp()Lcom/dexcom/cgm/k/j;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dexcom/cgm/k/j;->getTimeInSeconds()J

    move-result-wide v2

    .line 437
    invoke-virtual {v1}, Lcom/dexcom/cgm/h/a/d;->getMeterTimeStamp()Lcom/dexcom/cgm/k/j;

    move-result-object v4

    invoke-virtual {v4}, Lcom/dexcom/cgm/k/j;->getTimeInSeconds()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    move-object v0, v1

    .line 439
    goto :goto_1

    :cond_4
    move-object v0, v1

    goto :goto_2
.end method

.method private getShareIconID()I
    .locals 2

    .prologue
    .line 1297
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v0

    .line 1298
    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v0

    .line 1299
    invoke-interface {v0}, Lcom/dexcom/cgm/i/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v0

    .line 1300
    invoke-virtual {v0}, Lcom/dexcom/cgm/d/e;->hasCompletedShareTutorial()Z

    move-result v0

    .line 1301
    if-nez v0, :cond_0

    .line 1303
    sget v0, Lcom/dexcom/cgm/activities/R$drawable;->ic_share_off:I

    .line 1316
    :goto_0
    return v0

    .line 1306
    :cond_0
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getShareComponent()Lcom/dexcom/cgm/share/ShareService;

    move-result-object v0

    .line 1307
    invoke-interface {v0}, Lcom/dexcom/cgm/share/ShareService;->getPhoneStatus()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1308
    invoke-interface {v0}, Lcom/dexcom/cgm/share/ShareService;->getInternetStatus()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1309
    invoke-interface {v0}, Lcom/dexcom/cgm/share/ShareService;->getServerStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1310
    invoke-static {}, Lcom/dexcom/cgm/activities/share/ShareMainActivity;->isDozeEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 1311
    :goto_1
    if-eqz v0, :cond_3

    .line 1313
    sget v0, Lcom/dexcom/cgm/activities/R$drawable;->ic_share_off_badge_1:I

    goto :goto_0

    .line 1310
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 1316
    :cond_3
    sget v0, Lcom/dexcom/cgm/activities/R$drawable;->ic_share_color:I

    goto :goto_0
.end method

.method private getShareStateType()Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$ShareStateType;
    .locals 2

    .prologue
    .line 1279
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/CGMStateFragment;->getShareIconID()I

    move-result v0

    .line 1281
    sget v1, Lcom/dexcom/cgm/activities/R$drawable;->ic_share_color:I

    if-ne v0, v1, :cond_0

    .line 1283
    sget-object v0, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$ShareStateType;->ShareEnabled:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$ShareStateType;

    .line 1291
    :goto_0
    return-object v0

    .line 1285
    :cond_0
    sget v1, Lcom/dexcom/cgm/activities/R$drawable;->ic_share_off:I

    if-ne v0, v1, :cond_1

    .line 1287
    sget-object v0, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$ShareStateType;->ShareDisabled:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$ShareStateType;

    goto :goto_0

    .line 1291
    :cond_1
    sget-object v0, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$ShareStateType;->ShareError:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$ShareStateType;

    goto :goto_0
.end method

.method private goToPairNewTransmitter()V
    .locals 3

    .prologue
    .line 693
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/CGMStateFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/dexcom/cgm/activities/TransmitterSnScanActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/CGMStateFragment;->startActivity(Landroid/content/Intent;)V

    .line 694
    return-void
.end method

.method private static isCalibrationBadgeVisible(Lcom/dexcom/cgm/h/a/b;)Z
    .locals 2

    .prologue
    .line 1266
    sget-object v0, Lcom/dexcom/cgm/activities/CGMStateFragment$13;->$SwitchMap$com$dexcom$cgm$presentation$model$enums$DexDisplayState:[I

    invoke-virtual {p0}, Lcom/dexcom/cgm/h/a/b;->getDisplayState()Lcom/dexcom/cgm/h/a/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dexcom/cgm/h/a/a/b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1273
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1271
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1266
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isEgvVisible(Lcom/dexcom/cgm/h/a/b;)Z
    .locals 2

    .prologue
    .line 387
    invoke-virtual {p1}, Lcom/dexcom/cgm/h/a/b;->getDisplayState()Lcom/dexcom/cgm/h/a/a/b;

    move-result-object v0

    sget-object v1, Lcom/dexcom/cgm/h/a/a/b;->EGVAvailable:Lcom/dexcom/cgm/h/a/a/b;

    if-eq v0, v1, :cond_0

    .line 388
    invoke-virtual {p1}, Lcom/dexcom/cgm/h/a/b;->getDisplayState()Lcom/dexcom/cgm/h/a/a/b;

    move-result-object v0

    sget-object v1, Lcom/dexcom/cgm/h/a/a/b;->FingerStickRequest:Lcom/dexcom/cgm/h/a/a/b;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private logDisplayState()V
    .locals 5

    .prologue
    .line 1223
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/CGMStateFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 1224
    if-nez v0, :cond_0

    .line 1260
    :goto_0
    return-void

    .line 1227
    :cond_0
    sget v1, Lcom/dexcom/cgm/activities/R$id;->textView:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1228
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1229
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v1

    .line 1230
    invoke-virtual {v1}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v1

    .line 1231
    invoke-interface {v1}, Lcom/dexcom/cgm/i/a;->getCurrentCgmStateInformation()Lcom/dexcom/cgm/h/a/b;

    move-result-object v1

    .line 1232
    invoke-static {v1}, Lcom/dexcom/cgm/activities/CGMStateFragment;->isCalibrationBadgeVisible(Lcom/dexcom/cgm/h/a/b;)Z

    move-result v2

    .line 1234
    sget-object v3, Lcom/dexcom/cgm/activities/CGMStateFragment$13;->$SwitchMap$com$dexcom$cgm$presentation$model$enums$DexDisplayState:[I

    invoke-virtual {v1}, Lcom/dexcom/cgm/h/a/b;->getDisplayState()Lcom/dexcom/cgm/h/a/a/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/dexcom/cgm/h/a/a/b;->ordinal()I

    move-result v4

    aget v3, v3, v4

    sparse-switch v3, :sswitch_data_0

    .line 1254
    sget-object v1, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$CircleStateLogType;->ErrorCircle:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$CircleStateLogType;

    .line 1257
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/CGMStateFragment;->getShareStateType()Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$ShareStateType;

    move-result-object v3

    .line 1254
    invoke-static {v1, v0, v2, v3}, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger;->logTextualCircleUpdate(Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$CircleStateLogType;Ljava/lang/String;ZLcom/dexcom/cgm/tech_support_logger/TechSupportLogger$ShareStateType;)V

    goto :goto_0

    .line 1239
    :sswitch_0
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/CGMStateFragment;->getShareStateType()Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$ShareStateType;

    move-result-object v0

    .line 1237
    invoke-static {v1, v2, v0}, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger;->logEGVCircleUpdate(Lcom/dexcom/cgm/h/a/b;ZLcom/dexcom/cgm/tech_support_logger/TechSupportLogger$ShareStateType;)V

    goto :goto_0

    .line 1242
    :sswitch_1
    sget-object v1, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$CircleStateLogType;->PairingCircle:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$CircleStateLogType;

    .line 1245
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/CGMStateFragment;->getShareStateType()Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$ShareStateType;

    move-result-object v3

    .line 1242
    invoke-static {v1, v0, v2, v3}, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger;->logTextualCircleUpdate(Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$CircleStateLogType;Ljava/lang/String;ZLcom/dexcom/cgm/tech_support_logger/TechSupportLogger$ShareStateType;)V

    goto :goto_0

    .line 1248
    :sswitch_2
    sget-object v1, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$CircleStateLogType;->WarmUpCircle:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$CircleStateLogType;

    .line 1251
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/CGMStateFragment;->getShareStateType()Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$ShareStateType;

    move-result-object v3

    .line 1248
    invoke-static {v1, v0, v2, v3}, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger;->logTextualCircleUpdate(Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$CircleStateLogType;Ljava/lang/String;ZLcom/dexcom/cgm/tech_support_logger/TechSupportLogger$ShareStateType;)V

    goto :goto_0

    .line 1234
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0xc -> :sswitch_2
        0xf -> :sswitch_1
    .end sparse-switch
.end method

.method private refreshStatusDisplay()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 197
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v0

    .line 198
    iget-object v1, p0, Lcom/dexcom/cgm/activities/CGMStateFragment;->m_CGMStateCircle:Lcom/dexcom/cgm/activities/CGMStateCircle;

    new-instance v2, Lcom/dexcom/cgm/activities/CGMStateFragment$CircleClickHandler;

    invoke-direct {v2, p0, v0}, Lcom/dexcom/cgm/activities/CGMStateFragment$CircleClickHandler;-><init>(Lcom/dexcom/cgm/activities/CGMStateFragment;Lcom/dexcom/cgm/h/a;)V

    invoke-virtual {v1, v2}, Lcom/dexcom/cgm/activities/CGMStateCircle;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    iget-object v1, p0, Lcom/dexcom/cgm/activities/CGMStateFragment;->m_circleText:Landroid/widget/TextView;

    sget v2, Lcom/dexcom/cgm/activities/R$string;->main_screen_text_36:I

    invoke-virtual {p0, v2}, Lcom/dexcom/cgm/activities/CGMStateFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    invoke-interface {v0}, Lcom/dexcom/cgm/h/a;->getCurrentCgmStateInformation()Lcom/dexcom/cgm/h/a/b;

    move-result-object v0

    .line 202
    const-string v1, "Test"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "CGMStateFragment DisplayGlucose="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/dexcom/cgm/f/b;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/CGMStateFragment;->isEgvVisible(Lcom/dexcom/cgm/h/a/b;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 205
    iget-object v1, p0, Lcom/dexcom/cgm/activities/CGMStateFragment;->m_CGMStateCircle:Lcom/dexcom/cgm/activities/CGMStateCircle;

    invoke-virtual {v1, v5}, Lcom/dexcom/cgm/activities/CGMStateCircle;->setVisibility(I)V

    .line 206
    iget-object v1, p0, Lcom/dexcom/cgm/activities/CGMStateFragment;->m_cgmStateIconView:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 207
    iget-object v1, p0, Lcom/dexcom/cgm/activities/CGMStateFragment;->m_magGlassView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 216
    :goto_0
    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/CGMStateFragment;->checkOnHandlerTimerTask(Lcom/dexcom/cgm/h/a/b;)V

    .line 218
    sget-object v1, Lcom/dexcom/cgm/activities/CGMStateFragment$13;->$SwitchMap$com$dexcom$cgm$presentation$model$enums$DexDisplayState:[I

    invoke-virtual {v0}, Lcom/dexcom/cgm/h/a/b;->getDisplayState()Lcom/dexcom/cgm/h/a/a/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dexcom/cgm/h/a/a/b;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 282
    :goto_1
    invoke-virtual {v0}, Lcom/dexcom/cgm/h/a/b;->getDisplayState()Lcom/dexcom/cgm/h/a/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateFragment;->m_previousDisplayState:Lcom/dexcom/cgm/h/a/a/b;

    .line 283
    return-void

    .line 211
    :cond_0
    iget-object v1, p0, Lcom/dexcom/cgm/activities/CGMStateFragment;->m_CGMStateCircle:Lcom/dexcom/cgm/activities/CGMStateCircle;

    invoke-virtual {v1, v4}, Lcom/dexcom/cgm/activities/CGMStateCircle;->setVisibility(I)V

    .line 212
    iget-object v1, p0, Lcom/dexcom/cgm/activities/CGMStateFragment;->m_cgmStateIconView:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 213
    iget-object v1, p0, Lcom/dexcom/cgm/activities/CGMStateFragment;->m_magGlassView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 221
    :pswitch_0
    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/CGMStateFragment;->displayEgvAndArrow(Lcom/dexcom/cgm/h/a/b;)V

    goto :goto_1

    .line 225
    :pswitch_1
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/CGMStateFragment;->displayAberrationStatus()V

    goto :goto_1

    .line 228
    :pswitch_2
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/CGMStateFragment;->displayTwoStartupBgsNeeded()V

    goto :goto_1

    .line 231
    :pswitch_3
    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/CGMStateFragment;->displayFingerStickRequest(Lcom/dexcom/cgm/h/a/b;)V

    goto :goto_1

    .line 234
    :pswitch_4
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/CGMStateFragment;->displayNoSignal()V

    goto :goto_1

    .line 237
    :pswitch_5
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/CGMStateFragment;->displaySecondOfTwoBgsNeeded()V

    goto :goto_1

    .line 240
    :pswitch_6
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/CGMStateFragment;->displaySensorOutOfCal()V

    goto :goto_1

    .line 244
    :pswitch_7
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/CGMStateFragment;->displayWedgeError()V

    goto :goto_1

    .line 247
    :pswitch_8
    iget-object v1, p0, Lcom/dexcom/cgm/activities/CGMStateFragment;->m_previousDisplayState:Lcom/dexcom/cgm/h/a/a/b;

    sget-object v2, Lcom/dexcom/cgm/h/a/a/b;->TransmitterPairing:Lcom/dexcom/cgm/h/a/a/b;

    if-ne v1, v2, :cond_1

    .line 249
    new-instance v1, Lcom/dexcom/cgm/activities/ToastHelper;

    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/CGMStateFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/dexcom/cgm/activities/ToastHelper;-><init>(Landroid/app/Activity;)V

    sget v2, Lcom/dexcom/cgm/activities/R$string;->dex_pairing_tx_successful:I

    invoke-virtual {v1, v2}, Lcom/dexcom/cgm/activities/ToastHelper;->showGreenCheckToast(I)V

    .line 252
    :cond_1
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/CGMStateFragment;->displayNotInSensorSession()V

    goto :goto_1

    .line 255
    :pswitch_9
    iget-object v1, p0, Lcom/dexcom/cgm/activities/CGMStateFragment;->m_CGMStateCircle:Lcom/dexcom/cgm/activities/CGMStateCircle;

    invoke-virtual {v1, v6}, Lcom/dexcom/cgm/activities/CGMStateCircle;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/CGMStateFragment;->displaySensorWarmUpPeriod(Lcom/dexcom/cgm/h/a/b;)V

    goto :goto_1

    .line 259
    :pswitch_a
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/CGMStateFragment;->displaySevereNoise()V

    goto :goto_1

    .line 262
    :pswitch_b
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/CGMStateFragment;->displayTransmitterNotFound()V

    goto :goto_1

    .line 265
    :pswitch_c
    iget-object v1, p0, Lcom/dexcom/cgm/activities/CGMStateFragment;->m_CGMStateCircle:Lcom/dexcom/cgm/activities/CGMStateCircle;

    invoke-virtual {v1, v6}, Lcom/dexcom/cgm/activities/CGMStateCircle;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 266
    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/CGMStateFragment;->displayTransmitterPairingPeriod(Lcom/dexcom/cgm/h/a/b;)V

    goto :goto_1

    .line 270
    :pswitch_d
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/CGMStateFragment;->displayPairNewTransmitter()V

    goto :goto_1

    .line 273
    :pswitch_e
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/CGMStateFragment;->displayTimeLoss()V

    goto :goto_1

    .line 276
    :pswitch_f
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/CGMStateFragment;->displayBlueToothIsOff()V

    goto :goto_1

    .line 218
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method private refreshUi()V
    .locals 2

    .prologue
    .line 179
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/dexcom/cgm/activities/CGMStateFragment$2;

    invoke-direct {v1, p0}, Lcom/dexcom/cgm/activities/CGMStateFragment$2;-><init>(Lcom/dexcom/cgm/activities/CGMStateFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 191
    return-void
.end method

.method private registerReceivers()V
    .locals 3

    .prologue
    .line 1321
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1322
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1323
    iget-object v1, p0, Lcom/dexcom/cgm/activities/CGMStateFragment;->m_context:Landroid/content/Context;

    iget-object v2, p0, Lcom/dexcom/cgm/activities/CGMStateFragment;->m_bluetoothReceiver:Lcom/dexcom/cgm/activities/CGMStateFragment$BluetoothChangeReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1324
    iget-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateFragment;->m_context:Landroid/content/Context;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/CGMStateFragment;->m_keyReceiver:Lcom/dexcom/cgm/activities/VolumeKeyReceiver;

    iget-object v2, p0, Lcom/dexcom/cgm/activities/CGMStateFragment;->m_ringerFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1325
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dexcom/cgm/activities/CGMStateFragment;->m_receiverRegistered:Z

    .line 1326
    return-void
.end method

.method private rotateBy(F)V
    .locals 7

    .prologue
    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v3, 0x1

    .line 1123
    iget-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateFragment;->m_magGlassCompassView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRotation()F

    move-result v0

    sub-float v2, p1, v0

    .line 1125
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 1131
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1132
    const-wide/16 v4, 0x2ee

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 1133
    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillEnabled(Z)V

    .line 1134
    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 1135
    new-instance v1, Lcom/dexcom/cgm/activities/CGMStateFragment$12;

    invoke-direct {v1, p0, p1}, Lcom/dexcom/cgm/activities/CGMStateFragment$12;-><init>(Lcom/dexcom/cgm/activities/CGMStateFragment;F)V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1156
    iget-object v1, p0, Lcom/dexcom/cgm/activities/CGMStateFragment;->m_magGlassCompassView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1157
    return-void
.end method

.method private setSensorWarmupDialogEnabled(Z)V
    .locals 1

    .prologue
    .line 1202
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v0

    .line 1203
    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v0

    .line 1204
    invoke-interface {v0}, Lcom/dexcom/cgm/i/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v0

    .line 1205
    invoke-virtual {v0, p1}, Lcom/dexcom/cgm/d/e;->setStartSensorWarmupDialogEnabled(Z)V

    .line 1206
    return-void
.end method

.method private showActivityFromBottom(Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 771
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/CGMStateFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 772
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 774
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/CGMStateFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/dexcom/cgm/activities/R$anim;->slide_in_bottom:I

    sget v3, Lcom/dexcom/cgm/activities/R$anim;->stay_stationary:I

    invoke-static {v1, v2, v3}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v1

    .line 775
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 776
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/CGMStateFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 777
    return-void
.end method

.method private unregisterReceivers()V
    .locals 2

    .prologue
    .line 1330
    iget-boolean v0, p0, Lcom/dexcom/cgm/activities/CGMStateFragment;->m_receiverRegistered:Z

    if-eqz v0, :cond_0

    .line 1332
    iget-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateFragment;->m_context:Landroid/content/Context;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/CGMStateFragment;->m_bluetoothReceiver:Lcom/dexcom/cgm/activities/CGMStateFragment$BluetoothChangeReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1333
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dexcom/cgm/activities/CGMStateFragment;->m_receiverRegistered:Z

    .line 1336
    iget-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateFragment;->m_context:Landroid/content/Context;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/CGMStateFragment;->m_keyReceiver:Lcom/dexcom/cgm/activities/VolumeKeyReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1337
    iget-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateFragment;->m_keyReceiver:Lcom/dexcom/cgm/activities/VolumeKeyReceiver;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/VolumeKeyReceiver;->removeVolumeChangeListener()V

    .line 1339
    :cond_0
    return-void
.end method

.method private updateEgv(I)V
    .locals 5

    .prologue
    const/high16 v3, 0x42480000    # 50.0f

    const/4 v2, 0x1

    .line 1178
    iget-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateFragment;->m_textViewEGV:Landroid/widget/TextView;

    const/high16 v1, 0x42800000    # 64.0f

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1180
    const/4 v0, -0x1

    if-ge p1, v0, :cond_0

    .line 1182
    iget-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateFragment;->m_textViewEGV:Landroid/widget/TextView;

    sget v1, Lcom/dexcom/cgm/activities/R$string;->mag_glass_glucose_default:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1198
    :goto_0
    return-void

    .line 1184
    :cond_0
    const/16 v0, 0x27

    if-ne p1, v0, :cond_1

    .line 1186
    iget-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateFragment;->m_textViewEGV:Landroid/widget/TextView;

    sget v1, Lcom/dexcom/cgm/activities/R$string;->glucose_alert_text_low:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1187
    iget-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateFragment;->m_textViewEGV:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0

    .line 1189
    :cond_1
    const/16 v0, 0x191

    if-lt p1, v0, :cond_2

    .line 1191
    iget-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateFragment;->m_textViewEGV:Landroid/widget/TextView;

    sget v1, Lcom/dexcom/cgm/activities/R$string;->glucose_alert_text_high:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1192
    iget-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateFragment;->m_textViewEGV:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0

    .line 1196
    :cond_2
    iget-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateFragment;->m_textViewEGV:Landroid/widget/TextView;

    const-string v1, "%d"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateEgvFontColor(I)V
    .locals 2

    .prologue
    .line 1162
    sget v0, Lcom/dexcom/cgm/activities/R$color;->dex_red:I

    if-ne p1, v0, :cond_0

    .line 1164
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/CGMStateFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$color;->dex_white:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 1165
    iget-object v1, p0, Lcom/dexcom/cgm/activities/CGMStateFragment;->m_textViewEGV:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1166
    iget-object v1, p0, Lcom/dexcom/cgm/activities/CGMStateFragment;->m_textViewEGVUnits:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1174
    :goto_0
    return-void

    .line 1170
    :cond_0
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/CGMStateFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$color;->dex_dark_gray:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 1171
    iget-object v1, p0, Lcom/dexcom/cgm/activities/CGMStateFragment;->m_textViewEGV:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1172
    iget-object v1, p0, Lcom/dexcom/cgm/activities/CGMStateFragment;->m_textViewEGVUnits:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method private updateMagGlass(Lcom/dexcom/cgm/activities/MagGlassState;)V
    .locals 1

    .prologue
    .line 1114
    iget-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateFragment;->m_magGlassCompass:Lcom/dexcom/cgm/activities/MagGlassCompass;

    invoke-virtual {v0, p1}, Lcom/dexcom/cgm/activities/MagGlassCompass;->setMagGlassState(Lcom/dexcom/cgm/activities/MagGlassState;)V

    .line 1115
    invoke-virtual {p1}, Lcom/dexcom/cgm/activities/MagGlassState;->getEgv()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/CGMStateFragment;->updateEgv(I)V

    .line 1116
    invoke-virtual {p1}, Lcom/dexcom/cgm/activities/MagGlassState;->getColor()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/CGMStateFragment;->updateEgvFontColor(I)V

    .line 1117
    invoke-virtual {p1}, Lcom/dexcom/cgm/activities/MagGlassState;->getAngle()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/CGMStateFragment;->rotateBy(F)V

    .line 1118
    return-void
.end method


# virtual methods
.method public isNetworkAvailable()Z
    .locals 2

    .prologue
    .line 1210
    .line 1211
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/CGMStateFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1212
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1213
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1215
    const/4 v0, 0x1

    .line 1217
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 833
    packed-switch p1, :pswitch_data_0

    .line 855
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 858
    :goto_0
    return-void

    .line 837
    :pswitch_0
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/CGMStateFragment;->refreshUi()V

    .line 839
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 841
    new-instance v0, Lcom/dexcom/cgm/activities/ToastHelper;

    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/CGMStateFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dexcom/cgm/activities/ToastHelper;-><init>(Landroid/app/Activity;)V

    sget v1, Lcom/dexcom/cgm/activities/R$string;->setup_wizard_bluetooth_on:I

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/ToastHelper;->showGreenCheckToast(I)V

    goto :goto_0

    .line 846
    :cond_0
    new-instance v0, Lcom/dexcom/cgm/activities/DexDialogBuilder;

    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/CGMStateFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;-><init>(Landroid/app/Activity;)V

    sget v1, Lcom/dexcom/cgm/activities/R$layout;->dialog_bluetooth_is_off:I

    .line 847
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setContentLayout(I)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    const/4 v1, 0x1

    .line 848
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setDismissButtonVisibility(Z)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$string;->main_screen_error_text_1:I

    .line 849
    invoke-virtual {p0, v1}, Lcom/dexcom/cgm/activities/CGMStateFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setLoggingText(Ljava/lang/String;)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    .line 850
    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->show()Landroid/app/Dialog;

    goto :goto_0

    .line 833
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 156
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 158
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 160
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/dexcom/cgm/activities/CGMStateFragment;->m_activity:Landroid/app/Activity;

    .line 163
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 115
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 116
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/CGMStateFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateFragment;->m_context:Landroid/content/Context;

    .line 117
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 127
    sget v0, Lcom/dexcom/cgm/activities/R$layout;->fragment_cgm_state:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateFragment;->m_view:Landroid/view/View;

    .line 130
    iget-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateFragment;->m_view:Landroid/view/View;

    sget v1, Lcom/dexcom/cgm/activities/R$id;->calibrationCircle:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/activities/CGMStateCircle;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateFragment;->m_CGMStateCircle:Lcom/dexcom/cgm/activities/CGMStateCircle;

    .line 131
    iget-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateFragment;->m_CGMStateCircle:Lcom/dexcom/cgm/activities/CGMStateCircle;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/CGMStateCircle;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateFragment;->m_circleText:Landroid/widget/TextView;

    .line 132
    iget-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateFragment;->m_circleText:Landroid/widget/TextView;

    const/high16 v1, 0x41900000    # 18.0f

    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 133
    iget-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateFragment;->m_CGMStateCircle:Lcom/dexcom/cgm/activities/CGMStateCircle;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/CGMStateCircle;->getMeterImage()Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateFragment;->m_cgmStateIconView:Landroid/widget/ImageView;

    .line 134
    iget-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateFragment;->m_CGMStateCircle:Lcom/dexcom/cgm/activities/CGMStateCircle;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/CGMStateCircle;->getTextIconView()Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateFragment;->m_cgmStateTopIconView:Landroid/widget/ImageView;

    .line 137
    iget-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateFragment;->m_view:Landroid/view/View;

    sget v1, Lcom/dexcom/cgm/activities/R$id;->magGlassView:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateFragment;->m_magGlassView:Landroid/widget/FrameLayout;

    .line 138
    iget-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateFragment;->m_view:Landroid/view/View;

    sget v1, Lcom/dexcom/cgm/activities/R$id;->textViewEGV:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateFragment;->m_textViewEGV:Landroid/widget/TextView;

    .line 139
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/CGMStateFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "helvetica-neue-cond-bold.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 141
    iget-object v1, p0, Lcom/dexcom/cgm/activities/CGMStateFragment;->m_textViewEGV:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 142
    iget-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateFragment;->m_textViewEGV:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/CGMStateFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/dexcom/cgm/activities/R$color;->dex_dark_gray:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 143
    iget-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateFragment;->m_view:Landroid/view/View;

    sget v1, Lcom/dexcom/cgm/activities/R$id;->textViewEGVUnits:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateFragment;->m_textViewEGVUnits:Landroid/widget/TextView;

    .line 144
    iget-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateFragment;->m_textViewEGVUnits:Landroid/widget/TextView;

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 145
    iget-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateFragment;->m_view:Landroid/view/View;

    sget v1, Lcom/dexcom/cgm/activities/R$id;->magGlassCompassView:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateFragment;->m_magGlassCompassView:Landroid/view/View;

    .line 146
    new-instance v0, Lcom/dexcom/cgm/activities/MagGlassCompass;

    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/CGMStateFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dexcom/cgm/activities/MagGlassCompass;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateFragment;->m_magGlassCompass:Lcom/dexcom/cgm/activities/MagGlassCompass;

    .line 147
    new-instance v0, Lcom/dexcom/cgm/activities/CGMStateFragment$BluetoothChangeReceiver;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/activities/CGMStateFragment$BluetoothChangeReceiver;-><init>(Lcom/dexcom/cgm/activities/CGMStateFragment;)V

    iput-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateFragment;->m_bluetoothReceiver:Lcom/dexcom/cgm/activities/CGMStateFragment$BluetoothChangeReceiver;

    .line 148
    new-instance v0, Lcom/dexcom/cgm/activities/VolumeKeyReceiver;

    invoke-direct {v0}, Lcom/dexcom/cgm/activities/VolumeKeyReceiver;-><init>()V

    iput-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateFragment;->m_keyReceiver:Lcom/dexcom/cgm/activities/VolumeKeyReceiver;

    .line 149
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateFragment;->m_ringerFilter:Landroid/content/IntentFilter;

    .line 150
    iget-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateFragment;->m_ringerFilter:Landroid/content/IntentFilter;

    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateFragment;->m_view:Landroid/view/View;

    return-object v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 376
    iget-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateFragment;->m_handlerIntervalTask:Lcom/dexcom/cgm/activities/CGMStateFragment$HandlerIntervalTask;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/CGMStateFragment$HandlerIntervalTask;->stop()V

    .line 377
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 378
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/CGMStateFragment;->unregisterReceivers()V

    .line 379
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v0

    .line 380
    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/activities/CGMStateFragment;->m_refreshCallback:Lcom/dexcom/cgm/h/c;

    .line 381
    invoke-interface {v0, v1}, Lcom/dexcom/cgm/i/a;->unregisterCgmDataUpdateCallback(Lcom/dexcom/cgm/h/c;)V

    .line 383
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 168
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 169
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/CGMStateFragment;->refreshUi()V

    .line 170
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/CGMStateFragment;->registerReceivers()V

    .line 171
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v0

    .line 172
    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/activities/CGMStateFragment;->m_refreshCallback:Lcom/dexcom/cgm/h/c;

    .line 173
    invoke-interface {v0, v1}, Lcom/dexcom/cgm/i/a;->registerCgmDataUpdateCallback(Lcom/dexcom/cgm/h/c;)V

    .line 175
    return-void
.end method
