.class Lcom/dexcom/cgm/activities/ChangePasswordHelper$2$1;
.super Ljava/lang/Object;
.source "ChangePasswordHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/ChangePasswordHelper$2;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/ChangePasswordHelper$2;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/dexcom/cgm/activities/ChangePasswordHelper$2$1;->this$0:Lcom/dexcom/cgm/activities/ChangePasswordHelper$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/dexcom/cgm/activities/ChangePasswordHelper$2$1;->this$0:Lcom/dexcom/cgm/activities/ChangePasswordHelper$2;

    iget-object v0, v0, Lcom/dexcom/cgm/activities/ChangePasswordHelper$2;->val$activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/support/TechSupportHelper;->callTechSupport(Landroid/app/Activity;)V

    .line 48
    return-void
.end method
