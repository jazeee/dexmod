.class public Lcom/dexcom/cgm/activities/UserGuideActivity;
.super Landroid/app/Activity;
.source "UserGuideActivity.java"


# instance fields
.field private m_checkOrDownloadTask:Lcom/dexcom/cgm/activities/UserGuideActivity$CheckOrDownloadTask;

.field private m_downloadComplete:Z

.field private m_downloadHorizontalProgressBar:Landroid/widget/ProgressBar;

.field private m_inForeground:Z

.field private m_localFileIFU:Ljava/io/File;

.field private m_pdfWasLaunched:Z

.field private m_percentText:Landroid/widget/TextView;

.field private m_title:Ljava/lang/String;

.field private m_url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 42
    new-instance v0, Lcom/dexcom/cgm/activities/UserGuideActivity$CheckOrDownloadTask;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/activities/UserGuideActivity$CheckOrDownloadTask;-><init>(Lcom/dexcom/cgm/activities/UserGuideActivity;)V

    iput-object v0, p0, Lcom/dexcom/cgm/activities/UserGuideActivity;->m_checkOrDownloadTask:Lcom/dexcom/cgm/activities/UserGuideActivity$CheckOrDownloadTask;

    .line 43
    iput-boolean v1, p0, Lcom/dexcom/cgm/activities/UserGuideActivity;->m_pdfWasLaunched:Z

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dexcom/cgm/activities/UserGuideActivity;->m_inForeground:Z

    .line 45
    iput-boolean v1, p0, Lcom/dexcom/cgm/activities/UserGuideActivity;->m_downloadComplete:Z

    return-void
.end method

.method static synthetic access$000(Lcom/dexcom/cgm/activities/UserGuideActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/dexcom/cgm/activities/UserGuideActivity;->m_url:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dexcom/cgm/activities/UserGuideActivity;)Ljava/io/File;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/dexcom/cgm/activities/UserGuideActivity;->m_localFileIFU:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$202(Lcom/dexcom/cgm/activities/UserGuideActivity;Z)Z
    .locals 0

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/dexcom/cgm/activities/UserGuideActivity;->m_downloadComplete:Z

    return p1
.end method

