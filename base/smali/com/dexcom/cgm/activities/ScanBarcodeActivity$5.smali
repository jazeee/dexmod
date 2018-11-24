.class Lcom/dexcom/cgm/activities/ScanBarcodeActivity$5;
.super Ljava/lang/Object;
.source "ScanBarcodeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/ScanBarcodeActivity;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/ScanBarcodeActivity;)V
    .locals 0

    .prologue
    .line 446
    iput-object p1, p0, Lcom/dexcom/cgm/activities/ScanBarcodeActivity$5;->this$0:Lcom/dexcom/cgm/activities/ScanBarcodeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Lcom/dexcom/cgm/activities/ScanBarcodeActivity$5;->this$0:Lcom/dexcom/cgm/activities/ScanBarcodeActivity;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ScanBarcodeActivity;->finish()V

    .line 451
    return-void
.end method
