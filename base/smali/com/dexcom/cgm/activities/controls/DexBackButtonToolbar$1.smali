.class Lcom/dexcom/cgm/activities/controls/DexBackButtonToolbar$1;
.super Ljava/lang/Object;
.source "DexBackButtonToolbar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/controls/DexBackButtonToolbar;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/controls/DexBackButtonToolbar;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/dexcom/cgm/activities/controls/DexBackButtonToolbar$1;->this$0:Lcom/dexcom/cgm/activities/controls/DexBackButtonToolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/dexcom/cgm/activities/controls/DexBackButtonToolbar$1;->this$0:Lcom/dexcom/cgm/activities/controls/DexBackButtonToolbar;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/controls/DexBackButtonToolbar;->access$000(Lcom/dexcom/cgm/activities/controls/DexBackButtonToolbar;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 62
    return-void
.end method