.method static synthetic access$300(Lcom/dexcom/cgm/activities/UserGuideActivity;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/dexcom/cgm/activities/UserGuideActivity;->m_downloadHorizontalProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$400(Lcom/dexcom/cgm/activities/UserGuideActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/dexcom/cgm/activities/UserGuideActivity;->m_percentText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/dexcom/cgm/activities/UserGuideActivity;)Z
    .locals 1

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/dexcom/cgm/activities/UserGuideActivity;->m_inForeground:Z

    return v0
.end method

.method static synthetic access$600(Lcom/dexcom/cgm/activities/UserGuideActivity;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/UserGuideActivity;->attemptOpenPDF()V

    return-void
.end method

.method private attemptOpenPDF()V
    .locals 3

    .prologue
    .line 197
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dexcom/cgm/activities/UserGuideActivity;->m_pdfWasLaunched:Z

    .line 198
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 199
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 200
    iget-object v1, p0, Lcom/dexcom/cgm/activities/UserGuideActivity;->m_localFileIFU:Ljava/io/File;

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 201
    const-string v2, "application/pdf"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 204
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/UserGuideActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    :goto_0
    return-void

    .line 209
    :catch_0
    move-exception v0

    invoke-direct {p0}, Lcom/dexcom/cgm/activities/UserGuideActivity;->noPDFViewer()V

    goto :goto_0
.end method

.method private isNetworkAvailable()Z
    .locals 1

    .prologue
    .line 240
    const-string v0, "connectivity"

    .line 241
    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/UserGuideActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 242
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 243
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    const/4 v0, 0x1

    .line 247
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private noPDFViewer()V
    .locals 3

    .prologue
    .line 215
    new-instance v0, Lcom/dexcom/cgm/activities/DexDialogBuilder;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/activities/DexDialogBuilder;-><init>(Landroid/app/Activity;)V

    sget v1, Lcom/dexcom/cgm/activities/R$layout;->dialog_error_no_pdf_viewer:I

    new-instance v2, Lcom/dexcom/cgm/activities/UserGuideActivity$2;

    invoke-direct {v2, p0}, Lcom/dexcom/cgm/activities/UserGuideActivity$2;-><init>(Lcom/dexcom/cgm/activities/UserGuideActivity;)V

    .line 216
    invoke-virtual {v0, v1, v2}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setContentLayout(ILcom/dexcom/cgm/activities/DexDialogBuilder$OnCustomLayout;)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$string;->ok:I

    .line 224
    invoke-virtual {p0, v1}, Lcom/dexcom/cgm/activities/UserGuideActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/dexcom/cgm/activities/UserGuideActivity$1;

    invoke-direct {v2, p0}, Lcom/dexcom/cgm/activities/UserGuideActivity$1;-><init>(Lcom/dexcom/cgm/activities/UserGuideActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    const/4 v1, 0x0

    .line 233
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setCancelable(Ljava/lang/Boolean;)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$string;->err_no_pdf_viewer:I

    .line 234
    invoke-virtual {p0, v1}, Lcom/dexcom/cgm/activities/UserGuideActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setLoggingText(Ljava/lang/String;)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    .line 235
    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->show()Landroid/app/Dialog;

    .line 236
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    sget v0, Lcom/dexcom/cgm/activities/R$layout;->activity_user_guide:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/UserGuideActivity;->setContentView(I)V

    .line 55
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/UserGuideActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "TITLE"

    const-string v2, "?"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/UserGuideActivity;->m_title:Ljava/lang/String;

    .line 56
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/UserGuideActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "URL"

    const-string v2, " "

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/UserGuideActivity;->m_url:Ljava/lang/String;

    .line 57
    sget v0, Lcom/dexcom/cgm/activities/R$id;->percent_text:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/UserGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/UserGuideActivity;->m_percentText:Landroid/widget/TextView;

    .line 58
    sget v0, Lcom/dexcom/cgm/activities/R$id;->horizontal_userguide_progressbar:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/UserGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/UserGuideActivity;->m_downloadHorizontalProgressBar:Landroid/widget/ProgressBar;

    .line 62
    iget-object v0, p0, Lcom/dexcom/cgm/activities/UserGuideActivity;->m_url:Ljava/lang/String;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/UserGuideActivity;->m_url:Ljava/lang/String;

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 63
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/UserGuideActivity;->getExternalCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/dexcom/cgm/activities/UserGuideActivity;->m_localFileIFU:Ljava/io/File;

    .line 64
    iget-object v0, p0, Lcom/dexcom/cgm/activities/UserGuideActivity;->m_checkOrDownloadTask:Lcom/dexcom/cgm/activities/UserGuideActivity$CheckOrDownloadTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/UserGuideActivity$CheckOrDownloadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 65
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/dexcom/cgm/activities/UserGuideActivity;->m_checkOrDownloadTask:Lcom/dexcom/cgm/activities/UserGuideActivity$CheckOrDownloadTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/UserGuideActivity$CheckOrDownloadTask;->cancel(Z)Z

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dexcom/cgm/activities/UserGuideActivity;->m_inForeground:Z

    .line 73
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 74
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 110
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 111
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dexcom/cgm/activities/UserGuideActivity;->m_inForeground:Z

    .line 112
    return-void
.end method

.method protected onRestart()V
    .locals 1

    .prologue
    .line 79
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dexcom/cgm/activities/UserGuideActivity;->m_inForeground:Z

    .line 81
    iget-boolean v0, p0, Lcom/dexcom/cgm/activities/UserGuideActivity;->m_pdfWasLaunched:Z

    if-eqz v0, :cond_1

    .line 83
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/UserGuideActivity;->finish()V

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    iget-boolean v0, p0, Lcom/dexcom/cgm/activities/UserGuideActivity;->m_downloadComplete:Z

    if-eqz v0, :cond_0

    .line 88
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/UserGuideActivity;->attemptOpenPDF()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 95
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dexcom/cgm/activities/UserGuideActivity;->m_inForeground:Z

    .line 97
    iget-boolean v0, p0, Lcom/dexcom/cgm/activities/UserGuideActivity;->m_pdfWasLaunched:Z

    if-eqz v0, :cond_1

    .line 99
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/UserGuideActivity;->finish()V

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    iget-boolean v0, p0, Lcom/dexcom/cgm/activities/UserGuideActivity;->m_downloadComplete:Z

    if-eqz v0, :cond_0

    .line 103
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/UserGuideActivity;->attemptOpenPDF()V

    goto :goto_0
.end method
