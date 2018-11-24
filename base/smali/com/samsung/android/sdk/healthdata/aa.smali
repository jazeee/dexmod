.class final Lcom/samsung/android/sdk/healthdata/aa;
.super Landroid/os/AsyncTask;
.source "HealthDataStore.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:I

.field private synthetic b:Lcom/samsung/android/sdk/healthdata/w;


# direct methods
.method private constructor <init>(Lcom/samsung/android/sdk/healthdata/w;I)V
    .locals 0

    .prologue
    .line 661
    iput-object p1, p0, Lcom/samsung/android/sdk/healthdata/aa;->b:Lcom/samsung/android/sdk/healthdata/w;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 662
    iput p2, p0, Lcom/samsung/android/sdk/healthdata/aa;->a:I

    .line 663
    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/sdk/healthdata/w;IB)V
    .locals 0

    .prologue
    .line 658
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/healthdata/aa;-><init>(Lcom/samsung/android/sdk/healthdata/w;I)V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 658
    .line 2667
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/aa;->b:Lcom/samsung/android/sdk/healthdata/w;

    invoke-static {v0}, Lcom/samsung/android/sdk/healthdata/w;->g(Lcom/samsung/android/sdk/healthdata/w;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 658
    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 658
    check-cast p1, Ljava/lang/Boolean;

    .line 1672
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/aa;->b:Lcom/samsung/android/sdk/healthdata/w;

    invoke-static {v0}, Lcom/samsung/android/sdk/healthdata/w;->a(Lcom/samsung/android/sdk/healthdata/w;)Lcom/samsung/android/sdk/healthdata/z;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1676
    new-instance v1, Lcom/samsung/android/sdk/healthdata/a;

    iget v2, p0, Lcom/samsung/android/sdk/healthdata/aa;->a:I

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-direct {v1, v2, v0}, Lcom/samsung/android/sdk/healthdata/a;-><init>(IZ)V

    .line 1678
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/aa;->b:Lcom/samsung/android/sdk/healthdata/w;

    invoke-static {v0}, Lcom/samsung/android/sdk/healthdata/w;->c(Lcom/samsung/android/sdk/healthdata/w;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/healthdata/a;->setPackageManager(Landroid/content/pm/PackageManager;)V

    .line 1679
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/aa;->b:Lcom/samsung/android/sdk/healthdata/w;

    invoke-static {v0}, Lcom/samsung/android/sdk/healthdata/w;->a(Lcom/samsung/android/sdk/healthdata/w;)Lcom/samsung/android/sdk/healthdata/z;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/healthdata/z;->onConnectionFailed(Lcom/samsung/android/sdk/healthdata/a;)V

    .line 658
    :cond_0
    return-void

    .line 1676
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method
