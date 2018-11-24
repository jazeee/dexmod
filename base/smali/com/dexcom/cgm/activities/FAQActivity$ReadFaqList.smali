.class Lcom/dexcom/cgm/activities/FAQActivity$ReadFaqList;
.super Landroid/os/AsyncTask;
.source "FAQActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/FAQActivity;


# direct methods
.method private constructor <init>(Lcom/dexcom/cgm/activities/FAQActivity;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/dexcom/cgm/activities/FAQActivity$ReadFaqList;->this$0:Lcom/dexcom/cgm/activities/FAQActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dexcom/cgm/activities/FAQActivity;Lcom/dexcom/cgm/activities/FAQActivity$1;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/activities/FAQActivity$ReadFaqList;-><init>(Lcom/dexcom/cgm/activities/FAQActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 3

    .prologue
    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/dexcom/cgm/activities/FAQActivity$ReadFaqList;->this$0:Lcom/dexcom/cgm/activities/FAQActivity;

    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v1

    .line 57
    invoke-virtual {v1}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getShareComponent()Lcom/dexcom/cgm/share/ShareService;

    move-result-object v1

    const-string v2, "https://www.dexcom.com/links/g5mobile/android/faqs"

    .line 58
    invoke-interface {v1, v2}, Lcom/dexcom/cgm/share/ShareService;->readFAQItems(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 56
    invoke-static {v0, v1}, Lcom/dexcom/cgm/activities/FAQActivity;->access$202(Lcom/dexcom/cgm/activities/FAQActivity;Ljava/util/List;)Ljava/util/List;

    .line 59
    iget-object v0, p0, Lcom/dexcom/cgm/activities/FAQActivity$ReadFaqList;->this$0:Lcom/dexcom/cgm/activities/FAQActivity;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/FAQActivity;->access$300(Lcom/dexcom/cgm/activities/FAQActivity;)V

    .line 60
    iget-object v0, p0, Lcom/dexcom/cgm/activities/FAQActivity$ReadFaqList;->this$0:Lcom/dexcom/cgm/activities/FAQActivity;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/FAQActivity$ReadFaqList;->this$0:Lcom/dexcom/cgm/activities/FAQActivity;

    invoke-static {v1}, Lcom/dexcom/cgm/activities/FAQActivity;->access$200(Lcom/dexcom/cgm/activities/FAQActivity;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dexcom/cgm/activities/FAQActivity;->access$400(Lcom/dexcom/cgm/activities/FAQActivity;Ljava/util/List;)V
    :try_end_0
    .catch Lcom/dexcom/cgm/share/webservice_exceptions/ServerUnreachableWSException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/dexcom/cgm/share/webservice_exceptions/ServiceUnavailableWSException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/dexcom/cgm/share/webservice_exceptions/UnknownWSException; {:try_start_0 .. :try_end_0} :catch_2

    .line 70
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 64
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/dexcom/cgm/activities/FAQActivity$ReadFaqList;->this$0:Lcom/dexcom/cgm/activities/FAQActivity;

    sget v1, Lcom/dexcom/cgm/activities/R$string;->dex_general_no_internet:I

    invoke-static {v0, v1}, Lcom/dexcom/cgm/activities/FAQActivity;->access$500(Lcom/dexcom/cgm/activities/FAQActivity;I)V

    goto :goto_0

    .line 68
    :catch_1
    move-exception v0

    :goto_1
    iget-object v0, p0, Lcom/dexcom/cgm/activities/FAQActivity$ReadFaqList;->this$0:Lcom/dexcom/cgm/activities/FAQActivity;

    sget v1, Lcom/dexcom/cgm/activities/R$string;->dex_general_server_down:I

    invoke-static {v0, v1}, Lcom/dexcom/cgm/activities/FAQActivity;->access$500(Lcom/dexcom/cgm/activities/FAQActivity;I)V

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 42
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/dexcom/cgm/activities/FAQActivity$ReadFaqList;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/dexcom/cgm/activities/FAQActivity$ReadFaqList;->this$0:Lcom/dexcom/cgm/activities/FAQActivity;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/FAQActivity;->access$100(Lcom/dexcom/cgm/activities/FAQActivity;)Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;->setVisibility(I)V

    .line 76
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 42
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/dexcom/cgm/activities/FAQActivity$ReadFaqList;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/dexcom/cgm/activities/FAQActivity$ReadFaqList;->this$0:Lcom/dexcom/cgm/activities/FAQActivity;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/FAQActivity;->access$100(Lcom/dexcom/cgm/activities/FAQActivity;)Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;->setVisibility(I)V

    .line 49
    return-void
.end method
