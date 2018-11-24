.class public Lcom/dexcom/cgm/activities/Spinner;
.super Ljava/lang/Object;
.source "Spinner.java"


# instance fields
.field private m_activity:Landroid/app/Activity;

.field private m_onCancel:Ljava/lang/Runnable;

.field private spinner:Landroid/app/Dialog;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/dexcom/cgm/activities/Spinner;->m_onCancel:Ljava/lang/Runnable;

    .line 88
    iput-object v0, p0, Lcom/dexcom/cgm/activities/Spinner;->spinner:Landroid/app/Dialog;

    .line 27
    iput-object p1, p0, Lcom/dexcom/cgm/activities/Spinner;->m_activity:Landroid/app/Activity;

    .line 28
    return-void
.end method

.method static synthetic access$000(Lcom/dexcom/cgm/activities/Spinner;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/Spinner;->hide()V

    return-void
.end method

.method static synthetic access$100(Lcom/dexcom/cgm/activities/Spinner;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/dexcom/cgm/activities/Spinner;->m_activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/dexcom/cgm/activities/Spinner;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/dexcom/cgm/activities/Spinner;->spinner:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$202(Lcom/dexcom/cgm/activities/Spinner;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lcom/dexcom/cgm/activities/Spinner;->spinner:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$300(Lcom/dexcom/cgm/activities/Spinner;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/dexcom/cgm/activities/Spinner;->m_onCancel:Ljava/lang/Runnable;

    return-object v0
.end method

.method private hide()V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/dexcom/cgm/activities/Spinner;->m_activity:Landroid/app/Activity;

    new-instance v1, Lcom/dexcom/cgm/activities/Spinner$5;

    invoke-direct {v1, p0}, Lcom/dexcom/cgm/activities/Spinner$5;-><init>(Lcom/dexcom/cgm/activities/Spinner;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 134
    return-void
.end method

.method private show()V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/dexcom/cgm/activities/Spinner;->m_activity:Landroid/app/Activity;

    new-instance v1, Lcom/dexcom/cgm/activities/Spinner$4;

    invoke-direct {v1, p0}, Lcom/dexcom/cgm/activities/Spinner$4;-><init>(Lcom/dexcom/cgm/activities/Spinner;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 118
    return-void
.end method


# virtual methods
.method public setOnCancel(Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/dexcom/cgm/activities/Spinner;->m_onCancel:Ljava/lang/Runnable;

    .line 38
    return-void
.end method

.method public showWhileExecuting(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/Spinner;->show()V

    .line 44
    new-instance v0, Lcom/dexcom/cgm/activities/Spinner$1;

    invoke-direct {v0, p0, p1}, Lcom/dexcom/cgm/activities/Spinner$1;-><init>(Lcom/dexcom/cgm/activities/Spinner;Ljava/lang/Runnable;)V

    .line 54
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 55
    return-void
.end method

.method public showWhileExecuting(Ljava/lang/Runnable;Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;)V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/dexcom/cgm/activities/Spinner;->m_activity:Landroid/app/Activity;

    new-instance v1, Lcom/dexcom/cgm/activities/Spinner$2;

    invoke-direct {v1, p0, p2}, Lcom/dexcom/cgm/activities/Spinner$2;-><init>(Lcom/dexcom/cgm/activities/Spinner;Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 68
    new-instance v0, Lcom/dexcom/cgm/activities/Spinner$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/dexcom/cgm/activities/Spinner$3;-><init>(Lcom/dexcom/cgm/activities/Spinner;Ljava/lang/Runnable;Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;)V

    .line 85
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 86
    return-void
.end method
