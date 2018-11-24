.class Lcom/dexcom/cgm/activities/DexWebViewFragment$1;
.super Landroid/webkit/WebViewClient;
.source "DexWebViewFragment.java"


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/DexWebViewFragment;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/DexWebViewFragment;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/dexcom/cgm/activities/DexWebViewFragment$1;->this$0:Lcom/dexcom/cgm/activities/DexWebViewFragment;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/dexcom/cgm/activities/DexWebViewFragment$1;->this$0:Lcom/dexcom/cgm/activities/DexWebViewFragment;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/DexWebViewFragment;->access$000(Lcom/dexcom/cgm/activities/DexWebViewFragment;)Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;->setVisibility(I)V

    .line 65
    iget-object v0, p0, Lcom/dexcom/cgm/activities/DexWebViewFragment$1;->this$0:Lcom/dexcom/cgm/activities/DexWebViewFragment;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/DexWebViewFragment;->access$100(Lcom/dexcom/cgm/activities/DexWebViewFragment;)Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 66
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/dexcom/cgm/activities/DexWebViewFragment$1;->this$0:Lcom/dexcom/cgm/activities/DexWebViewFragment;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/DexWebViewFragment;->access$100(Lcom/dexcom/cgm/activities/DexWebViewFragment;)Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 72
    iget-object v0, p0, Lcom/dexcom/cgm/activities/DexWebViewFragment$1;->this$0:Lcom/dexcom/cgm/activities/DexWebViewFragment;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/DexWebViewFragment;->access$000(Lcom/dexcom/cgm/activities/DexWebViewFragment;)Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;->setVisibility(I)V

    .line 73
    return-void
.end method
