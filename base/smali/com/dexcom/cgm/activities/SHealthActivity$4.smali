.class Lcom/dexcom/cgm/activities/SHealthActivity$4;
.super Ljava/lang/Object;
.source "SHealthActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/SHealthActivity;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/SHealthActivity;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/dexcom/cgm/activities/SHealthActivity$4;->this$0:Lcom/dexcom/cgm/activities/SHealthActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/dexcom/cgm/activities/SHealthActivity$4;->this$0:Lcom/dexcom/cgm/activities/SHealthActivity;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/SHealthActivity;->editPermissions()V

    .line 184
    return-void
.end method
