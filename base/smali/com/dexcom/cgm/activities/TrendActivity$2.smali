.class Lcom/dexcom/cgm/activities/TrendActivity$2;
.super Ljava/lang/Object;
.source "TrendActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/TrendActivity;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/TrendActivity;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/dexcom/cgm/activities/TrendActivity$2;->this$0:Lcom/dexcom/cgm/activities/TrendActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendActivity$2;->this$0:Lcom/dexcom/cgm/activities/TrendActivity;

    invoke-virtual {v0, p1}, Lcom/dexcom/cgm/activities/TrendActivity;->onClickMenu(Landroid/view/View;)V

    .line 128
    return-void
.end method
