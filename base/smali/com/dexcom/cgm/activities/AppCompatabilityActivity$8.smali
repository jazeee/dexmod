.class Lcom/dexcom/cgm/activities/AppCompatabilityActivity$8;
.super Ljava/lang/Object;
.source "AppCompatabilityActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/AppCompatabilityActivity;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/AppCompatabilityActivity;)V
    .locals 0

    .prologue
    .line 504
    iput-object p1, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity$8;->this$0:Lcom/dexcom/cgm/activities/AppCompatabilityActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity$8;->this$0:Lcom/dexcom/cgm/activities/AppCompatabilityActivity;

    invoke-virtual {v0, p1}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->onClickMoreInformation(Landroid/view/View;)V

    .line 509
    return-void
.end method
