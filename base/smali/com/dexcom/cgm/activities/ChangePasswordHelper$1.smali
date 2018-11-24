.class final Lcom/dexcom/cgm/activities/ChangePasswordHelper$1;
.super Ljava/lang/Object;
.source "ChangePasswordHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/dexcom/cgm/activities/ChangePasswordHelper$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 57
    iget-object v0, p0, Lcom/dexcom/cgm/activities/ChangePasswordHelper$1;->val$activity:Landroid/app/Activity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/dexcom/cgm/activities/ChangePasswordHelper$1;->val$activity:Landroid/app/Activity;

    const-class v3, Lcom/dexcom/cgm/activities/ChangePasswordActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 59
    return-void
.end method
