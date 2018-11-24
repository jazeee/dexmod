.class Lcom/dexcom/cgm/activities/FAQActivity$2;
.super Ljava/lang/Object;
.source "FAQActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/FAQActivity;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/FAQActivity;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/dexcom/cgm/activities/FAQActivity$2;->this$0:Lcom/dexcom/cgm/activities/FAQActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/dexcom/cgm/activities/FAQActivity$2;->this$0:Lcom/dexcom/cgm/activities/FAQActivity;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/FAQActivity;->access$700(Lcom/dexcom/cgm/activities/FAQActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/activities/FAQActivity$2;->this$0:Lcom/dexcom/cgm/activities/FAQActivity;

    invoke-static {v1}, Lcom/dexcom/cgm/activities/FAQActivity;->access$600(Lcom/dexcom/cgm/activities/FAQActivity;)Lcom/dexcom/cgm/activities/FAQListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 114
    iget-object v0, p0, Lcom/dexcom/cgm/activities/FAQActivity$2;->this$0:Lcom/dexcom/cgm/activities/FAQActivity;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/FAQActivity;->access$600(Lcom/dexcom/cgm/activities/FAQActivity;)Lcom/dexcom/cgm/activities/FAQListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/activities/FAQActivity$2;->this$0:Lcom/dexcom/cgm/activities/FAQActivity;

    invoke-static {v1}, Lcom/dexcom/cgm/activities/FAQActivity;->access$800(Lcom/dexcom/cgm/activities/FAQActivity;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/FAQListAdapter;->setupFaqList(Ljava/util/List;)V

    .line 115
    return-void
.end method
