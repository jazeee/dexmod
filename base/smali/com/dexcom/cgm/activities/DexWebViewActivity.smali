.class public Lcom/dexcom/cgm/activities/DexWebViewActivity;
.super Landroid/app/Activity;
.source "DexWebViewActivity.java"


# instance fields
.field private m_currTitle:Ljava/lang/String;

.field private m_pp:Ljava/lang/String;

.field private m_progressBar:Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;

.field private m_ss:Ljava/lang/String;

.field private m_sss:Ljava/lang/String;

.field private m_titleText:Ljava/lang/String;

.field private m_toolbar:Landroid/widget/Toolbar;

.field private m_tou:Ljava/lang/String;

.field private m_urlText:Ljava/lang/String;

.field private m_webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/dexcom/cgm/activities/DexWebViewActivity;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/dexcom/cgm/activities/DexWebViewActivity;->m_webView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dexcom/cgm/activities/DexWebViewActivity;)Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/dexcom/cgm/activities/DexWebViewActivity;->m_progressBar:Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/dexcom/cgm/activities/DexWebViewActivity;->m_toolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0}, Landroid/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/DexWebViewActivity;->m_currTitle:Ljava/lang/String;

    .line 143
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/DexWebViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$string;->help_menu_text_47:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/DexWebViewActivity;->m_ss:Ljava/lang/String;

    .line 144
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/DexWebViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$string;->help_menu_text_46:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/DexWebViewActivity;->m_sss:Ljava/lang/String;

    .line 145
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/DexWebViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$string;->setup_wizard_terms_of_use:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/DexWebViewActivity;->m_tou:Ljava/lang/String;

    .line 146
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/DexWebViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$string;->setup_wizard_privacy_policy:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/DexWebViewActivity;->m_pp:Ljava/lang/String;

    .line 147
    iget-object v0, p0, Lcom/dexcom/cgm/activities/DexWebViewActivity;->m_currTitle:Ljava/lang/String;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/DexWebViewActivity;->m_ss:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dexcom/cgm/activities/DexWebViewActivity;->m_currTitle:Ljava/lang/String;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/DexWebViewActivity;->m_sss:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dexcom/cgm/activities/DexWebViewActivity;->m_currTitle:Ljava/lang/String;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/DexWebViewActivity;->m_tou:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dexcom/cgm/activities/DexWebViewActivity;->m_currTitle:Ljava/lang/String;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/DexWebViewActivity;->m_pp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 162
    :goto_0
    return-void

    .line 153
    :cond_1
    iget-object v0, p0, Lcom/dexcom/cgm/activities/DexWebViewActivity;->m_webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 155
    iget-object v0, p0, Lcom/dexcom/cgm/activities/DexWebViewActivity;->m_webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0

    .line 159
    :cond_2
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 119
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 120
    sget v0, Lcom/dexcom/cgm/activities/R$layout;->activity_dex_web_view:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/DexWebViewActivity;->setContentView(I)V

    .line 122
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/DexWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "TITLE"

    const-string v2, "?"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/DexWebViewActivity;->m_titleText:Ljava/lang/String;

    .line 123
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/DexWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "URL"

    const-string v2, "dexcom.com"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/DexWebViewActivity;->m_urlText:Ljava/lang/String;

    .line 125
    sget v0, Lcom/dexcom/cgm/activities/R$id;->webview:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/DexWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/DexWebViewActivity;->m_webView:Landroid/webkit/WebView;

    .line 126
    sget v0, Lcom/dexcom/cgm/activities/R$id;->title_webview:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/DexWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Toolbar;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/DexWebViewActivity;->m_toolbar:Landroid/widget/Toolbar;

    .line 127
    iget-object v0, p0, Lcom/dexcom/cgm/activities/DexWebViewActivity;->m_toolbar:Landroid/widget/Toolbar;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/DexWebViewActivity;->m_titleText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 128
    sget v0, Lcom/dexcom/cgm/activities/R$id;->webview_progressBar:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/DexWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/DexWebViewActivity;->m_progressBar:Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;

    .line 129
    iget-object v0, p0, Lcom/dexcom/cgm/activities/DexWebViewActivity;->m_webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 130
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 131
    iget-object v0, p0, Lcom/dexcom/cgm/activities/DexWebViewActivity;->m_webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/dexcom/cgm/activities/DexWebViewActivity$DexWebViewClient;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/dexcom/cgm/activities/DexWebViewActivity$DexWebViewClient;-><init>(Lcom/dexcom/cgm/activities/DexWebViewActivity;Lcom/dexcom/cgm/activities/DexWebViewActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 132
    iget-object v0, p0, Lcom/dexcom/cgm/activities/DexWebViewActivity;->m_webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 133
    iget-object v0, p0, Lcom/dexcom/cgm/activities/DexWebViewActivity;->m_webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 134
    const-string v0, "Test"

    iget-object v1, p0, Lcom/dexcom/cgm/activities/DexWebViewActivity;->m_urlText:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/dexcom/cgm/f/b;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v0, p0, Lcom/dexcom/cgm/activities/DexWebViewActivity;->m_webView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/DexWebViewActivity;->m_urlText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 137
    return-void
.end method
