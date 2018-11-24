.class public Lcom/dexcom/cgm/activities/TransmitterSnScanActivity;
.super Landroid/app/Activity;
.source "TransmitterSnScanActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 29
    sget v0, Lcom/dexcom/cgm/activities/R$layout;->activity_barcode_scanner:I

    if-ne p1, v0, :cond_0

    .line 32
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 34
    const-string v0, "RESULT"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 36
    if-eqz v0, :cond_0

    .line 38
    const-string v0, "BARCODE"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 39
    new-instance v1, Lcom/dexcom/cgm/h/a/e;

    invoke-direct {v1, v0}, Lcom/dexcom/cgm/h/a/e;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/dexcom/cgm/i/a;->setTransmitterId(Lcom/dexcom/cgm/h/a/e;)V

    .line 41
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dexcom/cgm/activities/TrendActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/TransmitterSnScanActivity;->startActivity(Landroid/content/Intent;)V

    .line 42
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/TransmitterSnScanActivity;->finish()V

    .line 46
    :cond_0
    return-void
.end method

.method public onClickNegative(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 51
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dexcom/cgm/activities/TransmitterSnEntryActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 52
    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/TransmitterSnScanActivity;->startActivity(Landroid/content/Intent;)V

    .line 53
    return-void
.end method

.method public onClickPositive(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 58
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dexcom/cgm/activities/ScanBarcodeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 59
    sget v1, Lcom/dexcom/cgm/activities/R$layout;->activity_barcode_scanner:I

    invoke-virtual {p0, v0, v1}, Lcom/dexcom/cgm/activities/TransmitterSnScanActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 62
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 21
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    sget v0, Lcom/dexcom/cgm/activities/R$layout;->activity_transmitter_photo_or_entry:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/TransmitterSnScanActivity;->setContentView(I)V

    .line 23
    return-void
.end method
