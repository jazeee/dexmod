.class public Lcom/dexcom/cgm/activities/DexWebViewFragment;
.super Lcom/dexcom/cgm/activities/BaseFragment;
.source "DexWebViewFragment.java"


# instance fields
.field private m_progressBar:Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;

.field private m_titleText:Ljava/lang/String;

.field private m_toolbar:Landroid/widget/Toolbar;

.field private m_urlText:Ljava/lang/String;

.field private m_view:Landroid/view/View;

.field private m_webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/BaseFragment;-><init>()V

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcom/dexcom/cgm/activities/DexWebViewFragment;)Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/dexcom/cgm/activities/DexWebViewFragment;->m_progressBar:Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dexcom/cgm/activities/DexWebViewFragment;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/dexcom/cgm/activities/DexWebViewFragment;->m_webView:Landroid/webkit/WebView;

    return-object v0
.end method


# virtual methods
.method public canGoBack()Z
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/dexcom/cgm/activities/DexWebViewFragment;->m_webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dexcom/cgm/activities/DexWebViewFragment;->m_webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getWebview()Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/dexcom/cgm/activities/DexWebViewFragment;->m_webView:Landroid/webkit/WebView;

    return-object v0
.end method

.method public goBack()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/dexcom/cgm/activities/DexWebViewFragment;->m_webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/dexcom/cgm/activities/DexWebViewFragment;->m_webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 97
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/DexWebViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 49
    const-string v1, "TITLE"

    const-string v2, "?"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/dexcom/cgm/activities/DexWebViewFragment;->m_titleText:Ljava/lang/String;

    .line 50
    const-string v1, "URL"

    const-string v2, "dexcom.com"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/DexWebViewFragment;->m_urlText:Ljava/lang/String;

    .line 52
    sget v0, Lcom/dexcom/cgm/activities/R$layout;->webview:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/DexWebViewFragment;->m_view:Landroid/view/View;

    .line 53
    iget-object v0, p0, Lcom/dexcom/cgm/activities/DexWebViewFragment;->m_view:Landroid/view/View;

    sget v1, Lcom/dexcom/cgm/activities/R$id;->webview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/DexWebViewFragment;->m_webView:Landroid/webkit/WebView;

    .line 54
    iget-object v0, p0, Lcom/dexcom/cgm/activities/DexWebViewFragment;->m_view:Landroid/view/View;

    sget v1, Lcom/dexcom/cgm/activities/R$id;->title_webview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Toolbar;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/DexWebViewFragment;->m_toolbar:Landroid/widget/Toolbar;

    .line 55
    iget-object v0, p0, Lcom/dexcom/cgm/activities/DexWebViewFragment;->m_toolbar:Landroid/widget/Toolbar;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/DexWebViewFragment;->m_titleText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 56
    iget-object v0, p0, Lcom/dexcom/cgm/activities/DexWebViewFragment;->m_view:Landroid/view/View;

    sget v1, Lcom/dexcom/cgm/activities/R$id;->webview_progressBar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/DexWebViewFragment;->m_progressBar:Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;

    .line 57
    iget-object v0, p0, Lcom/dexcom/cgm/activities/DexWebViewFragment;->m_webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 58
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 59
    iget-object v0, p0, Lcom/dexcom/cgm/activities/DexWebViewFragment;->m_webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/dexcom/cgm/activities/DexWebViewFragment$1;

    invoke-direct {v1, p0}, Lcom/dexcom/cgm/activities/DexWebViewFragment$1;-><init>(Lcom/dexcom/cgm/activities/DexWebViewFragment;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 77
    iget-object v0, p0, Lcom/dexcom/cgm/activities/DexWebViewFragment;->m_webView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/DexWebViewFragment;->m_urlText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/dexcom/cgm/activities/DexWebViewFragment;->m_view:Landroid/view/View;

    return-object v0
.end method
