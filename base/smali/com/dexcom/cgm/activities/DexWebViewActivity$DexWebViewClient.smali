.class Lcom/dexcom/cgm/activities/DexWebViewActivity$DexWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "DexWebViewActivity.java"


# static fields
.field static final PDF_EXTENSION:Ljava/lang/String; = ".pdf"

.field static final PDF_URL_PREFIX:Ljava/lang/String; = "https://drive.google.com/viewerng/viewer?url="

.field static final PDF_VIEW_BOTTOM_CONTROL_OVERLAY_ELEMENT:Ljava/lang/String; = "ndfHFb-c4YZDc-q77wGc"

.field static final PDF_VIEW_TOP_CONTROL_OVERLAY_ELEMENT:Ljava/lang/String; = "ndfHFb-c4YZDc-Wrql6b"

.field static final PDF_VIEW_ZOOM_CONTROL_OVERLAY_ELEMENT:Ljava/lang/String; = "ndfHFb-c4YZDc-nJjxad-nK2kYb-i5oIFb"


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/DexWebViewActivity;


# direct methods
.method private constructor <init>(Lcom/dexcom/cgm/activities/DexWebViewActivity;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/dexcom/cgm/activities/DexWebViewActivity$DexWebViewClient;->this$0:Lcom/dexcom/cgm/activities/DexWebViewActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dexcom/cgm/activities/DexWebViewActivity;Lcom/dexcom/cgm/activities/DexWebViewActivity$1;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/activities/DexWebViewActivity$DexWebViewClient;-><init>(Lcom/dexcom/cgm/activities/DexWebViewActivity;)V

    return-void
.end method

.method private isUrlPdf(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 77
    const-string v0, ".pdf"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    const/4 v0, 0x1

    .line 81
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 95
    invoke-direct {p0, p2}, Lcom/dexcom/cgm/activities/DexWebViewActivity$DexWebViewClient;->isUrlPdf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "https://drive.google.com/viewerng/viewer?url="

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/dexcom/cgm/activities/DexWebViewActivity$DexWebViewClient;->this$0:Lcom/dexcom/cgm/activities/DexWebViewActivity;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/DexWebViewActivity;->access$000(Lcom/dexcom/cgm/activities/DexWebViewActivity;)Landroid/webkit/WebView;

    move-result-object v0

    const-string v1, "javascript:(function() {var x=document.getElementsByClassName(\'ndfHFb-c4YZDc-Wrql6b\'); if (x.length > 0){ x[0].style.visibility=\'hidden\'; }})()"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/dexcom/cgm/activities/DexWebViewActivity$DexWebViewClient;->this$0:Lcom/dexcom/cgm/activities/DexWebViewActivity;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/DexWebViewActivity;->access$000(Lcom/dexcom/cgm/activities/DexWebViewActivity;)Landroid/webkit/WebView;

    move-result-object v0

    const-string v1, "javascript:(function() {var x=document.getElementsByClassName(\'ndfHFb-c4YZDc-nJjxad-nK2kYb-i5oIFb\'); if (x.length > 0){ x[0].style.visibility=\'hidden\'; }})()"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/dexcom/cgm/activities/DexWebViewActivity$DexWebViewClient;->this$0:Lcom/dexcom/cgm/activities/DexWebViewActivity;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/DexWebViewActivity;->access$100(Lcom/dexcom/cgm/activities/DexWebViewActivity;)Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;->setVisibility(I)V

    .line 103
    iget-object v0, p0, Lcom/dexcom/cgm/activities/DexWebViewActivity$DexWebViewClient;->this$0:Lcom/dexcom/cgm/activities/DexWebViewActivity;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/DexWebViewActivity;->access$000(Lcom/dexcom/cgm/activities/DexWebViewActivity;)Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 104
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/dexcom/cgm/activities/DexWebViewActivity$DexWebViewClient;->this$0:Lcom/dexcom/cgm/activities/DexWebViewActivity;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/DexWebViewActivity;->access$000(Lcom/dexcom/cgm/activities/DexWebViewActivity;)Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 110
    iget-object v0, p0, Lcom/dexcom/cgm/activities/DexWebViewActivity$DexWebViewClient;->this$0:Lcom/dexcom/cgm/activities/DexWebViewActivity;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/DexWebViewActivity;->access$100(Lcom/dexcom/cgm/activities/DexWebViewActivity;)Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;->setVisibility(I)V

    .line 111
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 59
    invoke-direct {p0, p2}, Lcom/dexcom/cgm/activities/DexWebViewActivity$DexWebViewClient;->isUrlPdf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "https://drive.google.com/viewerng/viewer?url="

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/dexcom/cgm/activities/DexWebViewActivity$DexWebViewClient;->this$0:Lcom/dexcom/cgm/activities/DexWebViewActivity;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/DexWebViewActivity;->access$000(Lcom/dexcom/cgm/activities/DexWebViewActivity;)Landroid/webkit/WebView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "https://drive.google.com/viewerng/viewer?url="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 62
    const/4 v0, 0x1

    .line 64
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
