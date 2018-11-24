.class Lcom/dexcom/cgm/activities/UserGuideActivity$1;
.super Ljava/lang/Object;
.source "UserGuideActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/UserGuideActivity;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/UserGuideActivity;)V
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Lcom/dexcom/cgm/activities/UserGuideActivity$1;->this$0:Lcom/dexcom/cgm/activities/UserGuideActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/dexcom/cgm/activities/UserGuideActivity$1;->this$0:Lcom/dexcom/cgm/activities/UserGuideActivity;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/UserGuideActivity;->onBackPressed()V

    .line 231
    return-void
.end method
